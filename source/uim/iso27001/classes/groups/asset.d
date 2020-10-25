
module uim.grundschutz.models.old.iso27k.groups.asset;

import uim.grundschutz;

class I27AssetGroup : I27Group {
// class AssetGroup : Group<Asset>, IISO27kGroup {

/* 	static final string TYPE_ID = "assetgroup"; //$NON-NLS-1$
	static final string PROP_NAME = "assetgroup_name"; //$NON-NLS-1$	
    static final string REL_PERSON_ISO = "rel_assetgroup_person-iso"; //$NON-NLS-1$
	
	static final string[] CHILD_TYPES = new string[] {Asset.TYPE_ID};
	
	
	AssetGroup() {
		super();
		setEntity(new Entity(TYPE_ID));
        getEntity().initDefaultValues(getTypeFactory());
	}
	
	AssetGroup(CnATreeElement parent) {
		super(parent);
		setEntity(new Entity(TYPE_ID));
		getEntity().initDefaultValues(getTypeFactory());
        // sets the localized title via HUITypeFactory from message bundle
        setTitel(getTypeFactory().getMessage(TYPE_ID));
    }
	
	AssetGroup(CnATreeElement parent, string iconPath) {
	    this(parent);
	    this.setIconPath(iconPath);
	}

	/* (non-Javadoc)
	 * @see snt.gs.ui.rcp.main.common.model.CnATreeElement#getTypeId()
	 * /


	override string getTitle() {
		return getEntity().getSimpleValue(PROP_NAME);
	}
	
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
