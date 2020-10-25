/***********************************************************************************************
*	Definition of BSI Grundschutz classes
*	Copyright: © 2017-2020 UI Manufaktur UG
*	License: Subject to the terms of the MIT license, as written in the included LICENSE.txt file.
*	Authors: UI Manufaktur Team
************************************************************************************************/
module uim.grundschutz.models.old.iso27k.audit;

import uim.grundschutz;

/* // import java.util.ArrayList;
// import java.util.Arrays;

// import java.util.Date;






 */
class Audit : CnATreeElement, IISO27kElement, IISO27kGroup, IISO27Scope, IAbbreviatedElement, ITaggableElement {

	static final string TYPE_ID = "audit"; //$NON-NLS-1$
	static final string PROP_ABBR = "audit_abbr"; //$NON-NLS-1$
	static final string PROP_NAME = "audit_name"; //$NON-NLS-1$
	static final string PROP_TAG = "audit_tag"; //$NON-NLS-1$
	
	static final string PROP_CREAT = "audit_isa_creat";
	static final string PROP_CREATPHONE = "audit_isa_creatphone";
    static final string PROP_CREATMAIL = "audit_isa_creatmail";
    static final string PROP_STARTDATE = "audit_startdate";
    static final string PROP_ENDDATE = "audit_enddate";
    
    static final string REL_AUDIT_CONTROLGROUP = "rel_audit_controlgroup";
    static final string REL_AUDIT_CONTROL = "rel_audit_control";
	
	
	static final string[] CHILD_TYPES = new string[] {
        AssetGroup.TYPE_ID,
        PersonGroup.TYPE_ID,
        ControlGroup.TYPE_ID,
        FindingGroup.TYPE_ID,
        EvidenceGroup.TYPE_ID,
        InterviewGroup.TYPE_ID
    };
	
	/**
	 * Creates an empty audit
	 */
	Audit() {
		super();
	}
	
	Audit(CnATreeElement parent) {
	    this(parent,false);
	}
	
	Audit(CnATreeElement parent, boolean createChildren) {
		super(parent);
		setEntity(new Entity(TYPE_ID));
        getEntity().initDefaultValues(getTypeFactory());
        // sets the localized title via HUITypeFactory from message bundle
        setTitel(getTypeFactory().getMessage(TYPE_ID));
        if(createChildren) {
            addChild(new AssetGroup(this, null));
            addChild(new ControlGroup(this, null));
            addChild(new PersonGroup(this, null));
            addChild(new FindingGroup(this, null));
            addChild(new EvidenceGroup(this, null));
            addChild(new InterviewGroup(this, null));
        }
    }
	
	/* (non-Javadoc)
	 * @see snt.gs.ui.rcp.main.common.model.CnATreeElement#getTypeId()
	 */

	
	/* (non-Javadoc)
	 * @see model.common.CnATreeElement#canContain(java.lang.Object)
	 */
	override
	boolean canContain(Object obj) {
	    boolean canContain = false;
        if(obj instanceof CnATreeElement) {
            CnATreeElement element = (CnATreeElement)obj;
            canContain = Arrays.asList(getChildTypes()).contains(element.getTypeId()) 
                         || this.getTypeId().equals(element.getTypeId());
        }
        return canContain;
	}
	
	/* (non-Javadoc)
     * @see iso27k.model.Group#getChildTypes()
     */
    override string[] getChildTypes() {
        return CHILD_TYPES;
    }
	
	/* (non-Javadoc)
	 * @see snt.gs.ui.rcp.main.common.model.CnATreeElement#getTitel()
	 */
	override string getTitle() {
		return getEntity().getSimpleValue(PROP_NAME);
	}
	
	override
    void setTitel(string name) {
		getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_NAME), name);
	}
	
	override string getAbbreviation() {
		return getEntity().getSimpleValue(PROP_ABBR);
	}
	
	void setAbbreviation(string abbreviation) {
		getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_ABBR), abbreviation);
	}
	
	override
    Collection<String> getTags() {
		return TagHelper.getTags(getEntity().getSimpleValue(PROP_TAG));
	}
	
	string getCreator(){
		return getEntity().getSimpleValue(PROP_CREAT);
	}
	
	string getCreatorPhone(){
		return getEntity().getSimpleValue(PROP_CREATPHONE);
	}
	
	string getCreatorEmail(){
		return getEntity().getSimpleValue(PROP_CREATMAIL);
	}
	
	Date getStartDate(){
        return getEntity().getDate(PROP_STARTDATE);
    }
    
    Date getEndDate(){
        return getEntity().getDate(PROP_ENDDATE);
    }
	
	ArrayList<CnATreeElement> toList(){
		ArrayList<CnATreeElement> list = new ArrayList<CnATreeElement>();
		list.add(this);
		return list;
	}

    /**
     * @return
     */
    ControlGroup getControlGroup() {
        ControlGroup controlGroup = null;
        for (CnATreeElement child : getChildren()) {
            if(ControlGroup.TYPE_ID.equals(child.getTypeId())) {
                controlGroup = (ControlGroup) child;
                break;
            }
        }
        return controlGroup;
    }

}
