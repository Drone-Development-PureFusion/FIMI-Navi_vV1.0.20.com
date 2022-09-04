package com.alibaba.fastjson.parser;

import ch.qos.logback.core.CoreConstants;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.parser.deserializer.ExtraProcessor;
import com.alibaba.fastjson.parser.deserializer.ExtraTypeProvider;
import com.alibaba.fastjson.parser.deserializer.FieldDeserializer;
import com.alibaba.fastjson.parser.deserializer.FieldTypeResolver;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.serializer.IntegerCodec;
import com.alibaba.fastjson.serializer.StringCodec;
import com.alibaba.fastjson.util.TypeUtils;
import com.facebook.internal.ServerProtocol;
import java.io.Closeable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
/* loaded from: classes.dex */
public class DefaultJSONParser implements Closeable {
    public static final int NONE = 0;
    public static final int NeedToResolve = 1;
    public static final int TypeNameRedirect = 2;
    public ParserConfig config;
    protected ParseContext contex;
    private ParseContext[] contextArray;
    private int contextArrayIndex;
    private DateFormat dateFormat;
    private String dateFormatPattern;
    protected List<ExtraProcessor> extraProcessors;
    protected List<ExtraTypeProvider> extraTypeProviders;
    public FieldTypeResolver fieldTypeResolver;
    public final JSONLexer lexer;
    public int resolveStatus;
    private List<ResolveTask> resolveTaskList;
    public final SymbolTable symbolTable;

    public String getDateFomartPattern() {
        return this.dateFormatPattern;
    }

    public DateFormat getDateFormat() {
        if (this.dateFormat == null) {
            this.dateFormat = new SimpleDateFormat(this.dateFormatPattern, this.lexer.locale);
            this.dateFormat.setTimeZone(this.lexer.timeZone);
        }
        return this.dateFormat;
    }

    public void setDateFormat(String dateFormat) {
        this.dateFormatPattern = dateFormat;
        this.dateFormat = null;
    }

    public void setDateFomrat(DateFormat dateFormat) {
        this.dateFormat = dateFormat;
    }

    public DefaultJSONParser(String input) {
        this(input, ParserConfig.global, JSON.DEFAULT_PARSER_FEATURE);
    }

    public DefaultJSONParser(String input, ParserConfig config) {
        this(new JSONLexer(input, JSON.DEFAULT_PARSER_FEATURE), config);
    }

    public DefaultJSONParser(String input, ParserConfig config, int features) {
        this(new JSONLexer(input, features), config);
    }

    public DefaultJSONParser(char[] input, int length, ParserConfig config, int features) {
        this(new JSONLexer(input, length, features), config);
    }

    public DefaultJSONParser(JSONLexer lexer) {
        this(lexer, ParserConfig.global);
    }

