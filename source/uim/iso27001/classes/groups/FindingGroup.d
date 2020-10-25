
import uim.grundschutz;


/* 
 */

class FindingGroup : Group<Finding> : IISO27kGroup {

	static final string TYPE_ID = "finding_group"; //$NON-NLS-1$
	static final string PROP_NAME = "finding_group_name"; //$NON-NLS-1$
	
	static final string[] CHILD_TYPES = new string[] {Finding.TYPE_ID};
	
	this() {
		super();
	}
	
/* 	FindingGroup(CnATreeElement parent) {
		super(parent);
		setEntity(new Entity(TYPE_ID));
        // sets the localized title via HUITypeFactory from message bundle
        setTitel(getTypeFactory().getMessage(TYPE_ID));
    }
	
	FindingGroup(CnATreeElement parent, string iconPath) {
        this(parent);
        this.setIconPath(iconPath);
    }



	override string getTitle() {
		return getEntity().getSimpleValue(PROP_NAME);
	}
	
	override
    void setTitel(string name) {
		getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_NAME), name);
	}

	override string[] getChildTypes() {
		return  CHILD_TYPES;
	} */

}
