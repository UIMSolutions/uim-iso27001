
import uim.grundschutz;







class InterviewGroup : Group<Interview> : IISO27kGroup {

	static final string TYPE_ID = "interview_group"; //$NON-NLS-1$
	static final string PROP_NAME = "interview_group_name"; //$NON-NLS-1$
	
	static final string[] CHILD_TYPES = new string[] {Interview.TYPE_ID};
	
	
	interviewGroup() {
		super();
	}
	
	interviewGroup(CnATreeElement parent) {
		super(parent);
		setEntity(new Entity(TYPE_ID));
        // sets the localized title via HUITypeFactory from message bundle
        setTitel(getTypeFactory().getMessage(TYPE_ID));
    }
	
	interviewGroup(CnATreeElement parent, string iconPath) {
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
