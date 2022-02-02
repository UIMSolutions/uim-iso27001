module uim.iso27001.maximumProtectionRequirementsValueListener;

import uim.iso27001;


// import java.io.Serializable;
// import java.util.function.IntConsumer;
// import java.util.function.IntSupplier;

// import model.common.AbstractLinkChangeListener;
// import model.common.CascadingTransaction;
// import model.common.CnALink;

// import model.common.TransactionAbortedException;

/**
 * Calculates the protection requirement level by taking the highest values of
 * all linked CnATreeElements (maximum principle). This listener works together
 * with the {@link ProtectionRequirementsValueAdapter} to react to changes in
 * the value of the linked elements.
 * 
 * @author koderman@snt.de

 *
 */
class MaximumProtectionRequirementsValueListener {
/* class MaximumProtectionRequirementsValueListener : AbstractLinkChangeListener
        : Serializable {
 
    private static final InheritLogger LOG_INHERIT = InheritLogger
            .getLogger(MaximumProtectionRequirementsValueListener.class);

    protected CnATreeElement sbTarget;

    private // static final string STRING_CONNECTOR_FOR = " for ";

    MaximumProtectionRequirementsValueListener(CnATreeElement item) {
        this.sbTarget = item;
    }

    override
    void determineIntegrity(CascadingTransaction ta) throws TransactionAbortedException {
        if (hasBeenVisited(ta)) {
            return;
        }

        ta.enter(sbTarget);

        if (LOG_INHERIT.isDebug()) {
            LOG_INHERIT.debug("Determining integrity for " + sbTarget.getTitle()); //$NON-NLS-1$
        }

        // get protection level from upward links:
        int highestValue = 0;
        for (CnALink link : sbTarget.getLinksUp()) {
            CnATreeElement upwardElmt = link.getDependant();
            if (upwardElmt.isProtectionRequirementsProvider()) {
                // upwardElement might depend on maximum level itself, so
                // recurse up:
                upwardElmt.getLinkChangeListener().determineIntegrity(ta);

                int value = upwardElmt.getProtectionRequirementsProvider().getIntegrity();
                if (value > highestValue) {
                    highestValue = value;
                }
            }
        }

        // if we don't use the maximum principle, keep current level:
        if (!sbTarget.getProtectionRequirementsProvider().isCalculatedIntegrity()) {
            if (LOG_INHERIT.isInfo()) {
                LOG_INHERIT.info("Integrity is set manually: " //$NON-NLS-1$
                        + sbTarget.getProtectionRequirementsProvider().getIntegrity()
                        + STRING_CONNECTOR_FOR + sbTarget.getTitle()); // $NON-NLS-2$
            }
            return;
        }

        if (LOG_INHERIT.isInfo()) {
            LOG_INHERIT.info("Setting maximum integrity " + highestValue + STRING_CONNECTOR_FOR //$NON-NLS-1$
                    + sbTarget.getTitle()); // $NON-NLS-2$
        }
        updateValue(sbTarget.getProtectionRequirementsProvider()::getIntegrity,
                sbTarget.getProtectionRequirementsProvider()::setIntegrity, highestValue);
    }

    override
    void determineAvailability(CascadingTransaction ta) throws TransactionAbortedException {
        if (hasBeenVisited(ta)) {
            return;
        }

        ta.enter(sbTarget);

        if (LOG_INHERIT.isDebug()) {
            LOG_INHERIT.debug("Determining availability for " + sbTarget.getTitle()); //$NON-NLS-1$
        }

        // otherwise get protection level from upward links:
        int highestValue = 0;
        for (CnALink link : sbTarget.getLinksUp()) {
            CnATreeElement upwardElmt = link.getDependant();
            if (upwardElmt.isProtectionRequirementsProvider()) {

                // upwardElement might depend on maximum level itself, so
                // recurse up:
                upwardElmt.getLinkChangeListener().determineAvailability(ta);

                int value = upwardElmt.getProtectionRequirementsProvider().getAvailability();
                if (value > highestValue) {
                    highestValue = value;
                }
            }
        }

        // if we don't use the maximum principle, keep current level:
        if (!sbTarget.getProtectionRequirementsProvider().isCalculatedAvailability()) {
            if (LOG_INHERIT.isInfo()) {
                LOG_INHERIT.info("Availability is set manually: " //$NON-NLS-1$
                        + sbTarget.getProtectionRequirementsProvider().getAvailability()
                        + STRING_CONNECTOR_FOR + sbTarget.getTitle()); // $NON-NLS-2$
            }
            return;
        }

        if (LOG_INHERIT.isInfo()) {
            LOG_INHERIT.info("Setting maximum availability " + highestValue + STRING_CONNECTOR_FOR //$NON-NLS-1$
                    + sbTarget.getTitle()); // $NON-NLS-2$
        }
        updateValue(sbTarget.getProtectionRequirementsProvider()::getAvailability,
                sbTarget.getProtectionRequirementsProvider()::setAvailability, highestValue);
    }

    override
    void determineConfidentiality(CascadingTransaction ta)
            throws TransactionAbortedException {

        if (hasBeenVisited(ta)) {
            return;
        }
        ta.enter(sbTarget);

        if (LOG_INHERIT.isDebug()) {
            LOG_INHERIT.debug("Determining confidentiality for " + sbTarget.getTitle()); //$NON-NLS-1$
        }

        // otherwise get protection level from upward links:
        int highestValue = 0;
        for (CnALink link : sbTarget.getLinksUp()) {
            CnATreeElement upwardElmt = link.getDependant();
            if (upwardElmt.isProtectionRequirementsProvider()) {

                // upwardElement might depend on maximum level itself, so
                // recurse up:
                upwardElmt.getLinkChangeListener().determineConfidentiality(ta);

                int value = upwardElmt.getProtectionRequirementsProvider().getConfidentiality();
                if (value > highestValue) {
                    highestValue = value;
                }
            }
        }
        // if we don't use the maximum principle, keep current level:
        if (!sbTarget.getProtectionRequirementsProvider().isCalculatedConfidentiality()) {
            if (LOG_INHERIT.isInfo()) {
                LOG_INHERIT.info("Confidentiality is set manually: " //$NON-NLS-1$
                        + sbTarget.getProtectionRequirementsProvider().getConfidentiality()
                        + STRING_CONNECTOR_FOR + sbTarget.getTitle()); // $NON-NLS-2$
            }
            return;
        }

        if (LOG_INHERIT.isInfo()) {
            LOG_INHERIT.info("Setting maximum confidentiality " + highestValue //$NON-NLS-1$
                    + STRING_CONNECTOR_FOR + sbTarget.getTitle()); // $NON-NLS-2$
        }
        updateValue(sbTarget.getProtectionRequirementsProvider()::getConfidentiality,
                sbTarget.getProtectionRequirementsProvider()::setConfidentiality, highestValue);

    }

    private void updateValue(IntSupplier getter, IntConsumer setter, int newValue) {
        int oldValue = getter.getAsInt();
        if (oldValue != newValue) {
            setter.accept(newValue);
            sbTarget.getEntity().trackChange("central");
        }
    }

    private boolean hasBeenVisited(CascadingTransaction ta) {
        if (ta.hasBeenVisited(sbTarget)) {
            if (LOG_INHERIT.isDebug()) {
                LOG_INHERIT.debug(sbTarget.getTitle() + " has benn visited"); //$NON-NLS-1$
            }
            return true; // we have already been down this path
        }
        return false;
    }
    */
}
