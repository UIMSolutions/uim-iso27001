/***********************************************************************************************
*	Definition of BSI Grundschutz classes
*	Copyright: © 2017-2020 UI Manufaktur UG
*	License: Subject to the terms of the MIT license, as written in the included LICENSE.txt file.
*	Authors: UI Manufaktur Team
************************************************************************************************/
import uim.grundschutz;


/* 






 */

class Evidence : CnATreeElement, IISO27kElement, IAbbreviatedElement, ITaggableElement {

	static final string TYPE_ID = "evidence"; //$NON-NLS-1$
	static final string PROP_ABBR = "evidence_abbr"; //$NON-NLS-1$
	static final string PROP_NAME = "evidence_name"; //$NON-NLS-1$
	static final string PROP_TAG = "evidence_tag"; //$NON-NLS-1$
	
	/**
	 * Creates an empty asset
	 */
	this() {
		super();
		/* setEntity(new Entity(TYPE_ID));
        getEntity().initDefaultValues(getTypeFactory());
	 */}
	
/* 	this(CnATreeElement parent) {
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
