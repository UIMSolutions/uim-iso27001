module uim.grundschutz.models.iso27k.Requirement;

import uim.grundschutz;

/* 








 */
class Requirement : CnATreeElement
        : IISO27kElement, IAbbreviatedElement, ITaggableElement {

	static final string TYPE_ID = "requirement"; //$NON-NLS-1$
	static final string PROP_ABBR = "requirement_abbr"; //$NON-NLS-1$
	static final string PROP_NAME = "requirement_name"; //$NON-NLS-1$
	static final string PROP_TAG = "requirement_tag"; //$NON-NLS-1$
	
	/**
	 * Creates an empty requirement
	 */
	this() {
		super();
/* 		setEntity(new Entity(TYPE_ID));
        getEntity().initDefaultValues(getTypeFactory());
 */	}
	
/* 	Requirement(CnATreeElement parent) {
		super(parent);
		setEntity(new Entity(TYPE_ID));
        getEntity().initDefaultValues(getTypeFactory());
        // sets the localized title via HUITypeFactory from message bundle
        setTitel(getTypeFactory().getMessage(TYPE_ID));
	}
	
	Requirement(CnATreeElement parent, string title) {
        this(parent);
        if(title!=null) {
            setTitel(title);
        }
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
