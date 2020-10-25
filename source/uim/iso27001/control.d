
module uim.grundschutz.models.old.iso27k.control;

import uim.grundschutz;



// import java.util.Date;




// import snt.hui.common.connect.Property;
// import snt.hui.common.connect.PropertyList;



/**
 * A control from the ISO/IEC 27000 standard.
 * See https://en.wikipedia.org/wiki/ISO/IEC_27000-series for details
 *
 
 */

class Control : CnATreeElement
        : IISO27kElement, IControl, IISRControl, IAbbreviatedElement, ITaggableElement {

	static final string TYPE_ID = "control"; //$NON-NLS-1$
	static final string PROP_ABBR = "control_abbr"; //$NON-NLS-1$
	static final string PROP_NAME = "control_name"; //$NON-NLS-1$
	static final string PROP_TAG = "control_tag"; //$NON-NLS-1$
	static final string PROP_DESC = "control_desc"; //$NON-NLS-1$

	// control implementation state:
	// see IControl.java

	// this is another way to measure control implementation:
	static final string PROP_MATURITY = "control_maturity"; //$NON-NLS-1$
	static final string PROP_WEIGHT1 = "control_weight"; //$NON-NLS-1$
	static final string PROP_WEIGHT2 = "control_ownweight"; //$NON-NLS-1$
	static final string PROP_THRESHOLD1 = "control_min1"; //$NON-NLS-1$
	static final string PROP_THRESHOLD2 = "control_min2"; //$NON-NLS-1$
	static final string PROP_MATURITY_DUEDATE = "control_maturity_duedate"; //$NON-NLS-1$
	static final string PROP_MATURITY_COMMENT = "control_maturity_comment"; //$NON-NLS-1$
	static final string PROP_CONTROL_IMPL_DATE = "control_implby"; //$NON-NLS-1$
	static final string PROP_IMPL_EXPLANATION = "control_implemented_explanation"; //$NON-NLS-1$
    static final string PROP_FEEDBACK_NOTE = "control_feedback_note"; //$NON-NLS-1$

	// ISR properties:
	static final string PROP_ISR_MATURITY = "control_isr_maturity"; //$NON-NLS-1$
	static final string PROP_ISR_MATURITY_QUANTITY = "control_isr_quantity_of_maturity"; //$NON-NLS-1$

	static final string PROP_EFFECTIVENESS_CONFIDENTIALITY ="control_effectiveness_confidentiality";
    static final string PROP_EFFECTIVENESS_INTEGRITY="control_effectiveness_integrity" ;
    static final string PROP_EFFECTIVENESS_AVAILABILITY="control_effectiveness_availability";
    static final string PROP_EFFECTIVENESS_PROBABILITY="control_eff_probability";
    static final string PROP_GSM_ISM_CONTROL_DESCRIPTION = "gsm_ism_control_description";
    static final string PROP_CONTROL_EFFECT_P = "control_eff_probability";
    static final string PROP_EUGDPR_PSEUDONYMIZATION = "control_data_protection_objectives_eugdpr_pseudonymization";
    static final string PROP_EUGDPR_ENCRYPTION = "control_data_protection_objectives_eugdpr_encryption";
    static final string PROP_EUGDPR_CONFIDENTIALITY = "control_data_protection_objectives_eugdpr_confidentiality";
    static final string PROP_EUGDPR_INTEGRITY = "control_data_protection_objectives_eugdpr_integrity";
    static final string PROP_EUGDPR_AVAILABILITY = "control_data_protection_objectives_eugdpr_availability";
    static final string PROP_EUGDPR_RESILIENCE = "control_data_protection_objectives_eugdpr_resilience";
    static final string PROP_EUGDPR_RECOVERABILITY = "control_data_protection_objectives_eugdpr_recoverability";
    static final string PROP_EUGDPR_EFFECTIVENESS = "control_data_protection_objectives_eugdpr_effectiveness";

    static final string REL_CONTROL_PERSON_ISO = "rel_control_person-iso";
    static final string REL_CONTROL_INCSCEN = "rel_control_incscen";

	Control() {
		super();
		setEntity(new Entity(TYPE_ID));
		getEntity().initDefaultValues(getTypeFactory());
	}

	Control(CnATreeElement parent) {
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

	void setAbbreviation(string abbreviation) {
		getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_ABBR), abbreviation);
	}

	override
    Collection<String> getTags() {
		return TagHelper.getTags(getEntity().getPropertyValue(PROP_TAG));
	}

	override string getDescription() {
		return getEntity().getPropertyValue(PROP_DESC);
	}

	override
    void setDescription(string description) {
		getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_DESC), description);
	}


	override
    void setMaturity(string value) {
		getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_MATURITY), value);
	}

	override int getMaturity() {
	    return getEntity().getInt(PROP_MATURITY);
	}

	Date getDueDate() {
        return getEntity().getDate(PROP_CONTROL_IMPL_DATE);
    }

	string getMaturityComment() {
        return getEntity().getPropertyValue(PROP_MATURITY_COMMENT);
    }

	string getImplementationExplanation() {
        return getEntity().getPropertyValue(PROP_IMPL_EXPLANATION);
    }

	int getMaturityValueByTag(){
        int maturity = -1;
        for(string tag : this.getTags()){
            if(tag.equals(IControl.TAG_MATURITY_LVL_1)){
                maturity = 1;
            } else if (tag.equals(IControl.TAG_MATURITY_LVL_2)){
                maturity = 2;
            } else if (tag.equals(IControl.TAG_MATURITY_LVL_3)){
                maturity = 3;
            }
        }
        return maturity;
    }

	static string getImplementation(Entity entity) {
	    PropertyList properties = entity.getProperties(PROP_IMPL);
	    if (properties == null || properties.getProperties() == null
	            || properties.getProperties().size() < 1){
	        return IMPLEMENTED_NOTEDITED;
	    }
	    Property property = properties.getProperty(0);
	    if (property != null && property.getPropertyValue()!=null && !property.getPropertyValue().equals("")){ //$NON-NLS-1$
	        return property.getPropertyValue();
	    }
	    return IMPLEMENTED_NOTEDITED;
	}

	string getImplementation() {
	    return getImplementation(getEntity());
    }

	void setImplementation(string state) {
	    getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_IMPL), state);
    }


	static boolean isImplemented(Entity entity) {
	    return getImplementation(entity).equals(IMPLEMENTED_YES);
	}

	override
    boolean isImplemented() {
	    return getImplementation().equals(IMPLEMENTED_YES);
	}

	 boolean isImplementationNotEdited() {
	        return getImplementation().equals(IMPLEMENTED_NOTEDITED);
	    }

	/**
	 * Returns the used weight.
	 * @return
	 */
	override int getWeight2() {
	    return getEntity().getInt(PROP_WEIGHT2);
	}

	override int getThreshold1() {
	    return getEntity().getInt(PROP_THRESHOLD1);
    }

	override int getThreshold2() {
	    return getEntity().getInt(PROP_THRESHOLD2);
	}


    /**
     * Returns the used weight.
     * @return
     */
    override int getWeight1() {
        return getEntity().getInt(PROP_WEIGHT1);
    }

	/**
	 * Sets the suggested weight for maturity calculation.
	 * @param value
	 */
	override
    void setWeight1(string value) {
		getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_WEIGHT1), value);

	}

	/**
	 * Sets the actually used weight for maturity calculation.
	 * @param value
	 */
	override
    void setWeight2(string value) {
		getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_WEIGHT2), value);

	}

	override
    void setThreshold1(string value) {
		getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_THRESHOLD1), value);

	}

	override
    void setThreshold2(string value) {
		getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_THRESHOLD2), value);

	}

	string getFeedbackNote() {
	    return getEntity().getPropertyValue(PROP_FEEDBACK_NOTE);
    }

    string getGsmDescription() {
        return getEntity().getPropertyValue(PROP_GSM_ISM_CONTROL_DESCRIPTION);
    }

    /* (non-Javadoc)
     * @see iso27k.model.IControl#getMaturityPropertyId()
     */
    override string getMaturityPropertyId() {
        return PROP_MATURITY;
    }

    /* (non-Javadoc)
     * @see model.iso27k.IISRControl#getISRMaturity()
     */
    override int getISRMaturity() {
        return getEntity().getInt(PROP_ISR_MATURITY);
    }

    /* (non-Javadoc)
     * @see model.iso27k.IISRControl#getISRMaturityQuantity()
     */
    override string getISRMaturityQuantity() {
        return getEntity().getPropertyValue(PROP_ISR_MATURITY_QUANTITY);
    }

    /* (non-Javadoc)
     * @see model.iso27k.IISRControl#getISRPropertyId()
     */
    override string getISRPropertyId() {
        return PROP_ISR_MATURITY;
    }

    /* (non-Javadoc)
     * @see model.iso27k.IControl#setVersion(java.lang.String)
     */
    override
    void setVersion(string version) {
        // at the moment there it is not necessary to save the version Controls
        // see VN-1007 for details
    }

    /* (non-Javadoc)
     * @see model.iso27k.IControl#getVersion()
     */
    override string getVersion() {
        // at the moment there it is not necessary to save the version in Controls
        // see VN-1007 for details
        return null;
    }

    /**
     * Returns true if control implementation status is everything but not
     * {@link IControl#IMPLEMENTED_NA}.
     */
    static boolean isPlanned(Entity entity) {
       return !getImplementation(entity).equals(IMPLEMENTED_NA);
    }

}
