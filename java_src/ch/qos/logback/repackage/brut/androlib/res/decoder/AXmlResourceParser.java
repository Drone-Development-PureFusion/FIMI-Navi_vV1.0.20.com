package ch.qos.logback.repackage.brut.androlib.res.decoder;

import android.content.res.XmlResourceParser;
import android.util.TypedValue;
import ch.qos.logback.repackage.brut.androlib.AndrolibException;
import ch.qos.logback.repackage.brut.androlib.res.xml.ResXmlEncoders;
import ch.qos.logback.repackage.brut.util.ExtDataInput;
import ch.qos.logback.repackage.com.mindprod.ledatastream.LEDataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes.dex */
public class AXmlResourceParser implements XmlResourceParser {
    private static final int ATTRIBUTE_IX_NAME = 1;
    private static final int ATTRIBUTE_IX_NAMESPACE_URI = 0;
    private static final int ATTRIBUTE_IX_VALUE_DATA = 4;
    private static final int ATTRIBUTE_IX_VALUE_STRING = 2;
    private static final int ATTRIBUTE_IX_VALUE_TYPE = 3;
    private static final int ATTRIBUTE_LENGHT = 5;
    private static final int CHUNK_AXML_FILE = 524291;
    private static final int CHUNK_RESOURCEIDS = 524672;
    private static final int CHUNK_XML_END_NAMESPACE = 1048833;
    private static final int CHUNK_XML_END_TAG = 1048835;
    private static final int CHUNK_XML_FIRST = 1048832;
    private static final int CHUNK_XML_LAST = 1048836;
    private static final int CHUNK_XML_START_NAMESPACE = 1048832;
    private static final int CHUNK_XML_START_TAG = 1048834;
    private static final int CHUNK_XML_TEXT = 1048836;
    private static final String E_NOT_SUPPORTED = "Method is not supported.";
    private static final Logger LOGGER = Logger.getLogger(AXmlResourceParser.class.getName());
    private ResAttrDecoder mAttrDecoder;
    private AndrolibException mFirstError;
    private int[] m_attributes;
    private int m_classAttribute;
    private boolean m_decreaseDepth;
    private int m_event;
    private int m_idAttribute;
    private int m_lineNumber;
    private int m_name;
    private int m_namespaceUri;
    private NamespaceStack m_namespaces;
    private boolean m_operational;
    private ExtDataInput m_reader;
    private int[] m_resourceIDs;
    private StringBlock m_strings;
    private int m_styleAttribute;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class NamespaceStack {
        private int m_count;
        private int[] m_data = new int[32];
        private int m_dataLength;
        private int m_depth;

        private void ensureDataCapacity(int i) {
            int length = this.m_data.length - this.m_dataLength;
            if (length > i) {
                return;
            }
            int[] iArr = new int[(length + this.m_data.length) * 2];
            System.arraycopy(this.m_data, 0, iArr, 0, this.m_dataLength);
            this.m_data = iArr;
        }

        private final int find(int i, boolean z) {
            if (this.m_dataLength == 0) {
                return -1;
            }
            int i2 = this.m_dataLength - 1;
            for (int i3 = this.m_depth; i3 != 0; i3--) {
                i2 -= 2;
                for (int i4 = this.m_data[i2]; i4 != 0; i4--) {
                    if (z) {
                        if (this.m_data[i2] == i) {
                            return this.m_data[i2 + 1];
                        }
                    } else if (this.m_data[i2 + 1] == i) {
                        return this.m_data[i2];
                    }
                    i2 -= 2;
                }
            }
            return -1;
        }

        private final int get(int i, boolean z) {
            if (this.m_dataLength == 0 || i < 0) {
                return -1;
            }
            int i2 = 0;
            for (int i3 = this.m_depth; i3 != 0; i3--) {
                int i4 = this.m_data[i2];
                if (i < i4) {
                    int i5 = (i * 2) + 1 + i2;
                    if (!z) {
                        i5++;
                    }
                    return this.m_data[i5];
                }
                i -= i4;
                i2 += (i4 * 2) + 2;
            }
            return -1;
        }

        public final void decreaseDepth() {
            if (this.m_dataLength == 0) {
                return;
            }
            int i = this.m_dataLength - 1;
            int i2 = this.m_data[i];
            if ((i - 1) - (i2 * 2) == 0) {
                return;
            }
            this.m_dataLength -= (i2 * 2) + 2;
            this.m_count -= i2;
            this.m_depth--;
        }

        public final int findPrefix(int i) {
            return find(i, false);
        }

        public final int findUri(int i) {
            return find(i, true);
        }

        public final int getAccumulatedCount(int i) {
            if (this.m_dataLength == 0 || i < 0) {
                return 0;
            }
            if (i > this.m_depth) {
                i = this.m_depth;
            }
            int i2 = 0;
            int i3 = 0;
            while (i != 0) {
                int i4 = this.m_data[i2];
                i3 += i4;
                i--;
                i2 = (i4 * 2) + 2 + i2;
            }
            return i3;
        }

        public final int getCurrentCount() {
            if (this.m_dataLength == 0) {
                return 0;
            }
            return this.m_data[this.m_dataLength - 1];
        }

        public final int getDepth() {
            return this.m_depth;
        }

        public final int getPrefix(int i) {
            return get(i, true);
        }

        public final int getTotalCount() {
            return this.m_count;
        }

        public final int getUri(int i) {
            return get(i, false);
        }

        public final void increaseDepth() {
            ensureDataCapacity(2);
            int i = this.m_dataLength;
            this.m_data[i] = 0;
            this.m_data[i + 1] = 0;
            this.m_dataLength += 2;
            this.m_depth++;
        }

        public final boolean pop() {
            int i;
            int i2;
            if (this.m_dataLength == 0 || (i2 = this.m_data[this.m_dataLength - 1]) == 0) {
                return false;
            }
            int i3 = i2 - 1;
            int i4 = i - 2;
            this.m_data[i4] = i3;
            this.m_data[i4 - ((i3 * 2) + 1)] = i3;
            this.m_dataLength -= 2;
            this.m_count--;
            return true;
        }

        public final boolean pop(int i, int i2) {
            if (this.m_dataLength == 0) {
                return false;
            }
            int i3 = this.m_dataLength - 1;
            int i4 = this.m_data[i3];
            int i5 = i3 - 2;
            int i6 = 0;
            while (i6 != i4) {
                if (this.m_data[i5] == i && this.m_data[i5 + 1] == i2) {
                    int i7 = i4 - 1;
                    if (i6 == 0) {
                        this.m_data[i5] = i7;
                        this.m_data[i5 - ((i7 * 2) + 1)] = i7;
                    } else {
                        this.m_data[i3] = i7;
                        this.m_data[i3 - ((i7 * 2) + 3)] = i7;
                        System.arraycopy(this.m_data, i5 + 2, this.m_data, i5, this.m_dataLength - i5);
                    }
                    this.m_dataLength -= 2;
                    this.m_count--;
                    return true;
                }
                i6++;
                i5 -= 2;
            }
            return false;
        }

        public final void push(int i, int i2) {
            if (this.m_depth == 0) {
                increaseDepth();
            }
            ensureDataCapacity(2);
            int i3 = this.m_dataLength - 1;
            int i4 = this.m_data[i3];
            this.m_data[(i3 - 1) - (i4 * 2)] = i4 + 1;
            this.m_data[i3] = i;
            this.m_data[i3 + 1] = i2;
            this.m_data[i3 + 2] = i4 + 1;
            this.m_dataLength += 2;
            this.m_count++;
        }

        public final void reset() {
            this.m_dataLength = 0;
            this.m_count = 0;
            this.m_depth = 0;
        }
    }

