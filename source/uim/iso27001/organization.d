module uim.iso27001.organization;

import uim.grundschutz;

/* // import java.util.Arrays;





// import snt.snutils.TagHelper;

 */


class Organization : CnATreeElement
        : IISO27kGroup, IISO27Scope, ITaggableElement, IAbbreviatedElement {

    static final string TYPE_ID = "org"; //$NON-NLS-1$
    static final string PROP_ABBR = "org_abbr"; //$NON-NLS-1$
    static final string PROP_NAME = "org_name"; //$NON-NLS-1$
    static final string PROP_TAG = "org_tag"; //$NON-NLS-1$
    static final string PROP_RISKACCEPT_CONFID = "org_riskaccept_confid"; //$NON-NLS-1$
    static final string PROP_RISKACCEPT_INTEG = "org_riskaccept_integ"; //$NON-NLS-1$
    static final string PROP_RISKACCEPT_AVAIL = "org_riskaccept_avail"; //$NON-NLS-1$

    private static final string[] CHILD_TYPES = new string[] { AssetGroup.TYPE_ID,
            ControlGroup.TYPE_ID, AuditGroup.TYPE_ID, ExceptionGroup.TYPE_ID, PersonGroup.TYPE_ID,
            RequirementGroup.TYPE_ID, IncidentGroup.TYPE_ID, IncidentScenarioGroup.TYPE_ID,
            ResponseGroup.TYPE_ID, ThreatGroup.TYPE_ID, VulnerabilityGroup.TYPE_ID,
            DocumentGroup.TYPE_ID, RecordGroup.TYPE_ID, ProcessGroup.TYPE_ID, };

    /**
     * Creates an empty Organization
     */
    Organization() {
        super();
        setEntity(new Entity(TYPE_ID));
        getEntity().initDefaultValues(getTypeFactory());
    }

    Organization(CnATreeElement parent) {
        this(parent, false);
    }

    Organization(CnATreeElement parent, boolean createChildren) {
        super(parent);
        setEntity(new Entity(TYPE_ID));
        getEntity().initDefaultValues(getTypeFactory());
        // sets the localized title via HUITypeFactory from message bundle
        setTitel(getTypeFactory().getMessage(TYPE_ID));
        if (createChildren) {
            addChild(new AssetGroup(this));
            addChild(new ControlGroup(this));
            addChild(new AuditGroup(this));
            addChild(new ExceptionGroup(this));
            addChild(new PersonGroup(this));
            addChild(new RequirementGroup(this));
            addChild(new IncidentGroup(this));
            addChild(new IncidentScenarioGroup(this));
            addChild(new ResponseGroup(this));
            addChild(new ThreatGroup(this));
            addChild(new VulnerabilityGroup(this));
            addChild(new DocumentGroup(this));
            addChild(new RecordGroup(this));
            addChild(new ProcessGroup(this));
        }
    }

    override
    boolean canContain(Object child) {
        return child instanceof CnATreeElement
                && Arrays.asList(CHILD_TYPES).contains(((CnATreeElement) child).getTypeId());
    }

    /*
     * @see model.iso27k.IISO27kGroup#getChildTypes()
     */
    override string[] getChildTypes() {
        return CHILD_TYPES;
    }

    /*
     * @see
     * model.common.CnATreeElement#inheritIcon(
     * model.common.CnATreeElement)
     */
    override
    protected void inheritIcon(CnATreeElement parent) {
        // do not inherit icon from import groups if this org. is imported
    }

    /*
     * @see snt.gs.ui.rcp.main.common.model.CnATreeElement#getTypeId()
     */
    

    /*
     * @see snt.gs.ui.rcp.main.common.model.CnATreeElement#getTitle()
     */
    override string getTitle() {
        return getEntity().getPropertyValue(PROP_NAME);
    }

    override
    void setTitel(string name) {
        getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_NAME), name);
    }

    void setTitle(string name) {
        setTitel(name);
    }

    override string getAbbreviation() {
        return getEntity().getPropertyValue(PROP_ABBR);
    }

    void setAbbreviation(string abbreviation) {
        getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_ABBR), abbreviation);
    }

    override
    Collection<String> getTags() {
        return TagHelper.getTags(getEntity().getPropertyValue(PROP_TAG));
    }

    void setTags(Collection<? : String> tags) {
        if (tags == null || tags.isEmpty()) {
            getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_TAG), null);
            return;
        }
        string joinedTags = String.join(",", tags);
        getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_TAG), joinedTags);
    }
}