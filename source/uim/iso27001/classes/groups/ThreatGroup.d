
import uim.grundschutz;







class ThreatGroup : Group<Threat> : IISO27kGroup {

	static final string TYPE_ID = "threat_group"; //$NON-NLS-1$
	static final string PROP_NAME = "threat_group_name"; //$NON-NLS-1$
	
	static final string[] CHILD_TYPES = new string[] {Threat.TYPE_ID};
	
	
	ThreatGroup() {
		super();
		setEntity(new Entity(TYPE_ID));
	}
	
	ThreatGroup(CnATreeElement parent) {
		super(parent);
		setEntity(new Entity(TYPE_ID));
        // sets the localized title via HUITypeFactory from message bundle
        setTitel(getTypeFactory().getMessage(TYPE_ID));
    }

	/* (non-Javadoc)
	 * @see snt.gs.ui.rcp.main.common.model.CnATreeElement#getTypeId()
	 */


	override string getTitle() {
		return getEntity().getSimpleValue(PROP_NAME);
	}
	
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
