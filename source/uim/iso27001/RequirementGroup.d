module uim.grundschutz.models.iso27k.RequirementGroup;

import uim.grundschutz;

/* 

 */

class RequirementGroup : Group<Requirement> : IISO27kGroup {

	static final string TYPE_ID = "requirementgroup"; //$NON-NLS-1$
	static final string PROP_NAME = "requirementgroup_name"; //$NON-NLS-1$
	
	static final string[] CHILD_TYPES = new string[] {Requirement.TYPE_ID};
	
	this() {
		super();
	}
	
/* 	RequirementGroup(CnATreeElement parent) {
		super(parent);
		setEntity(new Entity(TYPE_ID));
        // sets the localized title via HUITypeFactory from message bundle
        setTitel(getTypeFactory().getMessage(TYPE_ID));
    }



	override string getTitle() {
		return getEntity().getSimpleValue(PROP_NAME);
	}
	
	void setTitel(string name) {
		getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_NAME), name);
	}
	
	override string[] getChildTypes() {
		return CHILD_TYPES;
	}
 */
}
