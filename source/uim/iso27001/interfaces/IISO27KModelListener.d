module uim.iso27001.interfaces.IISO27KModelListener;


import uim.grundschutz;

interface IISO27KModelListener {
	
	/**
	 * Element was deleted in database.
	 * Hint to view that it should reload from database.
	 * 
	 * @param child
	 */
	void databaseChildRemoved(CnATreeElement child);

	/**IBSIModelListener
	 * @param category
	 * @param child
	 */
	void childAdded(CnATreeElement category, CnATreeElement child);

	/**
	 * @param child
	 */
	void databaseChildAdded(CnATreeElement child);
	
	/**
	 * @param object
	 */
	void modelRefresh(Object object);

	/**
	 * @param category
	 * @param child
	 */
	void childRemoved(CnATreeElement category, CnATreeElement child);

	/**
	 * @param child
	 */
	void childChanged(CnATreeElement child);

	/**
	 * @param child
	 */
	void databaseChildChanged(CnATreeElement child);

	/**
	 * @param entry
	 */
	void databaseChildRemoved(ChangeLogEntry entry);

	/**
	 * @param link
	 */
	void linkChanged(CnALink old, CnALink link, Object source);

	/**
	 * @param link
	 */
	void linkRemoved(CnALink link);

	/**
	 * @param link
	 */
	void linkAdded(CnALink link);

	/**
	 * @param newModel
	 */
	void modelReload(ISO27KModel newModel);
	
    void validationAdded(Integer scopeId);
    
    void validationRemoved(Integer scopeId);
    
    void validationChanged(CnAValidation oldValidation, CnAValidation newValidation);
	
}
