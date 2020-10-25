module uim.grundschutz.models.iso27k.ExceptionGroup;

import uim.grundschutz;

class ExceptionGroup : Group<Exception> : IISO27kGroup {

	static final string TYPE_ID = "exceptiongroup"; //$NON-NLS-1$
	static final string PROP_NAME = "exceptiongroup_name"; //$NON-NLS-1$
	
	static final string[] CHILD_TYPES = new string[] {Exception.TYPE_ID};
	
	
	ExceptionGroup() {
		super();
	}
	
	ExceptionGroup(CnATreeElement parent) {
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
