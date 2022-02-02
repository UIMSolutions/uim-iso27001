/***********************************************************************************************
*	Copyright: © 2017-2022, UI Manufaktur UG
*	License: Subject to the terms of the MIT license, as written in the included LICENSE.txt file.
*	Authors: UI Manufaktur Team
************************************************************************************************/
module uim.iso27001.classes.groups.audit;

import uim.iso27001;

class DISOAuditGroup : DISOGroup!DISOAudit, IISOGroup {
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
/* 	// static final string TYPE_ID = "auditgroup"; //$NON-NLS-1$
	// static final string PROP_NAME = "auditgroup_name"; //$NON-NLS-1$
	
	// static final string[] CHILD_TYPES = new string[] {Audit.TYPE_ID};
	
	
	/* (non-Javadoc)
	 * @see iso27k.model.Group#getChildTypes()
	 * /
	override string[] getChildTypes() {
		return CHILD_TYPES;
	}
 */
}
auto ISOAuditGroup() { return new DISOAuditGroup; }
