package ch.qos.logback.classic.util;

import ch.qos.logback.classic.LoggerContext;
import ch.qos.logback.classic.joran.JoranConfigurator;
import ch.qos.logback.core.android.CommonPathUtil;
import ch.qos.logback.core.joran.spi.JoranException;
import ch.qos.logback.core.status.InfoStatus;
import ch.qos.logback.core.status.StatusManager;
import ch.qos.logback.core.util.Loader;
import ch.qos.logback.core.util.OptionHelper;
import java.io.File;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
/* loaded from: classes.dex */
public class ContextInitializer {
    private static final String ASSETS_DIR = CommonPathUtil.getAssetsDirectoryPath();
    public static final String AUTOCONFIG_FILE = "logback.xml";
    public static final String CONFIG_FILE_PROPERTY = "logback.configurationFile";
    public static final String STATUS_LISTENER_CLASS = "logback.statusListenerClass";
    final ClassLoader classLoader = Loader.getClassLoaderOfObject(this);
    final LoggerContext loggerContext;

    public ContextInitializer(LoggerContext loggerContext) {
        this.loggerContext = loggerContext;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.net.URL] */
    /* JADX WARN: Type inference failed for: r1v9 */
    private URL findConfigFileFromSystemProperties(boolean z) {
        URL url;
        String str = 0;
        String str2 = null;
        String str3 = null;
        String systemProperty = OptionHelper.getSystemProperty(CONFIG_FILE_PROPERTY);
        try {
            if (systemProperty != null) {
                try {
                    File file = new File(systemProperty);
                    if (!file.exists() || !file.isFile()) {
                        url = new URL(systemProperty);
                    } else {
                        if (z) {
                            statusOnResourceSearch(systemProperty, this.classLoader, systemProperty);
                        }
                        url = file.toURI().toURL();
                    }
                    if (!z) {
                        return url;
                    }
                    ClassLoader classLoader = this.classLoader;
                    if (url != null) {
                        str2 = url.toString();
                    }
                    statusOnResourceSearch(systemProperty, classLoader, str2);
                    return url;
                } catch (MalformedURLException e) {
                    URL resource = Loader.getResource(systemProperty, this.classLoader);
                    if (resource != null) {
                        if (!z) {
                            return resource;
                        }
                        ClassLoader classLoader2 = this.classLoader;
                        if (resource != null) {
                            str3 = resource.toString();
                        }
                        statusOnResourceSearch(systemProperty, classLoader2, str3);
                        return resource;
                    } else if (z) {
                        statusOnResourceSearch(systemProperty, this.classLoader, resource != null ? resource.toString() : null);
                    }
                }
            }
            return null;
        } catch (Throwable th) {
            if (z) {
                ClassLoader classLoader3 = this.classLoader;
                if (0 != 0) {
                    str = str.toString();
                }
                statusOnResourceSearch(systemProperty, classLoader3, str);
            }
            throw th;
        }
    }

    private InputStream findConfigFileURLFromAssets(boolean z) {
        return getResource(ASSETS_DIR + "/" + AUTOCONFIG_FILE, this.classLoader, z);
    }

    private InputStream getResource(String str, ClassLoader classLoader, boolean z) {
        InputStream resourceAsStream = classLoader.getResourceAsStream(str);
        if (z) {
            String str2 = null;
            if (resourceAsStream != null) {
                str2 = str;
            }
            statusOnResourceSearch(str, classLoader, str2);
        }
        return resourceAsStream;
    }

    private void statusOnResourceSearch(String str, ClassLoader classLoader, String str2) {
        StatusManager statusManager = this.loggerContext.getStatusManager();
        if (str2 == null) {
            statusManager.add(new InfoStatus("Could NOT find resource [" + str + "]", this.loggerContext));
        } else {
            statusManager.add(new InfoStatus("Found resource [" + str + "] at [" + str2 + "]", this.loggerContext));
        }
    }

    public void autoConfig() throws JoranException {
        InputStream findConfigFileURLFromAssets;
        StatusListenerConfigHelper.installIfAsked(this.loggerContext);
        boolean z = false;
        JoranConfigurator joranConfigurator = new JoranConfigurator();
        joranConfigurator.setContext(this.loggerContext);
        URL findConfigFileFromSystemProperties = findConfigFileFromSystemProperties(true);
        if (findConfigFileFromSystemProperties != null) {
            joranConfigurator.doConfigure(findConfigFileFromSystemProperties);
            z = true;
        }
        if (z || (findConfigFileURLFromAssets = findConfigFileURLFromAssets(true)) == null) {
            return;
        }
        joranConfigurator.doConfigure(findConfigFileURLFromAssets);
    }
}
