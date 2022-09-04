package ch.qos.logback.core.joran.action;

import ch.qos.logback.core.joran.spi.ActionException;
import ch.qos.logback.core.joran.spi.InterpretationContext;
import ch.qos.logback.core.joran.spi.JoranException;
import ch.qos.logback.core.util.Loader;
import ch.qos.logback.core.util.OptionHelper;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import org.xml.sax.Attributes;
/* loaded from: classes.dex */
public abstract class AbstractIncludeAction extends Action {
    private static final String FILE_ATTR = "file";
    private static final String OPTIONAL_ATTR = "optional";
    private static final String RESOURCE_ATTR = "resource";
    private static final String URL_ATTR = "url";
    private String attributeInUse;
    private boolean optional;
    private URL urlInUse;

    private URL attributeToURL(String str) {
        try {
            URL url = new URL(str);
            url.openStream().close();
            return url;
        } catch (MalformedURLException e) {
            if (!this.optional) {
                handleError("URL [" + str + "] is not well formed.", e);
            }
            return null;
        } catch (IOException e2) {
            if (!this.optional) {
                handleError("URL [" + str + "] cannot be opened.", e2);
            }
            return null;
        }
    }

    private boolean checkAttributes(Attributes attributes) {
        String value = attributes.getValue("file");
        String value2 = attributes.getValue("url");
        String value3 = attributes.getValue(RESOURCE_ATTR);
        int i = !OptionHelper.isEmpty(value) ? 1 : 0;
        if (!OptionHelper.isEmpty(value2)) {
            i++;
        }
        if (!OptionHelper.isEmpty(value3)) {
            i++;
        }
        if (i == 0) {
            handleError(String.format("One of \"%1$s\", \"%2$s\" or \"%3$s\" attributes must be set.", "file", RESOURCE_ATTR, "url"), null);
            return false;
        } else if (i > 1) {
            handleError(String.format("Only one of \"%1$s\", \"%2$s\" or \"%3$s\" attributes should be set.", "file", RESOURCE_ATTR, "url"), null);
            return false;
        } else if (i != 1) {
            throw new IllegalStateException("Count value [" + i + "] is not expected");
        } else {
            return true;
        }
    }

    private URL filePathAsURL(String str) {
        File file = new File(str);
        if (!file.exists() || !file.isFile()) {
            if (this.optional) {
                return null;
            }
            handleError("File does not exist [" + str + "]", new FileNotFoundException(str));
            return null;
        }
        try {
            return file.toURI().toURL();
        } catch (MalformedURLException e) {
            e.printStackTrace();
            return null;
        }
    }

    private URL getInputURL(InterpretationContext interpretationContext, Attributes attributes) {
        String value = attributes.getValue("file");
        String value2 = attributes.getValue("url");
        String value3 = attributes.getValue(RESOURCE_ATTR);
        if (!OptionHelper.isEmpty(value)) {
            this.attributeInUse = interpretationContext.subst(value);
            return filePathAsURL(this.attributeInUse);
        } else if (!OptionHelper.isEmpty(value2)) {
            this.attributeInUse = interpretationContext.subst(value2);
            return attributeToURL(this.attributeInUse);
        } else if (OptionHelper.isEmpty(value3)) {
            throw new IllegalStateException("A URL stream should have been returned");
        } else {
            this.attributeInUse = interpretationContext.subst(value3);
            return resourceAsURL(this.attributeInUse);
        }
    }

    private URL resourceAsURL(String str) {
        URL resourceBySelfClassLoader = Loader.getResourceBySelfClassLoader(str);
        if (resourceBySelfClassLoader == null) {
            if (this.optional) {
                return null;
            }
            handleError("Could not find resource corresponding to [" + str + "]", null);
            return null;
        }
        return resourceBySelfClassLoader;
    }

    @Override // ch.qos.logback.core.joran.action.Action
    public void begin(InterpretationContext interpretationContext, String str, Attributes attributes) throws ActionException {
        this.attributeInUse = null;
        this.optional = OptionHelper.toBoolean(attributes.getValue(OPTIONAL_ATTR), false);
        if (!checkAttributes(attributes)) {
            return;
        }
        try {
            URL inputURL = getInputURL(interpretationContext, attributes);
            if (inputURL == null) {
                return;
            }
            processInclude(interpretationContext, inputURL);
        } catch (JoranException e) {
            handleError("Error while parsing " + this.attributeInUse, e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void close(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
            }
        }
    }

    @Override // ch.qos.logback.core.joran.action.Action
    public void end(InterpretationContext interpretationContext, String str) throws ActionException {
    }

    protected String getAttributeInUse() {
        return this.attributeInUse;
    }

    public URL getUrl() {
        return this.urlInUse;
    }

    protected void handleError(String str, Exception exc) {
        addError(str, exc);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isOptional() {
        return this.optional;
    }

    protected abstract void processInclude(InterpretationContext interpretationContext, URL url) throws JoranException;
}
