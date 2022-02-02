/***********************************************************************************************
*	Copyright: © 2017-2022, UI Manufaktur UG
*	License: Subject to the terms of the MIT license, as written in the included LICENSE.txt file.
*	Authors: UI Manufaktur Team
************************************************************************************************/
module uim.iso27001.classes.groups.control;

import uim.iso27001;

class DISOControlGroup : DISOGroup!DISOControl, IISOGroup {
	this() {
/* 		super();
		setEntity(new Entity(TYPE_ID));
		getEntity().initDefaultValues(getTypeFactory());
 */	}

	

/* 	ControlGroup(CnATreeElement parent) {
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
 */

/* 	// static final string TYPE_ID = "controlgroup"; //$NON-NLS-1$
	// static final string PROP_NAME = "controlgroup_name"; //$NON-NLS-1$
	
	// static final string PROP_IS_CATALOG = "samt_topic_is_catalog";

	// static final string[] CHILD_TYPES = new string[] {Control.TYPE_ID,SamtTopic.TYPE_ID};
	
	
	/* (non-Javadoc)
	 * @see iso27k.model.Group#getChildTypes()
	 * /
	override string[] getChildTypes() {
		return CHILD_TYPES;
	}
 */
}
