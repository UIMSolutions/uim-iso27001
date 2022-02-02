module uim.iso27001.classes.groups.exception;

import uim.iso27001;

class DISOExceptionGroup : DISOGroup!DISOException, IISOGroup {
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
 
/* 	// static final string TYPE_ID = "exceptiongroup"; //$NON-NLS-1$
	// static final string PROP_NAME = "exceptiongroup_name"; //$NON-NLS-1$
	
	// static final string[] CHILD_TYPES = new string[] {Exception.TYPE_ID};

	/* (non-Javadoc)
	 * @see iso27k.model.Group#getChildTypes()
	 * /
	override string[] getChildTypes() {
		return CHILD_TYPES;
	}
 */
}
