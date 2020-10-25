module uim.grundschutz.models.iso27k.ProtectionRequirementsValueAdapter;

import uim.grundschutz;

/* // import java.io.Serializable;
// import java.util.HashSet;
// import java.util.Set;



// import snt.hui.common.connect.EntityType;
// import snt.hui.common.connect.HUITypeFactory;
// import snt.hui.common.connect.PropertyList;
// import snt.hui.common.connect.PropertyType;
// import interfaces.AbstractReevaluator;
// import model.common.CascadingTransaction;

// import model.common.TransactionAbortedException;
 */
/**
 * Let the contained {@link CnATreeElement} reeavluate the values for the protection requirements.
 * By convention property identifiers for the protection requirements are build by the following rules:
 * <pre>
 * CnATreeElement.getTypeId()+ '_value_confidentiality'
 * CnATreeElement.getTypeId()+ '_value_integrity'
 * CnATreeElement.getTypeId()+ '_value_availability'
 * </pre>
 * for the value and
 * <pre>
 * CnATreeElement.getTypeId()+ '_value_method_confidentiality'
 * CnATreeElement.getTypeId()+ '_value_method_integrity'
 * CnATreeElement.getTypeId()+ '_value_method_availability'
 * </pre>
 * for the flag, indication the deduction.<br/>
 *
 * @author koderman@snt.de

 *
 */

class ProtectionRequirementsValueAdapter  : AbstractReevaluator : Serializable {

    private static final Logger LOG = Logger.getLogger(ProtectionRequirementsValueAdapter.class);

    private CnATreeElement cnaTreeElement;

    ProtectionRequirementsValueAdapter(CnATreeElement parent) {
        this.cnaTreeElement = parent;
    }

    override int getIntegrity() {
        if (LOG.isDebugEnabled()) {
            LOG.debug("get Integrity for " + cnaTreeElement); //$NON-NLS-1$
        }
        PropertyList properties = cnaTreeElement.getEntity().getProperties(cnaTreeElement.getTypeId() + AssetValueService.INTEGRITY);
        if (properties != null && properties.getProperties() != null
                && !properties.getProperties().isEmpty()) {
            return properties.getProperty(0).getNumericPropertyValue();
        } else {
            return AssetValueService.VALUE_UNDEF;
        }
    }

    override int getAvailability() {
        if (LOG.isDebugEnabled()) {
            LOG.debug("get avail. for " + cnaTreeElement); //$NON-NLS-1$
        }
        PropertyList properties = cnaTreeElement.getEntity().getProperties(cnaTreeElement.getTypeId() + AssetValueService.AVAILABILITY);
        if (properties != null && properties.getProperties() != null
                && !properties.getProperties().isEmpty()) {
            return properties.getProperty(0).getNumericPropertyValue();
        } else {
            return AssetValueService.VALUE_UNDEF;
        }
    }

    override int getConfidentiality() {
        if (LOG.isDebugEnabled()) {
            LOG.debug("get confid. for " + cnaTreeElement); //$NON-NLS-1$
        }
        PropertyList properties = cnaTreeElement.getEntity().getProperties(cnaTreeElement.getTypeId() + AssetValueService.CONFIDENTIALITY);
        if (properties != null && properties.getProperties() != null
                && !properties.getProperties().isEmpty()) {
            return properties.getProperty(0).getNumericPropertyValue();
        } else {
            return AssetValueService.VALUE_UNDEF;
        }
    }

    override
    void setIntegrity(int i) {
        if (LOG.isDebugEnabled()) {
            LOG.debug("set integrity for " + cnaTreeElement); //$NON-NLS-1$
        }
        EntityType entityType = HUITypeFactory.getInstance()
                .getEntityType(cnaTreeElement.getEntity().getEntityType());
        string id = cnaTreeElement.getTypeId() + AssetValueService.INTEGRITY;
        PropertyType propertyType = entityType.getPropertyType(id);
        if (propertyType != null) {
            cnaTreeElement.getEntity().setSimpleValue(propertyType, Integer.toString(i));
        }
    }

    override
    void setAvailability(int i) {
        if (LOG.isDebugEnabled()) {
            LOG.debug("set avail. for " + cnaTreeElement); //$NON-NLS-1$
        }
        EntityType entityType = HUITypeFactory.getInstance()
                .getEntityType(cnaTreeElement.getEntity().getEntityType());
        PropertyType propertyType = entityType
                .getPropertyType(cnaTreeElement.getTypeId() + AssetValueService.AVAILABILITY);
        if (propertyType != null) {
            cnaTreeElement.getEntity().setSimpleValue(propertyType, Integer.toString(i));
        }
    }

    override
    void setConfidentiality(int i) {
        if (LOG.isDebugEnabled()) {
            LOG.debug("set confd. for " + cnaTreeElement); //$NON-NLS-1$
        }
        EntityType entityType = HUITypeFactory.getInstance()
                .getEntityType(cnaTreeElement.getEntity().getEntityType());
        PropertyType propertyType = entityType
                .getPropertyType(cnaTreeElement.getTypeId() + AssetValueService.CONFIDENTIALITY);
        if (propertyType != null) {
            cnaTreeElement.getEntity().setSimpleValue(propertyType, Integer.toString(i));
        }
    }

    CnATreeElement getParent() {
        return cnaTreeElement;
    }

    void setParent(CnATreeElement parent) {
        this.cnaTreeElement = parent;
    }

