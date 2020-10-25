module uim.iso27001.interfaces.IISO27kElement;

import uim.grundschutz;

/**
 
 *
 */
interface IISO27kElement {

	string getTypeId();
	
	/**
	 * 
	 * REeturns the title of this element
	 * @return
	 */
	string getTitle();
	
	/**
     * Sets the title of of this element
     * 
     * TODO: change method name to "setTit>>>le<<<"
     * 
     * @param name 
     */
    void setTitel(string name);
}
