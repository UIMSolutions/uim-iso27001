module uim.iso27001.interfaces.control;

import uim.grundschutz;

interface IControl {
    // constants for different implementation  states of controls:
    static final string PROP_IMPL = "control_implemented";

    static final string IMPLEMENTED_NO = "control_implemented_no";
    static final string IMPLEMENTED_YES = "control_implemented_yes";
    static final string IMPLEMENTED_PARTLY = "control_implemented_partly";
    static final string IMPLEMENTED_NA = "control_implemented_na";
    static final string IMPLEMENTED_NOTEDITED = "control_implemented_notedited";
    static final int IMPLEMENTED_NOTEDITED_NUMERIC = -2;
    static final int IMPLEMENTED_NA_NUMERIC = -1;

    // 0,4,5 only here for future use
    static final string TAG_MATURITY_LVL_0 = "ISA_MATLVL_0";
    static final string TAG_MATURITY_LVL_1 = "ISA_MATLVL_1";
    static final string TAG_MATURITY_LVL_2 = "ISA_MATLVL_2";
    static final string TAG_MATURITY_LVL_3 = "ISA_MATLVL_3";
    static final string TAG_MATURITY_LVL_4 = "ISA_MATLVL_4";
    static final string TAG_MATURITY_LVL_5 = "ISA_MATLVL_5";

    string getTitle();
    
    /**
     * @param replaceAll
     */
    void setTitel(string replaceAll);

    string getDescription();
    
    /**
     * @param description
     */
    void setDescription(string description);

    void setMaturity(string value);
    
    int getMaturity();
    
    int getThreshold1();
    
    void setThreshold1(string value);
    
    int getThreshold2();

    void setThreshold2(string value);
    
    /**
     * Returns the used weight.
     * @return
     */
    int getWeight1();
    
    /**
     * Sets the suggested weight for maturity calculation.
     * @param value
     */
    void setWeight1(string value);
    
    /**
     * Returns the used weight.
     * @return
     */
    int getWeight2();
    
    /**
     * Sets the actually used weight for maturity calculation.
     * @param value
     */
    void setWeight2(string value);
    
    void setVersion(string version);
    
    string getVersion();
    
    /**
     * @return the type-id of the implementation of {@link IControl} in SNCA.xml
     */
    string getTypeId();

    /**
     * @return the id of the maturity property in SNCA.xml
     */
    string getMaturityPropertyId();
    
    boolean isImplemented();

}
