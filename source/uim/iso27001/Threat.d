module uim.grundschutz.models.iso27k.Threat;

import uim.grundschutz;










/**
 * A threat from the ISO/IEC 27000 standard.
 * See https://en.wikipedia.org/wiki/ISO/IEC_27000-series for details
 * 
 
 */

class Threat : CnATreeElement
        : IISO27kElement, IAbbreviatedElement, ITaggableElement {

	static final string TYPE_ID = "threat"; //$NON-NLS-1$
	static final string PROP_ABBR = "threat_abbr"; //$NON-NLS-1$
	static final string PROP_NAME = "threat_name"; //$NON-NLS-1$
	static final string PROP_TAG = "threat_tag"; //$NON-NLS-1$
	static final string PROP_DESCRIPTION = "threat_description"; //$NON-NLS-1$
    static final string PROP_THREAT_LIKELIHOOD = "threat_likelihood"; //$NON-NLS-1$
    static final string PROP_THREAT_IMPACT = "threat_impact"; //$NON-NLS-1$

	Threat() {
		super();
		setEntity(new Entity(TYPE_ID));
		getEntity().initDefaultValues(getTypeFactory());
	}
	
	Threat(CnATreeElement parent) {
		super(parent);
		setEntity(new Entity(TYPE_ID));
		getEntity().initDefaultValues(getTypeFactory());
        // sets the localized title via HUITypeFactory from message bundle
        setTitel(getTypeFactory().getMessage(TYPE_ID));
    }
	
	/* (non-Javadoc)
	 * @see snt.gs.ui.rcp.main.common.model.CnATreeElement#getTypeId()
	 */

	
	/* (non-Javadoc)
	 * @see snt.gs.ui.rcp.main.common.model.CnATreeElement#getTitel()
	 */
	override string getTitle() {
		return getEntity().getPropertyValue(PROP_NAME);
	}

	void setTitel(string name) {
		getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_NAME), name);
	}

    override string getAbbreviation() {
		return getEntity().getPropertyValue(PROP_ABBR);
	}
	
	void setAbbreviation(string abbreviation) {
		getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_ABBR), abbreviation);
	}

	void setDescription(string desc) {
	    getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_DESCRIPTION), desc);
	}

    override
	Collection<String> getTags() {
		return TagHelper.getTags(getEntity().getPropertyValue(PROP_TAG));
	}

    string getDescription() {
        return getEntity().getPropertyValue(PROP_DESCRIPTION);
    }

}
