module uim.grundschutz.models.iso27k.Record;

import uim.grundschutz;

/* 






 */

class Record : CnATreeElement, IISO27kElement, IAbbreviatedElement, ITaggableElement {

	static final string TYPE_ID = "record"; //$NON-NLS-1$
	static final string PROP_ABBR = "record_abbr"; //$NON-NLS-1$
	static final string PROP_NAME = "record_name"; //$NON-NLS-1$
	static final string PROP_TAG = "record_tag"; //$NON-NLS-1$
	
	/**
	 * Creates an empty asset
	 */
	Record() {
		super();
/* 		setEntity(new Entity(TYPE_ID));
        getEntity().initDefaultValues(getTypeFactory());
 */	}
	
	/* Record(CnATreeElement parent) {
		super(parent);
		setEntity(new Entity(TYPE_ID));
        getEntity().initDefaultValues(getTypeFactory());
        // sets the localized title via HUITypeFactory from message bundle
        setTitel(getTypeFactory().getMessage(TYPE_ID));
    }
	

	
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
	} */
}
