package ch.qos.logback.classic.android;

import ch.qos.logback.core.joran.event.SaxEvent;
import ch.qos.logback.core.joran.event.SaxEventRecorder;
import ch.qos.logback.core.joran.spi.JoranException;
import ch.qos.logback.repackage.brut.androlib.res.decoder.AXmlResourceParser;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.xml.sax.InputSource;
import org.xml.sax.helpers.AttributesImpl;
import org.xml.sax.helpers.LocatorImpl;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes.dex */
public class ASaxEventRecorder extends SaxEventRecorder {
    private int[] holderForStartAndLength = new int[2];
    private StatePassFilter filter = new StatePassFilter(new String[0]);
    private String elemNameToWatch = null;
    private Map<String, String> elemAttrs = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class StatePassFilter {
        private int _depth = 0;
        private final String[] _states;

        public StatePassFilter(String... strArr) {
            this._states = strArr == null ? new String[0] : strArr;
        }

        public boolean checkEnd(String str) {
            if (this._depth <= 0 || !str.equals(this._states[this._depth - 1])) {
                return this._depth == this._states.length;
            }
            this._depth--;
            return false;
        }

        public boolean checkStart(String str) {
            if (this._depth == this._states.length) {
                return true;
            }
            if (str.equals(this._states[this._depth])) {
                this._depth++;
            }
            return false;
        }

        public int depth() {
            return this._depth;
        }

        public boolean passed() {
            return this._depth == this._states.length;
        }

        public void reset() {
            this._depth = 0;
        }

        public int size() {
            return this._states.length;
        }
    }

    private void characters(XmlPullParser xmlPullParser) {
        if (this.filter.passed()) {
            super.characters(xmlPullParser.getTextCharacters(this.holderForStartAndLength), this.holderForStartAndLength[0], this.holderForStartAndLength[1]);
        }
    }

    private void checkForWatchedAttributes(XmlPullParser xmlPullParser) {
        String str;
        if (this.elemNameToWatch == null || this.elemAttrs != null || !xmlPullParser.getName().equals(this.elemNameToWatch)) {
            return;
        }
        HashMap hashMap = new HashMap();
        for (int i = 0; i < xmlPullParser.getAttributeCount(); i++) {
            String attributeNamespace = xmlPullParser.getAttributeNamespace(i);
            if (attributeNamespace.length() > 0) {
                int lastIndexOf = attributeNamespace.lastIndexOf("/");
                if (lastIndexOf > -1 && lastIndexOf + 1 < attributeNamespace.length()) {
                    attributeNamespace = attributeNamespace.substring(lastIndexOf + 1);
                }
                str = attributeNamespace + ":";
            } else {
                str = "";
            }
            hashMap.put(str + xmlPullParser.getAttributeName(i), xmlPullParser.getAttributeValue(i));
        }
        this.elemAttrs = hashMap;
    }

    private void endElement(XmlPullParser xmlPullParser) {
        String name = xmlPullParser.getName();
        if (this.filter.checkEnd(name)) {
            endElement(xmlPullParser.getNamespace(), name, name);
        }
    }

    private void startDocument(XmlPullParser xmlPullParser) {
        super.startDocument();
        super.setDocumentLocator(new LocatorImpl());
    }

    private void startElement(XmlPullParser xmlPullParser) {
        String name = xmlPullParser.getName();
        if (this.filter.checkStart(name)) {
            AttributesImpl attributesImpl = new AttributesImpl();
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= xmlPullParser.getAttributeCount()) {
                    break;
                }
                attributesImpl.addAttribute(xmlPullParser.getAttributeNamespace(i2), xmlPullParser.getAttributeName(i2), xmlPullParser.getAttributeName(i2), xmlPullParser.getAttributeType(i2), xmlPullParser.getAttributeValue(i2));
                i = i2 + 1;
            }
            startElement(xmlPullParser.getNamespace(), name, name, attributesImpl);
        }
        checkForWatchedAttributes(xmlPullParser);
    }

    public Map<String, String> getAttributeWatchValues() {
        return this.elemAttrs;
    }

    @Override // ch.qos.logback.core.joran.event.SaxEventRecorder
    public List<SaxEvent> recordEvents(InputSource inputSource) throws JoranException {
        InputStream byteStream = inputSource.getByteStream();
        if (byteStream == null) {
            throw new IllegalArgumentException("Input source must specify an input stream");
        }
        try {
            XmlPullParser aXmlResourceParser = new AXmlResourceParser(byteStream);
            this.elemAttrs = null;
            while (true) {
                int next = aXmlResourceParser.next();
                if (next <= -1) {
                    break;
                } else if (next == 0) {
                    this.filter.reset();
                    startDocument(aXmlResourceParser);
                } else if (1 == next) {
                    this.filter.reset();
                    endDocument();
                    break;
                } else if (2 == next) {
                    startElement(aXmlResourceParser);
                } else if (3 == next) {
                    endElement(aXmlResourceParser);
                } else if (4 == next) {
                    characters(aXmlResourceParser);
                }
            }
            return getSaxEventList();
        } catch (Exception e) {
            addError(e.getMessage(), e);
            throw new JoranException("Can't parse Android XML resource", e);
        }
    }

    public void setAttributeWatch(String str) {
        this.elemNameToWatch = str;
    }

    public void setFilter(String... strArr) {
        this.filter = new StatePassFilter(strArr);
    }
}
