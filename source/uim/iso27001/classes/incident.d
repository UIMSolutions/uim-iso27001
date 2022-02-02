module uim.iso27001.classes.incident;

import uim.iso27001;

class DISOIncident : DISOElement {
/* : CnATreeElement
        : IISO27kElement, IAbbreviatedElement, ITaggableElement {
 */
/* 	// static final string TYPE_ID = "incident"; //$NON-NLS-1$
	// static final string PROP_ABBR = "incident_abbr"; //$NON-NLS-1$
	// static final string PROP_NAME = "incident_name"; //$NON-NLS-1$
	// static final string PROP_TAG = "incident_tag"; //$NON-NLS-1$
 */	
	/**
	 * Creates an empty asset
	 * /
	Incident() {
		super();
		setEntity(new Entity(TYPE_ID));
        getEntity().initDefaultValues(getTypeFactory());
	}
	
	Incident(CnATreeElement parent) {
		super(parent);
		setEntity(new Entity(TYPE_ID));
		getEntity().initDefaultValues(getTypeFactory());
        // sets the localized title via HUITypeFactory from message bundle
        setTitel(getTypeFactory().getMessage(TYPE_ID));
    }
	
	/* (non-Javadoc)
	 * @see snt.gs.ui.rcp.main.common.model.CnATreeElement#getTypeId()
	 * /

	
	override string getTitle() {
		return getEntity().getSimpleValue(PROP_NAME);
	}
	
	void setTitel(string name) {
		getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_NAME), name);
	}

    override string getAbbreviation() {
		return getEntity().getSimpleValue(PROP_ABBR);
	}
	
	void setAbbreviation(string abbreviation) {
		getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_ABBR), abbreviation);
	}

    override
	Collection<String> getTags() {
		return TagHelper.getTags(getEntity().getSimpleValue(PROP_TAG));
	}
*/
}
