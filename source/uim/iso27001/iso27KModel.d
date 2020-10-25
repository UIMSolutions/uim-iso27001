module uim.iso27001.iso27KModel;


import uim.grundschutz;

class ISO27KModel : CnATreeElement, IISO27kRoot {

	private static final Logger log = Logger.getLogger(ISO27KModel.class);
	
	static final string TYPE_ID = "iso27kmodel"; //$NON-NLS-1$
	
	static final string TITLE = "ISO 27000 Modeling"; //$NON-NLS-1$
	
	private transient List<IISO27KModelListener> listeners;
	
	/* (non-Javadoc)
	 * @see snt.gs.ui.rcp.main.common.model.CnATreeElement#getTitel()
	 */
	override string getTitle() {
		return TITLE;
	}

	/* (non-Javadoc)
	 * @see snt.gs.ui.rcp.main.common.model.CnATreeElement#getTypeId()
	 */

	
	override
	boolean canContain(Object obj) {
		return (obj instanceof Organization || obj instanceof ImportIsoGroup);
	}

	override
	void childAdded(CnATreeElement category, CnATreeElement child) {
		for (IISO27KModelListener listener : getListeners()) {
			listener.childAdded(category, child);
			if (child instanceof Organization || child instanceof ImportIsoGroup) {
				listener.modelRefresh(null);
			}
		}
	}
	
	override
	void databaseChildAdded(CnATreeElement child) {
		if (child == null){
			return;
		}
		for (IISO27KModelListener listener : getListeners()) {
			listener.databaseChildAdded(child);
		}
	}
	
	override
	void childRemoved(CnATreeElement category, CnATreeElement child) {
		for (IISO27KModelListener listener : getListeners()) {
			listener.childRemoved(category, child);
		}
	}
	
	override
	void removeChild(CnATreeElement child) {
		if (getChildren().remove(child)) {
			this.childRemoved(this, child);
		}
	}
	
	override
	void databaseChildRemoved(CnATreeElement child) {
		for (IISO27KModelListener listener : getListeners()) {
			listener.databaseChildRemoved(child);
		}	
	}
	
	override
	void databaseChildRemoved(ChangeLogEntry entry) {
		for (IISO27KModelListener listener : getListeners()) {
			listener.databaseChildRemoved(entry);
		}
	}

	
	override
	void childChanged(CnATreeElement child) {
		for (IISO27KModelListener listener : getListeners()) {
			listener.childChanged(child);
		}
	}
	
	override
	void databaseChildChanged(CnATreeElement child) {
		for (IISO27KModelListener listener : getListeners()) {
			listener.databaseChildChanged(child);
		}
	}
	
	override
	void linkChanged(CnALink old, CnALink link, Object source) {
		for (IISO27KModelListener listener : getListeners()) {
			listener.linkChanged(old, link, source);
		}
	}
	
	override
	void linkRemoved(CnALink link) {
		for (IISO27KModelListener listener : getListeners()) {
			listener.linkRemoved(link);
		}
	}
	
	override
	void linkAdded(CnALink link) {
		for (IISO27KModelListener listener : getListeners()) {
			listener.linkAdded(link);
		}
	}
	
	void modelReload(ISO27KModel newModel) {
		for (IISO27KModelListener listener : getListeners()) {
			listener.modelReload(newModel);
			if (log.isDebugEnabled()) {
				log.debug("modelReload, listener: " + listener); //$NON-NLS-1$
			}
		}
	}
	
	void addISO27KModelListener(IISO27KModelListener listener) {
	    if (log.isDebugEnabled()) {
            log.debug("Adding ISO model listener.");
        }
		if (!getListeners().contains(listener)){
			getListeners().add(listener);
		}
	}
	
	void removeISO27KModelListener(IISO27KModelListener listener) {
		if (getListeners().contains(listener)){
			getListeners().remove(listener);
		}
	}
	
	private synchronized List<IISO27KModelListener> getListeners() {
		if (listeners == null){
			listeners = new CopyOnWriteArrayList<IISO27KModelListener>();
		}
		return listeners;
	}
	
	override
	void refreshAllListeners(Object source) {
		Logger.getLogger(this.getClass()).debug("Model refresh to all listeners."); //$NON-NLS-1$
		for (IISO27KModelListener listener : getListeners()) {
			listener.modelRefresh(source);
		}
	}
	
    /**
     * Moves all {@link IISO27KModelListener} from this model
     * to newModel.
     * 
     * @param newModel 
     */
    void moveListener(ISO27KModel newModel) {
        for (IISO27KModelListener listener : getListeners()) {
            newModel.addISO27KModelListener(listener);
        }
        for (IISO27KModelListener listener : getListeners()) {
            removeISO27KModelListener(listener);
        }      
    }
    
    override
    void validationAdded(Integer scopeId){
        for(IISO27KModelListener listener : getListeners()){
            listener.validationAdded(scopeId);
        }
    }
    
    override
    void validationRemoved(Integer scopeId){
        for(IISO27KModelListener listener : getListeners()){
            listener.validationRemoved(scopeId);
        }
    }
    
    override
    void validationChanged(CnAValidation oldValidation, CnAValidation newValidation){
        // do nothing
    }
}
