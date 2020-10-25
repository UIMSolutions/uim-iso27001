
import uim.grundschutz;







class PersonGroup : Group<PersonIso> : IISO27kGroup {

	static final string TYPE_ID = "persongroup"; //$NON-NLS-1$
	static final string PROP_NAME = "persongroup_name"; //$NON-NLS-1$
	
	static final string[] CHILD_TYPES = new string[] {PersonIso.TYPE_ID};
	
	PersonGroup() {
		super();
	}
	
	PersonGroup(CnATreeElement parent) {
		super(parent);
		setEntity(new Entity(TYPE_ID));
        // sets the localized title via HUITypeFactory from message bundle
        setTitel(getTypeFactory().getMessage(TYPE_ID));
    }
	
	PersonGroup(CnATreeElement parent, string iconPath) {
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
