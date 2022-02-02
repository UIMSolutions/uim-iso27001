module uim.iso27001.classes.groups.finding;

import uim.iso27001;

class DISOFindingGroup : DISOGroup!DISOFinding, IISOGroup {
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

/* 	// static final string TYPE_ID = "finding_group"; //$NON-NLS-1$
	// static final string PROP_NAME = "finding_group_name"; //$NON-NLS-1$
	
	// static final string[] CHILD_TYPES = new string[] {Finding.TYPE_ID};
	
	override string[] getChildTypes() {
		return  CHILD_TYPES;
	} * /
 */
}
