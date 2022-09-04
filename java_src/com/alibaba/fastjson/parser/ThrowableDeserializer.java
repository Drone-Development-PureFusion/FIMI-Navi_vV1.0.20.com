package com.alibaba.fastjson.parser;

import ch.qos.logback.core.CoreConstants;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.util.TypeUtils;
import com.facebook.share.internal.ShareConstants;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class ThrowableDeserializer extends JavaBeanDeserializer {
    public ThrowableDeserializer(ParserConfig mapping, Class<?> clazz) {
        super(mapping, clazz, clazz);
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0071, code lost:
        if (r12 != null) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0073, code lost:
        r10 = (T) new java.lang.Exception(r16, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x007a, code lost:
        if (r19 == null) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x007c, code lost:
        r10 = (java.lang.Throwable) r10;
        r10.setStackTrace(r19);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:?, code lost:
        return r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:?, code lost:
        return r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x016f, code lost:
        r8 = null;
        r17 = null;
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0173, code lost:
        r21 = r12.getConstructors();
        r0 = r21.length;
        r20 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0182, code lost:
        if (r20 >= r0) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0184, code lost:
        r7 = r21[r20];
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x018f, code lost:
        if (r7.getParameterTypes().length != 0) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0191, code lost:
        r8 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0192, code lost:
        r20 = r20 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x01a4, code lost:
        if (r7.getParameterTypes().length != 1) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x01b4, code lost:
        if (r7.getParameterTypes()[0] != java.lang.String.class) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x01b6, code lost:
        r17 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x01c8, code lost:
        if (r7.getParameterTypes().length != 2) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x01d8, code lost:
        if (r7.getParameterTypes()[0] != java.lang.String.class) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x01e8, code lost:
        if (r7.getParameterTypes()[1] != java.lang.Throwable.class) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x01ea, code lost:
        r5 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01ec, code lost:
        if (r5 == null) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01ee, code lost:
        r0 = (java.lang.Throwable) r5.newInstance(r16, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0209, code lost:
        r11 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x020a, code lost:
        if (r11 != null) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0259, code lost:
        r10 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x020c, code lost:
        r10 = (T) new java.lang.Exception(r16, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0256, code lost:
        r9 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0255, code lost:
        throw new com.alibaba.fastjson.JSONException("create instance error", r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0215, code lost:
        if (r17 == null) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0219, code lost:
        r0 = (java.lang.Throwable) r17.newInstance(r16);
        r11 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0232, code lost:
        if (r8 == null) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0234, code lost:
        r0 = (java.lang.Throwable) r8.newInstance(new java.lang.Object[0]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0247, code lost:
        r11 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x025c, code lost:
        r11 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0249, code lost:
        r9 = e;
     */
    @Override // com.alibaba.fastjson.parser.JavaBeanDeserializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <T> T deserialze(DefaultJSONParser parser, Type type, Object fieldName) {
        JSONLexer lexer = parser.lexer;
        if (lexer.token == 8) {
            lexer.nextToken();
            return null;
        }
        if (parser.resolveStatus == 2) {
            parser.resolveStatus = 0;
        } else if (lexer.token != 12) {
            throw new JSONException("syntax error");
        }
        Throwable cause = null;
        Class<?> exClass = null;
        if (type != null && (type instanceof Class)) {
            Class<?> clazz = (Class) type;
            if (Throwable.class.isAssignableFrom(clazz)) {
                exClass = clazz;
            }
        }
        String message = null;
        StackTraceElement[] stackTrace = null;
        Map<String, Object> otherValues = new HashMap<>();
        while (true) {
            String key = lexer.scanSymbol(parser.symbolTable);
            if (key == null) {
                if (lexer.token == 13) {
                    lexer.nextToken(16);
                    break;
                } else if (lexer.token == 16) {
                    continue;
                }
            }
            lexer.nextTokenWithChar(CoreConstants.COLON_CHAR);
            if (JSON.DEFAULT_TYPE_KEY.equals(key)) {
                if (lexer.token == 4) {
                    String exClassName = lexer.stringVal();
                    exClass = TypeUtils.loadClass(exClassName, parser.config.defaultClassLoader);
                    lexer.nextToken(16);
                } else {
                    throw new JSONException("syntax error");
                }
            } else if (ShareConstants.WEB_DIALOG_PARAM_MESSAGE.equals(key)) {
                if (lexer.token == 8) {
                    message = null;
                } else if (lexer.token == 4) {
                    message = lexer.stringVal();
                } else {
                    throw new JSONException("syntax error");
                }
                lexer.nextToken();
            } else if ("cause".equals(key)) {
                cause = (Throwable) deserialze(parser, null, "cause");
            } else if ("stackTrace".equals(key)) {
                stackTrace = (StackTraceElement[]) parser.parseObject((Class<Object>) StackTraceElement[].class);
            } else {
                otherValues.put(key, parser.parse());
            }
            if (lexer.token == 13) {
                lexer.nextToken(16);
                break;
            }
        }
    }
}