    override
    void updateIntegrity(CascadingTransaction ta) {
        try {
            // 1st step: traverse down:
            // find bottom nodes from which to start:
            CascadingTransaction downwardsTA = new CascadingTransaction();
            Set<CnATreeElement> bottomNodes = new HashSet<>();
            findBottomNodes(cnaTreeElement, bottomNodes, downwardsTA);

            // 2nd step: traverse up:
            for (CnATreeElement bottomNode : bottomNodes) {
                // determine protection level from parents (or keep own
                // depending on description):
                bottomNode.getLinkChangeListener().determineIntegrity(ta);

            }

        } catch (TransactionAbortedException tae) {
            LOG.debug("Reevaluation of integrity aborted."); //$NON-NLS-1$
        } catch (RuntimeException e) {
            LOG.error(Messages.AssetValueAdapter_11, e);
            ta.abort();
            throw e;
        } catch (java.lang.Exception e) {
            LOG.error(Messages.AssetValueAdapter_11, e);
            ta.abort();
            throw new RuntimeException(e);
        }
    }

    override
    void updateAvailability(CascadingTransaction ta) {
        try {
            // 1st step: traverse down:
            // find bottom nodes from which to start:
            CascadingTransaction downwardsTA = new CascadingTransaction();
            Set<CnATreeElement> bottomNodes = new HashSet<>();
            findBottomNodes(cnaTreeElement, bottomNodes, downwardsTA);

            // 2nd step: traverse up:
            for (CnATreeElement bottomNode : bottomNodes) {
                // determine protection level from parents (or keep own
                // depending on settings):
                bottomNode.getLinkChangeListener().determineAvailability(ta);
            }

        } catch (TransactionAbortedException tae) {
            LOG.debug("Reevaluation of availability aborted."); //$NON-NLS-1$
        } catch (RuntimeException e) {
            LOG.error(Messages.AssetValueAdapter_7, e);
            ta.abort();
            throw e;
        } catch (java.lang.Exception e) {
            LOG.error(Messages.AssetValueAdapter_11, e);
            ta.abort();
            throw new RuntimeException(e);
        }
    }

    override
    void updateConfidentiality(CascadingTransaction ta) {
        try {
            // 1st step: traverse down:
            // find bottom nodes from which to start:
            CascadingTransaction downwardsTA = new CascadingTransaction();
            Set<CnATreeElement> bottomNodes = new HashSet<>();
            findBottomNodes(cnaTreeElement, bottomNodes, downwardsTA);

            // 2nd step: traverse up:
            for (CnATreeElement bottomNode : bottomNodes) {
                // determine protection level from parents (or keep own
                // depending on description):
                bottomNode.getLinkChangeListener().determineConfidentiality(ta);
            }
        } catch (TransactionAbortedException tae) {
            LOG.debug("Reevaluation of confidentiality aborted."); //$NON-NLS-1$
        } catch (RuntimeException e) {
            LOG.error(Messages.AssetValueAdapter_9, e);
            ta.abort();
            throw e;
        } catch (java.lang.Exception e) {
            LOG.error(Messages.AssetValueAdapter_11, e);
            ta.abort();
            throw new RuntimeException(e);
        }
    }


    override string getIntegrityDescription() {
        return getDescription();
    }

    override string getAvailabilityDescription() {
        return getDescription();
    }

    private string getDescription() {
        return cnaTreeElement.getEntity().getSimpleValue(cnaTreeElement.getTypeId() + AssetValueService.EXPLANATION);
    }

    private void setDescription(string text) {
        EntityType entityType = HUITypeFactory.getInstance().getEntityType(cnaTreeElement.getEntity().getEntityType());
        cnaTreeElement.getEntity().setSimpleValue(entityType.getPropertyType(cnaTreeElement.getTypeId() + AssetValueService.EXPLANATION), text);
    }

    override string getConfidentialityDescription() {
        return getDescription();
    }


    override
    void setIntegrityDescription(string text) {
        setDescription(text);
    }

    override
    void setAvailabilityDescription(string text) {
        setDescription(text);
    }


    override
    void setConfidentialityDescription(string text) {
        setDescription(text);
    }

    override
    boolean isCalculatedAvailability() {
        PropertyList properties = cnaTreeElement.getEntity().getProperties(cnaTreeElement.getTypeId() + AssetValueService.METHOD_AVAILABILITY);
        if (properties != null && properties.getProperties() != null
                && !properties.getProperties().isEmpty()) {
            return properties.getProperty(0).getNumericPropertyValue() == AssetValueService.METHOD_AUTO;
        } else {
            return false;
        }
    }

    override
    boolean isCalculatedConfidentiality() {
        PropertyList properties = cnaTreeElement.getEntity().getProperties(cnaTreeElement.getTypeId() + AssetValueService.METHOD_CONFIDENTIALITY);
        if (properties != null && properties.getProperties() != null
                && !properties.getProperties().isEmpty()) {
            return properties.getProperty(0).getNumericPropertyValue() == AssetValueService.METHOD_AUTO;
        } else {
            return false;
        }
    }

    override
    boolean isCalculatedIntegrity() {
        PropertyList properties = cnaTreeElement.getEntity().getProperties(cnaTreeElement.getTypeId() + AssetValueService.METHOD_INTEGRITY);
        if (properties != null && properties.getProperties() != null
                && !properties.getProperties().isEmpty()) {
            return properties.getProperty(0).getNumericPropertyValue() == AssetValueService.METHOD_AUTO;
        } else {
            return false;
        }
    }
}
