package com.alibaba.fastjson.parser;

import ch.qos.logback.core.CoreConstants;
import ch.qos.logback.core.net.SyslogConstants;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.facebook.internal.ServerProtocol;
import com.fimi.kernel.animutils.IOUtils;
import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes.dex */
public final class JSONLexer {

    /* renamed from: CA */
    public static final char[] f53CA;
    public static final int END = 4;
    public static final char EOI = 26;

    /* renamed from: IA */
    static final int[] f54IA;
    public static final int NOT_MATCH = -1;
    public static final int NOT_MATCH_NAME = -2;
    public static final int UNKNOWN = 0;

    /* renamed from: V6 */
    private static boolean f55V6 = false;
    public static final int VALUE = 3;
    protected static final int[] digits;
    public static final boolean[] firstIdentifierFlags;
    public static final boolean[] identifierFlags;
    private static final ThreadLocal<char[]> sbufLocal;

    /* renamed from: bp */
    protected int f56bp;
    public Calendar calendar;

    /* renamed from: ch */
    protected char f57ch;
    public boolean disableCircularReferenceDetect;
    protected int eofPos;
    protected boolean exp;
    public int features;
    protected boolean hasSpecial;
    protected boolean isDouble;
    protected final int len;
    public Locale locale;
    public int matchStat;

    /* renamed from: np */
    protected int f58np;
    protected int pos;
    protected char[] sbuf;

    /* renamed from: sp */
    protected int f59sp;
    protected String stringDefaultValue;
    protected final String text;
    public TimeZone timeZone;
    protected int token;

    static {
        int version = -1;
        try {
            Class<?> clazz = Class.forName("android.os.Build$VERSION");
            Field field = clazz.getField("SDK_INT");
            version = field.getInt(null);
        } catch (Exception e) {
        }
        f55V6 = version >= 23;
        sbufLocal = new ThreadLocal<>();
        digits = new int[103];
        for (int i = 48; i <= 57; i++) {
            digits[i] = i - 48;
        }
        for (int i2 = 97; i2 <= 102; i2++) {
            digits[i2] = (i2 - 97) + 10;
        }
        for (int i3 = 65; i3 <= 70; i3++) {
            digits[i3] = (i3 - 65) + 10;
        }
        f53CA = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();
        f54IA = new int[256];
        Arrays.fill(f54IA, -1);
        int iS = f53CA.length;
        for (int i4 = 0; i4 < iS; i4++) {
            f54IA[f53CA[i4]] = i4;
        }
        f54IA[61] = 0;
        firstIdentifierFlags = new boolean[256];
        for (char c = 0; c < firstIdentifierFlags.length; c = (char) (c + 1)) {
            if (c >= 'A' && c <= 'Z') {
                firstIdentifierFlags[c] = true;
            } else if (c >= 'a' && c <= 'z') {
                firstIdentifierFlags[c] = true;
            } else if (c == '_') {
                firstIdentifierFlags[c] = true;
            }
        }
        identifierFlags = new boolean[256];
        for (char c2 = 0; c2 < identifierFlags.length; c2 = (char) (c2 + 1)) {
            if (c2 >= 'A' && c2 <= 'Z') {
                identifierFlags[c2] = true;
            } else if (c2 >= 'a' && c2 <= 'z') {
                identifierFlags[c2] = true;
            } else if (c2 == '_') {
                identifierFlags[c2] = true;
            } else if (c2 >= '0' && c2 <= '9') {
                identifierFlags[c2] = true;
            }
        }
    }

    public JSONLexer(String input) {
        this(input, JSON.DEFAULT_PARSER_FEATURE);
    }

    public JSONLexer(char[] input, int inputLength) {
        this(input, inputLength, JSON.DEFAULT_PARSER_FEATURE);
    }

    public JSONLexer(char[] input, int inputLength, int features) {
        this(new String(input, 0, inputLength), features);
    }

    public JSONLexer(String input, int features) {
        this.features = JSON.DEFAULT_PARSER_FEATURE;
        this.exp = false;
        this.isDouble = false;
        this.timeZone = JSON.defaultTimeZone;
        this.locale = JSON.defaultLocale;
        this.calendar = null;
        this.matchStat = 0;
        this.sbuf = sbufLocal.get();
        if (this.sbuf == null) {
            this.sbuf = new char[512];
        }
        this.features = features;
        this.text = input;
        this.len = this.text.length();
        this.f56bp = -1;
        int index = this.f56bp + 1;
        this.f56bp = index;
        this.f57ch = index >= this.len ? EOI : this.text.charAt(index);
        if (this.f57ch == 65279) {
            next();
        }
        this.stringDefaultValue = (Feature.InitStringFieldAsEmpty.mask & features) != 0 ? "" : null;
        this.disableCircularReferenceDetect = (Feature.DisableCircularReferenceDetect.mask & features) != 0;
    }

    public final int token() {
        return this.token;
    }

    public void close() {
        if (this.sbuf.length <= 8196) {
            sbufLocal.set(this.sbuf);
        }
        this.sbuf = null;
    }

    public char next() {
        int index = this.f56bp + 1;
        this.f56bp = index;
        char charAt = index >= this.len ? EOI : this.text.charAt(index);
        this.f57ch = charAt;
        return charAt;
    }

    public final void config(Feature feature, boolean state) {
        if (state) {
            this.features |= feature.mask;
        } else {
            this.features &= feature.mask ^ (-1);
        }
        if (feature == Feature.InitStringFieldAsEmpty) {
            this.stringDefaultValue = state ? "" : null;
        }
        this.disableCircularReferenceDetect = (this.features & Feature.DisableCircularReferenceDetect.mask) != 0;
    }

    public final boolean isEnabled(Feature feature) {
        return (this.features & feature.mask) != 0;
    }

    public final void nextTokenWithChar(char expect) {
        this.f59sp = 0;
        while (this.f57ch != expect) {
            if (this.f57ch == ' ' || this.f57ch == '\n' || this.f57ch == '\r' || this.f57ch == '\t' || this.f57ch == '\f' || this.f57ch == '\b') {
                next();
            } else {
                throw new JSONException("not match " + expect + " - " + this.f57ch);
            }
        }
        int index = this.f56bp + 1;
        this.f56bp = index;
        this.f57ch = index >= this.len ? EOI : this.text.charAt(index);
        nextToken();
    }

    public final String numberString() {
        int index = (this.f58np + this.f59sp) - 1;
        char chLocal = this.text.charAt(index);
        int sp = this.f59sp;
        if (chLocal == 'L' || chLocal == 'S' || chLocal == 'B' || chLocal == 'F' || chLocal == 'D') {
            sp--;
        }
        return subString(this.f58np, sp);
    }

