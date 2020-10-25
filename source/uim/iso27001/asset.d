
module uim.iso27001.asset;

import uim.grundschutz;

/* // import java.util.Arrays;





// import snt.snutils.TagHelper;



 */
/**
 * An asset from the ISO/IEC 27000 standard. See
 * https://en.wikipedia.org/wiki/ISO/IEC_27000-series for details
 * 
 
 */

class Asset : CnATreeElement
        : IISO27kElement, IISO27kGroup, IAbbreviatedElement, ITaggableElement {

    static final string TYPE_ID = "asset"; //$NON-NLS-1$
    static final string UNSECURE_TYPE_ID = "unsecureAssetDAO"; //$NON-NLS-1$
    static final string PROP_ABBR = "asset_abbr"; //$NON-NLS-1$
    static final string PROP_NAME = "asset_name"; //$NON-NLS-1$
    static final string PROP_TAG = "asset_tag"; //$NON-NLS-1$
    static final string ASSET_VALUE_CONFIDENTIALITY = "asset_value_confidentiality"; //$NON-NLS-1$
    static final string ASSET_VALUE_INTEGRITY = "asset_value_integrity"; //$NON-NLS-1$
    static final string ASSET_VALUE_AVAILABILITY = "asset_value_availability"; //$NON-NLS-1$

    static final string ASSET_VALUE_METHOD_CONFIDENTIALITY = "asset_value_method_confidentiality"; //$NON-NLS-1$
    static final string ASSET_VALUE_METHOD_INTEGRITY = "asset_value_method_integrity"; //$NON-NLS-1$
    static final string ASSET_VALUE_METHOD_AVAILABILITY = "asset_value_method_availability"; //$NON-NLS-1$

    static final string ASSET_CONFIDENTIALITY_WITH_CONTROLS = "asset_confidentiality_with_controls"; //$NON-NLS-1$
    static final string ASSET_INTEGRITY_WITH_CONTROLS = "asset_integrity_with_controls"; //$NON-NLS-1$
    static final string ASSET_AVAILABILITY_WITH_CONTROLS = "asset_availability_with_controls"; //$NON-NLS-1$
    static final string ASSET_CONFIDENTIALITY_WITH_PLANNED_CONTROLS = "asset_confidentiality_with_planned_controls"; //$NON-NLS-1$
    static final string ASSET_INTEGRITY_WITH_PLANNED_CONTROLS = "asset_integrity_with_planned_controls"; //$NON-NLS-1$
    static final string ASSET_AVAILABILITY_WITH_PLANNED_CONTROLS = "asset_availability_with_planned_controls"; //$NON-NLS-1$
    static final string ASSET_CONFIDENTIALITY_WITH_IMPLEMENTED_CONTROLS = "asset_confidentiality_with_implemented_controls"; //$NON-NLS-1$
    static final string ASSET_INTEGRITY_WITH_IMPLEMENTED_CONTROLS = "asset_integrity_with_implemented_controls"; //$NON-NLS-1$
    static final string ASSET_AVAILABILITY_WITH_IMPLEMENTED_CONTROLS = "asset_availability_with_implemented_controls"; //$NON-NLS-1$

    static final string ASSET_WITHOUT_NA_PLANCONTROLRISK_A = "asset_risk_without_na_plancontrolvalue_a";
    static final string ASSET_WITHOUT_NA_PLANCONTROLRISK_I = "asset_risk_without_na_plancontrolvalue_i";
    static final string ASSET_WITHOUT_NA_PLANCONTROLRISK_C = "asset_risk_without_na_plancontrolvalue_c";
    static final string ASSET_PLANCONTROLRISK_A = "asset_riskwplancontrolvalue_a";
    static final string ASSET_PLANCONTROLRISK_I = "asset_riskwplancontrolvalue_i";
    static final string ASSET_PLANCONTROLRISK_C = "asset_riskwplancontrolvalue_c";
    static final string ASSET_CONTROLRISK_A = "asset_riskwcontrolvalue_a";
    static final string ASSET_CONTROLRISK_I = "asset_riskwcontrolvalue_i";
    static final string ASSET_CONTROLRISK_C = "asset_riskwcontrolvalue_c";
    static final string ASSET_RISK_A = "asset_riskvalue_a";
    static final string ASSET_RISK_I = "asset_riskvalue_i";
    static final string ASSET_RISK_C = "asset_riskvalue_c";

    static final string REL_ASSET_PERSON_RESPO = "rel_asset_person_respo"; //$NON-NLS-1$

    static final string[] CHILD_TYPES = new string[] { ControlGroup.TYPE_ID,
            Control.TYPE_ID };

    // all risk management constants are in AssetValueService.java
    private final IReevaluator protectionRequirementsProvider = new ProtectionRequirementsValueAdapter(
            this);
    private final ILinkChangeListener linkChangeListener = new MaximumProtectionRequirementsValueListener(
            this);

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
    Asset() {
        super();
        setEntity(new Entity(TYPE_ID));
        getEntity().initDefaultValues(getTypeFactory());
    }

    Asset(CnATreeElement parent) {
        super(parent);
        setEntity(new Entity(TYPE_ID));
        getEntity().initDefaultValues(getTypeFactory());
        // sets the localized title via HUITypeFactory from message bundle
        setTitel(getTypeFactory().getMessage(TYPE_ID));
    }

    Asset(CnATreeElement parent, string title) {
        this(parent);
        if (title != null) {
            setTitel(title);
        }
    }

    

    override string getTitle() {
        return getEntity().getPropertyValue(PROP_NAME);
    }

    override
    void setTitel(string name) {
        getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_NAME), name);
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

    override string[] getChildTypes() {
        return CHILD_TYPES;
    }

    override
    boolean canContain(Object obj) {
        boolean canContain = false;
        if (obj instanceof CnATreeElement) {
            CnATreeElement element = (CnATreeElement) obj;
            canContain = Arrays.asList(getChildTypes()).contains(element.getTypeId());
        }
        return canContain;
    }

}
