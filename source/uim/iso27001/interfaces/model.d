module uim.iso27001.interfaces.model;


import uim.iso27001;

class IISOModel {
/*  : CnATreeElement, IISO27kRoot {
 */
	/* private static final Logger log = Logger.getLogger(ISOModel.class);
	
	// static final string TYPE_ID = "iso27kmodel"; //$NON-NLS-1$
	
	// static final string TITLE = "ISO 27000 Modeling"; //$NON-NLS-1$
	
	private transient List<IISOModelListener> listeners;
 */	
	/* (non-Javadoc)
	 * @see snt.gs.ui.rcp.main.common.model.CnATreeElement#getTitel()
	 * /
	override string getTitle() {
		return TITLE;
	}

	/* (non-Javadoc)
	 * @see snt.gs.ui.rcp.main.common.model.CnATreeElement#getTypeId()
	 * /

	
	override
	boolean canContain(Object obj) {
		return (obj instanceof Organization || obj instanceof ImportIsoGroup);
	}

	override
	void childAdded(CnATreeElement category, CnATreeElement child) {
		for (IISOModelListener listener : getListeners()) {
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
		for (IISOModelListener listener : getListeners()) {
			listener.databaseChildAdded(child);
		}
	}
	
	override
	void childRemoved(CnATreeElement category, CnATreeElement child) {
		for (IISOModelListener listener : getListeners()) {
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
		for (IISOModelListener listener : getListeners()) {
			listener.databaseChildRemoved(child);
		}	
	}
	
	override
	void databaseChildRemoved(ChangeLogEntry entry) {
		for (IISOModelListener listener : getListeners()) {
			listener.databaseChildRemoved(entry);
		}
	}

	
	override
	void childChanged(CnATreeElement child) {
		for (IISOModelListener listener : getListeners()) {
			listener.childChanged(child);
		}
	}
	
	override
	void databaseChildChanged(CnATreeElement child) {
		for (IISOModelListener listener : getListeners()) {
			listener.databaseChildChanged(child);
		}
	}
	
	override
	void linkChanged(CnALink old, CnALink link, Object source) {
		for (IISOModelListener listener : getListeners()) {
			listener.linkChanged(old, link, source);
		}
	}
	
	override
	void linkRemoved(CnALink link) {
		for (IISOModelListener listener : getListeners()) {
			listener.linkRemoved(link);
		}
	}
	
	override
	void linkAdded(CnALink link) {
		for (IISOModelListener listener : getListeners()) {
			listener.linkAdded(link);
		}
	}
	
	void modelReload(ISOModel newModel) {
		for (IISOModelListener listener : getListeners()) {
			listener.modelReload(newModel);
			if (log.isDebugEnabled()) {
				log.debug("modelReload, listener: " + listener); //$NON-NLS-1$
			}
		}
	}
	
	void addISOModelListener(IISOModelListener listener) {
	    if (log.isDebugEnabled()) {
            log.debug("Adding ISO model listener.");
        }
		if (!getListeners().contains(listener)){
			getListeners().add(listener);
		}
	}
	
	void removeISOModelListener(IISOModelListener listener) {
		if (getListeners().contains(listener)){
			getListeners().remove(listener);
		}
	}
	
	private synchronized List<IISOModelListener> getListeners() {
		if (listeners == null){
			listeners = new CopyOnWriteArrayList<IISOModelListener>();
		}
		return listeners;
	}
	
	override
	void refreshAllListeners(Object source) {
		Logger.getLogger(this.getClass()).debug("Model refresh to all listeners."); //$NON-NLS-1$
		for (IISOModelListener listener : getListeners()) {
			listener.modelRefresh(source);
		}
	}
	
    /**
     * Moves all {@link IISOModelListener} from this model
     * to newModel.
     * 
     * @param newModel 
     * /
    void moveListener(ISOModel newModel) {
        for (IISOModelListener listener : getListeners()) {
            newModel.addISOModelListener(listener);
        }
        for (IISOModelListener listener : getListeners()) {
            removeISOModelListener(listener);
        }      
    }
    
    override
    void validationAdded(Integer scopeId){
        for(IISOModelListener listener : getListeners()){
            listener.validationAdded(scopeId);
        }
    }
    
    override
    void validationRemoved(Integer scopeId){
        for(IISOModelListener listener : getListeners()){
            listener.validationRemoved(scopeId);
        }
    }
    
    override
    void validationChanged(CnAValidation oldValidation, CnAValidation newValidation){
        // do nothing
    }
		*/
}
