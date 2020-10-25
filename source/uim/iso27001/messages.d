module uim.iso27001.messages;

import uim.grundschutz;


// import org.eclipse.osgi.util.NLS;

/**
 * @author koderman@snt.de
 * @version $Rev$ $LastChangedDate$ 
 * $LastChangedBy$
 *
 */
final class Messages : NLS {
    private static final string BUNDLE_NAME = "model.iso27k.messages"; //$NON-NLS-1$
    static string AssetValueAdapter_11;
    static string AssetValueAdapter_7;
    static string AssetValueAdapter_9;
    static string ImportIsoGroup_0;
    static {
        // initialize resource bundle
        NLS.initializeMessages(BUNDLE_NAME, Messages.class);
    }

    private Messages() {
    }
}