    public DefaultJSONParser(JSONLexer lexer, ParserConfig config) {
        char c = JSONLexer.EOI;
        this.dateFormatPattern = JSON.DEFFAULT_DATE_FORMAT;
        this.contextArrayIndex = 0;
        this.resolveStatus = 0;
        this.extraTypeProviders = null;
        this.extraProcessors = null;
        this.fieldTypeResolver = null;
        this.lexer = lexer;
        this.config = config;
        this.symbolTable = config.symbolTable;
        if (lexer.f57ch == '{') {
            int index = lexer.f56bp + 1;
            lexer.f56bp = index;
            lexer.f57ch = index < lexer.len ? lexer.text.charAt(index) : c;
            lexer.token = 12;
        } else if (lexer.f57ch == '[') {
            int index2 = lexer.f56bp + 1;
            lexer.f56bp = index2;
            lexer.f57ch = index2 < lexer.len ? lexer.text.charAt(index2) : c;
            lexer.token = 14;
        } else {
            lexer.nextToken();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:318:0x03ac, code lost:
        r0.nextToken(16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:319:0x03c1, code lost:
        if (r0.token != 13) goto L341;
     */
    /* JADX WARN: Code restructure failed: missing block: B:320:0x03c3, code lost:
        r0.nextToken(16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:321:0x03cc, code lost:
        r19 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:323:0x03ce, code lost:
        r10 = r46.config.getDeserializer(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:324:0x03de, code lost:
        if ((r10 instanceof com.alibaba.fastjson.parser.JavaBeanDeserializer) == false) goto L326;
     */
    /* JADX WARN: Code restructure failed: missing block: B:325:0x03e0, code lost:
        r19 = ((com.alibaba.fastjson.parser.JavaBeanDeserializer) r10).createInstance(r46, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:326:0x03e8, code lost:
        if (r19 != null) goto L334;
     */
    /* JADX WARN: Code restructure failed: missing block: B:328:0x03ee, code lost:
        if (r6 != java.lang.Cloneable.class) goto L330;
     */
    /* JADX WARN: Code restructure failed: missing block: B:329:0x03f0, code lost:
        r19 = new java.util.HashMap();
     */
    /* JADX WARN: Code restructure failed: missing block: B:331:0x0409, code lost:
        if ("java.util.Collections$EmptyMap".equals(r40) == false) goto L333;
     */
    /* JADX WARN: Code restructure failed: missing block: B:332:0x040b, code lost:
        r19 = java.util.Collections.emptyMap();
     */
    /* JADX WARN: Code restructure failed: missing block: B:333:0x0410, code lost:
        r19 = r6.newInstance();
     */
    /* JADX WARN: Code restructure failed: missing block: B:334:0x03f5, code lost:
        if (r11 != false) goto L336;
     */
    /* JADX WARN: Code restructure failed: missing block: B:335:0x03f7, code lost:
        r46.contex = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:337:?, code lost:
        return r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:338:0x0415, code lost:
        r12 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:340:0x0421, code lost:
        throw new com.alibaba.fastjson.JSONException("create instance error", r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:341:0x0422, code lost:
        r46.resolveStatus = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:342:0x0430, code lost:
        if (r46.contex == null) goto L346;
     */
    /* JADX WARN: Code restructure failed: missing block: B:344:0x0438, code lost:
        if ((r48 instanceof java.lang.Integer) != false) goto L346;
     */
    /* JADX WARN: Code restructure failed: missing block: B:345:0x043a, code lost:
        popContext();
     */
    /* JADX WARN: Code restructure failed: missing block: B:347:0x0441, code lost:
        if (r47.size() <= 0) goto L353;
     */
    /* JADX WARN: Code restructure failed: missing block: B:348:0x0443, code lost:
        r27 = com.alibaba.fastjson.util.TypeUtils.cast((java.lang.Object) r47, (java.lang.Class<java.lang.Object>) r6, r46.config);
        parseObject(r27);
     */
    /* JADX WARN: Code restructure failed: missing block: B:349:0x0458, code lost:
        if (r11 != false) goto L351;
     */
    /* JADX WARN: Code restructure failed: missing block: B:350:0x045a, code lost:
        r46.contex = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:352:?, code lost:
        return r27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:353:0x0462, code lost:
        r47 = r46.config.getDeserializer(r6).deserialze(r46, r6, r48);
     */
    /* JADX WARN: Code restructure failed: missing block: B:354:0x0476, code lost:
        if (r11 != false) goto L357;
     */
    /* JADX WARN: Code restructure failed: missing block: B:355:0x0478, code lost:
        r46.contex = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:356:?, code lost:
        return r47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:357:?, code lost:
        return r47;
     */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0612  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x06a1  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0673 A[Catch: all -> 0x0111, TryCatch #0 {all -> 0x0111, blocks: (B:20:0x0084, B:24:0x0094, B:28:0x00a1, B:32:0x00bb, B:34:0x00d7, B:37:0x00e4, B:38:0x0110, B:41:0x02a5, B:44:0x02c1, B:360:0x02ef, B:60:0x035b, B:62:0x036b, B:313:0x0377, B:315:0x039f, B:318:0x03ac, B:320:0x03c3, B:323:0x03ce, B:325:0x03e0, B:329:0x03f0, B:330:0x03ff, B:332:0x040b, B:333:0x0410, B:339:0x0416, B:340:0x0421, B:341:0x0422, B:343:0x0432, B:345:0x043a, B:346:0x043d, B:348:0x0443, B:353:0x0462, B:67:0x0486, B:70:0x0492, B:72:0x04a9, B:74:0x04c4, B:76:0x04cc, B:78:0x04e0, B:80:0x0517, B:83:0x04ec, B:85:0x04fa, B:86:0x0516, B:87:0x05c6, B:92:0x051f, B:95:0x052c, B:97:0x0538, B:99:0x053e, B:100:0x0545, B:101:0x0560, B:104:0x056e, B:106:0x0576, B:108:0x057d, B:110:0x0585, B:112:0x058f, B:113:0x05aa, B:114:0x05d7, B:115:0x05f9, B:118:0x05fe, B:303:0x061b, B:305:0x0629, B:307:0x063e, B:308:0x0648, B:310:0x064d, B:130:0x0656, B:134:0x0666, B:137:0x0673, B:140:0x068f, B:143:0x09bc, B:147:0x09d2, B:150:0x09ee, B:152:0x0a00, B:155:0x0a1c, B:157:0x0a2c, B:162:0x0a54, B:165:0x0a69, B:168:0x0a85, B:169:0x0a94, B:172:0x0aa9, B:175:0x0ac5, B:176:0x0ad5, B:177:0x0ae4, B:178:0x0a45, B:179:0x0ae9, B:180:0x0b05, B:311:0x0697, B:129:0x06b3, B:186:0x06c7, B:189:0x06eb, B:191:0x06f8, B:195:0x0708, B:196:0x070d, B:198:0x0721, B:199:0x072a, B:208:0x0738, B:204:0x076d, B:205:0x0789, B:213:0x075b, B:215:0x0749, B:220:0x0790, B:223:0x07ac, B:225:0x07d2, B:229:0x07e5, B:230:0x07ef, B:233:0x07fd, B:234:0x0801, B:236:0x0813, B:239:0x082b, B:243:0x083d, B:244:0x0841, B:246:0x084f, B:248:0x085e, B:250:0x0869, B:251:0x0872, B:260:0x0880, B:262:0x088b, B:256:0x08c4, B:257:0x08e0, B:267:0x08b2, B:268:0x08a7, B:269:0x0897, B:298:0x08e7, B:300:0x08fc, B:294:0x0920, B:296:0x0934, B:276:0x0952, B:278:0x0965, B:279:0x0969, B:288:0x0980, B:281:0x0991, B:284:0x099f, B:285:0x09bb, B:367:0x0347, B:368:0x0357, B:432:0x011f, B:435:0x013b, B:440:0x015a, B:373:0x016f, B:375:0x018f, B:376:0x0192, B:379:0x019c, B:380:0x01ba, B:429:0x01c1, B:430:0x01dd, B:426:0x01e4, B:427:0x0200, B:389:0x0213, B:391:0x021e, B:393:0x022c, B:395:0x0232, B:396:0x0236, B:400:0x0240, B:401:0x025c, B:403:0x025f, B:406:0x0269, B:407:0x0285, B:414:0x02f7, B:419:0x0312, B:420:0x033c, B:417:0x033f, B:421:0x0292, B:423:0x029d), top: B:19:0x0084, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x09cc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:302:0x061b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:368:0x0357 A[Catch: all -> 0x0111, TryCatch #0 {all -> 0x0111, blocks: (B:20:0x0084, B:24:0x0094, B:28:0x00a1, B:32:0x00bb, B:34:0x00d7, B:37:0x00e4, B:38:0x0110, B:41:0x02a5, B:44:0x02c1, B:360:0x02ef, B:60:0x035b, B:62:0x036b, B:313:0x0377, B:315:0x039f, B:318:0x03ac, B:320:0x03c3, B:323:0x03ce, B:325:0x03e0, B:329:0x03f0, B:330:0x03ff, B:332:0x040b, B:333:0x0410, B:339:0x0416, B:340:0x0421, B:341:0x0422, B:343:0x0432, B:345:0x043a, B:346:0x043d, B:348:0x0443, B:353:0x0462, B:67:0x0486, B:70:0x0492, B:72:0x04a9, B:74:0x04c4, B:76:0x04cc, B:78:0x04e0, B:80:0x0517, B:83:0x04ec, B:85:0x04fa, B:86:0x0516, B:87:0x05c6, B:92:0x051f, B:95:0x052c, B:97:0x0538, B:99:0x053e, B:100:0x0545, B:101:0x0560, B:104:0x056e, B:106:0x0576, B:108:0x057d, B:110:0x0585, B:112:0x058f, B:113:0x05aa, B:114:0x05d7, B:115:0x05f9, B:118:0x05fe, B:303:0x061b, B:305:0x0629, B:307:0x063e, B:308:0x0648, B:310:0x064d, B:130:0x0656, B:134:0x0666, B:137:0x0673, B:140:0x068f, B:143:0x09bc, B:147:0x09d2, B:150:0x09ee, B:152:0x0a00, B:155:0x0a1c, B:157:0x0a2c, B:162:0x0a54, B:165:0x0a69, B:168:0x0a85, B:169:0x0a94, B:172:0x0aa9, B:175:0x0ac5, B:176:0x0ad5, B:177:0x0ae4, B:178:0x0a45, B:179:0x0ae9, B:180:0x0b05, B:311:0x0697, B:129:0x06b3, B:186:0x06c7, B:189:0x06eb, B:191:0x06f8, B:195:0x0708, B:196:0x070d, B:198:0x0721, B:199:0x072a, B:208:0x0738, B:204:0x076d, B:205:0x0789, B:213:0x075b, B:215:0x0749, B:220:0x0790, B:223:0x07ac, B:225:0x07d2, B:229:0x07e5, B:230:0x07ef, B:233:0x07fd, B:234:0x0801, B:236:0x0813, B:239:0x082b, B:243:0x083d, B:244:0x0841, B:246:0x084f, B:248:0x085e, B:250:0x0869, B:251:0x0872, B:260:0x0880, B:262:0x088b, B:256:0x08c4, B:257:0x08e0, B:267:0x08b2, B:268:0x08a7, B:269:0x0897, B:298:0x08e7, B:300:0x08fc, B:294:0x0920, B:296:0x0934, B:276:0x0952, B:278:0x0965, B:279:0x0969, B:288:0x0980, B:281:0x0991, B:284:0x099f, B:285:0x09bb, B:367:0x0347, B:368:0x0357, B:432:0x011f, B:435:0x013b, B:440:0x015a, B:373:0x016f, B:375:0x018f, B:376:0x0192, B:379:0x019c, B:380:0x01ba, B:429:0x01c1, B:430:0x01dd, B:426:0x01e4, B:427:0x0200, B:389:0x0213, B:391:0x021e, B:393:0x022c, B:395:0x0232, B:396:0x0236, B:400:0x0240, B:401:0x025c, B:403:0x025f, B:406:0x0269, B:407:0x0285, B:414:0x02f7, B:419:0x0312, B:420:0x033c, B:417:0x033f, B:421:0x0292, B:423:0x029d), top: B:19:0x0084, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x02a5 A[Catch: all -> 0x0111, TryCatch #0 {all -> 0x0111, blocks: (B:20:0x0084, B:24:0x0094, B:28:0x00a1, B:32:0x00bb, B:34:0x00d7, B:37:0x00e4, B:38:0x0110, B:41:0x02a5, B:44:0x02c1, B:360:0x02ef, B:60:0x035b, B:62:0x036b, B:313:0x0377, B:315:0x039f, B:318:0x03ac, B:320:0x03c3, B:323:0x03ce, B:325:0x03e0, B:329:0x03f0, B:330:0x03ff, B:332:0x040b, B:333:0x0410, B:339:0x0416, B:340:0x0421, B:341:0x0422, B:343:0x0432, B:345:0x043a, B:346:0x043d, B:348:0x0443, B:353:0x0462, B:67:0x0486, B:70:0x0492, B:72:0x04a9, B:74:0x04c4, B:76:0x04cc, B:78:0x04e0, B:80:0x0517, B:83:0x04ec, B:85:0x04fa, B:86:0x0516, B:87:0x05c6, B:92:0x051f, B:95:0x052c, B:97:0x0538, B:99:0x053e, B:100:0x0545, B:101:0x0560, B:104:0x056e, B:106:0x0576, B:108:0x057d, B:110:0x0585, B:112:0x058f, B:113:0x05aa, B:114:0x05d7, B:115:0x05f9, B:118:0x05fe, B:303:0x061b, B:305:0x0629, B:307:0x063e, B:308:0x0648, B:310:0x064d, B:130:0x0656, B:134:0x0666, B:137:0x0673, B:140:0x068f, B:143:0x09bc, B:147:0x09d2, B:150:0x09ee, B:152:0x0a00, B:155:0x0a1c, B:157:0x0a2c, B:162:0x0a54, B:165:0x0a69, B:168:0x0a85, B:169:0x0a94, B:172:0x0aa9, B:175:0x0ac5, B:176:0x0ad5, B:177:0x0ae4, B:178:0x0a45, B:179:0x0ae9, B:180:0x0b05, B:311:0x0697, B:129:0x06b3, B:186:0x06c7, B:189:0x06eb, B:191:0x06f8, B:195:0x0708, B:196:0x070d, B:198:0x0721, B:199:0x072a, B:208:0x0738, B:204:0x076d, B:205:0x0789, B:213:0x075b, B:215:0x0749, B:220:0x0790, B:223:0x07ac, B:225:0x07d2, B:229:0x07e5, B:230:0x07ef, B:233:0x07fd, B:234:0x0801, B:236:0x0813, B:239:0x082b, B:243:0x083d, B:244:0x0841, B:246:0x084f, B:248:0x085e, B:250:0x0869, B:251:0x0872, B:260:0x0880, B:262:0x088b, B:256:0x08c4, B:257:0x08e0, B:267:0x08b2, B:268:0x08a7, B:269:0x0897, B:298:0x08e7, B:300:0x08fc, B:294:0x0920, B:296:0x0934, B:276:0x0952, B:278:0x0965, B:279:0x0969, B:288:0x0980, B:281:0x0991, B:284:0x099f, B:285:0x09bb, B:367:0x0347, B:368:0x0357, B:432:0x011f, B:435:0x013b, B:440:0x015a, B:373:0x016f, B:375:0x018f, B:376:0x0192, B:379:0x019c, B:380:0x01ba, B:429:0x01c1, B:430:0x01dd, B:426:0x01e4, B:427:0x0200, B:389:0x0213, B:391:0x021e, B:393:0x022c, B:395:0x0232, B:396:0x0236, B:400:0x0240, B:401:0x025c, B:403:0x025f, B:406:0x0269, B:407:0x0285, B:414:0x02f7, B:419:0x0312, B:420:0x033c, B:417:0x033f, B:421:0x0292, B:423:0x029d), top: B:19:0x0084, inners: #1, #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object parseObject(Map object, Object fieldName) {
        boolean isJSONObject;
        Map innerMap;
        String obj;
        String key;
        char ch2;
        char ch3;
        Object obj2;
        JSONLexer lexer = this.lexer;
        int token = lexer.token;
        if (token == 8) {
            lexer.nextToken();
            return null;
        } else if (token != 12 && token != 16) {
            throw new JSONException("syntax error, expect {, actual " + JSONToken.name(token) + ", " + lexer.info());
        } else {
            if (object instanceof JSONObject) {
                JSONObject jsonObject = (JSONObject) object;
                innerMap = jsonObject.getInnerMap();
                isJSONObject = true;
            } else {
                isJSONObject = false;
                innerMap = null;
            }
            boolean allowISO8601DateFormat = (lexer.features & Feature.AllowISO8601DateFormat.mask) != 0;
            boolean disableCircularReferenceDetect = lexer.disableCircularReferenceDetect;
            ParseContext context = this.contex;
            boolean setContextFlag = false;
            while (true) {
                try {
                    char ch4 = lexer.f57ch;
                    if (ch4 != '\"' && ch4 != '}') {
                        lexer.skipWhitespace();
                        ch4 = lexer.f57ch;
                    }
                    while (ch4 == ',') {
                        lexer.next();
                        lexer.skipWhitespace();
                        ch4 = lexer.f57ch;
                    }
                    boolean isObjectKey = false;
                    if (ch4 != '\"') {
                        if (ch4 != '}') {
                            if (ch4 != '\'') {
                                if (ch4 != 26) {
                                    if (ch4 != ',') {
                                        if ((ch4 >= '0' && ch4 <= '9') || ch4 == '-') {
                                            lexer.f59sp = 0;
                                            lexer.scanNumber();
                                            try {
                                                Object integerValue = lexer.token == 2 ? lexer.integerValue() : lexer.decimalValue(true);
                                                if (isJSONObject) {
                                                    integerValue = integerValue.toString();
                                                }
                                                if (lexer.f57ch != ':') {
                                                    throw new JSONException("parse number key error, " + lexer.info());
                                                }
                                                obj = integerValue;
                                            } catch (NumberFormatException e) {
                                                throw new JSONException("parse number key error, " + lexer.info());
                                            }
                                        } else if (ch4 == '{' || ch4 == '[') {
                                            lexer.nextToken();
                                            Object key2 = parse();
                                            isObjectKey = true;
                                            obj = isJSONObject ? key2.toString() : key2;
                                        } else {
                                            key = lexer.scanSymbolUnQuoted(this.symbolTable);
                                            lexer.skipWhitespace();
                                            char ch5 = lexer.f57ch;
                                            if (ch5 != ':') {
                                                throw new JSONException("expect ':' at " + lexer.f56bp + ", actual " + ch5);
                                            }
                                            if (isJSONObject) {
                                                obj = key.toString();
                                            }
                                        }
                                        if (isObjectKey) {
                                            int index = lexer.f56bp + 1;
                                            lexer.f56bp = index;
                                            ch2 = index >= lexer.len ? JSONLexer.EOI : lexer.text.charAt(index);
                                            lexer.f57ch = ch2;
                                            while (ch2 <= ' ' && (ch2 == ' ' || ch2 == '\n' || ch2 == '\r' || ch2 == '\t' || ch2 == '\f' || ch2 == '\b')) {
                                                lexer.next();
                                                ch2 = lexer.f57ch;
                                            }
                                        } else {
                                            ch2 = lexer.f57ch;
                                        }
                                        lexer.f59sp = 0;
                                        if (obj != JSON.DEFAULT_TYPE_KEY && !lexer.isEnabled(Feature.DisableSpecialKeyDetect)) {
                                            String typeName = lexer.scanSymbol(this.symbolTable, CoreConstants.DOUBLE_QUOTE_CHAR);
                                            Class<?> clazz = TypeUtils.loadClass(typeName, this.config.defaultClassLoader);
                                            if (clazz != null) {
                                                break;
                                            }
                                            object.put(JSON.DEFAULT_TYPE_KEY, typeName);
                                        } else if (obj != "$ref" && !lexer.isEnabled(Feature.DisableSpecialKeyDetect)) {
                                            lexer.nextToken(4);
                                            if (lexer.token != 4) {
                                                throw new JSONException("illegal ref, " + JSONToken.name(lexer.token));
                                            }
                                            String ref = lexer.stringVal();
                                            lexer.nextToken(13);
                                            Object refValue = null;
                                            if ("@".equals(ref)) {
                                                if (this.contex != null) {
                                                    ParseContext thisContext = this.contex;
                                                    Object thisObj = thisContext.object;
                                                    if ((thisObj instanceof Object[]) || (thisObj instanceof Collection)) {
                                                        refValue = thisObj;
                                                    } else if (thisContext.parent != null) {
                                                        refValue = thisContext.parent.object;
                                                    }
                                                    obj2 = refValue;
                                                }
                                                obj2 = null;
                                            } else if ("..".equals(ref)) {
                                                if (context.object != null) {
                                                    obj2 = context.object;
                                                } else {
                                                    addResolveTask(new ResolveTask(context, ref));
                                                    this.resolveStatus = 1;
                                                    obj2 = null;
                                                }
                                            } else if ("$".equals(ref)) {
                                                ParseContext rootContext = context;
                                                while (rootContext.parent != null) {
                                                    rootContext = rootContext.parent;
                                                }
                                                if (rootContext.object != null) {
                                                    refValue = rootContext.object;
                                                } else {
                                                    addResolveTask(new ResolveTask(rootContext, ref));
                                                    this.resolveStatus = 1;
                                                }
                                                obj2 = refValue;
                                            } else {
                                                addResolveTask(new ResolveTask(context, ref));
                                                this.resolveStatus = 1;
                                                obj2 = null;
                                            }
                                            if (lexer.token != 13) {
                                                throw new JSONException("syntax error, " + lexer.info());
                                            }
                                            lexer.nextToken(16);
                                            if (disableCircularReferenceDetect) {
                                                return obj2;
                                            }
                                            this.contex = context;
                                            return obj2;
                                        } else {
                                            if (!disableCircularReferenceDetect && !setContextFlag) {
                                                ParseContext contextR = setContext(this.contex, object, fieldName);
                                                if (context == null) {
                                                    context = contextR;
                                                }
                                                setContextFlag = true;
                                            }
                                            if (ch2 != '\"') {
                                                String strValue = lexer.scanStringValue(CoreConstants.DOUBLE_QUOTE_CHAR);
                                                Date value = strValue;
                                                if (allowISO8601DateFormat) {
                                                    JSONLexer iso8601Lexer = new JSONLexer(strValue);
                                                    value = value;
                                                    if (iso8601Lexer.scanISO8601DateIfMatch(true)) {
                                                        value = iso8601Lexer.calendar.getTime();
                                                    }
                                                    iso8601Lexer.close();
                                                }
                                                if (innerMap != null) {
                                                    innerMap.put(obj, value);
                                                } else {
                                                    object.put(obj, value);
                                                }
                                            } else if ((ch2 >= '0' && ch2 <= '9') || ch2 == '-') {
                                                object.put(obj, lexer.scanNumberValue());
                                            } else if (ch2 == '[') {
                                                lexer.token = 14;
                                                int index2 = lexer.f56bp + 1;
                                                lexer.f56bp = index2;
                                                lexer.f57ch = index2 >= lexer.len ? JSONLexer.EOI : lexer.text.charAt(index2);
                                                ArrayList list = new ArrayList();
                                                if (!(fieldName != null && fieldName.getClass() == Integer.class)) {
                                                    setContext(context);
                                                }
                                                parseArray(list, obj);
                                                JSONArray value2 = new JSONArray(list);
                                                if (innerMap != null) {
                                                    innerMap.put(obj, value2);
                                                } else {
                                                    object.put(obj, value2);
                                                }
                                                int token2 = lexer.token;
                                                if (token2 == 13) {
                                                    lexer.nextToken(16);
                                                    if (disableCircularReferenceDetect) {
                                                        return object;
                                                    }
                                                    this.contex = context;
                                                    return object;
                                                } else if (token2 != 16) {
                                                    throw new JSONException("syntax error, " + lexer.info());
                                                }
                                            } else if (ch2 == '{') {
                                                int index3 = lexer.f56bp + 1;
                                                lexer.f56bp = index3;
                                                lexer.f57ch = index3 >= lexer.len ? JSONLexer.EOI : lexer.text.charAt(index3);
                                                lexer.token = 12;
                                                boolean parentIsArray = fieldName instanceof Integer;
                                                JSONObject input = (lexer.features & Feature.OrderedField.mask) != 0 ? new JSONObject(new LinkedHashMap()) : new JSONObject();
                                                ParseContext ctxLocal = null;
                                                if (!disableCircularReferenceDetect && !parentIsArray) {
                                                    ctxLocal = setContext(context, input, obj);
                                                }
                                                Object obj3 = null;
                                                boolean objParsed = false;
                                                if (this.fieldTypeResolver != null) {
                                                    String resolveFieldName = obj != null ? obj.toString() : null;
                                                    Type fieldType = this.fieldTypeResolver.resolve(object, resolveFieldName);
                                                    if (fieldType != null) {
                                                        ObjectDeserializer fieldDeser = this.config.getDeserializer(fieldType);
                                                        obj3 = fieldDeser.deserialze(this, fieldType, obj);
                                                        objParsed = true;
                                                    }
                                                }
                                                if (!objParsed) {
                                                    obj3 = parseObject(input, obj);
                                                }
                                                if (ctxLocal != null && input != obj3) {
                                                    ctxLocal.object = object;
                                                }
                                                if (this.resolveStatus == 1) {
                                                    checkMapResolve(object, obj.toString());
                                                }
                                                if (innerMap != null) {
                                                    innerMap.put(obj, obj3);
                                                } else {
                                                    object.put(obj, obj3);
                                                }
                                                if (parentIsArray) {
                                                    setContext(context, obj3, obj);
                                                }
                                                int token3 = lexer.token;
                                                if (token3 == 13) {
                                                    lexer.nextToken(16);
                                                    if (!disableCircularReferenceDetect) {
                                                        this.contex = context;
                                                    }
                                                    if (disableCircularReferenceDetect) {
                                                        return object;
                                                    }
                                                    this.contex = context;
                                                    return object;
                                                } else if (token3 != 16) {
                                                    throw new JSONException("syntax error, " + lexer.info());
                                                }
                                            } else if (ch2 == 't') {
                                                if (lexer.text.startsWith(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE, lexer.f56bp)) {
                                                    lexer.f56bp += 3;
                                                    lexer.next();
                                                    object.put(obj, Boolean.TRUE);
                                                }
                                            } else if (ch2 != 'f') {
                                                lexer.nextToken();
                                                Object value3 = parse();
                                                if (object.getClass() == JSONObject.class) {
                                                    obj = obj.toString();
                                                }
                                                object.put(obj, value3);
                                                if (lexer.token == 13) {
                                                    lexer.nextToken(16);
                                                    if (disableCircularReferenceDetect) {
                                                        return object;
                                                    }
                                                    this.contex = context;
                                                    return object;
                                                } else if (lexer.token != 16) {
                                                    throw new JSONException("syntax error, " + lexer.info());
                                                }
                                            } else if (lexer.text.startsWith("false", lexer.f56bp)) {
                                                lexer.f56bp += 4;
                                                lexer.next();
                                                object.put(obj, Boolean.FALSE);
                                            }
                                            ch3 = lexer.f57ch;
                                            if (ch3 != ',' && ch3 != '}') {
                                                lexer.skipWhitespace();
                                                ch3 = lexer.f57ch;
                                            }
                                            if (ch3 == ',') {
                                                if (ch3 != '}') {
                                                    throw new JSONException("syntax error, " + lexer.info());
                                                }
                                                int index4 = lexer.f56bp + 1;
                                                lexer.f56bp = index4;
                                                char ch6 = index4 >= lexer.len ? JSONLexer.EOI : lexer.text.charAt(index4);
                                                lexer.f57ch = ch6;
                                                lexer.f59sp = 0;
                                                if (ch6 == ',') {
                                                    int index5 = lexer.f56bp + 1;
                                                    lexer.f56bp = index5;
                                                    lexer.f57ch = index5 >= lexer.len ? JSONLexer.EOI : lexer.text.charAt(index5);
                                                    lexer.token = 16;
                                                } else if (ch6 == '}') {
                                                    int index6 = lexer.f56bp + 1;
                                                    lexer.f56bp = index6;
                                                    lexer.f57ch = index6 >= lexer.len ? JSONLexer.EOI : lexer.text.charAt(index6);
                                                    lexer.token = 13;
                                                } else if (ch6 == ']') {
                                                    int index7 = lexer.f56bp + 1;
                                                    lexer.f56bp = index7;
                                                    lexer.f57ch = index7 >= lexer.len ? JSONLexer.EOI : lexer.text.charAt(index7);
                                                    lexer.token = 15;
                                                } else {
                                                    lexer.nextToken();
                                                }
                                                if (!disableCircularReferenceDetect) {
                                                    setContext(this.contex, object, fieldName);
                                                }
                                                if (disableCircularReferenceDetect) {
                                                    return object;
                                                }
                                                this.contex = context;
                                                return object;
                                            }
                                            int index8 = lexer.f56bp + 1;
                                            lexer.f56bp = index8;
                                            lexer.f57ch = index8 >= lexer.len ? JSONLexer.EOI : lexer.text.charAt(index8);
                                        }
                                    } else {
                                        throw new JSONException("syntax error, " + lexer.info());
                                    }
                                } else {
                                    throw new JSONException("syntax error, " + lexer.info());
                                }
                            } else {
                                key = lexer.scanSymbol(this.symbolTable, CoreConstants.SINGLE_QUOTE_CHAR);
                                if (lexer.f57ch != ':') {
                                    lexer.skipWhitespace();
                                }
                                if (lexer.f57ch != ':') {
                                    throw new JSONException("expect ':' at " + lexer.pos);
                                }
                            }
                        } else {
                            int index9 = lexer.f56bp + 1;
                            lexer.f56bp = index9;
                            lexer.f57ch = index9 >= lexer.len ? JSONLexer.EOI : lexer.text.charAt(index9);
                            lexer.f59sp = 0;
                            lexer.nextToken(16);
                        }
                    } else {
                        key = lexer.scanSymbol(this.symbolTable, CoreConstants.DOUBLE_QUOTE_CHAR);
                        if (lexer.f57ch != ':') {
                            lexer.skipWhitespace();
                            if (lexer.f57ch != ':') {
                                throw new JSONException("expect ':' at " + lexer.pos + ", name " + ((Object) key));
                            }
                        }
                    }
                    obj = key;
                    if (isObjectKey) {
                    }
                    lexer.f59sp = 0;
                    if (obj != JSON.DEFAULT_TYPE_KEY) {
                    }
                    if (obj != "$ref") {
                    }
                    if (!disableCircularReferenceDetect) {
                        ParseContext contextR2 = setContext(this.contex, object, fieldName);
                        if (context == null) {
                        }
                        setContextFlag = true;
                    }
                    if (ch2 != '\"') {
                    }
                    ch3 = lexer.f57ch;
                    if (ch3 != ',') {
                        lexer.skipWhitespace();
                        ch3 = lexer.f57ch;
                    }
                    if (ch3 == ',') {
                    }
                } finally {
                    if (!disableCircularReferenceDetect) {
                        this.contex = context;
                    }
                }
            }
        }
    }

    public <T> T parseObject(Class<T> clazz) {
        return (T) parseObject(clazz, (Object) null);
    }

    public <T> T parseObject(Type type) {
        return (T) parseObject(type, (Object) null);
    }

    public <T> T parseObject(Type type, Object fieldName) {
        if (this.lexer.token == 8) {
            this.lexer.nextToken();
            return null;
        }
        if (this.lexer.token == 4) {
            if (type == byte[].class) {
                T t = (T) this.lexer.bytesValue();
                this.lexer.nextToken();
                return t;
            } else if (type == char[].class) {
                String strVal = this.lexer.stringVal();
                this.lexer.nextToken();
                return (T) strVal.toCharArray();
            }
        }
        ObjectDeserializer derializer = this.config.getDeserializer(type);
        try {
            return (T) derializer.deserialze(this, type, fieldName);
        } catch (JSONException e) {
            throw e;
        } catch (Exception e2) {
            throw new JSONException(e2.getMessage(), e2);
        }
    }

    public <T> List<T> parseArray(Class<T> clazz) {
        List<T> array = new ArrayList<>();
        parseArray((Class<?>) clazz, (Collection) array);
        return array;
    }

    public void parseArray(Class<?> clazz, Collection array) {
        parseArray((Type) clazz, array);
    }

    public void parseArray(Type type, Collection array) {
        parseArray(type, array, null);
    }

    public void parseArray(Type type, Collection array, Object fieldName) {
        ObjectDeserializer deserializer;
        Object deserialze;
        String value;
        if (this.lexer.token == 21 || this.lexer.token == 22) {
            this.lexer.nextToken();
        }
        if (this.lexer.token != 14) {
            throw new JSONException("exepct '[', but " + JSONToken.name(this.lexer.token) + ", " + this.lexer.info());
        }
        if (Integer.TYPE == type) {
            deserializer = IntegerCodec.instance;
            this.lexer.nextToken(2);
        } else if (String.class == type) {
            deserializer = StringCodec.instance;
            this.lexer.nextToken(4);
        } else {
            deserializer = this.config.getDeserializer(type);
            this.lexer.nextToken(12);
        }
        ParseContext context = this.contex;
        if (!this.lexer.disableCircularReferenceDetect) {
            setContext(this.contex, array, fieldName);
        }
        int i = 0;
        while (true) {
            try {
                if (this.lexer.token == 16) {
                    this.lexer.nextToken();
                } else if (this.lexer.token != 15) {
                    if (Integer.TYPE == type) {
                        Object val = IntegerCodec.instance.deserialze(this, null, null);
                        array.add(val);
                    } else if (String.class == type) {
                        if (this.lexer.token == 4) {
                            value = this.lexer.stringVal();
                            this.lexer.nextToken(16);
                        } else {
                            Object obj = parse();
                            value = obj == null ? null : obj.toString();
                        }
                        array.add(value);
                    } else {
                        if (this.lexer.token == 8) {
                            this.lexer.nextToken();
                            deserialze = null;
                        } else {
                            deserialze = deserializer.deserialze(this, type, Integer.valueOf(i));
                        }
                        array.add(deserialze);
                        if (this.resolveStatus == 1) {
                            checkListResolve(array);
                        }
                    }
                    if (this.lexer.token == 16) {
                        this.lexer.nextToken();
                    }
                    i++;
                } else {
                    this.contex = context;
                    this.lexer.nextToken(16);
                    return;
                }
            } catch (Throwable th) {
                this.contex = context;
                throw th;
            }
        }
    }

    public Object[] parseArray(Type[] types) {
        Object value;
        if (this.lexer.token == 8) {
            this.lexer.nextToken(16);
            return null;
        } else if (this.lexer.token != 14) {
            throw new JSONException("syntax error, " + this.lexer.info());
        } else {
            Object[] list = new Object[types.length];
            if (types.length == 0) {
                this.lexer.nextToken(15);
                if (this.lexer.token != 15) {
                    throw new JSONException("syntax error, " + this.lexer.info());
                }
                this.lexer.nextToken(16);
                return new Object[0];
            }
            this.lexer.nextToken(2);
            for (int i = 0; i < types.length; i++) {
                if (this.lexer.token == 8) {
                    value = null;
                    this.lexer.nextToken(16);
                } else {
                    Type type = types[i];
                    if (type == Integer.TYPE || type == Integer.class) {
                        if (this.lexer.token == 2) {
                            value = Integer.valueOf(this.lexer.intValue());
                            this.lexer.nextToken(16);
                        } else {
                            Object value2 = parse();
                            value = TypeUtils.cast(value2, type, this.config);
                        }
                    } else if (type == String.class) {
                        if (this.lexer.token == 4) {
                            value = this.lexer.stringVal();
                            this.lexer.nextToken(16);
                        } else {
                            Object value3 = parse();
                            value = TypeUtils.cast(value3, type, this.config);
                        }
                    } else {
                        boolean isArray = false;
                        Class<?> componentType = null;
                        if (i == types.length - 1 && (type instanceof Class)) {
                            Class<?> clazz = (Class) type;
                            isArray = clazz.isArray();
                            componentType = clazz.getComponentType();
                        }
                        if (isArray && this.lexer.token != 14) {
                            List<Object> varList = new ArrayList<>();
                            ObjectDeserializer derializer = this.config.getDeserializer(componentType);
                            if (this.lexer.token != 15) {
                                while (true) {
                                    varList.add(derializer.deserialze(this, type, null));
                                    if (this.lexer.token != 16) {
                                        break;
                                    }
                                    this.lexer.nextToken(12);
                                }
                                if (this.lexer.token != 15) {
                                    throw new JSONException("syntax error, " + this.lexer.info());
                                }
                            }
                            value = TypeUtils.cast(varList, type, this.config);
                        } else {
                            ObjectDeserializer derializer2 = this.config.getDeserializer(type);
                            value = derializer2.deserialze(this, type, null);
                        }
                    }
                }
                list[i] = value;
                if (this.lexer.token == 15) {
                    break;
                } else if (this.lexer.token != 16) {
                    throw new JSONException("syntax error, " + this.lexer.info());
                } else {
                    if (i == types.length - 1) {
                        this.lexer.nextToken(15);
                    } else {
                        this.lexer.nextToken(2);
                    }
                }
            }
            if (this.lexer.token != 15) {
                throw new JSONException("syntax error, " + this.lexer.info());
            }
            this.lexer.nextToken(16);
            return list;
        }
    }

    public void parseObject(Object object) {
        Object deserialze;
        Class<?> clazz = object.getClass();
        JavaBeanDeserializer beanDeser = null;
        ObjectDeserializer deserizer = this.config.getDeserializer(clazz);
        if (deserizer instanceof JavaBeanDeserializer) {
            beanDeser = (JavaBeanDeserializer) deserizer;
        }
        int token = this.lexer.token;
        if (token == 12 || token == 16) {
            while (true) {
                String key = this.lexer.scanSymbol(this.symbolTable);
                if (key == null) {
                    if (this.lexer.token == 13) {
                        this.lexer.nextToken(16);
                        return;
                    } else if (this.lexer.token == 16) {
                        continue;
                    }
                }
                FieldDeserializer fieldDeser = null;
                if (beanDeser != null) {
                    fieldDeser = beanDeser.getFieldDeserializer(key);
                }
                if (fieldDeser == null) {
                    if ((this.lexer.features & Feature.IgnoreNotMatch.mask) == 0) {
                        throw new JSONException("setter not found, class " + clazz.getName() + ", property " + key);
                    }
                    this.lexer.nextTokenWithChar(CoreConstants.COLON_CHAR);
                    parse();
                    if (this.lexer.token == 13) {
                        this.lexer.nextToken();
                        return;
                    }
                } else {
                    Class<?> fieldClass = fieldDeser.fieldInfo.fieldClass;
                    Type fieldType = fieldDeser.fieldInfo.fieldType;
                    if (fieldClass == Integer.TYPE) {
                        this.lexer.nextTokenWithChar(CoreConstants.COLON_CHAR);
                        deserialze = IntegerCodec.instance.deserialze(this, fieldType, null);
                    } else if (fieldClass == String.class) {
                        this.lexer.nextTokenWithChar(CoreConstants.COLON_CHAR);
                        deserialze = parseString();
                    } else if (fieldClass == Long.TYPE) {
                        this.lexer.nextTokenWithChar(CoreConstants.COLON_CHAR);
                        deserialze = IntegerCodec.instance.deserialze(this, fieldType, null);
                    } else {
                        ObjectDeserializer fieldValueDeserializer = this.config.getDeserializer(fieldClass, fieldType);
                        this.lexer.nextTokenWithChar(CoreConstants.COLON_CHAR);
                        deserialze = fieldValueDeserializer.deserialze(this, fieldType, null);
                    }
                    fieldDeser.setValue(object, deserialze);
                    if (this.lexer.token != 16 && this.lexer.token == 13) {
                        this.lexer.nextToken(16);
                        return;
                    }
                }
            }
        } else {
            throw new JSONException("syntax error, expect {, actual " + JSONToken.name(token));
        }
    }

    public Object parseArrayWithType(Type collectionType) {
        if (this.lexer.token == 8) {
            this.lexer.nextToken();
            return null;
        }
        Type[] actualTypes = ((ParameterizedType) collectionType).getActualTypeArguments();
        if (actualTypes.length != 1) {
            throw new JSONException("not support type " + collectionType);
        }
        Type actualTypeArgument = actualTypes[0];
        if (actualTypeArgument instanceof Class) {
            List<Object> array = new ArrayList<>();
            parseArray((Class) actualTypeArgument, (Collection) array);
            return array;
        } else if (actualTypeArgument instanceof WildcardType) {
            WildcardType wildcardType = (WildcardType) actualTypeArgument;
            Type upperBoundType = wildcardType.getUpperBounds()[0];
            if (Object.class.equals(upperBoundType)) {
                if (wildcardType.getLowerBounds().length == 0) {
                    return parse();
                }
                throw new JSONException("not support type : " + collectionType);
            }
            List<Object> array2 = new ArrayList<>();
            parseArray((Class) upperBoundType, (Collection) array2);
            return array2;
        } else {
            if (actualTypeArgument instanceof TypeVariable) {
                TypeVariable<?> typeVariable = (TypeVariable) actualTypeArgument;
                Type[] bounds = typeVariable.getBounds();
                if (bounds.length != 1) {
                    throw new JSONException("not support : " + typeVariable);
                }
                Type boundType = bounds[0];
                if (boundType instanceof Class) {
                    List<Object> array3 = new ArrayList<>();
                    parseArray((Class) boundType, (Collection) array3);
                    return array3;
                }
            }
            if (actualTypeArgument instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) actualTypeArgument;
                List<Object> array4 = new ArrayList<>();
                parseArray(parameterizedType, array4);
                return array4;
            }
            throw new JSONException("TODO : " + collectionType);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void checkListResolve(Collection array) {
        if (array instanceof List) {
            ResolveTask task = getLastResolveTask();
            task.fieldDeserializer = new ResolveFieldDeserializer(this, (List) array, array.size() - 1);
            task.ownerContext = this.contex;
            this.resolveStatus = 0;
            return;
        }
        ResolveTask task2 = getLastResolveTask();
        task2.fieldDeserializer = new ResolveFieldDeserializer(array);
        task2.ownerContext = this.contex;
        this.resolveStatus = 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void checkMapResolve(Map object, Object fieldName) {
        ResolveFieldDeserializer fieldResolver = new ResolveFieldDeserializer(object, fieldName);
        ResolveTask task = getLastResolveTask();
        task.fieldDeserializer = fieldResolver;
        task.ownerContext = this.contex;
        this.resolveStatus = 0;
    }

    public Object parseObject(Map object) {
        return parseObject(object, (Object) null);
    }

    public JSONObject parseObject() {
        JSONObject object = (this.lexer.features & Feature.OrderedField.mask) != 0 ? new JSONObject(new LinkedHashMap()) : new JSONObject();
        return (JSONObject) parseObject(object, (Object) null);
    }

    public final void parseArray(Collection array) {
        parseArray(array, (Object) null);
    }

    public final void parseArray(Collection array, Object fieldName) {
        boolean first_quote;
        Number value;
        int token = this.lexer.token;
        if (token == 21 || token == 22) {
            this.lexer.nextToken();
            token = this.lexer.token;
        }
        if (token != 14) {
            throw new JSONException("syntax error, expect [, actual " + JSONToken.name(token) + ", pos " + this.lexer.pos);
        }
        boolean disableCircularReferenceDetect = this.lexer.disableCircularReferenceDetect;
        ParseContext context = this.contex;
        if (!disableCircularReferenceDetect) {
            setContext(this.contex, array, fieldName);
        }
        try {
            char ch2 = this.lexer.f57ch;
            if (ch2 != '\"') {
                if (ch2 == ']') {
                    this.lexer.next();
                    this.lexer.nextToken(16);
                    if (disableCircularReferenceDetect) {
                        return;
                    }
                    return;
                }
                if (ch2 == '{') {
                    JSONLexer jSONLexer = this.lexer;
                    int index = jSONLexer.f56bp + 1;
                    jSONLexer.f56bp = index;
                    this.lexer.f57ch = index >= this.lexer.len ? JSONLexer.EOI : this.lexer.text.charAt(index);
                    this.lexer.token = 12;
                } else {
                    this.lexer.nextToken(12);
                }
                first_quote = false;
            } else if ((this.lexer.features & Feature.AllowISO8601DateFormat.mask) == 0) {
                first_quote = true;
            } else {
                this.lexer.nextToken(4);
                first_quote = false;
            }
            int i = 0;
            while (true) {
                if (first_quote && this.lexer.f57ch == '\"') {
                    String value2 = this.lexer.scanStringValue(CoreConstants.DOUBLE_QUOTE_CHAR);
                    char ch3 = this.lexer.f57ch;
                    if (ch3 == ',') {
                        JSONLexer jSONLexer2 = this.lexer;
                        int index2 = jSONLexer2.f56bp + 1;
                        jSONLexer2.f56bp = index2;
                        JSONLexer jSONLexer3 = this.lexer;
                        char ch4 = index2 >= this.lexer.len ? JSONLexer.EOI : this.lexer.text.charAt(index2);
                        jSONLexer3.f57ch = ch4;
                        array.add(value2);
                        if (this.resolveStatus == 1) {
                            checkListResolve(array);
                        }
                        if (ch4 == '\"') {
                            continue;
                            i++;
                        } else {
                            first_quote = false;
                            this.lexer.nextToken();
                        }
                    } else if (ch3 == ']') {
                        JSONLexer jSONLexer4 = this.lexer;
                        int index3 = jSONLexer4.f56bp + 1;
                        jSONLexer4.f56bp = index3;
                        this.lexer.f57ch = index3 >= this.lexer.len ? JSONLexer.EOI : this.lexer.text.charAt(index3);
                        array.add(value2);
                        if (this.resolveStatus == 1) {
                            checkListResolve(array);
                        }
                        this.lexer.nextToken(16);
                        if (disableCircularReferenceDetect) {
                            return;
                        }
                        this.contex = context;
                        return;
                    } else {
                        this.lexer.nextToken();
                    }
                }
                int token2 = this.lexer.token;
                while (token2 == 16) {
                    this.lexer.nextToken();
                    token2 = this.lexer.token;
                }
                switch (token2) {
                    case 2:
                        value = this.lexer.integerValue();
                        this.lexer.nextToken(16);
                        break;
                    case 3:
                        value = (this.lexer.features & Feature.UseBigDecimal.mask) != 0 ? this.lexer.decimalValue(true) : this.lexer.decimalValue(false);
                        this.lexer.nextToken(16);
                        break;
                    case 4:
                        String stringLiteral = this.lexer.stringVal();
                        this.lexer.nextToken(16);
                        if ((this.lexer.features & Feature.AllowISO8601DateFormat.mask) == 0) {
                            value = stringLiteral;
                            break;
                        } else {
                            JSONLexer iso8601Lexer = new JSONLexer(stringLiteral);
                            value = iso8601Lexer.scanISO8601DateIfMatch(true) ? iso8601Lexer.calendar.getTime() : stringLiteral;
                            iso8601Lexer.close();
                            break;
                        }
                    case 5:
                    case 9:
                    case 10:
                    case 11:
                    case 13:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 21:
                    case 22:
                    default:
                        value = parse();
                        break;
                    case 6:
                        value = Boolean.TRUE;
                        this.lexer.nextToken(16);
                        break;
                    case 7:
                        value = Boolean.FALSE;
                        this.lexer.nextToken(16);
                        break;
                    case 8:
                        value = null;
                        this.lexer.nextToken(4);
                        break;
                    case 12:
                        JSONObject object = (this.lexer.features & Feature.OrderedField.mask) != 0 ? new JSONObject(new LinkedHashMap()) : new JSONObject();
                        value = parseObject(object, Integer.valueOf(i));
                        break;
                    case 14:
                        Collection items = new JSONArray();
                        parseArray(items, Integer.valueOf(i));
                        value = items;
                        break;
                    case 15:
                        this.lexer.nextToken(16);
                        if (disableCircularReferenceDetect) {
                            return;
                        }
                        this.contex = context;
                        return;
                    case 20:
                        throw new JSONException("unclosed jsonArray");
                    case 23:
                        value = null;
                        this.lexer.nextToken(4);
                        break;
                }
                array.add(value);
                if (this.resolveStatus == 1) {
                    checkListResolve(array);
                }
                if (this.lexer.token == 16) {
                    char ch5 = this.lexer.f57ch;
                    if (ch5 == '\"') {
                        this.lexer.pos = this.lexer.f56bp;
                        this.lexer.scanString();
                    } else if (ch5 >= '0' && ch5 <= '9') {
                        this.lexer.pos = this.lexer.f56bp;
                        this.lexer.scanNumber();
                    } else if (ch5 == '{') {
                        this.lexer.token = 12;
                        JSONLexer jSONLexer5 = this.lexer;
                        int index4 = jSONLexer5.f56bp + 1;
                        jSONLexer5.f56bp = index4;
                        this.lexer.f57ch = index4 >= this.lexer.len ? JSONLexer.EOI : this.lexer.text.charAt(index4);
                    } else {
                        this.lexer.nextToken();
                    }
                }
                i++;
            }
        } finally {
            if (!disableCircularReferenceDetect) {
                this.contex = context;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void addResolveTask(ResolveTask task) {
        if (this.resolveTaskList == null) {
            this.resolveTaskList = new ArrayList(2);
        }
        this.resolveTaskList.add(task);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ResolveTask getLastResolveTask() {
        return this.resolveTaskList.get(this.resolveTaskList.size() - 1);
    }

    public List<ExtraProcessor> getExtraProcessors() {
        if (this.extraProcessors == null) {
            this.extraProcessors = new ArrayList(2);
        }
        return this.extraProcessors;
    }

    public List<ExtraTypeProvider> getExtraTypeProviders() {
        if (this.extraTypeProviders == null) {
            this.extraTypeProviders = new ArrayList(2);
        }
        return this.extraTypeProviders;
    }

    public void setContext(ParseContext context) {
        if (!this.lexer.disableCircularReferenceDetect) {
            this.contex = context;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void popContext() {
        this.contex = this.contex.parent;
        this.contextArray[this.contextArrayIndex - 1] = null;
        this.contextArrayIndex--;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ParseContext setContext(ParseContext parent, Object object, Object fieldName) {
        if (this.lexer.disableCircularReferenceDetect) {
            return null;
        }
        this.contex = new ParseContext(parent, object, fieldName);
        int i = this.contextArrayIndex;
        this.contextArrayIndex = i + 1;
        if (this.contextArray == null) {
            this.contextArray = new ParseContext[8];
        } else if (i >= this.contextArray.length) {
            int newLen = (this.contextArray.length * 3) / 2;
            ParseContext[] newArray = new ParseContext[newLen];
            System.arraycopy(this.contextArray, 0, newArray, 0, this.contextArray.length);
            this.contextArray = newArray;
        }
        this.contextArray[i] = this.contex;
        return this.contex;
    }

    public Object parse() {
        return parse(null);
    }

    public Object parse(Object fieldName) {
        switch (this.lexer.token) {
            case 2:
                Number intValue = this.lexer.integerValue();
                this.lexer.nextToken();
                return intValue;
            case 3:
                boolean useBigDecimal = (this.lexer.features & Feature.UseBigDecimal.mask) != 0;
                Number value = this.lexer.decimalValue(useBigDecimal);
                this.lexer.nextToken();
                return value;
            case 4:
                String stringLiteral = this.lexer.stringVal();
                this.lexer.nextToken(16);
                if ((this.lexer.features & Feature.AllowISO8601DateFormat.mask) != 0) {
                    JSONLexer iso8601Lexer = new JSONLexer(stringLiteral);
                    try {
                        if (iso8601Lexer.scanISO8601DateIfMatch(true)) {
                            return iso8601Lexer.calendar.getTime();
                        }
                    } finally {
                        iso8601Lexer.close();
                    }
                }
                return stringLiteral;
            case 5:
            case 10:
            case 11:
            case 13:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            default:
                throw new JSONException("syntax error, " + this.lexer.info());
            case 6:
                this.lexer.nextToken(16);
                return Boolean.TRUE;
            case 7:
                this.lexer.nextToken(16);
                return Boolean.FALSE;
            case 8:
            case 23:
                this.lexer.nextToken();
                return null;
            case 9:
                this.lexer.nextToken(18);
                if (this.lexer.token != 18) {
                    throw new JSONException("syntax error, " + this.lexer.info());
                }
                this.lexer.nextToken(10);
                accept(10);
                long time = this.lexer.integerValue().longValue();
                accept(2);
                accept(11);
                return new Date(time);
            case 12:
                JSONObject object = (this.lexer.features & Feature.OrderedField.mask) != 0 ? new JSONObject(new LinkedHashMap()) : new JSONObject();
                return parseObject(object, fieldName);
            case 14:
                JSONArray array = new JSONArray();
                parseArray(array, fieldName);
                return array;
            case 20:
                if (this.lexer.isBlankInput()) {
                    return null;
                }
                throw new JSONException("syntax error, " + this.lexer.info());
            case 21:
                this.lexer.nextToken();
                HashSet<Object> set = new HashSet<>();
                parseArray(set, fieldName);
                return set;
            case 22:
                this.lexer.nextToken();
                TreeSet<Object> treeSet = new TreeSet<>();
                parseArray(treeSet, fieldName);
                return treeSet;
        }
    }

    public void config(Feature feature, boolean state) {
        this.lexer.config(feature, state);
    }

    public final void accept(int token) {
        if (this.lexer.token == token) {
            this.lexer.nextToken();
            return;
        }
        throw new JSONException("syntax error, expect " + JSONToken.name(token) + ", actual " + JSONToken.name(this.lexer.token));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            if (this.lexer.token != 20) {
                throw new JSONException("not close json text, token : " + JSONToken.name(this.lexer.token));
            }
        } finally {
            this.lexer.close();
        }
    }

    public void handleResovleTask(Object value) {
        if (this.resolveTaskList != null) {
            int size = this.resolveTaskList.size();
            for (int i = 0; i < size; i++) {
                ResolveTask task = this.resolveTaskList.get(i);
                FieldDeserializer fieldDeser = task.fieldDeserializer;
                if (fieldDeser != null) {
                    Object object = null;
                    if (task.ownerContext != null) {
                        object = task.ownerContext.object;
                    }
                    String ref = task.referenceValue;
                    Object refValue = null;
                    if (ref.startsWith("$")) {
                        for (int j = 0; j < this.contextArrayIndex; j++) {
                            if (ref.equals(this.contextArray[j].toString())) {
                                refValue = this.contextArray[j].object;
                            }
                        }
                    } else {
                        refValue = task.context.object;
                    }
                    fieldDeser.setValue(object, refValue);
                }
            }
        }
    }

    public String parseString() {
        char c = JSONLexer.EOI;
        int token = this.lexer.token;
        if (token == 4) {
            String val = this.lexer.stringVal();
            if (this.lexer.f57ch == ',') {
                JSONLexer jSONLexer = this.lexer;
                int index = jSONLexer.f56bp + 1;
                jSONLexer.f56bp = index;
                JSONLexer jSONLexer2 = this.lexer;
                if (index < this.lexer.len) {
                    c = this.lexer.text.charAt(index);
                }
                jSONLexer2.f57ch = c;
                this.lexer.token = 16;
                return val;
            } else if (this.lexer.f57ch == ']') {
                JSONLexer jSONLexer3 = this.lexer;
                int index2 = jSONLexer3.f56bp + 1;
                jSONLexer3.f56bp = index2;
                JSONLexer jSONLexer4 = this.lexer;
                if (index2 < this.lexer.len) {
                    c = this.lexer.text.charAt(index2);
                }
                jSONLexer4.f57ch = c;
                this.lexer.token = 15;
                return val;
            } else if (this.lexer.f57ch == '}') {
                JSONLexer jSONLexer5 = this.lexer;
                int index3 = jSONLexer5.f56bp + 1;
                jSONLexer5.f56bp = index3;
                JSONLexer jSONLexer6 = this.lexer;
                if (index3 < this.lexer.len) {
                    c = this.lexer.text.charAt(index3);
                }
                jSONLexer6.f57ch = c;
                this.lexer.token = 13;
                return val;
            } else {
                this.lexer.nextToken();
                return val;
            }
        } else if (token == 2) {
            String val2 = this.lexer.numberString();
            this.lexer.nextToken(16);
            return val2;
        } else {
            Object value = parse();
            if (value == null) {
                return null;
            }
            String val3 = value.toString();
            return val3;
        }
    }

    /* loaded from: classes.dex */
    public static class ResolveTask {
        private final ParseContext context;
        public FieldDeserializer fieldDeserializer;
        public ParseContext ownerContext;
        private final String referenceValue;

        public ResolveTask(ParseContext context, String referenceValue) {
            this.context = context;
            this.referenceValue = referenceValue;
        }
    }
}
