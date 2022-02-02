module uim.iso27001.classes.groups.threat;

import uim.iso27001;

class DISOThreatGroup : DISOGroup!DISOThreat, IISOGroup {
/* 	// static final string TYPE_ID = "threat_group"; //$NON-NLS-1$
	// static final string PROP_NAME = "threat_group_name"; //$NON-NLS-1$
	
	// static final string[] CHILD_TYPES = new string[] {Threat.TYPE_ID};
 */	
	this() {
		super();
// setEntity(new Entity(TYPE_ID));
	}
	
	

/* 	this(CnATreeElement parent) {
		super(parent);
		setEntity(new Entity(TYPE_ID));
        // sets the localized title via HUITypeFactory from message bundle
        setTitel(getTypeFactory().getMessage(TYPE_ID));
    }
 */

	/* (non-Javadoc)
	 * @see iso27k.model.Group#getChildTypes()
	 * /
	override string[] getChildTypes() {
		return CHILD_TYPES;
	}
*/
}
