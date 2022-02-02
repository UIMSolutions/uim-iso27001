module uim.iso27001.classes.exception;

import uim.iso27001;

class DISOException : DISOElement {
// class Exception : CnATreeElement, IISO27kElement, IAbbreviatedElement, ITaggableElement {

/* 	// static final string TYPE_ID = "exception"; //$NON-NLS-1$
	// static final string PROP_ABBR = "exception_abbr"; //$NON-NLS-1$
	// static final string PROP_NAME = "exception_name"; //$NON-NLS-1$
	// static final string PROP_TAG = "exception_tag"; //$NON-NLS-1$
 */	
	/**
	 * Creates an empty audit
	 * /
	this() {
		super();
/* 		setEntity(new Entity(TYPE_ID));
        getEntity().initDefaultValues(getTypeFactory());
 * /	}
	
	/* Exception(CnATreeElement parent) {
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
	}
 */
}
