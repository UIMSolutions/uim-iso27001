module uim.iso27001.classes.groups.incident;

import uim.grundschutz;

class DI27IncidentGroup : I27Group {
// class IncidentGroup : Group<Incident> : IISO27kGroup {

	this() {
		super();
	}

/* 	static final string TYPE_ID = "incident_group"; //$NON-NLS-1$
    static final string TYPE_ID_HIBERNATE = "incidentgroup"; //$NON-NLS-1$
    
	static final string PROP_NAME = "incident_group_name"; //$NON-NLS-1$
	
	static final string[] CHILD_TYPES = new string[] {Incident.TYPE_ID};
	
	IncidentGroup(CnATreeElement parent) {
		super(parent);
		setEntity(new Entity(TYPE_ID));
        // sets the localized title via HUITypeFactory from message bundle
        setTitel(getTypeFactory().getMessage(TYPE_ID));
    }

	/* (non-Javadoc)
	 * @see snt.gs.ui.rcp.main.common.model.CnATreeElement#getTypeId()
	 * /


	override string getTitle() {
		return getEntity().getSimpleValue(PROP_NAME);
	}
	
	void setTitel(string name) {
		getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_NAME), name);
	}

	/* (non-Javadoc)
	 * @see iso27k.model.Group#getChildTypes()
	 * /
	override string[] getChildTypes() {
		return CHILD_TYPES;
	}
 */
}
