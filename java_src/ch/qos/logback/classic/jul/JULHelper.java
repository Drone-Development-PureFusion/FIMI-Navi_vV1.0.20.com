package ch.qos.logback.classic.jul;

import java.util.logging.Level;
import java.util.logging.Logger;
@Deprecated
/* loaded from: classes.dex */
public class JULHelper {
    public static Level asJULLevel(ch.qos.logback.classic.Level level) {
        if (level == null) {
            throw new IllegalArgumentException("Unexpected level [null]");
        }
        switch (level.levelInt) {
            case Integer.MIN_VALUE:
                return Level.ALL;
            case 5000:
                return Level.FINEST;
            case 10000:
                return Level.FINE;
            case 20000:
                return Level.INFO;
            case 30000:
                return Level.WARNING;
            case ch.qos.logback.classic.Level.ERROR_INT /* 40000 */:
                return Level.SEVERE;
            case Integer.MAX_VALUE:
                return Level.OFF;
            default:
                throw new IllegalArgumentException("Unexpected level [" + level + "]");
        }
    }

    public static Logger asJULLogger(ch.qos.logback.classic.Logger logger) {
        return asJULLogger(logger.getName());
    }

    public static Logger asJULLogger(String str) {
        return Logger.getLogger(asJULLoggerName(str));
    }

    public static String asJULLoggerName(String str) {
        return org.slf4j.Logger.ROOT_LOGGER_NAME.equals(str) ? "" : str;
    }

    public static final boolean isRegularNonRootLogger(Logger logger) {
        return logger != null && !logger.getName().equals("");
    }

    public static final boolean isRoot(Logger logger) {
        if (logger == null) {
            return false;
        }
        return logger.getName().equals("");
    }
}
