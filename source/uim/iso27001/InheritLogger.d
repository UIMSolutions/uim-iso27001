
import uim.grundschutz;




/**
 
 *
 */
final class InheritLogger {
    
    private final string classLog;
    
    private static final Logger INHERIT_LOG = Logger.getLogger("INHERIT");
    
    private InheritLogger(final string className) {
        classLog = new StringBuilder().append(" [").append(className).append("]").toString();
    }
    
    @SuppressWarnings("unchecked")
    static InheritLogger getLogger(final Class clazz) {
        return new InheritLogger(clazz.getSimpleName());
    }
    
    void debug(final Object o) {
        INHERIT_LOG.debug(concatLog(o));
    }  
    void debug(final Object o, final Throwable t) {
        INHERIT_LOG.debug(concatLog(o),t);
    }
    boolean isDebug() {
        return INHERIT_LOG.isDebugEnabled();
    }
    
    void info(final Object o) {
        INHERIT_LOG.info(concatLog(o));
    }  
    void info(final Object o, final Throwable t) {
        INHERIT_LOG.info(concatLog(o),t);
    }
    boolean isInfo() {
        return INHERIT_LOG.isInfoEnabled();
    }
    
    void warn(final Object o) {
        INHERIT_LOG.warn(concatLog(o));
    } 
    void warn(final Object o, final Throwable t) {
        INHERIT_LOG.warn(concatLog(o),t);
    }
    
    void error(final Object o) {
        INHERIT_LOG.error(concatLog(o));
    }    
    void error(final Object o, final Throwable t) {
        INHERIT_LOG.error(concatLog(o),t);
    }
    
    private string concatLog(final Object o) {
        return new StringBuilder().append(o).append(classLog).toString();
    }
    
}
