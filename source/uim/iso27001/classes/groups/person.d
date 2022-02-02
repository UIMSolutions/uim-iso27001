module uim.iso27001.classes.groups.person;

import uim.iso27001;

class DISOPersonGroup : DISOGroup!DISOPerson, IISOGroup {

	/* // static final string TYPE_ID = "persongroup"; //$NON-NLS-1$
	// static final string PROP_NAME = "persongroup_name"; //$NON-NLS-1$
	
	// static final string[] CHILD_TYPES = new string[] {PersonIso.TYPE_ID};
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
	
	this(CnATreeElement parent, string iconPath) {
        this(parent);
        this.setIconPath(iconPath);
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
