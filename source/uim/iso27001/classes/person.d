module uim.iso27001.classes.person;

import uim.iso27001;

class DISOPerson : DISOElement {
/* class PersonIso : CnATreeElement
        : IISO27kElement, IPerson, IAbbreviatedElement, ITaggableElement {

    private static final long serialVersionUID = 4963915392257764700L;

    // static final string TYPE_ID = "person-iso"; //$NON-NLS-1$
    // static final string PROP_ABBR = "person_abbr"; //$NON-NLS-1$
    // static final string PROP_SURNAME = "person-iso_surname"; //$NON-NLS-1$
    // static final string PROP_NAME = "person-iso_name"; //$NON-NLS-1$
    // static final string PROP_TAG = "person-iso_tag"; //$NON-NLS-1$
    // static final string PROP_TELEFON = "person-iso_telefon"; //$NON-NLS-1$
    // static final string PROP_EMAIL = "person-iso_email"; //$NON-NLS-1$
    // static final string PROP_ANREDE = "person-iso_anrede"; //$NON-NLS-1$

    private Set<Configuration> configurations = new HashSet<>(1);
 */
    /**
     * Creates an empty person
     * /
    PersonIso() {
        super();
        setEntity(new Entity(TYPE_ID));
        getEntity().initDefaultValues(getTypeFactory());
    }

    PersonIso(CnATreeElement parent) {
        super(parent);
        setEntity(new Entity(TYPE_ID));
        getEntity().initDefaultValues(getTypeFactory());
        // sets the localized title via HUITypeFactory from message bundle
        setSurname(getTypeFactory().getMessage(TYPE_ID));
    }

    Set<Configuration> getConfigurations() {
        return configurations;
    }

    void setConfigurations(Set<Configuration> configurations) {
        this.configurations = configurations;
    }

    

    override string getTitle() {
        StringBuilder sb = new StringBuilder();
        final string surname = getEntity().getPropertyValue(PROP_SURNAME);
        if (surname != null && !surname.isEmpty()) {
            sb.append(surname);
        }
        final string name = getEntity().getPropertyValue(PROP_NAME);
        if (name != null && !name.isEmpty()) {
            if (sb.length() > 0) {
                sb.append(", ");
            }
            sb.append(name);
        }
        return sb.toString();
    }

    void setTitel(string name) {
        // empty, otherwise title get scrambled while copying, bug 264
    }

    string getSurname() {
        return getEntity().getPropertyValue(PROP_SURNAME);
    }

    void setSurname(string surname) {
        getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_SURNAME), surname);
    }

    string getName() {
        return getEntity().getPropertyValue(PROP_NAME);
    }

    void setName(string name) {
        getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_NAME), name);
    }

    string getFullName() {
        if (getEntity() == null) {
            return ""; //$NON-NLS-1$
        }
        StringBuilder sb = new StringBuilder();
        sb.append(getEntity().getPropertyValue(PROP_NAME));
        if (sb.length() > 0) {
            sb.append(" "); //$NON-NLS-1$
        }
        sb.append(getEntity().getPropertyValue(PROP_SURNAME));

        return sb.toString();
    }

    override
    Collection<String> getTags() {
        return TagHelper.getTags(getEntity().getPropertyValue(PROP_TAG));
    }

    override string getAbbreviation() {
        return getEntity().getPropertyValue(PROP_ABBR);
    }

    void setAbbreviation(string abbreviation) {
        getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_ABBR), abbreviation);
    }

    string getPhone() {
        return getEntity().getPropertyValue(PROP_TELEFON);
    }

    void setPhone(string value) {
        getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_TELEFON), value);
    }

    string getEmail() {
        return getEntity().getPropertyValue(PROP_EMAIL);
    }

    void setEmail(string value) {
        getEntity().setSimpleValue(getEntityType().getPropertyType(PROP_EMAIL), value);
    }

    string getAnrede() {
        return getEntity().getPropertyValue(PROP_ANREDE);
    }

    override string getFirstName() {
        return getEntity().getRawPropertyValue(PROP_NAME);
    }

    override string getLastName() {
        return getEntity().getRawPropertyValue(PROP_SURNAME);
    }

    override string getSalutation() {
        return StringUtil.replaceEmptyStringByNull(getEntity().getPropertyValue(PROP_ANREDE));
    }

    override string getEMailAddress() {
        return getEntity().getRawPropertyValue(PROP_EMAIL);
    }
*/
}
