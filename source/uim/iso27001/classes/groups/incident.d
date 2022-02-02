module uim.iso27001.classes.groups.incident;

import uim.iso27001;

class DISOIncidentGroup : DISOGroup!DISOIncident, IISOGroup {
	this() {
		super();
	}

	
/* 	this(CnATreeElement parent) {
		super(parent);
		setEntity(new Entity(TYPE_ID));
        // sets the localized title via HUITypeFactory from message bundle
        setTitel(getTypeFactory().getMessage(TYPE_ID));
    }
 */
/* 	// static final string TYPE_ID = "incident_group"; //$NON-NLS-1$
    // static final string TYPE_ID_HIBERNATE = "incidentgroup"; //$NON-NLS-1$
    
	// static final string PROP_NAME = "incident_group_name"; //$NON-NLS-1$
	
	// static final string[] CHILD_TYPES = new string[] {Incident.TYPE_ID};
	
	override string[] getChildTypes() {
		return CHILD_TYPES;
	}
 */
}
