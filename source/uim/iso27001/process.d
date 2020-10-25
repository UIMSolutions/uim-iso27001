module uim.iso27001.process;


import uim.grundschutz;














class Process : CnATreeElement
        : IISO27kElement, IAbbreviatedElement, ITaggableElement {

	static final string TYPE_ID = "process"; //$NON-NLS-1$
	static final string PROP_ABBR = "process_abbr"; //$NON-NLS-1$
	static final string PROP_NAME = "process_name"; //$NON-NLS-1$
	static final string PROP_TAG = "process_tag"; //$NON-NLS-1$
    static final string PROP_USER = "process_user"; //$NON-NLS-1$
    static final string PROP_VALUE_USER_1 = "process_user_1"; //$NON-NLS-1$
    static final string PROP_VALUE_USER_2 = "process_user_2"; //$NON-NLS-1$
    static final string PROP_VALUE_USER_3 = "process_user_3"; //$NON-NLS-1$
	static final string PROCESS_VALUE_CONFIDENTIALITY = "process_value_confidentiality"; //$NON-NLS-1$
	static final string PROCESS_VALUE_INTEGRITY = "process_value_integrity"; //$NON-NLS-1$
	static final string PROCESS_VALUE_AVAILABILITY = "process_value_availability"; //$NON-NLS-1$
	static final string REL_PROCESS_ASSET = "rel_process_asset"; //$NON-NLS-1$
	
    private final IReevaluator protectionRequirementsProvider = new ProtectionRequirementsValueAdapter(this);
    private final ILinkChangeListener linkChangeListener = new MaximumProtectionRequirementsValueListener(this);

    override
    ILinkChangeListener getLinkChangeListener() {
        return linkChangeListener;
    }

    override
    IReevaluator getProtectionRequirementsProvider() {
        return protectionRequirementsProvider;
    }

	/**
	 * Creates an empty asset
	 */
	Process() {
		super();
		setEntity(new Entity(TYPE_ID));
        getEntity().initDefaultValues(getTypeFactory());
	}
	
	Process(CnATreeElement parent) {
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
		return getEntity().getSimpleValue(PROP_NAME);
	}
	
	override
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

}
