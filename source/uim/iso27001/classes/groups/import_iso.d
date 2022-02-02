module uim.iso27001.classes.groups.import_iso;

import uim.iso27001;

class ImportIsoGroup {
/* class ImportIsoGroup : Group<Organization>
        : IISO27kGroup, IISO27Scope {
	
	// static final string TYPE_ID = ImportIsoGroup.class.getSimpleName();

	// static final string[] CHILD_TYPES = new string[] { 
	    Organization.TYPE_ID,
	    Asset.TYPE_ID,
	    Audit.TYPE_ID,
	    Control.TYPE_ID,
	    Document.TYPE_ID,
	    Evidence.TYPE_ID,
	    Exception.TYPE_ID,
	    Finding.TYPE_ID,
	    Incident.TYPE_ID,
	    IncidentScenario.TYPE_ID,
	    Interview.TYPE_ID,
	    PersonIso.TYPE_ID,
	    Process.TYPE_ID,
	    Record.TYPE_ID,
	    Requirement.TYPE_ID,
	    Response.TYPE_ID,
	    Threat.TYPE_ID,
	    Vulnerability.TYPE_ID
	};
	
	ImportIsoGroup(CnATreeElement model) {
		super(model);
		setEntity(new Entity(TYPE_ID));
	}

	protected ImportIsoGroup() {
	}

	override string getTitle() {
		return Messages.ImportIsoGroup_0;
	}


	
    /* (non-Javadoc)
     * @see model.iso27k.IISO27kGroup#getChildTypes()
     * /
    override string[] getChildTypes() {
        return CHILD_TYPES;
    }
 */
}
