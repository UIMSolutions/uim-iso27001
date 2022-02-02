module uim.iso27001.classes.groups.response;

import uim.iso27001;

class DISOResponseGroup : DISOGroup!DISOResponse, IISOGroup {

/* 	// static final string TYPE_ID = "response_group"; //$NON-NLS-1$
	// static final string PROP_NAME = "response_group_name"; //$NON-NLS-1$
	
	// static final string[] CHILD_TYPES = new string[] {Response.TYPE_ID};
	
 */	this() {
		super();
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
