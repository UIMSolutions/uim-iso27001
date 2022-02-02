module uim.iso27001.classes.groups.incident_scenario;

import uim.iso27001;

class DISOIncidentScenarioGroup : DISOGroup!DISOIncidentScenario, IISOGroup {
/* 	// static final string TYPE_ID = "incident_scenario_group"; //$NON-NLS-1$
	// static final string PROP_NAME = "incident_scenario_group_name"; //$NON-NLS-1$
	
	// static final string[] CHILD_TYPES = new string[] {IncidentScenario.TYPE_ID};
 */	
	
	this() {
		super();
	}

	

/* 	this(CnATreeElement parent) {
		super(parent);
		setEntity(new Entity(TYPE_ID));
        // sets the localized title via HUITypeFactory from message bundle
        setTitel(getTypeFactory().getMessage(TYPE_ID));
    }

	/* (non-Javadoc)
	 * @see iso27k.model.Group#getChildTypes()
	 * /
	override string[] getChildTypes() {
		return CHILD_TYPES;
	}
*/
}
