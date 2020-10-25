module uim.iso27001.classes.groups.evidence;

import uim.grundschutz;





class EvidenceGroup : Group<Evidence> : IISO27kGroup {

	static final string TYPE_ID = "evidence_group"; //$NON-NLS-1$
	static final string PROP_NAME = "evidence_group_name"; //$NON-NLS-1$
	
	static final string[] CHILD_TYPES = new string[] {Evidence.TYPE_ID};
	
	
	EvidenceGroup() {
		super();
	}
	
	EvidenceGroup(CnATreeElement parent) {
		super(parent);
		setEntity(new Entity(TYPE_ID));
        // sets the localized title via HUITypeFactory from message bundle
        setTitel(getTypeFactory().getMessage(TYPE_ID));
    }
	
	EvidenceGroup(CnATreeElement parent, string iconPath) {
        this(parent);
        this.setIconPath(iconPath);
    }

	/* (non-Javadoc)
	 * @see snt.gs.ui.rcp.main.common.model.CnATreeElement#getTypeId()
	 */


	override string getTitle() {
		return getEntity().getSimpleValue(PROP_NAME);
	}
	
	override
    void setTitel(string name) {
		getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_NAME), name);
	}

	/* (non-Javadoc)
	 * @see iso27k.model.Group#getChildTypes()
	 */
	override string[] getChildTypes() {
		return CHILD_TYPES;
	}

}