    public AXmlResourceParser() {
        this.mAttrDecoder = new ResAttrDecoder();
        this.m_operational = false;
        this.m_namespaces = new NamespaceStack();
        resetEventInfo();
    }

    public AXmlResourceParser(InputStream inputStream) {
        this();
        open(inputStream);
    }

    /* JADX WARN: Code restructure failed: missing block: B:72:0x00c1, code lost:
        throw new java.io.IOException("Invalid chunk type (" + r1 + ").");
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0087, code lost:
        throw new java.io.IOException("Invalid resource ids size (" + r1 + ").");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void doNext() throws IOException {
        if (this.m_strings == null) {
            this.m_reader.skipCheckInt(CHUNK_AXML_FILE);
            this.m_reader.skipInt();
            this.m_strings = StringBlock.read(this.m_reader);
            this.m_namespaces.increaseDepth();
            this.m_operational = true;
        }
        if (this.m_event == 1) {
            return;
        }
        int i = this.m_event;
        resetEventInfo();
        while (true) {
            if (this.m_decreaseDepth) {
                this.m_decreaseDepth = false;
                this.m_namespaces.decreaseDepth();
            }
            if (i == 3 && this.m_namespaces.getDepth() == 1 && this.m_namespaces.getCurrentCount() == 0) {
                this.m_event = 1;
                return;
            }
            int readInt = i == 0 ? CHUNK_XML_START_TAG : this.m_reader.readInt();
            if (readInt == CHUNK_RESOURCEIDS) {
                int readInt2 = this.m_reader.readInt();
                if (readInt2 < 8 || readInt2 % 4 != 0) {
                    break;
                }
                this.m_resourceIDs = this.m_reader.readIntArray((readInt2 / 4) - 2);
            } else if (readInt < 1048832 || readInt > 1048836) {
                break;
            } else if (readInt == CHUNK_XML_START_TAG && i == -1) {
                this.m_event = 0;
                return;
            } else {
                this.m_reader.skipInt();
                int readInt3 = this.m_reader.readInt();
                this.m_reader.skipInt();
                if (readInt != 1048832 && readInt != CHUNK_XML_END_NAMESPACE) {
                    this.m_lineNumber = readInt3;
                    if (readInt == CHUNK_XML_START_TAG) {
                        this.m_namespaceUri = this.m_reader.readInt();
                        this.m_name = this.m_reader.readInt();
                        this.m_reader.skipInt();
                        int readInt4 = this.m_reader.readInt();
                        this.m_idAttribute = (readInt4 >>> 16) - 1;
                        this.m_classAttribute = this.m_reader.readInt();
                        this.m_styleAttribute = (this.m_classAttribute >>> 16) - 1;
                        this.m_classAttribute = (this.m_classAttribute & 65535) - 1;
                        this.m_attributes = this.m_reader.readIntArray((readInt4 & 65535) * 5);
                        for (int i2 = 3; i2 < this.m_attributes.length; i2 += 5) {
                            this.m_attributes[i2] = this.m_attributes[i2] >>> 24;
                        }
                        this.m_namespaces.increaseDepth();
                        this.m_event = 2;
                        return;
                    } else if (readInt == CHUNK_XML_END_TAG) {
                        this.m_namespaceUri = this.m_reader.readInt();
                        this.m_name = this.m_reader.readInt();
                        this.m_event = 3;
                        this.m_decreaseDepth = true;
                        return;
                    } else if (readInt == 1048836) {
                        this.m_name = this.m_reader.readInt();
                        this.m_reader.skipInt();
                        this.m_reader.skipInt();
                        this.m_event = 4;
                        return;
                    }
                } else if (readInt == 1048832) {
                    this.m_namespaces.push(this.m_reader.readInt(), this.m_reader.readInt());
                } else {
                    this.m_reader.skipInt();
                    this.m_reader.skipInt();
                    this.m_namespaces.pop();
                }
            }
        }
    }

    private final int findAttribute(String str, String str2) {
        int find;
        if (this.m_strings == null || str2 == null || (find = this.m_strings.find(str2)) == -1) {
            return -1;
        }
        int find2 = str != null ? this.m_strings.find(str) : -1;
        for (int i = 0; i != this.m_attributes.length; i++) {
            if (find == this.m_attributes[i + 1] && (find2 == -1 || find2 == this.m_attributes[i + 0])) {
                return i / 5;
            }
        }
        return -1;
    }

    private final int getAttributeOffset(int i) {
        if (this.m_event != 2) {
            throw new IndexOutOfBoundsException("Current event is not START_TAG.");
        }
        int i2 = i * 5;
        if (i2 < this.m_attributes.length) {
            return i2;
        }
        throw new IndexOutOfBoundsException("Invalid attribute index (" + i + ").");
    }

    private final void resetEventInfo() {
        this.m_event = -1;
        this.m_lineNumber = -1;
        this.m_name = -1;
        this.m_namespaceUri = -1;
        this.m_attributes = null;
        this.m_idAttribute = -1;
        this.m_classAttribute = -1;
        this.m_styleAttribute = -1;
    }

    private void setFirstError(AndrolibException androlibException) {
        if (this.mFirstError == null) {
            this.mFirstError = androlibException;
        }
    }

    @Override // android.content.res.XmlResourceParser, java.lang.AutoCloseable
    public void close() {
        if (!this.m_operational) {
            return;
        }
        this.m_operational = false;
        this.m_reader = null;
        this.m_strings = null;
        this.m_resourceIDs = null;
        this.m_namespaces.reset();
        resetEventInfo();
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public void defineEntityReplacementText(String str, String str2) throws XmlPullParserException {
        throw new XmlPullParserException(E_NOT_SUPPORTED);
    }

    public ResAttrDecoder getAttrDecoder() {
        return this.mAttrDecoder;
    }

    @Override // android.util.AttributeSet
    public boolean getAttributeBooleanValue(int i, boolean z) {
        return getAttributeIntValue(i, z ? 1 : 0) != 0;
    }

    @Override // android.util.AttributeSet
    public boolean getAttributeBooleanValue(String str, String str2, boolean z) {
        int findAttribute = findAttribute(str, str2);
        return findAttribute == -1 ? z : getAttributeBooleanValue(findAttribute, z);
    }

    @Override // org.xmlpull.v1.XmlPullParser, android.util.AttributeSet
    public int getAttributeCount() {
        if (this.m_event != 2) {
            return -1;
        }
        return this.m_attributes.length / 5;
    }

    @Override // android.util.AttributeSet
    public float getAttributeFloatValue(int i, float f) {
        int attributeOffset = getAttributeOffset(i);
        return this.m_attributes[attributeOffset + 3] == 4 ? Float.intBitsToFloat(this.m_attributes[attributeOffset + 4]) : f;
    }

    @Override // android.util.AttributeSet
    public float getAttributeFloatValue(String str, String str2, float f) {
        int findAttribute = findAttribute(str, str2);
        return findAttribute == -1 ? f : getAttributeFloatValue(findAttribute, f);
    }

    @Override // android.util.AttributeSet
    public int getAttributeIntValue(int i, int i2) {
        int attributeOffset = getAttributeOffset(i);
        int i3 = this.m_attributes[attributeOffset + 3];
        return (i3 < 16 || i3 > 31) ? i2 : this.m_attributes[attributeOffset + 4];
    }

    @Override // android.util.AttributeSet
    public int getAttributeIntValue(String str, String str2, int i) {
        int findAttribute = findAttribute(str, str2);
        return findAttribute == -1 ? i : getAttributeIntValue(findAttribute, i);
    }

    @Override // android.util.AttributeSet
    public int getAttributeListValue(int i, String[] strArr, int i2) {
        return 0;
    }

    @Override // android.util.AttributeSet
    public int getAttributeListValue(String str, String str2, String[] strArr, int i) {
        return 0;
    }

    @Override // org.xmlpull.v1.XmlPullParser, android.util.AttributeSet
    public String getAttributeName(int i) {
        int i2 = this.m_attributes[getAttributeOffset(i) + 1];
        return i2 == -1 ? "" : this.m_strings.getString(i2);
    }

    @Override // android.util.AttributeSet
    public int getAttributeNameResource(int i) {
        int i2 = this.m_attributes[getAttributeOffset(i) + 1];
        if (this.m_resourceIDs == null || i2 < 0 || i2 >= this.m_resourceIDs.length) {
            return 0;
        }
        return this.m_resourceIDs[i2];
    }

    @Override // android.content.res.XmlResourceParser, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet
    public String getAttributeNamespace(int i) {
        int i2 = this.m_attributes[getAttributeOffset(i) + 0];
        return i2 == -1 ? "" : this.m_strings.getString(i2);
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public String getAttributePrefix(int i) {
        int findPrefix = this.m_namespaces.findPrefix(this.m_attributes[getAttributeOffset(i) + 0]);
        return findPrefix == -1 ? "" : this.m_strings.getString(findPrefix);
    }

    @Override // android.util.AttributeSet
    public int getAttributeResourceValue(int i, int i2) {
        int attributeOffset = getAttributeOffset(i);
        return this.m_attributes[attributeOffset + 3] == 1 ? this.m_attributes[attributeOffset + 4] : i2;
    }

    @Override // android.util.AttributeSet
    public int getAttributeResourceValue(String str, String str2, int i) {
        int findAttribute = findAttribute(str, str2);
        return findAttribute == -1 ? i : getAttributeResourceValue(findAttribute, i);
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public String getAttributeType(int i) {
        return "CDATA";
    }

    @Override // android.util.AttributeSet
    public int getAttributeUnsignedIntValue(int i, int i2) {
        return getAttributeIntValue(i, i2);
    }

    @Override // android.util.AttributeSet
    public int getAttributeUnsignedIntValue(String str, String str2, int i) {
        int findAttribute = findAttribute(str, str2);
        return findAttribute == -1 ? i : getAttributeUnsignedIntValue(findAttribute, i);
    }

    @Override // org.xmlpull.v1.XmlPullParser, android.util.AttributeSet
    public String getAttributeValue(int i) {
        int attributeOffset = getAttributeOffset(i);
        int i2 = this.m_attributes[attributeOffset + 3];
        int i3 = this.m_attributes[attributeOffset + 4];
        int i4 = this.m_attributes[attributeOffset + 2];
        if (this.mAttrDecoder != null) {
            try {
                return this.mAttrDecoder.decode(i2, i3, i4 == -1 ? null : ResXmlEncoders.escapeXmlChars(this.m_strings.getString(i4)), getAttributeNameResource(i));
            } catch (AndrolibException e) {
                setFirstError(e);
                LOGGER.log(Level.WARNING, String.format("Could not decode attr value, using undecoded value instead: ns=%s, name=%s, value=0x%08x", getAttributePrefix(i), getAttributeName(i), Integer.valueOf(i3)), (Throwable) e);
            }
        }
        return TypedValue.coerceToString(i2, i3);
    }

    @Override // org.xmlpull.v1.XmlPullParser, android.util.AttributeSet
    public String getAttributeValue(String str, String str2) {
        int findAttribute = findAttribute(str, str2);
        if (findAttribute == -1) {
            return null;
        }
        return getAttributeValue(findAttribute);
    }

    public int getAttributeValueData(int i) {
        return this.m_attributes[getAttributeOffset(i) + 4];
    }

    public int getAttributeValueType(int i) {
        return this.m_attributes[getAttributeOffset(i) + 3];
    }

    @Override // android.util.AttributeSet
    public String getClassAttribute() {
        if (this.m_classAttribute == -1) {
            return null;
        }
        return this.m_strings.getString(this.m_attributes[getAttributeOffset(this.m_classAttribute) + 2]);
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public int getColumnNumber() {
        return -1;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public int getDepth() {
        return this.m_namespaces.getDepth() - 1;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public int getEventType() throws XmlPullParserException {
        return this.m_event;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public boolean getFeature(String str) {
        return false;
    }

    public AndrolibException getFirstError() {
        return this.mFirstError;
    }

    @Override // android.util.AttributeSet
    public String getIdAttribute() {
        if (this.m_idAttribute == -1) {
            return null;
        }
        return this.m_strings.getString(this.m_attributes[getAttributeOffset(this.m_idAttribute) + 2]);
    }

    @Override // android.util.AttributeSet
    public int getIdAttributeResourceValue(int i) {
        if (this.m_idAttribute == -1) {
            return i;
        }
        int attributeOffset = getAttributeOffset(this.m_idAttribute);
        return this.m_attributes[attributeOffset + 3] == 1 ? this.m_attributes[attributeOffset + 4] : i;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public String getInputEncoding() {
        return null;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public int getLineNumber() {
        return this.m_lineNumber;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public String getName() {
        if (this.m_name == -1 || !(this.m_event == 2 || this.m_event == 3)) {
            return null;
        }
        return this.m_strings.getString(this.m_name);
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public String getNamespace() {
        return this.m_strings.getString(this.m_namespaceUri);
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public String getNamespace(String str) {
        throw new RuntimeException(E_NOT_SUPPORTED);
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public int getNamespaceCount(int i) throws XmlPullParserException {
        return this.m_namespaces.getAccumulatedCount(i);
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public String getNamespacePrefix(int i) throws XmlPullParserException {
        return this.m_strings.getString(this.m_namespaces.getPrefix(i));
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public String getNamespaceUri(int i) throws XmlPullParserException {
        return this.m_strings.getString(this.m_namespaces.getUri(i));
    }

    @Override // org.xmlpull.v1.XmlPullParser, android.util.AttributeSet
    public String getPositionDescription() {
        return "XML line #" + getLineNumber();
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public String getPrefix() {
        return this.m_strings.getString(this.m_namespaces.findPrefix(this.m_namespaceUri));
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public Object getProperty(String str) {
        return null;
    }

    final StringBlock getStrings() {
        return this.m_strings;
    }

    @Override // android.util.AttributeSet
    public int getStyleAttribute() {
        if (this.m_styleAttribute == -1) {
            return 0;
        }
        return this.m_attributes[getAttributeOffset(this.m_styleAttribute) + 4];
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public String getText() {
        if (this.m_name == -1 || this.m_event != 4) {
            return null;
        }
        return this.m_strings.getString(this.m_name);
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public char[] getTextCharacters(int[] iArr) {
        String text = getText();
        if (text == null) {
            return null;
        }
        iArr[0] = 0;
        iArr[1] = text.length();
        char[] cArr = new char[text.length()];
        text.getChars(0, text.length(), cArr, 0);
        return cArr;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public boolean isAttributeDefault(int i) {
        return false;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public boolean isEmptyElementTag() throws XmlPullParserException {
        return false;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public boolean isWhitespace() throws XmlPullParserException {
        return false;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public int next() throws XmlPullParserException, IOException {
        if (this.m_reader == null) {
            throw new XmlPullParserException("Parser is not opened.", this, null);
        }
        try {
            doNext();
            return this.m_event;
        } catch (IOException e) {
            close();
            throw e;
        }
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public int nextTag() throws XmlPullParserException, IOException {
        int next = next();
        if (next == 4 && isWhitespace()) {
            next = next();
        }
        if (next == 2 || next == 3) {
            return next;
        }
        throw new XmlPullParserException("Expected start or end tag.", this, null);
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public String nextText() throws XmlPullParserException, IOException {
        if (getEventType() != 2) {
            throw new XmlPullParserException("Parser must be on START_TAG to read next text.", this, null);
        }
        int next = next();
        if (next != 4) {
            if (next != 3) {
                throw new XmlPullParserException("Parser must be on START_TAG or TEXT to read text.", this, null);
            }
            return "";
        }
        String text = getText();
        if (next() == 3) {
            return text;
        }
        throw new XmlPullParserException("Event TEXT must be immediately followed by END_TAG.", this, null);
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public int nextToken() throws XmlPullParserException, IOException {
        return next();
    }

    public void open(InputStream inputStream) {
        close();
        if (inputStream != null) {
            this.m_reader = new ExtDataInput(new LEDataInputStream(inputStream));
        }
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public void require(int i, String str, String str2) throws XmlPullParserException, IOException {
        if (i != getEventType() || ((str != null && !str.equals(getNamespace())) || (str2 != null && !str2.equals(getName())))) {
            throw new XmlPullParserException(TYPES[i] + " is expected.", this, null);
        }
    }

    public void setAttrDecoder(ResAttrDecoder resAttrDecoder) {
        this.mAttrDecoder = resAttrDecoder;
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public void setFeature(String str, boolean z) throws XmlPullParserException {
        throw new XmlPullParserException(E_NOT_SUPPORTED);
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public void setInput(InputStream inputStream, String str) throws XmlPullParserException {
        open(inputStream);
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public void setInput(Reader reader) throws XmlPullParserException {
        throw new XmlPullParserException(E_NOT_SUPPORTED);
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public void setProperty(String str, Object obj) throws XmlPullParserException {
        throw new XmlPullParserException(E_NOT_SUPPORTED);
    }
}
