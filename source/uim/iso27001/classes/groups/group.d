module uim.iso27001.classes.groups.group;

import uim.iso27001;

class DISOGroup(T) {
// abstract class Group(T) : CnATreeElement {
    this() {
        // super();
    }

    mixin(OProperty!("string", "title"));

    /**
     * @param parent
     * /
    Group(CnATreeElement parent) {
        super(parent);
    }

    /**
     * Returns a array of child-type-ids of this group. Implemnt this and use
     * TYPE_ID of childs
     * 
     * @return array of child-type-ids
     * /
    abstract string[] getChildTypes();

    /*
     * (non-Javadoc)
     * 
     * @see
     * snt.gs.ui.rcp.main.common.model.CnATreeElement#canContain(java.lang.
     * Object)
     * /
    override
    boolean canContain(Object obj) {
        boolean canContain = false;
        if (obj instanceof CnATreeElement) {
            CnATreeElement element = (CnATreeElement) obj;
            canContain = Arrays.asList(getChildTypes()).contains(element.getTypeId())
                    || this.getTypeId().equals(element.getTypeId());
        }
        return canContain;
    }
    */
}
