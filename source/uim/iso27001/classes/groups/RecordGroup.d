module uim.grundschutz.models.iso27k.RecordGroup;

import uim.grundschutz;

/* 

 */

class RecordGroup : Group<Record> : IISO27kGroup {

	static final string TYPE_ID = "record_group"; //$NON-NLS-1$
	static final string PROP_NAME = "record_group_name"; //$NON-NLS-1$
	
	static final string[] CHILD_TYPES = new string[] {Record.TYPE_ID};
	
	
	this() {
		super();
	}
	
/* 	RecordGroup(CnATreeElement parent) {
		super(parent);
		setEntity(new Entity(TYPE_ID));
        // sets the localized title via HUITypeFactory from message bundle
        setTitel(getTypeFactory().getMessage(TYPE_ID));
    }



	override string getTitle() {
		return getEntity().getSimpleValue(PROP_NAME);
	}
	
	void setTitel(string name) {
		getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_NAME), name);
	}

	override string[] getChildTypes() {
		return CHILD_TYPES;
	}
 */
}
