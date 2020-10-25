module uim.iso27001.classes.groups.controls;

import uim.grundschutz;

class ControlGroup {
// class ControlGroup : Group<Control> : IISO27kGroup {
    
/* 	static final string TYPE_ID = "controlgroup"; //$NON-NLS-1$
	static final string PROP_NAME = "controlgroup_name"; //$NON-NLS-1$
	
	static final string PROP_IS_CATALOG = "samt_topic_is_catalog";

	static final string[] CHILD_TYPES = new string[] {Control.TYPE_ID,SamtTopic.TYPE_ID};
	
	ControlGroup() {
		super();
		setEntity(new Entity(TYPE_ID));
		getEntity().initDefaultValues(getTypeFactory());
	}
	
	ControlGroup(CnATreeElement parent) {
		super(parent);
		setEntity(new Entity(TYPE_ID));
		getEntity().initDefaultValues(getTypeFactory());
        // sets the localized title via HUITypeFactory from message bundle
        setTitel(getTypeFactory().getMessage(TYPE_ID));
    }
	
	ControlGroup(CnATreeElement parent, string iconPath) {
        this(parent);
        this.setIconPath(iconPath);
    }

    /* (non-Javadoc)
	 * @see snt.gs.ui.rcp.main.common.model.CnATreeElement#getTypeId()
	 */



	/* (non-Javadoc)
	 * @see snt.gs.ui.rcp.main.common.model.CnATreeElement#getTitle()
	 * /
	override string getTitle() {
		return getEntity().getSimpleValue(PROP_NAME);
	}
	
	/* (non-Javadoc)
	 * @see snt.gs.ui.rcp.main.common.model.CnATreeElement#setTitel(java.lang.String)
	 * /
	override
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
