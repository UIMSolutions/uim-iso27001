/***********************************************************************************************
*	Definition of BSI Grundschutz classes
*	Copyright: © 2017-2020 UI Manufaktur UG
*	License: Subject to the terms of the MIT license, as written in the included LICENSE.txt file.
*	Authors: UI Manufaktur Team
************************************************************************************************/
module uim.grundschutz.models.old.iso27k.groups.audit;

import uim.grundschutz;

class DI27AuditGroup : DI27Group {
	this() {
		super();
	}

// class AuditGroup : Group<Audit> : IISO27kGroup {

/* 	static final string TYPE_ID = "auditgroup"; //$NON-NLS-1$
	static final string PROP_NAME = "auditgroup_name"; //$NON-NLS-1$
	
	static final string[] CHILD_TYPES = new string[] {Audit.TYPE_ID};
	
	
	AuditGroup(CnATreeElement parent) {
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
class I27AuditGroup { return new DI27AuditGroup; }
