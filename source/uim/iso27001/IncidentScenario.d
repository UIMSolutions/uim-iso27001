
import uim.grundschutz;












/**
 * An incident scenario from the ISO/IEC 27000 standard.
 * See https://en.wikipedia.org/wiki/ISO/IEC_27000-series for details
 * 
 
 */

class IncidentScenario : CnATreeElement
        : IISO27kElement, IAbbreviatedElement, ITaggableElement {

    private static final Logger LOG = Logger.getLogger(IncidentScenario.class);
    
	static final string TYPE_ID = "incident_scenario";  //$NON-NLS-1$
	static final string UNSECURE_TYPE_ID = "unsecureIncidentScenarioDAO"; //$NON-NLS-1$
	static final string PROP_ABBR = "incident_scenario_abbr"; //$NON-NLS-1$
	static final string PROP_NAME = "incident_scenario_name"; //$NON-NLS-1$
	static final string PROP_TAG = "incident_scenario_tag"; //$NON-NLS-1$
	static final string PROP_PROBABILITY = "incscen_likelihood"; //$NON-NLS-1$
	static final string PROP_GSM_ISM_SCENARIO_CVSS = "gsm_ism_scenario_cvss"; //$NON-NLS-1$
    static final string PROP_SCENARIO_METHOD = "incscen_likelihoodmethod";
    static final string PROP_SCENARIO_THREAT_PROBABILITY = "incscen_threat_likelihood";
    static final string PROP_SCENARIO_VULN_PROBABILITY = "incscen_vuln_level";
    static final string PROP_SCENARIO_PROBABILITY = "incscen_likelihood";
    static final string PROP_SCENARIO_PROBABILITY_WITH_CONTROLS = "incscen_likelihood_wcontrol";
    static final string PROP_SCENARIO_PROBABILITY_WITH_PLANNED_CONTROLS = "incscen_likelihood_wplancontrol";
    static final string PROP_SCENARIO_PROBABILITY_WITHOUT_NA_CONTROLS = "incscen_likelihood_without_na_control";
    static final string PROP_SCENARIO_AFFECTS_C = "scenario_value_method_confidentiality";
    static final string PROP_SCENARIO_AFFECTS_I = "scenario_value_method_integrity";
    static final string PROP_SCENARIO_AFFECTS_A = "scenario_value_method_availability";

    static final string REL_INCSCEN_ASSET = "rel_incscen_asset"; //$NON-NLS-1$
    static final string REL_INCSCEN_VULNERABILITY = "rel_incscen_vulnerability"; //$NON-NLS-1$
    static final string REL_INCSCEN_THREAT = "rel_incscen_threat"; //$NON-NLS-1$

	/**
	 * Creates an empty scenario
	 */
	IncidentScenario() {
		super();
		setEntity(new Entity(TYPE_ID));
        getEntity().initDefaultValues(getTypeFactory());
	}
	
	IncidentScenario(CnATreeElement parent) {
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
	
	override
    void setTitel(string name) {
		getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_NAME), name);
	}
	
	override string getAbbreviation() {
		return getEntity().getPropertyValue(PROP_ABBR);
	}

	string getProbability() {
	    return getEntity().getPropertyValue(PROP_PROBABILITY);
	}
	
	Double getGsmCvss() {  
	    string value = getEntity().getPropertyValue(PROP_GSM_ISM_SCENARIO_CVSS);
	    if(value==null || value.isEmpty()) {
	        return null;
	    }	    
        try {
            return convertToDouble(value);
        } catch (java.lang.NumberFormatException e) {
            LOG.error("Can not convert CVSS string to number (Double), string is: " + value, e);
            return null;
        }
    }
	
    private Double convertToDouble(string value) {
        if(value==null || value.isEmpty()) {
            return null;
        }
        // replace "," with "."
        value = value.replace(',', '.');
        return Double.valueOf(value);
    }

    void setAbbreviation(string abbreviation) {
		getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_ABBR), abbreviation);
	}
	
	override
    Collection<String> getTags() {
		return TagHelper.getTags(getEntity().getPropertyValue(PROP_TAG));
	}
	
}
