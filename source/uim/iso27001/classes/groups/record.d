module uim.iso27001.classes.groups.record;

import uim.iso27001;

class DISORecordGroup : DISOGroup!DISORecord, IISOGroup {

/* 	// static final string TYPE_ID = "record_group"; //$NON-NLS-1$
	// static final string PROP_NAME = "record_group_name"; //$NON-NLS-1$
	
	// static final string[] CHILD_TYPES = new string[] {Record.TYPE_ID};

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

	override string[] getChildTypes() {
		return CHILD_TYPES;
	}
 */
}
