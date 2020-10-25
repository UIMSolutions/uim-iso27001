module uim.iso27001.interfaces.IISRControl;


import uim.grundschutz;



interface IISRControl {

    int getISRMaturity();
    
    string getISRMaturityQuantity();
    
    /**
     * @return the id of the maturity property in SNCA.xml
     */
    string getISRPropertyId();
    

}
