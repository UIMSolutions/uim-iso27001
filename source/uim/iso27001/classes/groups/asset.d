/***********************************************************************************************
*	Copyright: © 2017-2022, UI Manufaktur UG
*	License: Subject to the terms of the MIT license, as written in the included LICENSE.txt file.
*	Authors: UI Manufaktur Team
************************************************************************************************/
module uim.iso27001.classes.groups.asset;

import uim.iso27001;

class DISOAssetGroup : DISOGroup!DISOAsset, IISOGroup {

	this() {
		super();
/* 		setEntity(new Entity(TYPE_ID));
        getEntity().initDefaultValues(getTypeFactory());
 */	}

	

/* 	this(CnATreeElement parent) {
		super(parent);
		setEntity(new Entity(TYPE_ID));
		getEntity().initDefaultValues(getTypeFactory());
        // sets the localized title via HUITypeFactory from message bundle
        setTitel(getTypeFactory().getMessage(TYPE_ID));
    }
	
	this(CnATreeElement parent, string iconPath) {
	    this(parent);
	    this.setIconPath(iconPath);
	}
 */
/* 	// static final string TYPE_ID = "assetgroup"; //$NON-NLS-1$
	// static final string PROP_NAME = "assetgroup_name"; //$NON-NLS-1$	
    // static final string REL_PERSON_ISO = "rel_assetgroup_person-iso"; //$NON-NLS-1$
	
	// static final string[] CHILD_TYPES = new string[] {Asset.TYPE_ID};

	override string[] getChildTypes() {
		return CHILD_TYPES;
	}
 */
}
