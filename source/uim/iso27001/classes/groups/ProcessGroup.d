module uim.iso27001.classes.groups.ProcessGroup;

import uim.grundschutz;

class ProcessGroup : Group<Process> : IISO27kGroup {

	static final string TYPE_ID = "process_group"; //$NON-NLS-1$
	static final string PROP_NAME = "process_group_name"; //$NON-NLS-1$
	
	static final string[] CHILD_TYPES = new string[] {Process.TYPE_ID};
	
	
	ProcessGroup() {
		super();
	}
	
	ProcessGroup(CnATreeElement parent) {
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