    protected char charAt(int index) {
        return index >= this.len ? EOI : this.text.charAt(index);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0037, code lost:
        scanNumber();
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:?, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void nextToken() {
        char c = EOI;
        this.f59sp = 0;
        while (true) {
            this.pos = this.f56bp;
            if (this.f57ch == '/') {
                skipComment();
            } else if (this.f57ch == '\"') {
                scanString();
                return;
            } else if ((this.f57ch < '0' || this.f57ch > '9') && this.f57ch != '-') {
                if (this.f57ch == ',') {
                    next();
                    this.token = 16;
                    return;
                }
                switch (this.f57ch) {
                    case '\b':
                    case '\t':
                    case '\n':
                    case '\f':
                    case '\r':
                    case ' ':
                        next();
                        continue;
                    case '\'':
                        scanString();
                        return;
                    case '(':
                        next();
                        this.token = 10;
                        return;
                    case ')':
                        next();
                        this.token = 11;
                        return;
                    case ':':
                        next();
                        this.token = 17;
                        return;
                    case 'S':
                    case 'T':
                    case 'u':
                        scanIdent();
                        return;
                    case '[':
                        int index = this.f56bp + 1;
                        this.f56bp = index;
                        if (index < this.len) {
                            c = this.text.charAt(index);
                        }
                        this.f57ch = c;
                        this.token = 14;
                        return;
                    case ']':
                        next();
                        this.token = 15;
                        return;
                    case 'f':
                        if (this.text.startsWith("false", this.f56bp)) {
                            this.f56bp += 5;
                            this.f57ch = charAt(this.f56bp);
                            if (this.f57ch == ' ' || this.f57ch == ',' || this.f57ch == '}' || this.f57ch == ']' || this.f57ch == '\n' || this.f57ch == '\r' || this.f57ch == '\t' || this.f57ch == 26 || this.f57ch == '\f' || this.f57ch == '\b' || this.f57ch == ':') {
                                this.token = 7;
                                return;
                            }
                        }
                        throw new JSONException("scan false error");
                    case 'n':
                        int token = 0;
                        if (this.text.startsWith("null", this.f56bp)) {
                            this.f56bp += 4;
                            token = 8;
                        } else if (this.text.startsWith("new", this.f56bp)) {
                            this.f56bp += 3;
                            token = 9;
                        }
                        if (token != 0) {
                            this.f57ch = charAt(this.f56bp);
                            if (this.f57ch == ' ' || this.f57ch == ',' || this.f57ch == '}' || this.f57ch == ']' || this.f57ch == '\n' || this.f57ch == '\r' || this.f57ch == '\t' || this.f57ch == 26 || this.f57ch == '\f' || this.f57ch == '\b') {
                                this.token = token;
                                return;
                            }
                        }
                        throw new JSONException("scan null/new error");
                    case 't':
                        if (this.text.startsWith(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE, this.f56bp)) {
                            this.f56bp += 4;
                            this.f57ch = charAt(this.f56bp);
                            if (this.f57ch == ' ' || this.f57ch == ',' || this.f57ch == '}' || this.f57ch == ']' || this.f57ch == '\n' || this.f57ch == '\r' || this.f57ch == '\t' || this.f57ch == 26 || this.f57ch == '\f' || this.f57ch == '\b' || this.f57ch == ':') {
                                this.token = 6;
                                return;
                            }
                        }
                        throw new JSONException("scan true error");
                    case '{':
                        int index2 = this.f56bp + 1;
                        this.f56bp = index2;
                        if (index2 < this.len) {
                            c = this.text.charAt(index2);
                        }
                        this.f57ch = c;
                        this.token = 12;
                        return;
                    case '}':
                        int index3 = this.f56bp + 1;
                        this.f56bp = index3;
                        if (index3 < this.len) {
                            c = this.text.charAt(index3);
                        }
                        this.f57ch = c;
                        this.token = 13;
                        return;
                    default:
                        boolean eof = this.f56bp == this.len || (this.f57ch == 26 && this.f56bp + 1 == this.len);
                        if (eof) {
                            if (this.token == 20) {
                                throw new JSONException("EOF error");
                            }
                            this.token = 20;
                            int i = this.eofPos;
                            this.f56bp = i;
                            this.pos = i;
                            return;
                        } else if (this.f57ch <= 31 || this.f57ch == 127) {
                            next();
                            continue;
                        } else {
                            this.token = 1;
                            next();
                            return;
                        }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:130:0x0170 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0032 A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:5:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void nextToken(int expect) {
        char c = EOI;
        this.f59sp = 0;
        while (true) {
            switch (expect) {
                case 2:
                    if (this.f57ch >= '0' && this.f57ch <= '9') {
                        this.pos = this.f56bp;
                        scanNumber();
                        return;
                    } else if (this.f57ch == '\"') {
                        this.pos = this.f56bp;
                        scanString();
                        return;
                    } else if (this.f57ch == '[') {
                        this.token = 14;
                        next();
                        return;
                    } else {
                        if (this.f57ch == '{') {
                            this.token = 12;
                            next();
                            return;
                        }
                        if (this.f57ch != ' ' || this.f57ch == '\n' || this.f57ch == '\r' || this.f57ch == '\t' || this.f57ch == '\f' || this.f57ch == '\b') {
                            next();
                        } else {
                            nextToken();
                            return;
                        }
                    }
                    break;
                case 3:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                case 13:
                case 17:
                case 19:
                default:
                    if (this.f57ch != ' ') {
                        break;
                    }
                    next();
                case 4:
                    if (this.f57ch == '\"') {
                        this.pos = this.f56bp;
                        scanString();
                        return;
                    } else if (this.f57ch >= '0' && this.f57ch <= '9') {
                        this.pos = this.f56bp;
                        scanNumber();
                        return;
                    } else {
                        if (this.f57ch == '{') {
                            this.token = 12;
                            int index = this.f56bp + 1;
                            this.f56bp = index;
                            if (index < this.len) {
                                c = this.text.charAt(index);
                            }
                            this.f57ch = c;
                            return;
                        }
                        if (this.f57ch != ' ') {
                        }
                        next();
                    }
                    break;
                case 12:
                    if (this.f57ch == '{') {
                        this.token = 12;
                        int index2 = this.f56bp + 1;
                        this.f56bp = index2;
                        if (index2 < this.len) {
                            c = this.text.charAt(index2);
                        }
                        this.f57ch = c;
                        return;
                    }
                    if (this.f57ch == '[') {
                        this.token = 14;
                        int index3 = this.f56bp + 1;
                        this.f56bp = index3;
                        if (index3 < this.len) {
                            c = this.text.charAt(index3);
                        }
                        this.f57ch = c;
                        return;
                    }
                    if (this.f57ch != ' ') {
                    }
                    next();
                    break;
                case 14:
                    if (this.f57ch == '[') {
                        this.token = 14;
                        next();
                        return;
                    }
                    if (this.f57ch == '{') {
                        this.token = 12;
                        next();
                        return;
                    }
                    if (this.f57ch != ' ') {
                    }
                    next();
                    break;
                case 15:
                    if (this.f57ch == ']') {
                        this.token = 15;
                        next();
                        return;
                    }
                    if (this.f57ch == 26) {
                        this.token = 20;
                        return;
                    }
                    if (this.f57ch != ' ') {
                    }
                    next();
                    break;
                case 16:
                    if (this.f57ch == ',') {
                        this.token = 16;
                        int index4 = this.f56bp + 1;
                        this.f56bp = index4;
                        if (index4 < this.len) {
                            c = this.text.charAt(index4);
                        }
                        this.f57ch = c;
                        return;
                    } else if (this.f57ch == '}') {
                        this.token = 13;
                        int index5 = this.f56bp + 1;
                        this.f56bp = index5;
                        if (index5 < this.len) {
                            c = this.text.charAt(index5);
                        }
                        this.f57ch = c;
                        return;
                    } else if (this.f57ch == ']') {
                        this.token = 15;
                        int index6 = this.f56bp + 1;
                        this.f56bp = index6;
                        if (index6 < this.len) {
                            c = this.text.charAt(index6);
                        }
                        this.f57ch = c;
                        return;
                    } else {
                        if (this.f57ch == 26) {
                            this.token = 20;
                            return;
                        }
                        if (this.f57ch != ' ') {
                        }
                        next();
                    }
                    break;
                case 18:
                    nextIdent();
                    return;
                case 20:
                    if (this.f57ch == 26) {
                    }
                    if (this.f57ch != ' ') {
                    }
                    next();
                    break;
            }
        }
    }

    public final void nextIdent() {
        while (true) {
            boolean whitespace = this.f57ch <= ' ' && (this.f57ch == ' ' || this.f57ch == '\n' || this.f57ch == '\r' || this.f57ch == '\t' || this.f57ch == '\f' || this.f57ch == '\b');
            if (!whitespace) {
                break;
            }
            next();
        }
        if (this.f57ch == '_' || Character.isLetter(this.f57ch)) {
            scanIdent();
        } else {
            nextToken();
        }
    }

    public final Number integerValue() throws NumberFormatException {
        long limit;
        int i;
        long result = 0;
        boolean negative = false;
        int i2 = this.f58np;
        int max = this.f58np + this.f59sp;
        char type = ' ';
        int charIndex = max - 1;
        char chLocal = charIndex >= this.len ? EOI : this.text.charAt(charIndex);
        switch (chLocal) {
            case 'B':
                max--;
                type = 'B';
                break;
            case 'L':
                max--;
                type = 'L';
                break;
            case 'S':
                max--;
                type = 'S';
                break;
        }
        char chLocal2 = this.f58np >= this.len ? EOI : this.text.charAt(this.f58np);
        if (chLocal2 == '-') {
            negative = true;
            limit = Long.MIN_VALUE;
            i = i2 + 1;
        } else {
            limit = -9223372036854775807L;
            i = i2;
        }
        if (i < max) {
            int i3 = i + 1;
            int charIndex2 = i;
            char chLocal3 = charIndex2 >= this.len ? EOI : this.text.charAt(charIndex2);
            result = -(chLocal3 - '0');
            i = i3;
        }
        while (i < max) {
            int i4 = i + 1;
            int charIndex3 = i;
            char chLocal4 = charIndex3 >= this.len ? EOI : this.text.charAt(charIndex3);
            int digit = chLocal4 - '0';
            if (result < -922337203685477580L) {
                return new BigInteger(numberString());
            }
            long result2 = result * 10;
            if (result2 < digit + limit) {
                return new BigInteger(numberString());
            }
            result = result2 - digit;
            i = i4;
        }
        if (negative) {
            if (i > this.f58np + 1) {
                if (result >= -2147483648L && type != 'L') {
                    if (type == 'S') {
                        return Short.valueOf((short) result);
                    }
                    if (type == 'B') {
                        return Byte.valueOf((byte) result);
                    }
                    return Integer.valueOf((int) result);
                }
                return Long.valueOf(result);
            }
            throw new NumberFormatException(numberString());
        }
        long result3 = -result;
        if (result3 <= 2147483647L && type != 'L') {
            if (type == 'S') {
                return Short.valueOf((short) result3);
            }
            if (type == 'B') {
                return Byte.valueOf((byte) result3);
            }
            return Integer.valueOf((int) result3);
        }
        return Long.valueOf(result3);
    }

    public final String scanSymbol(SymbolTable symbolTable) {
        while (true) {
            if (this.f57ch != ' ' && this.f57ch != '\n' && this.f57ch != '\r' && this.f57ch != '\t' && this.f57ch != '\f' && this.f57ch != '\b') {
                break;
            }
            next();
        }
        if (this.f57ch == '\"') {
            return scanSymbol(symbolTable, CoreConstants.DOUBLE_QUOTE_CHAR);
        }
        if (this.f57ch == '\'') {
            return scanSymbol(symbolTable, CoreConstants.SINGLE_QUOTE_CHAR);
        }
        if (this.f57ch == '}') {
            next();
            this.token = 13;
            return null;
        } else if (this.f57ch == ',') {
            next();
            this.token = 16;
            return null;
        } else if (this.f57ch == 26) {
            this.token = 20;
            return null;
        } else {
            return scanSymbolUnQuoted(symbolTable);
        }
    }

    public String scanSymbol(SymbolTable symbolTable, char quoteChar) {
        String strVal;
        int hash = 0;
        boolean hasSpecial = false;
        int startIndex = this.f56bp + 1;
        int endIndex = this.text.indexOf(quoteChar, startIndex);
        if (endIndex == -1) {
            throw new JSONException("unclosed str, " + info());
        }
        int chars_len = endIndex - startIndex;
        char[] chars = sub_chars(this.f56bp + 1, chars_len);
        while (chars_len > 0 && chars[chars_len - 1] == '\\') {
            int slashCount = 1;
            for (int i = chars_len - 2; i >= 0 && chars[i] == '\\'; i--) {
                slashCount++;
            }
            if (slashCount % 2 == 0) {
                break;
            }
            int nextIndex = this.text.indexOf(quoteChar, endIndex + 1);
            int nextLen = nextIndex - endIndex;
            int next_chars_len = chars_len + nextLen;
            if (next_chars_len >= chars.length) {
                int newLen = (chars.length * 3) / 2;
                if (newLen < next_chars_len) {
                    newLen = next_chars_len;
                }
                char[] newChars = new char[newLen];
                System.arraycopy(chars, 0, newChars, 0, chars.length);
                chars = newChars;
            }
            this.text.getChars(endIndex, nextIndex, chars, chars_len);
            chars_len = next_chars_len;
            endIndex = nextIndex;
            hasSpecial = true;
        }
        if (!hasSpecial) {
            for (int i2 = 0; i2 < chars_len; i2++) {
                char ch2 = chars[i2];
                hash = (hash * 31) + ch2;
                if (ch2 == '\\') {
                    hasSpecial = true;
                }
            }
            if (hasSpecial) {
                strVal = readString(chars, chars_len);
            } else {
                strVal = chars_len < 20 ? symbolTable.addSymbol(chars, 0, chars_len, hash) : new String(chars, 0, chars_len);
            }
        } else {
            strVal = readString(chars, chars_len);
        }
        this.f56bp = endIndex + 1;
        int index = this.f56bp;
        this.f57ch = index >= this.len ? EOI : this.text.charAt(index);
        return strVal;
    }

    private static String readString(char[] chars, int chars_len) {
        int len;
        char[] sbuf = new char[chars_len];
        int i = 0;
        int len2 = 0;
        while (i < chars_len) {
            char ch2 = chars[i];
            if (ch2 != '\\') {
                len = len2 + 1;
                sbuf[len2] = ch2;
            } else {
                i++;
                switch (chars[i]) {
                    case '\"':
                        len = len2 + 1;
                        sbuf[len2] = CoreConstants.DOUBLE_QUOTE_CHAR;
                        continue;
                    case '\'':
                        len = len2 + 1;
                        sbuf[len2] = CoreConstants.SINGLE_QUOTE_CHAR;
                        continue;
                    case '/':
                        len = len2 + 1;
                        sbuf[len2] = IOUtils.DIR_SEPARATOR_UNIX;
                        continue;
                    case '0':
                        len = len2 + 1;
                        sbuf[len2] = 0;
                        continue;
                    case '1':
                        len = len2 + 1;
                        sbuf[len2] = 1;
                        continue;
                    case '2':
                        len = len2 + 1;
                        sbuf[len2] = 2;
                        continue;
                    case '3':
                        len = len2 + 1;
                        sbuf[len2] = 3;
                        continue;
                    case '4':
                        len = len2 + 1;
                        sbuf[len2] = 4;
                        continue;
                    case '5':
                        len = len2 + 1;
                        sbuf[len2] = 5;
                        continue;
                    case '6':
                        len = len2 + 1;
                        sbuf[len2] = 6;
                        continue;
                    case '7':
                        len = len2 + 1;
                        sbuf[len2] = 7;
                        continue;
                    case 'F':
                    case 'f':
                        len = len2 + 1;
                        sbuf[len2] = '\f';
                        continue;
                    case '\\':
                        len = len2 + 1;
                        sbuf[len2] = '\\';
                        continue;
                    case 'b':
                        len = len2 + 1;
                        sbuf[len2] = '\b';
                        continue;
                    case 'n':
                        len = len2 + 1;
                        sbuf[len2] = '\n';
                        continue;
                    case 'r':
                        len = len2 + 1;
                        sbuf[len2] = '\r';
                        continue;
                    case 't':
                        len = len2 + 1;
                        sbuf[len2] = '\t';
                        continue;
                    case 'u':
                        len = len2 + 1;
                        int i2 = i + 1;
                        int i3 = i2 + 1;
                        int i4 = i3 + 1;
                        i = i4 + 1;
                        sbuf[len2] = (char) Integer.parseInt(new String(new char[]{chars[i2], chars[i3], chars[i4], chars[i]}), 16);
                        continue;
                    case 'v':
                        len = len2 + 1;
                        sbuf[len2] = 11;
                        continue;
                    case SyslogConstants.LOG_CLOCK /* 120 */:
                        len = len2 + 1;
                        int i5 = i + 1;
                        i = i5 + 1;
                        sbuf[len2] = (char) ((digits[chars[i5]] * 16) + digits[chars[i]]);
                        continue;
                    default:
                        throw new JSONException("unclosed.str.lit");
                }
            }
            i++;
            len2 = len;
        }
        return new String(sbuf, 0, len2);
    }

    public String info() {
        return "pos " + this.f56bp + ", json : " + (this.len < 65536 ? this.text : this.text.substring(0, 65536));
    }

    protected void skipComment() {
        next();
        if (this.f57ch == '/') {
            do {
                next();
            } while (this.f57ch != '\n');
            next();
        } else if (this.f57ch == '*') {
            next();
            while (this.f57ch != 26) {
                if (this.f57ch == '*') {
                    next();
                    if (this.f57ch == '/') {
                        next();
                        return;
                    }
                } else {
                    next();
                }
            }
        } else {
            throw new JSONException("invalid comment");
        }
    }

    public final String scanSymbolUnQuoted(SymbolTable symbolTable) {
        char first = this.f57ch;
        boolean firstFlag = this.f57ch >= firstIdentifierFlags.length || firstIdentifierFlags[first];
        if (!firstFlag) {
            throw new JSONException("illegal identifier : " + this.f57ch + ", " + info());
        }
        int hash = first;
        this.f58np = this.f56bp;
        this.f59sp = 1;
        while (true) {
            char ch2 = next();
            if (ch2 < identifierFlags.length && !identifierFlags[ch2]) {
                break;
            }
            hash = (hash * 31) + ch2;
            this.f59sp++;
        }
        this.f57ch = charAt(this.f56bp);
        this.token = 18;
        if (this.f59sp == 4 && this.text.startsWith("null", this.f58np)) {
            return null;
        }
        return symbolTable.addSymbol(this.text, this.f58np, this.f59sp, hash);
    }

    public final void scanString() {
        char quoteChar = this.f57ch;
        boolean hasSpecial = false;
        int startIndex = this.f56bp + 1;
        int endIndex = this.text.indexOf(quoteChar, startIndex);
        if (endIndex == -1) {
            throw new JSONException("unclosed str, " + info());
        }
        int chars_len = endIndex - startIndex;
        char[] chars = sub_chars(this.f56bp + 1, chars_len);
        while (chars_len > 0 && chars[chars_len - 1] == '\\') {
            int slashCount = 1;
            for (int i = chars_len - 2; i >= 0 && chars[i] == '\\'; i--) {
                slashCount++;
            }
            if (slashCount % 2 == 0) {
                break;
            }
            int nextIndex = this.text.indexOf(quoteChar, endIndex + 1);
            int nextLen = nextIndex - endIndex;
            int next_chars_len = chars_len + nextLen;
            if (next_chars_len >= chars.length) {
                int newLen = (chars.length * 3) / 2;
                if (newLen < next_chars_len) {
                    newLen = next_chars_len;
                }
                char[] newChars = new char[newLen];
                System.arraycopy(chars, 0, newChars, 0, chars.length);
                chars = newChars;
            }
            this.text.getChars(endIndex, nextIndex, chars, chars_len);
            chars_len = next_chars_len;
            endIndex = nextIndex;
            hasSpecial = true;
        }
        if (!hasSpecial) {
            for (int i2 = 0; i2 < chars_len; i2++) {
                if (chars[i2] == '\\') {
                    hasSpecial = true;
                }
            }
        }
        this.sbuf = chars;
        this.f59sp = chars_len;
        this.f58np = this.f56bp;
        this.hasSpecial = hasSpecial;
        this.f56bp = endIndex + 1;
        int index = this.f56bp;
        this.f57ch = index >= this.len ? EOI : this.text.charAt(index);
        this.token = 4;
    }

    public String scanStringValue(char quoteChar) {
        String strVal;
        int startIndex = this.f56bp + 1;
        int endIndex = this.text.indexOf(quoteChar, startIndex);
        if (endIndex == -1) {
            throw new JSONException("unclosed str, " + info());
        }
        if (f55V6) {
            strVal = this.text.substring(startIndex, endIndex);
        } else {
            int chars_len = endIndex - startIndex;
            char[] chars = sub_chars(this.f56bp + 1, chars_len);
            strVal = new String(chars, 0, chars_len);
        }
        if (strVal.indexOf(92) != -1) {
            while (true) {
                int slashCount = 0;
                for (int i = endIndex - 1; i >= 0 && this.text.charAt(i) == '\\'; i--) {
                    slashCount++;
                }
                if (slashCount % 2 == 0) {
                    break;
                }
                endIndex = this.text.indexOf(quoteChar, endIndex + 1);
            }
            int chars_len2 = endIndex - startIndex;
            char[] chars2 = sub_chars(this.f56bp + 1, chars_len2);
            strVal = readString(chars2, chars_len2);
        }
        this.f56bp = endIndex + 1;
        int index = this.f56bp;
        this.f57ch = index >= this.len ? EOI : this.text.charAt(index);
        return strVal;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x004a, code lost:
        if (r4 <= (r14.f58np + 1)) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x004c, code lost:
        return r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0096, code lost:
        throw new java.lang.NumberFormatException(numberString());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int intValue() {
        int limit;
        int i;
        int i2;
        int result = 0;
        boolean negative = false;
        int i3 = this.f58np;
        int max = this.f58np + this.f59sp;
        char chLocal = this.f58np >= this.len ? (char) 26 : this.text.charAt(this.f58np);
        if (chLocal == '-') {
            negative = true;
            limit = Integer.MIN_VALUE;
            i = i3 + 1;
        } else {
            limit = -2147483647;
            i = i3;
        }
        if (i < max) {
            int i4 = i + 1;
            int charIndex = i;
            char chLocal2 = charIndex >= this.len ? (char) 26 : this.text.charAt(charIndex);
            result = -(chLocal2 - '0');
            i = i4;
        }
        while (true) {
            if (i >= max) {
                i2 = i;
                break;
            }
            i2 = i + 1;
            int charIndex2 = i;
            char ch2 = charIndex2 >= this.len ? (char) 26 : this.text.charAt(charIndex2);
            if (ch2 == 'L' || ch2 == 'S' || ch2 == 'B') {
                break;
            }
            int digit = ch2 - '0';
            if (result < -214748364) {
                throw new NumberFormatException(numberString());
            }
            int result2 = result * 10;
            if (result2 < limit + digit) {
                throw new NumberFormatException(numberString());
            }
            result = result2 - digit;
            i = i2;
        }
        return -result;
    }

    public byte[] bytesValue() {
        return decodeFast(this.text, this.f58np + 1, this.f59sp);
    }

    private void scanIdent() {
        this.f58np = this.f56bp - 1;
        this.hasSpecial = false;
        do {
            this.f59sp++;
            next();
        } while (Character.isLetterOrDigit(this.f57ch));
        String ident = stringVal();
        if (ident.equals("null")) {
            this.token = 8;
        } else if (ident.equals(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE)) {
            this.token = 6;
        } else if (ident.equals("false")) {
            this.token = 7;
        } else if (ident.equals("new")) {
            this.token = 9;
        } else if (ident.equals("undefined")) {
            this.token = 23;
        } else if (ident.equals("Set")) {
            this.token = 21;
        } else if (ident.equals("TreeSet")) {
            this.token = 22;
        } else {
            this.token = 18;
        }
    }

    public final String stringVal() {
        if (this.hasSpecial) {
            return readString(this.sbuf, this.f59sp);
        }
        return subString(this.f58np + 1, this.f59sp);
    }

    private final String subString(int offset, int count) {
        if (count < this.sbuf.length) {
            this.text.getChars(offset, offset + count, this.sbuf, 0);
            return new String(this.sbuf, 0, count);
        }
        char[] chars = new char[count];
        this.text.getChars(offset, offset + count, chars, 0);
        return new String(chars);
    }

    final char[] sub_chars(int offset, int count) {
        if (count < this.sbuf.length) {
            this.text.getChars(offset, offset + count, this.sbuf, 0);
            return this.sbuf;
        }
        char[] chars = new char[count];
        this.sbuf = chars;
        this.text.getChars(offset, offset + count, chars, 0);
        return chars;
    }

    public final boolean isBlankInput() {
        int i = 0;
        while (true) {
            char ch2 = charAt(i);
            if (ch2 == 26) {
                return true;
            }
            boolean whitespace = ch2 <= ' ' && (ch2 == ' ' || ch2 == '\n' || ch2 == '\r' || ch2 == '\t' || ch2 == '\f' || ch2 == '\b');
            if (!whitespace) {
                return false;
            }
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void skipWhitespace() {
        while (this.f57ch <= '/') {
            if (this.f57ch == ' ' || this.f57ch == '\r' || this.f57ch == '\n' || this.f57ch == '\t' || this.f57ch == '\f' || this.f57ch == '\b') {
                next();
            } else if (this.f57ch == '/') {
                skipComment();
            } else {
                return;
            }
        }
    }

    public final void scanNumber() {
        this.f58np = this.f56bp;
        this.exp = false;
        if (this.f57ch == '-') {
            this.f59sp++;
            int index = this.f56bp + 1;
            this.f56bp = index;
            this.f57ch = index >= this.len ? (char) 26 : this.text.charAt(index);
        }
        while (this.f57ch >= '0' && this.f57ch <= '9') {
            this.f59sp++;
            int index2 = this.f56bp + 1;
            this.f56bp = index2;
            this.f57ch = index2 >= this.len ? (char) 26 : this.text.charAt(index2);
        }
        this.isDouble = false;
        if (this.f57ch == '.') {
            this.f59sp++;
            int index3 = this.f56bp + 1;
            this.f56bp = index3;
            this.f57ch = index3 >= this.len ? (char) 26 : this.text.charAt(index3);
            this.isDouble = true;
            while (this.f57ch >= '0' && this.f57ch <= '9') {
                this.f59sp++;
                int index4 = this.f56bp + 1;
                this.f56bp = index4;
                this.f57ch = index4 >= this.len ? (char) 26 : this.text.charAt(index4);
            }
        }
        if (this.f57ch == 'L') {
            this.f59sp++;
            next();
        } else if (this.f57ch == 'S') {
            this.f59sp++;
            next();
        } else if (this.f57ch == 'B') {
            this.f59sp++;
            next();
        } else if (this.f57ch == 'F') {
            this.f59sp++;
            next();
            this.isDouble = true;
        } else if (this.f57ch == 'D') {
            this.f59sp++;
            next();
            this.isDouble = true;
        } else if (this.f57ch == 'e' || this.f57ch == 'E') {
            this.f59sp++;
            int index5 = this.f56bp + 1;
            this.f56bp = index5;
            this.f57ch = index5 >= this.len ? (char) 26 : this.text.charAt(index5);
            if (this.f57ch == '+' || this.f57ch == '-') {
                this.f59sp++;
                int index6 = this.f56bp + 1;
                this.f56bp = index6;
                this.f57ch = index6 >= this.len ? (char) 26 : this.text.charAt(index6);
            }
            while (this.f57ch >= '0' && this.f57ch <= '9') {
                this.f59sp++;
                int index7 = this.f56bp + 1;
                this.f56bp = index7;
                this.f57ch = index7 >= this.len ? (char) 26 : this.text.charAt(index7);
            }
            if (this.f57ch == 'D' || this.f57ch == 'F') {
                this.f59sp++;
                next();
            }
            this.exp = true;
            this.isDouble = true;
        }
        if (this.isDouble) {
            this.token = 3;
        } else {
            this.token = 2;
        }
    }

    public boolean scanBoolean() {
        int offset;
        boolean value;
        if (this.text.startsWith("false", this.f56bp)) {
            offset = 5;
            value = false;
        } else if (this.text.startsWith(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE, this.f56bp)) {
            offset = 4;
            value = true;
        } else if (this.f57ch == '1') {
            offset = 1;
            value = true;
        } else if (this.f57ch == '0') {
            offset = 1;
            value = false;
        } else {
            this.matchStat = -1;
            return false;
        }
        this.f56bp += offset;
        this.f57ch = charAt(this.f56bp);
        return value;
    }

    public final Number scanNumberValue() {
        boolean negative;
        long limit;
        char[] chars;
        Number number;
        int i;
        int start = this.f56bp;
        boolean overflow = false;
        Number number2 = null;
        this.f58np = 0;
        if (this.f57ch == '-') {
            negative = true;
            limit = Long.MIN_VALUE;
            this.f58np++;
            int index = this.f56bp + 1;
            this.f56bp = index;
            this.f57ch = index >= this.len ? EOI : this.text.charAt(index);
        } else {
            negative = false;
            limit = -9223372036854775807L;
        }
        long longValue = 0;
        while (this.f57ch >= '0' && this.f57ch <= '9') {
            int digit = this.f57ch - '0';
            if (longValue < -922337203685477580L) {
                overflow = true;
            }
            long longValue2 = longValue * 10;
            if (longValue2 < digit + limit) {
                overflow = true;
            }
            longValue = longValue2 - digit;
            this.f58np++;
            int index2 = this.f56bp + 1;
            this.f56bp = index2;
            this.f57ch = index2 >= this.len ? EOI : this.text.charAt(index2);
        }
        if (!negative) {
            longValue = -longValue;
        }
        if (this.f57ch == 'L') {
            this.f58np++;
            next();
            number2 = Long.valueOf(longValue);
        } else if (this.f57ch == 'S') {
            this.f58np++;
            next();
            number2 = Short.valueOf((short) longValue);
        } else if (this.f57ch == 'B') {
            this.f58np++;
            next();
            number2 = Byte.valueOf((byte) longValue);
        } else if (this.f57ch == 'F') {
            this.f58np++;
            next();
            number2 = Float.valueOf((float) longValue);
        } else if (this.f57ch == 'D') {
            this.f58np++;
            next();
            number2 = Double.valueOf(longValue);
        }
        boolean isDouble = false;
        boolean exp = false;
        if (this.f57ch == '.') {
            isDouble = true;
            this.f58np++;
            int index3 = this.f56bp + 1;
            this.f56bp = index3;
            this.f57ch = index3 >= this.len ? EOI : this.text.charAt(index3);
            while (this.f57ch >= '0' && this.f57ch <= '9') {
                this.f58np++;
                int index4 = this.f56bp + 1;
                this.f56bp = index4;
                this.f57ch = index4 >= this.len ? EOI : this.text.charAt(index4);
            }
        }
        char type = 0;
        if (this.f57ch == 'e' || this.f57ch == 'E') {
            this.f58np++;
            int index5 = this.f56bp + 1;
            this.f56bp = index5;
            this.f57ch = index5 >= this.len ? EOI : this.text.charAt(index5);
            if (this.f57ch == '+' || this.f57ch == '-') {
                this.f58np++;
                int index6 = this.f56bp + 1;
                this.f56bp = index6;
                this.f57ch = index6 >= this.len ? EOI : this.text.charAt(index6);
            }
            while (this.f57ch >= '0' && this.f57ch <= '9') {
                this.f58np++;
                int index7 = this.f56bp + 1;
                this.f56bp = index7;
                this.f57ch = index7 >= this.len ? EOI : this.text.charAt(index7);
            }
            if (this.f57ch == 'D' || this.f57ch == 'F') {
                this.f58np++;
                type = this.f57ch;
                next();
            }
            exp = true;
        }
        if (!isDouble && !exp) {
            if (overflow) {
                char[] chars2 = new char[this.f56bp - start];
                this.text.getChars(start, this.f56bp, chars2, 0);
                number2 = new BigInteger(new String(chars2));
            }
            if (number2 == null) {
                if (longValue > -2147483648L && longValue < 2147483647L) {
                    number2 = Integer.valueOf((int) longValue);
                } else {
                    number2 = Long.valueOf(longValue);
                }
            }
            return number2;
        }
        int len = this.f56bp - start;
        if (type != 0) {
            len--;
        }
        if (len < this.sbuf.length) {
            this.text.getChars(start, start + len, this.sbuf, 0);
            chars = this.sbuf;
        } else {
            chars = new char[len];
            this.text.getChars(start, start + len, chars, 0);
        }
        if (!exp && (this.features & Feature.UseBigDecimal.mask) != 0) {
            number = new BigDecimal(chars, 0, len);
        } else {
            try {
                if (len <= 9 && !exp) {
                    int i2 = 0 + 1;
                    char c = chars[0];
                    if (c == '-' || c == '+') {
                        i = i2 + 1;
                        c = chars[i2];
                    } else {
                        i = i2;
                    }
                    int intVal = c - '0';
                    int power = 0;
                    while (i < len) {
                        char c2 = chars[i];
                        if (c2 == '.') {
                            power = 1;
                        } else {
                            intVal = (intVal * 10) + (c2 - '0');
                            if (power != 0) {
                                power *= 10;
                            }
                        }
                        i++;
                    }
                    if (type == 'F') {
                        float floatVal = intVal / power;
                        if (negative) {
                            floatVal = -floatVal;
                        }
                        return Float.valueOf(floatVal);
                    }
                    double doubleVal = intVal / power;
                    if (negative) {
                        doubleVal = -doubleVal;
                    }
                    return Double.valueOf(doubleVal);
                }
                String strVal = new String(chars, 0, len);
                if (type == 'F') {
                    number = Float.valueOf(strVal);
                } else {
                    number = Double.valueOf(Double.parseDouble(strVal));
                }
            } catch (NumberFormatException ex) {
                throw new JSONException(ex.getMessage() + ", " + info(), ex);
            }
        }
        return number;
    }

    public final long scanLongValue() {
        boolean negative;
        long limit;
        this.f58np = 0;
        if (this.f57ch == '-') {
            negative = true;
            limit = Long.MIN_VALUE;
            this.f58np++;
            int index = this.f56bp + 1;
            this.f56bp = index;
            if (index >= this.len) {
                throw new JSONException("syntax error, " + info());
            }
            this.f57ch = this.text.charAt(index);
        } else {
            negative = false;
            limit = -9223372036854775807L;
        }
        long longValue = 0;
        while (this.f57ch >= '0' && this.f57ch <= '9') {
            int digit = this.f57ch - '0';
            if (longValue < -922337203685477580L) {
                throw new JSONException("error long value, " + longValue + ", " + info());
            }
            long longValue2 = longValue * 10;
            if (longValue2 < digit + limit) {
                throw new JSONException("error long value, " + longValue2 + ", " + info());
            }
            longValue = longValue2 - digit;
            this.f58np++;
            int index2 = this.f56bp + 1;
            this.f56bp = index2;
            this.f57ch = index2 >= this.len ? EOI : this.text.charAt(index2);
        }
        if (!negative) {
            return -longValue;
        }
        return longValue;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0045, code lost:
        if (r2 <= (r14.f58np + 1)) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0047, code lost:
        return r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x008b, code lost:
        throw new java.lang.NumberFormatException(numberString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:?, code lost:
        return -r10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long longValue() throws NumberFormatException {
        long limit;
        int i;
        int i2;
        long result = 0;
        boolean negative = false;
        int i3 = this.f58np;
        int max = this.f58np + this.f59sp;
        if (charAt(this.f58np) == '-') {
            negative = true;
            limit = Long.MIN_VALUE;
            i = i3 + 1;
        } else {
            limit = -9223372036854775807L;
            i = i3;
        }
        if (i < max) {
            result = -(charAt(i) - '0');
            i++;
        }
        while (true) {
            if (i >= max) {
                i2 = i;
                break;
            }
            i2 = i + 1;
            int index = i;
            char chLocal = index >= this.len ? EOI : this.text.charAt(index);
            if (chLocal == 'L' || chLocal == 'S' || chLocal == 'B') {
                break;
            }
            int digit = chLocal - '0';
            if (result < -922337203685477580L) {
                throw new NumberFormatException(numberString());
            }
            long result2 = result * 10;
            if (result2 < digit + limit) {
                throw new NumberFormatException(numberString());
            }
            result = result2 - digit;
            i = i2;
        }
    }

    public final Number decimalValue(boolean decimal) {
        char[] chars;
        int i;
        int charIndex = (this.f58np + this.f59sp) - 1;
        char chLocal = charIndex >= this.len ? EOI : this.text.charAt(charIndex);
        try {
            if (chLocal == 'F') {
                return Float.valueOf(Float.parseFloat(numberString()));
            }
            if (chLocal == 'D') {
                return Double.valueOf(Double.parseDouble(numberString()));
            }
            if (decimal) {
                return decimalValue();
            }
            int index = (this.f58np + this.f59sp) - 1;
            char chLocal2 = this.text.charAt(index);
            int sp = this.f59sp;
            if (chLocal2 == 'L' || chLocal2 == 'S' || chLocal2 == 'B' || chLocal2 == 'F' || chLocal2 == 'D') {
                sp--;
            }
            int offset = this.f58np;
            int count = sp;
            if (count < this.sbuf.length) {
                this.text.getChars(offset, offset + count, this.sbuf, 0);
                chars = this.sbuf;
            } else {
                chars = new char[count];
                this.text.getChars(offset, offset + count, chars, 0);
            }
            if (count <= 9 && !this.exp) {
                boolean negative = false;
                int i2 = 0 + 1;
                char c = chars[0];
                if (c == '-') {
                    negative = true;
                    i = i2 + 1;
                    c = chars[i2];
                } else if (c == '+') {
                    i = i2 + 1;
                    c = chars[i2];
                } else {
                    i = i2;
                }
                int intVal = c - '0';
                int power = 0;
                while (i < count) {
                    char c2 = chars[i];
                    if (c2 == '.') {
                        power = 1;
                    } else {
                        int digit = c2 - '0';
                        intVal = (intVal * 10) + digit;
                        if (power != 0) {
                            power *= 10;
                        }
                    }
                    i++;
                }
                double doubleVal = intVal / power;
                if (negative) {
                    doubleVal = -doubleVal;
                }
                return Double.valueOf(doubleVal);
            }
            String str = new String(chars, 0, count);
            return Double.valueOf(Double.parseDouble(str));
        } catch (NumberFormatException ex) {
            throw new JSONException(ex.getMessage() + ", " + info());
        }
    }

    public final BigDecimal decimalValue() {
        int index = (this.f58np + this.f59sp) - 1;
        char chLocal = this.text.charAt(index);
        int sp = this.f59sp;
        if (chLocal == 'L' || chLocal == 'S' || chLocal == 'B' || chLocal == 'F' || chLocal == 'D') {
            sp--;
        }
        int offset = this.f58np;
        int count = sp;
        if (count < this.sbuf.length) {
            this.text.getChars(offset, offset + count, this.sbuf, 0);
            return new BigDecimal(this.sbuf, 0, count);
        }
        char[] chars = new char[count];
        this.text.getChars(offset, offset + count, chars, 0);
        return new BigDecimal(chars);
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x00ad, code lost:
        r1 = r13.text.charAt(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x00a6, code lost:
        r1 = r13.text.charAt(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x000c, code lost:
        r6 = -2128831035;
        r5 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0012, code lost:
        if (r5 >= r13.len) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0014, code lost:
        r0 = r13.text.charAt(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x001a, code lost:
        if (r0 != r3) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0068, code lost:
        r6 = (r6 ^ r0) * 16777619;
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x001c, code lost:
        r9 = r9 + ((r5 - r4) + 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0025, code lost:
        if (r6 == r14) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0027, code lost:
        r13.matchStat = -2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x002c, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0071, code lost:
        r8 = r9 + 1;
        r2 = r13.f56bp + r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0079, code lost:
        if (r2 < r13.len) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x007b, code lost:
        r1 = com.alibaba.fastjson.parser.JSONLexer.EOI;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x007e, code lost:
        r9 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0080, code lost:
        if (r1 != ':') goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00b6, code lost:
        if (r1 > ' ') goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00ba, code lost:
        if (r1 == ' ') goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00be, code lost:
        if (r1 == '\n') goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00c2, code lost:
        if (r1 == '\r') goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00c6, code lost:
        if (r1 == '\t') goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00ca, code lost:
        if (r1 == '\f') goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00ce, code lost:
        if (r1 != '\b') goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00ec, code lost:
        throw new com.alibaba.fastjson.JSONException("match feild error expect ':'");
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00d0, code lost:
        r8 = r9 + 1;
        r2 = r13.f56bp + r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00d8, code lost:
        if (r2 < r13.len) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00da, code lost:
        r1 = com.alibaba.fastjson.parser.JSONLexer.EOI;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00de, code lost:
        r1 = r13.text.charAt(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0082, code lost:
        r8 = r9 + 1;
        r2 = r13.f56bp + r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x008a, code lost:
        if (r2 < r13.len) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x008c, code lost:
        r1 = com.alibaba.fastjson.parser.JSONLexer.EOI;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0090, code lost:
        if (r1 != '{') goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0092, code lost:
        r13.f56bp = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x009a, code lost:
        if (r13.f56bp < r13.len) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x009c, code lost:
        r10 = com.alibaba.fastjson.parser.JSONLexer.EOI;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x009e, code lost:
        r13.f57ch = r10;
        r13.token = 12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x00a4, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x00ed, code lost:
        r10 = r13.text.charAt(r13.f56bp);
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x00f8, code lost:
        if (r1 != '[') goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x00fa, code lost:
        r13.f56bp = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0102, code lost:
        if (r13.f56bp < r13.len) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0104, code lost:
        r10 = com.alibaba.fastjson.parser.JSONLexer.EOI;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0106, code lost:
        r13.f57ch = r10;
        r13.token = 14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x010d, code lost:
        r10 = r13.text.charAt(r13.f56bp);
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0116, code lost:
        r13.f56bp = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x011c, code lost:
        if (r13.f56bp < r13.len) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x011e, code lost:
        r10 = com.alibaba.fastjson.parser.JSONLexer.EOI;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0120, code lost:
        r13.f57ch = r10;
        nextToken();
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0127, code lost:
        r10 = r13.text.charAt(r13.f56bp);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean matchField(long fieldHashCode) {
        int offset = 1;
        char fieldQuote = this.f57ch;
        int fieldStartIndex = this.f56bp + 1;
        while (true) {
            int offset2 = offset;
            if (fieldQuote != '\"' && fieldQuote != '\'') {
                if (fieldQuote > ' ' || !(fieldQuote == ' ' || fieldQuote == '\n' || fieldQuote == '\r' || fieldQuote == '\t' || fieldQuote == '\f' || fieldQuote == '\b')) {
                    break;
                }
                offset = offset2 + 1;
                int charIndex = this.f56bp + offset2;
                fieldQuote = charIndex >= this.len ? EOI : this.text.charAt(charIndex);
            }
        }
        this.matchStat = -2;
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x000c, code lost:
        r6 = -2128831035;
        r5 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0012, code lost:
        if (r5 >= r13.len) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0014, code lost:
        r0 = r13.text.charAt(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x001a, code lost:
        if (r0 != r3) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0065, code lost:
        r6 = (r6 ^ r0) * 16777619;
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x001c, code lost:
        r8 = r9 + (r5 - r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0022, code lost:
        if (r6 == r14) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0024, code lost:
        r13.matchStat = -2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0029, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x006e, code lost:
        r8 = r8 + 1;
        r2 = r13.f56bp + r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0076, code lost:
        if (r2 < r13.len) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0078, code lost:
        r1 = com.alibaba.fastjson.parser.JSONLexer.EOI;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x007b, code lost:
        r9 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x007d, code lost:
        if (r1 != ':') goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x008d, code lost:
        if (r1 > ' ') goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0091, code lost:
        if (r1 == ' ') goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0095, code lost:
        if (r1 == '\n') goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0099, code lost:
        if (r1 == '\r') goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x009d, code lost:
        if (r1 == '\t') goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00a1, code lost:
        if (r1 == '\f') goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00a5, code lost:
        if (r1 != '\b') goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00c3, code lost:
        throw new com.alibaba.fastjson.JSONException("match feild error expect ':'");
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00a7, code lost:
        r8 = r9 + 1;
        r2 = r13.f56bp + r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00af, code lost:
        if (r2 < r13.len) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00b1, code lost:
        r1 = com.alibaba.fastjson.parser.JSONLexer.EOI;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00b5, code lost:
        r1 = r13.text.charAt(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:?, code lost:
        return r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0084, code lost:
        r1 = r13.text.charAt(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x00c4, code lost:
        r8 = r9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int matchFieldHash(long fieldHashCode) {
        int offset = 1;
        char fieldQuote = this.f57ch;
        int fieldStartIndex = this.f56bp + 1;
        while (true) {
            int offset2 = offset;
            if (fieldQuote != '\"' && fieldQuote != '\'') {
                if (fieldQuote > ' ' || !(fieldQuote == ' ' || fieldQuote == '\n' || fieldQuote == '\r' || fieldQuote == '\t' || fieldQuote == '\f' || fieldQuote == '\b')) {
                    break;
                }
                offset = offset2 + 1;
                int charIndex = this.f56bp + offset2;
                fieldQuote = charIndex >= this.len ? EOI : this.text.charAt(charIndex);
            }
        }
        this.matchStat = -2;
        return 0;
    }

    public int scanFieldInt(long fieldHashCode) {
        int offset;
        int offset2;
        char chLocal;
        this.matchStat = 0;
        int offset3 = matchFieldHash(fieldHashCode);
        if (offset3 == 0) {
            return 0;
        }
        int offset4 = offset3 + 1;
        int charIndex = this.f56bp + offset3;
        char chLocal2 = charIndex >= this.len ? EOI : this.text.charAt(charIndex);
        boolean quote = false;
        if (chLocal2 == '\"') {
            quote = true;
            offset = offset4 + 1;
            int charIndex2 = this.f56bp + offset4;
            chLocal2 = charIndex2 >= this.len ? EOI : this.text.charAt(charIndex2);
        } else {
            offset = offset4;
        }
        if (chLocal2 >= '0' && chLocal2 <= '9') {
            int value = chLocal2 - '0';
            while (true) {
                offset2 = offset + 1;
                int charIndex3 = this.f56bp + offset;
                chLocal = charIndex3 >= this.len ? EOI : this.text.charAt(charIndex3);
                if (chLocal < '0' || chLocal > '9') {
                    break;
                }
                value = (value * 10) + (chLocal - '0');
                offset = offset2;
            }
            if (chLocal == '.') {
                this.matchStat = -1;
                return 0;
            }
            if (chLocal == '\"') {
                if (!quote) {
                    this.matchStat = -1;
                    return 0;
                }
                int offset5 = offset2 + 1;
                int index = this.f56bp + offset2;
                chLocal = index >= this.len ? EOI : this.text.charAt(index);
                offset2 = offset5;
            }
            if (value < 0) {
                this.matchStat = -1;
                return 0;
            } else if (chLocal == ',') {
                this.f56bp += offset2 - 1;
                int index2 = this.f56bp + 1;
                this.f56bp = index2;
                this.f57ch = index2 >= this.len ? EOI : this.text.charAt(index2);
                this.matchStat = 3;
                this.token = 16;
                return value;
            } else if (chLocal == '}') {
                int offset6 = offset2 + 1;
                char chLocal3 = charAt(this.f56bp + offset2);
                if (chLocal3 == ',') {
                    this.token = 16;
                    this.f56bp += offset6 - 1;
                    int index3 = this.f56bp + 1;
                    this.f56bp = index3;
                    this.f57ch = index3 >= this.len ? EOI : this.text.charAt(index3);
                } else if (chLocal3 == ']') {
                    this.token = 15;
                    this.f56bp += offset6 - 1;
                    int index4 = this.f56bp + 1;
                    this.f56bp = index4;
                    this.f57ch = index4 >= this.len ? EOI : this.text.charAt(index4);
                } else if (chLocal3 == '}') {
                    this.token = 13;
                    this.f56bp += offset6 - 1;
                    int index5 = this.f56bp + 1;
                    this.f56bp = index5;
                    this.f57ch = index5 >= this.len ? EOI : this.text.charAt(index5);
                } else if (chLocal3 == 26) {
                    this.token = 20;
                    this.f56bp += offset6 - 1;
                    this.f57ch = EOI;
                } else {
                    this.matchStat = -1;
                    return 0;
                }
                this.matchStat = 4;
                return value;
            } else {
                this.matchStat = -1;
                return 0;
            }
        }
        this.matchStat = -1;
        return 0;
    }

    public final int[] scanFieldIntArray(long fieldHashCode) {
        int offset;
        int offset2;
        int offset3;
        char chLocal;
        this.matchStat = 0;
        int offset4 = matchFieldHash(fieldHashCode);
        if (offset4 == 0) {
            return null;
        }
        int offset5 = offset4 + 1;
        int charIndex = this.f56bp + offset4;
        if ((charIndex >= this.len ? EOI : this.text.charAt(charIndex)) != '[') {
            this.matchStat = -2;
            return null;
        }
        int offset6 = offset5 + 1;
        int charIndex2 = this.f56bp + offset5;
        char chLocal2 = charIndex2 >= this.len ? EOI : this.text.charAt(charIndex2);
        int[] array = new int[16];
        int arrayIndex = 0;
        if (chLocal2 == ']') {
            int offset7 = offset6 + 1;
            int charIndex3 = this.f56bp + offset6;
            chLocal = charIndex3 >= this.len ? EOI : this.text.charAt(charIndex3);
            offset3 = offset7;
        } else {
            while (true) {
                int arrayIndex2 = arrayIndex;
                int offset8 = offset6;
                boolean nagative = false;
                if (chLocal2 == '-') {
                    offset = offset8 + 1;
                    int charIndex4 = this.f56bp + offset8;
                    chLocal2 = charIndex4 >= this.len ? EOI : this.text.charAt(charIndex4);
                    nagative = true;
                } else {
                    offset = offset8;
                }
                if (chLocal2 < '0' || chLocal2 > '9') {
                    break;
                }
                int value = chLocal2 - '0';
                while (true) {
                    offset2 = offset + 1;
                    int charIndex5 = this.f56bp + offset;
                    chLocal2 = charIndex5 >= this.len ? EOI : this.text.charAt(charIndex5);
                    if (chLocal2 < '0' || chLocal2 > '9') {
                        break;
                    }
                    value = (value * 10) + (chLocal2 - '0');
                    offset = offset2;
                }
                if (arrayIndex2 >= array.length) {
                    int[] tmp = new int[(array.length * 3) / 2];
                    System.arraycopy(array, 0, tmp, 0, arrayIndex2);
                    array = tmp;
                }
                arrayIndex = arrayIndex2 + 1;
                if (nagative) {
                    value = -value;
                }
                array[arrayIndex2] = value;
                if (chLocal2 == ',') {
                    offset6 = offset2 + 1;
                    int charIndex6 = this.f56bp + offset2;
                    chLocal2 = charIndex6 >= this.len ? EOI : this.text.charAt(charIndex6);
                } else if (chLocal2 == ']') {
                    offset3 = offset2 + 1;
                    int charIndex7 = this.f56bp + offset2;
                    chLocal = charIndex7 >= this.len ? EOI : this.text.charAt(charIndex7);
                } else {
                    offset6 = offset2;
                }
            }
            this.matchStat = -1;
            return null;
        }
        if (arrayIndex != array.length) {
            int[] tmp2 = new int[arrayIndex];
            System.arraycopy(array, 0, tmp2, 0, arrayIndex);
            array = tmp2;
        }
        if (chLocal == ',') {
            this.f56bp += offset3 - 1;
            next();
            this.matchStat = 3;
            this.token = 16;
            return array;
        } else if (chLocal == '}') {
            int offset9 = offset3 + 1;
            char chLocal3 = charAt(this.f56bp + offset3);
            if (chLocal3 == ',') {
                this.token = 16;
                this.f56bp += offset9 - 1;
                next();
            } else if (chLocal3 == ']') {
                this.token = 15;
                this.f56bp += offset9 - 1;
                next();
            } else if (chLocal3 == '}') {
                this.token = 13;
                this.f56bp += offset9 - 1;
                next();
            } else if (chLocal3 == 26) {
                this.f56bp += offset9 - 1;
                this.token = 20;
                this.f57ch = EOI;
            } else {
                this.matchStat = -1;
                return null;
            }
            this.matchStat = 4;
            return array;
        } else {
            this.matchStat = -1;
            return null;
        }
    }

    public long scanFieldLong(long fieldHashCode) {
        int offset;
        int offset2;
        char chLocal;
        this.matchStat = 0;
        int offset3 = matchFieldHash(fieldHashCode);
        if (offset3 == 0) {
            return 0L;
        }
        int offset4 = offset3 + 1;
        int index = this.f56bp + offset3;
        char chLocal2 = index >= this.len ? EOI : this.text.charAt(index);
        boolean quote = false;
        if (chLocal2 == '\"') {
            quote = true;
            offset = offset4 + 1;
            int index2 = this.f56bp + offset4;
            chLocal2 = index2 >= this.len ? EOI : this.text.charAt(index2);
        } else {
            offset = offset4;
        }
        if (chLocal2 >= '0' && chLocal2 <= '9') {
            long value = chLocal2 - '0';
            while (true) {
                offset2 = offset + 1;
                int index3 = this.f56bp + offset;
                chLocal = index3 >= this.len ? EOI : this.text.charAt(index3);
                if (chLocal < '0' || chLocal > '9') {
                    break;
                }
                value = (10 * value) + (chLocal - '0');
                offset = offset2;
            }
            if (chLocal == '.') {
                this.matchStat = -1;
                return 0L;
            }
            if (chLocal == '\"') {
                if (!quote) {
                    this.matchStat = -1;
                    return 0L;
                }
                int offset5 = offset2 + 1;
                int index4 = this.f56bp + offset2;
                chLocal = index4 >= this.len ? EOI : this.text.charAt(index4);
                offset2 = offset5;
            }
            if (value < 0) {
                this.matchStat = -1;
                return 0L;
            } else if (chLocal == ',') {
                this.f56bp += offset2 - 1;
                int index5 = this.f56bp + 1;
                this.f56bp = index5;
                this.f57ch = index5 >= this.len ? EOI : this.text.charAt(index5);
                this.matchStat = 3;
                this.token = 16;
                return value;
            } else if (chLocal == '}') {
                int offset6 = offset2 + 1;
                char chLocal3 = charAt(this.f56bp + offset2);
                if (chLocal3 == ',') {
                    this.token = 16;
                    this.f56bp += offset6 - 1;
                    int index6 = this.f56bp + 1;
                    this.f56bp = index6;
                    this.f57ch = index6 >= this.len ? EOI : this.text.charAt(index6);
                } else if (chLocal3 == ']') {
                    this.token = 15;
                    this.f56bp += offset6 - 1;
                    int index7 = this.f56bp + 1;
                    this.f56bp = index7;
                    this.f57ch = index7 >= this.len ? EOI : this.text.charAt(index7);
                } else if (chLocal3 == '}') {
                    this.token = 13;
                    this.f56bp += offset6 - 1;
                    int index8 = this.f56bp + 1;
                    this.f56bp = index8;
                    this.f57ch = index8 >= this.len ? EOI : this.text.charAt(index8);
                } else if (chLocal3 == 26) {
                    this.token = 20;
                    this.f56bp += offset6 - 1;
                    this.f57ch = EOI;
                } else {
                    this.matchStat = -1;
                    return 0L;
                }
                this.matchStat = 4;
                return value;
            } else {
                this.matchStat = -1;
                return 0L;
            }
        }
        this.matchStat = -1;
        return 0L;
    }

    public String scanFieldString(long fieldHashCode) {
        String strVal;
        this.matchStat = 0;
        int offset = matchFieldHash(fieldHashCode);
        if (offset == 0) {
            return null;
        }
        int offset2 = offset + 1;
        int index = this.f56bp + offset;
        if (index >= this.len) {
            throw new JSONException("unclosed str, " + info());
        }
        if (this.text.charAt(index) != '\"') {
            this.matchStat = -1;
            return this.stringDefaultValue;
        }
        boolean hasSpecial = false;
        int startIndex = this.f56bp + offset2;
        int endIndex = this.text.indexOf(34, startIndex);
        if (endIndex == -1) {
            throw new JSONException("unclosed str, " + info());
        }
        if (f55V6) {
            strVal = this.text.substring(startIndex, endIndex);
        } else {
            int chars_len = endIndex - startIndex;
            strVal = new String(sub_chars(this.f56bp + offset2, chars_len), 0, chars_len);
        }
        if (strVal.indexOf(92) != -1) {
            while (true) {
                int slashCount = 0;
                for (int i = endIndex - 1; i >= 0 && this.text.charAt(i) == '\\'; i--) {
                    hasSpecial = true;
                    slashCount++;
                }
                if (slashCount % 2 == 0) {
                    break;
                }
                endIndex = this.text.indexOf(34, endIndex + 1);
            }
            int chars_len2 = endIndex - startIndex;
            char[] chars = sub_chars(this.f56bp + offset2, chars_len2);
            if (hasSpecial) {
                strVal = readString(chars, chars_len2);
            } else {
                strVal = new String(chars, 0, chars_len2);
                if (strVal.indexOf(92) != -1) {
                    strVal = readString(chars, chars_len2);
                }
            }
        }
        int endIndex2 = endIndex + 1;
        char chLocal = endIndex2 >= this.len ? EOI : this.text.charAt(endIndex2);
        if (chLocal == ',') {
            this.f56bp = endIndex2;
            int index2 = this.f56bp + 1;
            this.f56bp = index2;
            this.f57ch = index2 >= this.len ? EOI : this.text.charAt(index2);
            this.matchStat = 3;
            this.token = 16;
            return strVal;
        } else if (chLocal == '}') {
            int endIndex3 = endIndex2 + 1;
            char chLocal2 = endIndex3 >= this.len ? EOI : this.text.charAt(endIndex3);
            if (chLocal2 == ',') {
                this.token = 16;
                this.f56bp = endIndex3;
                next();
            } else if (chLocal2 == ']') {
                this.token = 15;
                this.f56bp = endIndex3;
                next();
            } else if (chLocal2 == '}') {
                this.token = 13;
                this.f56bp = endIndex3;
                next();
            } else if (chLocal2 == 26) {
                this.token = 20;
                this.f56bp = endIndex3;
                this.f57ch = EOI;
            } else {
                this.matchStat = -1;
                String strVal2 = this.stringDefaultValue;
                return strVal2;
            }
            this.matchStat = 4;
            return strVal;
        } else {
            this.matchStat = -1;
            String strVal3 = this.stringDefaultValue;
            return strVal3;
        }
    }

    public boolean scanFieldBoolean(long fieldHashCode) {
        int offset;
        boolean value;
        this.matchStat = 0;
        int offset2 = matchFieldHash(fieldHashCode);
        if (offset2 == 0) {
            return false;
        }
        if (this.text.startsWith("false", this.f56bp + offset2)) {
            offset = offset2 + 5;
            value = false;
        } else if (this.text.startsWith(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE, this.f56bp + offset2)) {
            offset = offset2 + 4;
            value = true;
        } else if (this.text.startsWith("\"false\"", this.f56bp + offset2)) {
            offset = offset2 + 7;
            value = false;
        } else if (this.text.startsWith("\"true\"", this.f56bp + offset2)) {
            offset = offset2 + 6;
            value = true;
        } else {
            this.matchStat = -1;
            return false;
        }
        int offset3 = offset + 1;
        int charIndex = this.f56bp + offset;
        char chLocal = charIndex >= this.len ? EOI : this.text.charAt(charIndex);
        if (chLocal == ',') {
            this.f56bp += offset3 - 1;
            int index = this.f56bp + 1;
            this.f56bp = index;
            this.f57ch = index >= this.len ? EOI : this.text.charAt(index);
            this.matchStat = 3;
            this.token = 16;
            return value;
        } else if (chLocal == '}') {
            int offset4 = offset3 + 1;
            char chLocal2 = charAt(this.f56bp + offset3);
            if (chLocal2 == ',') {
                this.token = 16;
                this.f56bp += offset4 - 1;
                int index2 = this.f56bp + 1;
                this.f56bp = index2;
                this.f57ch = index2 >= this.len ? EOI : this.text.charAt(index2);
            } else if (chLocal2 == ']') {
                this.token = 15;
                this.f56bp += offset4 - 1;
                int index3 = this.f56bp + 1;
                this.f56bp = index3;
                this.f57ch = index3 >= this.len ? EOI : this.text.charAt(index3);
            } else if (chLocal2 == '}') {
                this.token = 13;
                this.f56bp += offset4 - 1;
                int index4 = this.f56bp + 1;
                this.f56bp = index4;
                this.f57ch = index4 >= this.len ? EOI : this.text.charAt(index4);
            } else if (chLocal2 == 26) {
                this.token = 20;
                this.f56bp += offset4 - 1;
                this.f57ch = EOI;
            } else {
                this.matchStat = -1;
                return false;
            }
            this.matchStat = 4;
            return value;
        } else {
            this.matchStat = -1;
            return false;
        }
    }

    public final float scanFieldFloat(long fieldHashCode) {
        int offset;
        int offset2;
        char chLocal;
        float value;
        this.matchStat = 0;
        int offset3 = matchFieldHash(fieldHashCode);
        if (offset3 == 0) {
            return 0.0f;
        }
        int offset4 = offset3 + 1;
        char chLocal2 = charAt(this.f56bp + offset3);
        int start = (this.f56bp + offset4) - 1;
        boolean negative = chLocal2 == '-';
        if (negative) {
            offset = offset4 + 1;
            chLocal2 = charAt(this.f56bp + offset4);
        } else {
            offset = offset4;
        }
        if (chLocal2 >= '0' && chLocal2 <= '9') {
            int intVal = chLocal2 - '0';
            while (true) {
                offset2 = offset + 1;
                chLocal = charAt(this.f56bp + offset);
                if (chLocal < '0' || chLocal > '9') {
                    break;
                }
                intVal = (intVal * 10) + (chLocal - '0');
                offset = offset2;
            }
            int power = 1;
            boolean small = chLocal == '.';
            if (small) {
                int offset5 = offset2 + 1;
                char chLocal3 = charAt(this.f56bp + offset2);
                if (chLocal3 >= '0' && chLocal3 <= '9') {
                    intVal = (intVal * 10) + (chLocal3 - '0');
                    power = 1 * 10;
                    while (true) {
                        offset2 = offset5 + 1;
                        chLocal = charAt(this.f56bp + offset5);
                        if (chLocal < '0' || chLocal > '9') {
                            break;
                        }
                        intVal = (intVal * 10) + (chLocal - '0');
                        power *= 10;
                        offset5 = offset2;
                    }
                } else {
                    this.matchStat = -1;
                    return 0.0f;
                }
            }
            boolean exp = chLocal == 'e' || chLocal == 'E';
            if (exp) {
                int offset6 = offset2 + 1;
                chLocal = charAt(this.f56bp + offset2);
                if (chLocal == '+' || chLocal == '-') {
                    offset2 = offset6 + 1;
                    chLocal = charAt(this.f56bp + offset6);
                } else {
                    offset2 = offset6;
                }
                while (chLocal >= '0' && chLocal <= '9') {
                    chLocal = charAt(this.f56bp + offset2);
                    offset2++;
                }
            }
            int offset7 = offset2;
            int count = ((this.f56bp + offset7) - start) - 1;
            if (!exp && count < 10) {
                value = intVal / power;
                if (negative) {
                    value = -value;
                }
            } else {
                String text = subString(start, count);
                value = Float.parseFloat(text);
            }
            if (chLocal == ',') {
                this.f56bp += offset7 - 1;
                next();
                this.matchStat = 3;
                this.token = 16;
                return value;
            } else if (chLocal == '}') {
                int offset8 = offset7 + 1;
                char chLocal4 = charAt(this.f56bp + offset7);
                if (chLocal4 == ',') {
                    this.token = 16;
                    this.f56bp += offset8 - 1;
                    next();
                } else if (chLocal4 == ']') {
                    this.token = 15;
                    this.f56bp += offset8 - 1;
                    next();
                } else if (chLocal4 == '}') {
                    this.token = 13;
                    this.f56bp += offset8 - 1;
                    next();
                } else if (chLocal4 == 26) {
                    this.f56bp += offset8 - 1;
                    this.token = 20;
                    this.f57ch = EOI;
                } else {
                    this.matchStat = -1;
                    return 0.0f;
                }
                this.matchStat = 4;
                return value;
            } else {
                this.matchStat = -1;
                return 0.0f;
            }
        }
        this.matchStat = -1;
        return 0.0f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x0168, code lost:
        r23.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:?, code lost:
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final float[] scanFieldFloatArray(long fieldHashCode) {
        int offset;
        float value;
        this.matchStat = 0;
        int offset2 = matchFieldHash(fieldHashCode);
        if (offset2 == 0) {
            return null;
        }
        int offset3 = offset2 + 1;
        int charIndex = this.f56bp + offset2;
        char chLocal = charIndex >= this.len ? EOI : this.text.charAt(charIndex);
        if (chLocal != '[') {
            this.matchStat = -2;
            return null;
        }
        int offset4 = offset3 + 1;
        int charIndex2 = this.f56bp + offset3;
        char chLocal2 = charIndex2 >= this.len ? EOI : this.text.charAt(charIndex2);
        float[] array = new float[16];
        int arrayIndex = 0;
        while (true) {
            int start = (this.f56bp + offset4) - 1;
            boolean negative = chLocal2 == '-';
            if (negative) {
                int offset5 = offset4 + 1;
                int charIndex3 = this.f56bp + offset4;
                chLocal2 = charIndex3 >= this.len ? EOI : this.text.charAt(charIndex3);
                offset4 = offset5;
            }
            if (chLocal2 < '0' || chLocal2 > '9') {
                break;
            }
            int intVal = chLocal2 - '0';
            while (true) {
                offset = offset4 + 1;
                int charIndex4 = this.f56bp + offset4;
                chLocal2 = charIndex4 >= this.len ? EOI : this.text.charAt(charIndex4);
                if (chLocal2 < '0' || chLocal2 > '9') {
                    break;
                }
                intVal = (intVal * 10) + (chLocal2 - '0');
                offset4 = offset;
            }
            int power = 1;
            boolean small = chLocal2 == '.';
            if (small) {
                int offset6 = offset + 1;
                int charIndex5 = this.f56bp + offset;
                char chLocal3 = charIndex5 >= this.len ? EOI : this.text.charAt(charIndex5);
                power = 1 * 10;
                if (chLocal3 >= '0' && chLocal3 <= '9') {
                    intVal = (intVal * 10) + (chLocal3 - '0');
                    while (true) {
                        offset = offset6 + 1;
                        int charIndex6 = this.f56bp + offset6;
                        chLocal2 = charIndex6 >= this.len ? EOI : this.text.charAt(charIndex6);
                        if (chLocal2 < '0' || chLocal2 > '9') {
                            break;
                        }
                        intVal = (intVal * 10) + (chLocal2 - '0');
                        power *= 10;
                        offset6 = offset;
                    }
                } else {
                    break;
                }
            }
            boolean exp = chLocal2 == 'e' || chLocal2 == 'E';
            if (exp) {
                int offset7 = offset + 1;
                int charIndex7 = this.f56bp + offset;
                chLocal2 = charIndex7 >= this.len ? EOI : this.text.charAt(charIndex7);
                if (chLocal2 == '+' || chLocal2 == '-') {
                    offset = offset7 + 1;
                    int charIndex8 = this.f56bp + offset7;
                    chLocal2 = charIndex8 >= this.len ? EOI : this.text.charAt(charIndex8);
                } else {
                    offset = offset7;
                }
                while (chLocal2 >= '0' && chLocal2 <= '9') {
                    int offset8 = offset + 1;
                    int charIndex9 = this.f56bp + offset;
                    chLocal2 = charIndex9 >= this.len ? EOI : this.text.charAt(charIndex9);
                    offset = offset8;
                }
            }
            offset4 = offset;
            int count = ((this.f56bp + offset4) - start) - 1;
            if (!exp && count < 10) {
                value = intVal / power;
                if (negative) {
                    value = -value;
                }
            } else {
                String text = subString(start, count);
                value = Float.parseFloat(text);
            }
            if (arrayIndex >= array.length) {
                float[] tmp = new float[(array.length * 3) / 2];
                System.arraycopy(array, 0, tmp, 0, arrayIndex);
                array = tmp;
            }
            int arrayIndex2 = arrayIndex + 1;
            array[arrayIndex] = value;
            if (chLocal2 == ',') {
                int offset9 = offset4 + 1;
                int charIndex10 = this.f56bp + offset4;
                chLocal2 = charIndex10 >= this.len ? EOI : this.text.charAt(charIndex10);
                offset4 = offset9;
            } else if (chLocal2 == ']') {
                int offset10 = offset4 + 1;
                int charIndex11 = this.f56bp + offset4;
                char chLocal4 = charIndex11 >= this.len ? EOI : this.text.charAt(charIndex11);
                if (arrayIndex2 != array.length) {
                    float[] tmp2 = new float[arrayIndex2];
                    System.arraycopy(array, 0, tmp2, 0, arrayIndex2);
                    array = tmp2;
                }
                if (chLocal4 == ',') {
                    this.f56bp += offset10 - 1;
                    next();
                    this.matchStat = 3;
                    this.token = 16;
                    return array;
                } else if (chLocal4 == '}') {
                    int offset11 = offset10 + 1;
                    int charIndex12 = this.f56bp + offset10;
                    char chLocal5 = charIndex12 >= this.len ? EOI : this.text.charAt(charIndex12);
                    if (chLocal5 == ',') {
                        this.token = 16;
                        this.f56bp += offset11 - 1;
                        next();
                    } else if (chLocal5 == ']') {
                        this.token = 15;
                        this.f56bp += offset11 - 1;
                        next();
                    } else if (chLocal5 == '}') {
                        this.token = 13;
                        this.f56bp += offset11 - 1;
                        next();
                    } else if (chLocal5 == 26) {
                        this.f56bp += offset11 - 1;
                        this.token = 20;
                        this.f57ch = EOI;
                    } else {
                        this.matchStat = -1;
                        return null;
                    }
                    this.matchStat = 4;
                    return array;
                } else {
                    this.matchStat = -1;
                    return null;
                }
            }
            arrayIndex = arrayIndex2;
        }
        this.matchStat = -1;
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x01a3, code lost:
        r25.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:?, code lost:
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final float[][] scanFieldFloatArray2(long fieldHashCode) {
        int offset;
        float value;
        int offset2;
        this.matchStat = 0;
        int offset3 = matchFieldHash(fieldHashCode);
        if (offset3 == 0) {
            return null;
        }
        int offset4 = offset3 + 1;
        int charIndex = this.f56bp + offset3;
        char chLocal = charIndex >= this.len ? EOI : this.text.charAt(charIndex);
        if (chLocal != '[') {
            this.matchStat = -2;
            return null;
        }
        int offset5 = offset4 + 1;
        int charIndex2 = this.f56bp + offset4;
        char chLocal2 = charIndex2 >= this.len ? EOI : this.text.charAt(charIndex2);
        float[][] arrayarray = new float[16];
        int arrayarrayIndex = 0;
        int offset6 = offset5;
        loop0: while (true) {
            if (chLocal2 == '[') {
                int offset7 = offset6 + 1;
                int charIndex3 = this.f56bp + offset6;
                char chLocal3 = charIndex3 >= this.len ? EOI : this.text.charAt(charIndex3);
                float[] array = new float[16];
                int arrayIndex = 0;
                while (true) {
                    int start = (this.f56bp + offset7) - 1;
                    boolean negative = chLocal3 == '-';
                    if (negative) {
                        int offset8 = offset7 + 1;
                        int charIndex4 = this.f56bp + offset7;
                        chLocal3 = charIndex4 >= this.len ? EOI : this.text.charAt(charIndex4);
                        offset7 = offset8;
                    }
                    if (chLocal3 < '0' || chLocal3 > '9') {
                        break loop0;
                    }
                    int intVal = chLocal3 - '0';
                    while (true) {
                        offset = offset7 + 1;
                        int charIndex5 = this.f56bp + offset7;
                        chLocal3 = charIndex5 >= this.len ? EOI : this.text.charAt(charIndex5);
                        if (chLocal3 < '0' || chLocal3 > '9') {
                            break;
                        }
                        intVal = (intVal * 10) + (chLocal3 - '0');
                        offset7 = offset;
                    }
                    int power = 1;
                    if (chLocal3 == '.') {
                        int offset9 = offset + 1;
                        int charIndex6 = this.f56bp + offset;
                        char chLocal4 = charIndex6 >= this.len ? EOI : this.text.charAt(charIndex6);
                        if (chLocal4 >= '0' && chLocal4 <= '9') {
                            intVal = (intVal * 10) + (chLocal4 - '0');
                            power = 1 * 10;
                            while (true) {
                                offset = offset9 + 1;
                                int charIndex7 = this.f56bp + offset9;
                                chLocal3 = charIndex7 >= this.len ? EOI : this.text.charAt(charIndex7);
                                if (chLocal3 < '0' || chLocal3 > '9') {
                                    break;
                                }
                                intVal = (intVal * 10) + (chLocal3 - '0');
                                power *= 10;
                                offset9 = offset;
                            }
                        } else {
                            break loop0;
                        }
                    }
                    boolean exp = chLocal3 == 'e' || chLocal3 == 'E';
                    if (exp) {
                        int offset10 = offset + 1;
                        int charIndex8 = this.f56bp + offset;
                        chLocal3 = charIndex8 >= this.len ? EOI : this.text.charAt(charIndex8);
                        if (chLocal3 == '+' || chLocal3 == '-') {
                            offset = offset10 + 1;
                            int charIndex9 = this.f56bp + offset10;
                            chLocal3 = charIndex9 >= this.len ? EOI : this.text.charAt(charIndex9);
                        } else {
                            offset = offset10;
                        }
                        while (chLocal3 >= '0' && chLocal3 <= '9') {
                            int offset11 = offset + 1;
                            int charIndex10 = this.f56bp + offset;
                            chLocal3 = charIndex10 >= this.len ? EOI : this.text.charAt(charIndex10);
                            offset = offset11;
                        }
                    }
                    offset7 = offset;
                    int count = ((this.f56bp + offset7) - start) - 1;
                    if (!exp && count < 10) {
                        value = intVal / power;
                        if (negative) {
                            value = -value;
                        }
                    } else {
                        String text = subString(start, count);
                        value = Float.parseFloat(text);
                    }
                    if (arrayIndex >= array.length) {
                        float[] tmp = new float[(array.length * 3) / 2];
                        System.arraycopy(array, 0, tmp, 0, arrayIndex);
                        array = tmp;
                    }
                    int arrayIndex2 = arrayIndex + 1;
                    array[arrayIndex] = value;
                    if (chLocal3 == ',') {
                        int offset12 = offset7 + 1;
                        int charIndex11 = this.f56bp + offset7;
                        chLocal3 = charIndex11 >= this.len ? EOI : this.text.charAt(charIndex11);
                        offset7 = offset12;
                    } else if (chLocal3 == ']') {
                        int offset13 = offset7 + 1;
                        int charIndex12 = this.f56bp + offset7;
                        chLocal2 = charIndex12 >= this.len ? EOI : this.text.charAt(charIndex12);
                        if (arrayIndex2 != array.length) {
                            float[] tmp2 = new float[arrayIndex2];
                            System.arraycopy(array, 0, tmp2, 0, arrayIndex2);
                            array = tmp2;
                        }
                        if (arrayarrayIndex >= arrayarray.length) {
                            float[][] tmp3 = new float[(arrayarray.length * 3) / 2];
                            System.arraycopy(array, 0, tmp3, 0, arrayIndex2);
                            arrayarray = tmp3;
                        }
                        int arrayarrayIndex2 = arrayarrayIndex + 1;
                        arrayarray[arrayarrayIndex] = array;
                        if (chLocal2 == ',') {
                            offset2 = offset13 + 1;
                            int charIndex13 = this.f56bp + offset13;
                            chLocal2 = charIndex13 >= this.len ? EOI : this.text.charAt(charIndex13);
                        } else if (chLocal2 == ']') {
                            int offset14 = offset13 + 1;
                            int charIndex14 = this.f56bp + offset13;
                            char chLocal5 = charIndex14 >= this.len ? EOI : this.text.charAt(charIndex14);
                            if (arrayarrayIndex2 != arrayarray.length) {
                                float[][] tmp4 = new float[arrayarrayIndex2];
                                System.arraycopy(arrayarray, 0, tmp4, 0, arrayarrayIndex2);
                                arrayarray = tmp4;
                            }
                            if (chLocal5 == ',') {
                                this.f56bp += offset14 - 1;
                                next();
                                this.matchStat = 3;
                                this.token = 16;
                                return arrayarray;
                            } else if (chLocal5 == '}') {
                                int offset15 = offset14 + 1;
                                char chLocal6 = charAt(this.f56bp + offset14);
                                if (chLocal6 == ',') {
                                    this.token = 16;
                                    this.f56bp += offset15 - 1;
                                    next();
                                } else if (chLocal6 == ']') {
                                    this.token = 15;
                                    this.f56bp += offset15 - 1;
                                    next();
                                } else if (chLocal6 == '}') {
                                    this.token = 13;
                                    this.f56bp += offset15 - 1;
                                    next();
                                } else if (chLocal6 == 26) {
                                    this.f56bp += offset15 - 1;
                                    this.token = 20;
                                    this.f57ch = EOI;
                                } else {
                                    this.matchStat = -1;
                                    return null;
                                }
                                this.matchStat = 4;
                                return arrayarray;
                            } else {
                                this.matchStat = -1;
                                return null;
                            }
                        } else {
                            offset2 = offset13;
                        }
                        arrayarrayIndex = arrayarrayIndex2;
                        offset6 = offset2;
                    }
                    arrayIndex = arrayIndex2;
                }
            }
        }
        this.matchStat = -1;
        return null;
    }

    public final double scanFieldDouble(long fieldHashCode) {
        int offset;
        int offset2;
        char chLocal;
        double value;
        this.matchStat = 0;
        int offset3 = matchFieldHash(fieldHashCode);
        if (offset3 == 0) {
            return 0.0d;
        }
        int offset4 = offset3 + 1;
        char chLocal2 = charAt(this.f56bp + offset3);
        int start = (this.f56bp + offset4) - 1;
        boolean negative = chLocal2 == '-';
        if (negative) {
            offset = offset4 + 1;
            chLocal2 = charAt(this.f56bp + offset4);
        } else {
            offset = offset4;
        }
        if (chLocal2 >= '0' && chLocal2 <= '9') {
            int intVal = chLocal2 - '0';
            while (true) {
                offset2 = offset + 1;
                chLocal = charAt(this.f56bp + offset);
                if (chLocal < '0' || chLocal > '9') {
                    break;
                }
                intVal = (intVal * 10) + (chLocal - '0');
                offset = offset2;
            }
            int power = 1;
            boolean small = chLocal == '.';
            if (small) {
                int offset5 = offset2 + 1;
                char chLocal3 = charAt(this.f56bp + offset2);
                if (chLocal3 >= '0' && chLocal3 <= '9') {
                    intVal = (intVal * 10) + (chLocal3 - '0');
                    power = 1 * 10;
                    while (true) {
                        offset2 = offset5 + 1;
                        chLocal = charAt(this.f56bp + offset5);
                        if (chLocal < '0' || chLocal > '9') {
                            break;
                        }
                        intVal = (intVal * 10) + (chLocal - '0');
                        power *= 10;
                        offset5 = offset2;
                    }
                } else {
                    this.matchStat = -1;
                    return 0.0d;
                }
            }
            boolean exp = chLocal == 'e' || chLocal == 'E';
            if (exp) {
                int offset6 = offset2 + 1;
                chLocal = charAt(this.f56bp + offset2);
                if (chLocal == '+' || chLocal == '-') {
                    offset2 = offset6 + 1;
                    chLocal = charAt(this.f56bp + offset6);
                } else {
                    offset2 = offset6;
                }
                while (chLocal >= '0' && chLocal <= '9') {
                    chLocal = charAt(this.f56bp + offset2);
                    offset2++;
                }
            }
            int offset7 = offset2;
            int count = ((this.f56bp + offset7) - start) - 1;
            if (!exp && count < 10) {
                value = intVal / power;
                if (negative) {
                    value = -value;
                }
            } else {
                String text = subString(start, count);
                value = Double.parseDouble(text);
            }
            if (chLocal == ',') {
                this.f56bp += offset7 - 1;
                next();
                this.matchStat = 3;
                this.token = 16;
                return value;
            } else if (chLocal == '}') {
                int offset8 = offset7 + 1;
                char chLocal4 = charAt(this.f56bp + offset7);
                if (chLocal4 == ',') {
                    this.token = 16;
                    this.f56bp += offset8 - 1;
                    next();
                } else if (chLocal4 == ']') {
                    this.token = 15;
                    this.f56bp += offset8 - 1;
                    next();
                } else if (chLocal4 == '}') {
                    this.token = 13;
                    this.f56bp += offset8 - 1;
                    next();
                } else if (chLocal4 == 26) {
                    this.f56bp += offset8 - 1;
                    this.token = 20;
                    this.f57ch = EOI;
                } else {
                    this.matchStat = -1;
                    return 0.0d;
                }
                this.matchStat = 4;
                return value;
            } else {
                this.matchStat = -1;
                return 0.0d;
            }
        }
        this.matchStat = -1;
        return 0.0d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x016a, code lost:
        r27.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:?, code lost:
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final double[] scanFieldDoubleArray(long fieldHashCode) {
        int offset;
        double value;
        this.matchStat = 0;
        int offset2 = matchFieldHash(fieldHashCode);
        if (offset2 == 0) {
            return null;
        }
        int offset3 = offset2 + 1;
        int charIndex = this.f56bp + offset2;
        char chLocal = charIndex >= this.len ? EOI : this.text.charAt(charIndex);
        if (chLocal != '[') {
            this.matchStat = -2;
            return null;
        }
        int offset4 = offset3 + 1;
        int charIndex2 = this.f56bp + offset3;
        char chLocal2 = charIndex2 >= this.len ? EOI : this.text.charAt(charIndex2);
        double[] array = new double[16];
        int arrayIndex = 0;
        while (true) {
            int start = (this.f56bp + offset4) - 1;
            boolean negative = chLocal2 == '-';
            if (negative) {
                int offset5 = offset4 + 1;
                int charIndex3 = this.f56bp + offset4;
                chLocal2 = charIndex3 >= this.len ? EOI : this.text.charAt(charIndex3);
                offset4 = offset5;
            }
            if (chLocal2 < '0' || chLocal2 > '9') {
                break;
            }
            int intVal = chLocal2 - '0';
            while (true) {
                offset = offset4 + 1;
                int charIndex4 = this.f56bp + offset4;
                chLocal2 = charIndex4 >= this.len ? EOI : this.text.charAt(charIndex4);
                if (chLocal2 < '0' || chLocal2 > '9') {
                    break;
                }
                intVal = (intVal * 10) + (chLocal2 - '0');
                offset4 = offset;
            }
            int power = 1;
            boolean small = chLocal2 == '.';
            if (small) {
                int offset6 = offset + 1;
                int charIndex5 = this.f56bp + offset;
                char chLocal3 = charIndex5 >= this.len ? EOI : this.text.charAt(charIndex5);
                power = 1 * 10;
                if (chLocal3 >= '0' && chLocal3 <= '9') {
                    intVal = (intVal * 10) + (chLocal3 - '0');
                    while (true) {
                        offset = offset6 + 1;
                        int charIndex6 = this.f56bp + offset6;
                        chLocal2 = charIndex6 >= this.len ? EOI : this.text.charAt(charIndex6);
                        if (chLocal2 < '0' || chLocal2 > '9') {
                            break;
                        }
                        intVal = (intVal * 10) + (chLocal2 - '0');
                        power *= 10;
                        offset6 = offset;
                    }
                } else {
                    break;
                }
            }
            boolean exp = chLocal2 == 'e' || chLocal2 == 'E';
            if (exp) {
                int offset7 = offset + 1;
                int charIndex7 = this.f56bp + offset;
                chLocal2 = charIndex7 >= this.len ? EOI : this.text.charAt(charIndex7);
                if (chLocal2 == '+' || chLocal2 == '-') {
                    offset = offset7 + 1;
                    int charIndex8 = this.f56bp + offset7;
                    chLocal2 = charIndex8 >= this.len ? EOI : this.text.charAt(charIndex8);
                } else {
                    offset = offset7;
                }
                while (chLocal2 >= '0' && chLocal2 <= '9') {
                    int offset8 = offset + 1;
                    int charIndex9 = this.f56bp + offset;
                    chLocal2 = charIndex9 >= this.len ? EOI : this.text.charAt(charIndex9);
                    offset = offset8;
                }
            }
            offset4 = offset;
            int count = ((this.f56bp + offset4) - start) - 1;
            if (!exp && count < 10) {
                value = intVal / power;
                if (negative) {
                    value = -value;
                }
            } else {
                String text = subString(start, count);
                value = Double.parseDouble(text);
            }
            if (arrayIndex >= array.length) {
                double[] tmp = new double[(array.length * 3) / 2];
                System.arraycopy(array, 0, tmp, 0, arrayIndex);
                array = tmp;
            }
            int arrayIndex2 = arrayIndex + 1;
            array[arrayIndex] = value;
            if (chLocal2 == ',') {
                int offset9 = offset4 + 1;
                int charIndex10 = this.f56bp + offset4;
                chLocal2 = charIndex10 >= this.len ? EOI : this.text.charAt(charIndex10);
                offset4 = offset9;
            } else if (chLocal2 == ']') {
                int offset10 = offset4 + 1;
                int charIndex11 = this.f56bp + offset4;
                char chLocal4 = charIndex11 >= this.len ? EOI : this.text.charAt(charIndex11);
                if (arrayIndex2 != array.length) {
                    double[] tmp2 = new double[arrayIndex2];
                    System.arraycopy(array, 0, tmp2, 0, arrayIndex2);
                    array = tmp2;
                }
                if (chLocal4 == ',') {
                    this.f56bp += offset10 - 1;
                    next();
                    this.matchStat = 3;
                    this.token = 16;
                    return array;
                } else if (chLocal4 == '}') {
                    int offset11 = offset10 + 1;
                    int charIndex12 = this.f56bp + offset10;
                    char chLocal5 = charIndex12 >= this.len ? EOI : this.text.charAt(charIndex12);
                    if (chLocal5 == ',') {
                        this.token = 16;
                        this.f56bp += offset11 - 1;
                        next();
                    } else if (chLocal5 == ']') {
                        this.token = 15;
                        this.f56bp += offset11 - 1;
                        next();
                    } else if (chLocal5 == '}') {
                        this.token = 13;
                        this.f56bp += offset11 - 1;
                        next();
                    } else if (chLocal5 == 26) {
                        this.f56bp += offset11 - 1;
                        this.token = 20;
                        this.f57ch = EOI;
                    } else {
                        this.matchStat = -1;
                        return null;
                    }
                    this.matchStat = 4;
                    return array;
                } else {
                    this.matchStat = -1;
                    return null;
                }
            }
            arrayIndex = arrayIndex2;
        }
        this.matchStat = -1;
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x01a3, code lost:
        r29.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:?, code lost:
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final double[][] scanFieldDoubleArray2(long fieldHashCode) {
        int offset;
        double value;
        int offset2;
        this.matchStat = 0;
        int offset3 = matchFieldHash(fieldHashCode);
        if (offset3 == 0) {
            return null;
        }
        int offset4 = offset3 + 1;
        int charIndex = this.f56bp + offset3;
        char chLocal = charIndex >= this.len ? EOI : this.text.charAt(charIndex);
        if (chLocal != '[') {
            this.matchStat = -2;
            return null;
        }
        int offset5 = offset4 + 1;
        int charIndex2 = this.f56bp + offset4;
        char chLocal2 = charIndex2 >= this.len ? EOI : this.text.charAt(charIndex2);
        double[][] arrayarray = new double[16];
        int arrayarrayIndex = 0;
        int offset6 = offset5;
        loop0: while (true) {
            if (chLocal2 == '[') {
                int offset7 = offset6 + 1;
                int charIndex3 = this.f56bp + offset6;
                char chLocal3 = charIndex3 >= this.len ? EOI : this.text.charAt(charIndex3);
                double[] array = new double[16];
                int arrayIndex = 0;
                while (true) {
                    int start = (this.f56bp + offset7) - 1;
                    boolean negative = chLocal3 == '-';
                    if (negative) {
                        int offset8 = offset7 + 1;
                        int charIndex4 = this.f56bp + offset7;
                        chLocal3 = charIndex4 >= this.len ? EOI : this.text.charAt(charIndex4);
                        offset7 = offset8;
                    }
                    if (chLocal3 < '0' || chLocal3 > '9') {
                        break loop0;
                    }
                    int intVal = chLocal3 - '0';
                    while (true) {
                        offset = offset7 + 1;
                        int charIndex5 = this.f56bp + offset7;
                        chLocal3 = charIndex5 >= this.len ? EOI : this.text.charAt(charIndex5);
                        if (chLocal3 < '0' || chLocal3 > '9') {
                            break;
                        }
                        intVal = (intVal * 10) + (chLocal3 - '0');
                        offset7 = offset;
                    }
                    int power = 1;
                    if (chLocal3 == '.') {
                        int offset9 = offset + 1;
                        int charIndex6 = this.f56bp + offset;
                        char chLocal4 = charIndex6 >= this.len ? EOI : this.text.charAt(charIndex6);
                        if (chLocal4 >= '0' && chLocal4 <= '9') {
                            intVal = (intVal * 10) + (chLocal4 - '0');
                            power = 1 * 10;
                            while (true) {
                                offset = offset9 + 1;
                                int charIndex7 = this.f56bp + offset9;
                                chLocal3 = charIndex7 >= this.len ? EOI : this.text.charAt(charIndex7);
                                if (chLocal3 < '0' || chLocal3 > '9') {
                                    break;
                                }
                                intVal = (intVal * 10) + (chLocal3 - '0');
                                power *= 10;
                                offset9 = offset;
                            }
                        } else {
                            break loop0;
                        }
                    }
                    boolean exp = chLocal3 == 'e' || chLocal3 == 'E';
                    if (exp) {
                        int offset10 = offset + 1;
                        int charIndex8 = this.f56bp + offset;
                        chLocal3 = charIndex8 >= this.len ? EOI : this.text.charAt(charIndex8);
                        if (chLocal3 == '+' || chLocal3 == '-') {
                            offset = offset10 + 1;
                            int charIndex9 = this.f56bp + offset10;
                            chLocal3 = charIndex9 >= this.len ? EOI : this.text.charAt(charIndex9);
                        } else {
                            offset = offset10;
                        }
                        while (chLocal3 >= '0' && chLocal3 <= '9') {
                            int offset11 = offset + 1;
                            int charIndex10 = this.f56bp + offset;
                            chLocal3 = charIndex10 >= this.len ? EOI : this.text.charAt(charIndex10);
                            offset = offset11;
                        }
                    }
                    offset7 = offset;
                    int count = ((this.f56bp + offset7) - start) - 1;
                    if (!exp && count < 10) {
                        value = intVal / power;
                        if (negative) {
                            value = -value;
                        }
                    } else {
                        String text = subString(start, count);
                        value = Double.parseDouble(text);
                    }
                    if (arrayIndex >= array.length) {
                        double[] tmp = new double[(array.length * 3) / 2];
                        System.arraycopy(array, 0, tmp, 0, arrayIndex);
                        array = tmp;
                    }
                    int arrayIndex2 = arrayIndex + 1;
                    array[arrayIndex] = value;
                    if (chLocal3 == ',') {
                        int offset12 = offset7 + 1;
                        int charIndex11 = this.f56bp + offset7;
                        chLocal3 = charIndex11 >= this.len ? EOI : this.text.charAt(charIndex11);
                        offset7 = offset12;
                    } else if (chLocal3 == ']') {
                        int offset13 = offset7 + 1;
                        int charIndex12 = this.f56bp + offset7;
                        chLocal2 = charIndex12 >= this.len ? EOI : this.text.charAt(charIndex12);
                        if (arrayIndex2 != array.length) {
                            double[] tmp2 = new double[arrayIndex2];
                            System.arraycopy(array, 0, tmp2, 0, arrayIndex2);
                            array = tmp2;
                        }
                        if (arrayarrayIndex >= arrayarray.length) {
                            double[][] tmp3 = new double[(arrayarray.length * 3) / 2];
                            System.arraycopy(array, 0, tmp3, 0, arrayIndex2);
                            arrayarray = tmp3;
                        }
                        int arrayarrayIndex2 = arrayarrayIndex + 1;
                        arrayarray[arrayarrayIndex] = array;
                        if (chLocal2 == ',') {
                            offset2 = offset13 + 1;
                            int charIndex13 = this.f56bp + offset13;
                            chLocal2 = charIndex13 >= this.len ? EOI : this.text.charAt(charIndex13);
                        } else if (chLocal2 == ']') {
                            int offset14 = offset13 + 1;
                            int charIndex14 = this.f56bp + offset13;
                            char chLocal5 = charIndex14 >= this.len ? EOI : this.text.charAt(charIndex14);
                            if (arrayarrayIndex2 != arrayarray.length) {
                                double[][] tmp4 = new double[arrayarrayIndex2];
                                System.arraycopy(arrayarray, 0, tmp4, 0, arrayarrayIndex2);
                                arrayarray = tmp4;
                            }
                            if (chLocal5 == ',') {
                                this.f56bp += offset14 - 1;
                                next();
                                this.matchStat = 3;
                                this.token = 16;
                                return arrayarray;
                            } else if (chLocal5 == '}') {
                                int offset15 = offset14 + 1;
                                char chLocal6 = charAt(this.f56bp + offset14);
                                if (chLocal6 == ',') {
                                    this.token = 16;
                                    this.f56bp += offset15 - 1;
                                    next();
                                } else if (chLocal6 == ']') {
                                    this.token = 15;
                                    this.f56bp += offset15 - 1;
                                    next();
                                } else if (chLocal6 == '}') {
                                    this.token = 13;
                                    this.f56bp += offset15 - 1;
                                    next();
                                } else if (chLocal6 == 26) {
                                    this.f56bp += offset15 - 1;
                                    this.token = 20;
                                    this.f57ch = EOI;
                                } else {
                                    this.matchStat = -1;
                                    return null;
                                }
                                this.matchStat = 4;
                                return arrayarray;
                            } else {
                                this.matchStat = -1;
                                return null;
                            }
                        } else {
                            offset2 = offset13;
                        }
                        arrayarrayIndex = arrayarrayIndex2;
                        offset6 = offset2;
                    }
                    arrayIndex = arrayIndex2;
                }
            }
        }
        this.matchStat = -1;
        return null;
    }

    public long scanFieldSymbol(long fieldHashCode) {
        this.matchStat = 0;
        int offset = matchFieldHash(fieldHashCode);
        if (offset == 0) {
            return 0L;
        }
        int offset2 = offset + 1;
        int charIndex = this.f56bp + offset;
        if ((charIndex >= this.len ? EOI : this.text.charAt(charIndex)) != '\"') {
            this.matchStat = -1;
            return 0L;
        }
        long hash = -2128831035;
        int i = this.f56bp + offset2;
        while (true) {
            int offset3 = offset2;
            offset2 = offset3 + 1;
            int charIndex2 = this.f56bp + offset3;
            char chLocal = charIndex2 >= this.len ? EOI : this.text.charAt(charIndex2);
            if (chLocal == '\"') {
                int offset4 = offset2 + 1;
                int charIndex3 = this.f56bp + offset2;
                char chLocal2 = charIndex3 >= this.len ? EOI : this.text.charAt(charIndex3);
                if (chLocal2 == ',') {
                    this.f56bp += offset4 - 1;
                    int index = this.f56bp + 1;
                    this.f56bp = index;
                    this.f57ch = index >= this.len ? EOI : this.text.charAt(index);
                    this.matchStat = 3;
                    return hash;
                } else if (chLocal2 == '}') {
                    int offset5 = offset4 + 1;
                    int charIndex4 = this.f56bp + offset4;
                    char chLocal3 = charIndex4 >= this.len ? EOI : this.text.charAt(charIndex4);
                    if (chLocal3 == ',') {
                        this.token = 16;
                        this.f56bp += offset5 - 1;
                        next();
                    } else if (chLocal3 == ']') {
                        this.token = 15;
                        this.f56bp += offset5 - 1;
                        next();
                    } else if (chLocal3 == '}') {
                        this.token = 13;
                        this.f56bp += offset5 - 1;
                        next();
                    } else if (chLocal3 == 26) {
                        this.token = 20;
                        this.f56bp += offset5 - 1;
                        this.f57ch = EOI;
                    } else {
                        this.matchStat = -1;
                        return 0L;
                    }
                    this.matchStat = 4;
                    return hash;
                } else {
                    this.matchStat = -1;
                    return 0L;
                }
            }
            hash = (hash ^ chLocal) * 16777619;
            if (chLocal == '\\') {
                this.matchStat = -1;
                return 0L;
            }
        }
    }

    public boolean scanISO8601DateIfMatch(boolean strict) {
        int millis;
        int seconds;
        int minute;
        int hour;
        int rest = this.len - this.f56bp;
        if (!strict && rest > 13 && this.text.startsWith("/Date(", this.f56bp) && charAt((this.f56bp + rest) - 1) == '/' && charAt((this.f56bp + rest) - 2) == ')') {
            int plusIndex = -1;
            for (int i = 6; i < rest; i++) {
                char c = charAt(this.f56bp + i);
                if (c == '+') {
                    plusIndex = i;
                } else if (c < '0' || c > '9') {
                    break;
                }
            }
            if (plusIndex == -1) {
                return false;
            }
            int offset = this.f56bp + 6;
            String numberText = subString(offset, plusIndex - offset);
            long millis2 = Long.parseLong(numberText, 10);
            this.calendar = Calendar.getInstance(this.timeZone, this.locale);
            this.calendar.setTimeInMillis(millis2);
            this.token = 5;
            return true;
        } else if (rest == 8 || rest == 14 || rest == 17) {
            if (strict) {
                return false;
            }
            char y0 = charAt(this.f56bp);
            char y1 = charAt(this.f56bp + 1);
            char y2 = charAt(this.f56bp + 2);
            char y3 = charAt(this.f56bp + 3);
            char M0 = charAt(this.f56bp + 4);
            char M1 = charAt(this.f56bp + 5);
            char d0 = charAt(this.f56bp + 6);
            char d1 = charAt(this.f56bp + 7);
            if (!checkDate(y0, y1, y2, y3, M0, M1, d0, d1)) {
                return false;
            }
            setCalendar(y0, y1, y2, y3, M0, M1, d0, d1);
            if (rest != 8) {
                char h0 = charAt(this.f56bp + 8);
                char h1 = charAt(this.f56bp + 9);
                char m0 = charAt(this.f56bp + 10);
                char m1 = charAt(this.f56bp + 11);
                char s0 = charAt(this.f56bp + 12);
                char s1 = charAt(this.f56bp + 13);
                if (!checkTime(h0, h1, m0, m1, s0, s1)) {
                    return false;
                }
                if (rest == 17) {
                    char S0 = charAt(this.f56bp + 14);
                    char S1 = charAt(this.f56bp + 15);
                    char S2 = charAt(this.f56bp + 16);
                    if (S0 < '0' || S0 > '9' || S1 < '0' || S1 > '9' || S2 < '0' || S2 > '9') {
                        return false;
                    }
                    millis = ((S0 - '0') * 100) + ((S1 - '0') * 10) + (S2 - '0');
                } else {
                    millis = 0;
                }
                hour = ((h0 - '0') * 10) + (h1 - '0');
                minute = ((m0 - '0') * 10) + (m1 - '0');
                seconds = ((s0 - '0') * 10) + (s1 - '0');
            } else {
                millis = 0;
                seconds = 0;
                minute = 0;
                hour = 0;
            }
            this.calendar.set(11, hour);
            this.calendar.set(12, minute);
            this.calendar.set(13, seconds);
            this.calendar.set(14, millis);
            this.token = 5;
            return true;
        } else if (rest < 10 || charAt(this.f56bp + 4) != '-' || charAt(this.f56bp + 7) != '-') {
            return false;
        } else {
            char y02 = charAt(this.f56bp);
            char y12 = charAt(this.f56bp + 1);
            char y22 = charAt(this.f56bp + 2);
            char y32 = charAt(this.f56bp + 3);
            char M02 = charAt(this.f56bp + 5);
            char M12 = charAt(this.f56bp + 6);
            char d02 = charAt(this.f56bp + 8);
            char d12 = charAt(this.f56bp + 9);
            if (!checkDate(y02, y12, y22, y32, M02, M12, d02, d12)) {
                return false;
            }
            setCalendar(y02, y12, y22, y32, M02, M12, d02, d12);
            char t = charAt(this.f56bp + 10);
            if (t == 'T' || (t == ' ' && !strict)) {
                if (rest < 19 || charAt(this.f56bp + 13) != ':' || charAt(this.f56bp + 16) != ':') {
                    return false;
                }
                char h02 = charAt(this.f56bp + 11);
                char h12 = charAt(this.f56bp + 12);
                char m02 = charAt(this.f56bp + 14);
                char m12 = charAt(this.f56bp + 15);
                char s02 = charAt(this.f56bp + 17);
                char s12 = charAt(this.f56bp + 18);
                if (!checkTime(h02, h12, m02, m12, s02, s12)) {
                    return false;
                }
                int hour2 = ((h02 - '0') * 10) + (h12 - '0');
                int minute2 = ((m02 - '0') * 10) + (m12 - '0');
                int seconds2 = ((s02 - '0') * 10) + (s12 - '0');
                this.calendar.set(11, hour2);
                this.calendar.set(12, minute2);
                this.calendar.set(13, seconds2);
                char dot = charAt(this.f56bp + 19);
                if (dot == '.') {
                    if (rest < 21) {
                        return false;
                    }
                    char S02 = charAt(this.f56bp + 20);
                    if (S02 < '0' || S02 > '9') {
                        return false;
                    }
                    int millis3 = digits[S02];
                    int millisLen = 1;
                    if (rest > 21) {
                        char S12 = charAt(this.f56bp + 21);
                        if (S12 >= '0' && S12 <= '9') {
                            millis3 = (millis3 * 10) + digits[S12];
                            millisLen = 2;
                        }
                    }
                    if (millisLen == 2) {
                        char S22 = charAt(this.f56bp + 22);
                        if (S22 >= '0' && S22 <= '9') {
                            millis3 = (millis3 * 10) + digits[S22];
                            millisLen = 3;
                        }
                    }
                    this.calendar.set(14, millis3);
                    int timzeZoneLength = 0;
                    char timeZoneFlag = charAt(this.f56bp + 20 + millisLen);
                    if (timeZoneFlag == '+' || timeZoneFlag == '-') {
                        char t0 = charAt(this.f56bp + 20 + millisLen + 1);
                        if (t0 < '0' || t0 > '1') {
                            return false;
                        }
                        char t1 = charAt(this.f56bp + 20 + millisLen + 2);
                        if (t1 < '0' || t1 > '9') {
                            return false;
                        }
                        char t2 = charAt(this.f56bp + 20 + millisLen + 3);
                        if (t2 == ':') {
                            char t3 = charAt(this.f56bp + 20 + millisLen + 4);
                            if (t3 != '0') {
                                return false;
                            }
                            char t4 = charAt(this.f56bp + 20 + millisLen + 5);
                            if (t4 != '0') {
                                return false;
                            }
                            timzeZoneLength = 6;
                        } else if (t2 == '0') {
                            char t32 = charAt(this.f56bp + 20 + millisLen + 4);
                            if (t32 != '0') {
                                return false;
                            }
                            timzeZoneLength = 5;
                        } else {
                            timzeZoneLength = 3;
                        }
                        int timeZoneOffset = ((digits[t0] * 10) + digits[t1]) * 3600 * 1000;
                        if (timeZoneFlag == '-') {
                            timeZoneOffset = -timeZoneOffset;
                        }
                        if (this.calendar.getTimeZone().getRawOffset() != timeZoneOffset) {
                            String[] timeZoneIDs = TimeZone.getAvailableIDs(timeZoneOffset);
                            if (timeZoneIDs.length > 0) {
                                TimeZone timeZone = TimeZone.getTimeZone(timeZoneIDs[0]);
                                this.calendar.setTimeZone(timeZone);
                            }
                        }
                    } else if (timeZoneFlag == 'Z') {
                        timzeZoneLength = 1;
                        if (this.calendar.getTimeZone().getRawOffset() != 0) {
                            String[] timeZoneIDs2 = TimeZone.getAvailableIDs(0);
                            if (timeZoneIDs2.length > 0) {
                                TimeZone timeZone2 = TimeZone.getTimeZone(timeZoneIDs2[0]);
                                this.calendar.setTimeZone(timeZone2);
                            }
                        }
                    }
                    char end = charAt(this.f56bp + millisLen + 20 + timzeZoneLength);
                    if (end != 26 && end != '\"') {
                        return false;
                    }
                    int i2 = this.f56bp + millisLen + 20 + timzeZoneLength;
                    this.f56bp = i2;
                    this.f57ch = charAt(i2);
                    this.token = 5;
                    return true;
                }
                this.calendar.set(14, 0);
                int i3 = this.f56bp + 19;
                this.f56bp = i3;
                this.f57ch = charAt(i3);
                this.token = 5;
                if (dot == 'Z' && this.calendar.getTimeZone().getRawOffset() != 0) {
                    String[] timeZoneIDs3 = TimeZone.getAvailableIDs(0);
                    if (timeZoneIDs3.length > 0) {
                        TimeZone timeZone3 = TimeZone.getTimeZone(timeZoneIDs3[0]);
                        this.calendar.setTimeZone(timeZone3);
                    }
                }
                return true;
            } else if (t == '\"' || t == 26) {
                this.calendar.set(11, 0);
                this.calendar.set(12, 0);
                this.calendar.set(13, 0);
                this.calendar.set(14, 0);
                int i4 = this.f56bp + 10;
                this.f56bp = i4;
                this.f57ch = charAt(i4);
                this.token = 5;
                return true;
            } else {
                return false;
            }
        }
    }

    static boolean checkTime(char h0, char h1, char m0, char m1, char s0, char s1) {
        if (h0 == '0') {
            if (h1 < '0' || h1 > '9') {
                return false;
            }
        } else if (h0 == '1') {
            if (h1 < '0' || h1 > '9') {
                return false;
            }
        } else if (h0 != '2' || h1 < '0' || h1 > '4') {
            return false;
        }
        if (m0 >= '0' && m0 <= '5') {
            if (m1 < '0' || m1 > '9') {
                return false;
            }
        } else if (m0 != '6' || m1 != '0') {
            return false;
        }
        if (s0 >= '0' && s0 <= '5') {
            if (s1 < '0' || s1 > '9') {
                return false;
            }
        } else if (s0 != '6' || s1 != '0') {
            return false;
        }
        return true;
    }

    private void setCalendar(char y0, char y1, char y2, char y3, char M0, char M1, char d0, char d1) {
        this.calendar = Calendar.getInstance(this.timeZone, this.locale);
        int year = ((y0 - '0') * 1000) + ((y1 - '0') * 100) + ((y2 - '0') * 10) + (y3 - '0');
        int month = (((M0 - '0') * 10) + (M1 - '0')) - 1;
        int day = ((d0 - '0') * 10) + (d1 - '0');
        this.calendar.set(1, year);
        this.calendar.set(2, month);
        this.calendar.set(5, day);
    }

    static boolean checkDate(char y0, char y1, char y2, char y3, char M0, char M1, int d0, int d1) {
        if ((y0 == '1' || y0 == '2') && y1 >= '0' && y1 <= '9' && y2 >= '0' && y2 <= '9' && y3 >= '0' && y3 <= '9') {
            if (M0 == '0') {
                if (M1 < '1' || M1 > '9') {
                    return false;
                }
            } else if (M0 != '1') {
                return false;
            } else {
                if (M1 != '0' && M1 != '1' && M1 != '2') {
                    return false;
                }
            }
            if (d0 == 48) {
                if (d1 < 49 || d1 > 57) {
                    return false;
                }
            } else if (d0 == 49 || d0 == 50) {
                if (d1 < 48 || d1 > 57) {
                    return false;
                }
            } else if (d0 != 51) {
                return false;
            } else {
                if (d1 != 48 && d1 != 49) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public static final byte[] decodeFast(String chars, int offset, int charsLen) {
        int pad;
        int sepCnt;
        int sIx;
        if (charsLen == 0) {
            return new byte[0];
        }
        int sIx2 = offset;
        int eIx = (offset + charsLen) - 1;
        while (sIx2 < eIx && f54IA[chars.charAt(sIx2)] < 0) {
            sIx2++;
        }
        while (eIx > 0 && f54IA[chars.charAt(eIx)] < 0) {
            eIx--;
        }
        if (chars.charAt(eIx) == '=') {
            pad = chars.charAt(eIx + (-1)) == '=' ? 2 : 1;
        } else {
            pad = 0;
        }
        int cCnt = (eIx - sIx2) + 1;
        if (charsLen > 76) {
            sepCnt = (chars.charAt(76) == '\r' ? cCnt / 78 : 0) << 1;
        } else {
            sepCnt = 0;
        }
        int len = (((cCnt - sepCnt) * 6) >> 3) - pad;
        byte[] bytes = new byte[len];
        int cc = 0;
        int eLen = (len / 3) * 3;
        int d = 0;
        int sIx3 = sIx2;
        while (d < eLen) {
            int sIx4 = sIx3 + 1;
            int sIx5 = sIx4 + 1;
            int sIx6 = sIx5 + 1;
            int sIx7 = sIx6 + 1;
            int i = (f54IA[chars.charAt(sIx3)] << 18) | (f54IA[chars.charAt(sIx4)] << 12) | (f54IA[chars.charAt(sIx5)] << 6) | f54IA[chars.charAt(sIx6)];
            int d2 = d + 1;
            bytes[d] = (byte) (i >> 16);
            int d3 = d2 + 1;
            bytes[d2] = (byte) (i >> 8);
            int d4 = d3 + 1;
            bytes[d3] = (byte) i;
            if (sepCnt <= 0 || (cc = cc + 1) != 19) {
                sIx = sIx7;
            } else {
                sIx = sIx7 + 2;
                cc = 0;
            }
            d = d4;
            sIx3 = sIx;
        }
        if (d < len) {
            int i2 = 0;
            int j = 0;
            while (sIx3 <= eIx - pad) {
                i2 |= f54IA[chars.charAt(sIx3)] << (18 - (j * 6));
                j++;
                sIx3++;
            }
            int r = 16;
            while (d < len) {
                bytes[d] = (byte) (i2 >> r);
                r -= 8;
                d++;
            }
        }
        return bytes;
    }
}
