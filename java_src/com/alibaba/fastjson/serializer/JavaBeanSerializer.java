package com.alibaba.fastjson.serializer;

import ch.qos.logback.core.CoreConstants;
import com.alibaba.fastjson.PropertyNamingStrategy;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class JavaBeanSerializer implements ObjectSerializer {
    protected int features;
    private final FieldSerializer[] getters;
    private final FieldSerializer[] sortedGetters;
    protected String typeName;
    private static final char[] true_chars = {'t', 'r', 'u', 'e'};
    private static final char[] false_chars = {'f', 'a', 'l', 's', 'e'};

    public JavaBeanSerializer(Class<?> clazz) {
        this(clazz, (PropertyNamingStrategy) null);
    }

    public JavaBeanSerializer(Class<?> clazz, PropertyNamingStrategy propertyNamingStrategy) {
        this(clazz, clazz.getModifiers(), null, false, true, true, true, propertyNamingStrategy);
    }

    public JavaBeanSerializer(Class<?> clazz, String... aliasList) {
        this(clazz, clazz.getModifiers(), map(aliasList), false, true, true, true, null);
    }

    private static Map<String, String> map(String... aliasList) {
        Map<String, String> aliasMap = new HashMap<>();
        for (String alias : aliasList) {
            aliasMap.put(alias, alias);
        }
        return aliasMap;
    }

    public JavaBeanSerializer(Class<?> clazz, int classModifiers, Map<String, String> aliasMap, boolean fieldOnly, boolean jsonTypeSupport, boolean jsonFieldSupport, boolean fieldGenericSupport, PropertyNamingStrategy propertyNamingStrategy) {
        this.features = 0;
        JSONType jsonType = jsonTypeSupport ? (JSONType) clazz.getAnnotation(JSONType.class) : null;
        if (jsonType != null) {
            this.features = SerializerFeature.m1426of(jsonType.serialzeFeatures());
            this.typeName = jsonType.typeName();
            if (this.typeName.length() == 0) {
                this.typeName = null;
            }
        }
        List<FieldInfo> fieldInfoList = TypeUtils.computeGetters(clazz, classModifiers, fieldOnly, jsonType, aliasMap, false, jsonFieldSupport, fieldGenericSupport, propertyNamingStrategy);
        List<FieldSerializer> getterList = new ArrayList<>();
        for (FieldInfo fieldInfo : fieldInfoList) {
            FieldSerializer fieldDeser = new FieldSerializer(fieldInfo);
            getterList.add(fieldDeser);
        }
        this.getters = (FieldSerializer[]) getterList.toArray(new FieldSerializer[getterList.size()]);
        String[] orders = null;
        orders = jsonType != null ? jsonType.orders() : orders;
        if (orders != null && orders.length != 0) {
            List<FieldInfo> fieldInfoList2 = TypeUtils.computeGetters(clazz, classModifiers, fieldOnly, jsonType, aliasMap, true, jsonFieldSupport, fieldGenericSupport, propertyNamingStrategy);
            List<FieldSerializer> getterList2 = new ArrayList<>();
            for (FieldInfo fieldInfo2 : fieldInfoList2) {
                FieldSerializer fieldDeser2 = new FieldSerializer(fieldInfo2);
                getterList2.add(fieldDeser2);
            }
            this.sortedGetters = (FieldSerializer[]) getterList2.toArray(new FieldSerializer[getterList2.size()]);
            return;
        }
        FieldSerializer[] sortedGetters = new FieldSerializer[this.getters.length];
        System.arraycopy(this.getters, 0, sortedGetters, 0, this.getters.length);
        Arrays.sort(sortedGetters);
        if (Arrays.equals(sortedGetters, this.getters)) {
            this.sortedGetters = this.getters;
        } else {
            this.sortedGetters = sortedGetters;
        }
    }

    /*  JADX ERROR: IF instruction can be used only in fallback mode
        jadx.core.utils.exceptions.CodegenException: IF instruction can be used only in fallback mode
        	at jadx.core.codegen.InsnGen.fallbackOnlyInsn(InsnGen.java:664)
        	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:522)
        	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:280)
        	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:250)
        	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:91)
        	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
        	at jadx.core.dex.regions.Region.generate(Region.java:35)
        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
        	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:80)
        	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:175)
        	at jadx.core.dex.regions.loops.LoopRegion.generate(LoopRegion.java:167)
        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
        	at jadx.core.dex.regions.Region.generate(Region.java:35)
        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
        	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:80)
        	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:123)
        	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
        	at jadx.core.dex.regions.Region.generate(Region.java:35)
        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
        	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:80)
        	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:123)
        	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
        	at jadx.core.dex.regions.Region.generate(Region.java:35)
        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
        	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:80)
        	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:207)
        	at jadx.core.dex.regions.loops.LoopRegion.generate(LoopRegion.java:167)
        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
        	at jadx.core.dex.regions.Region.generate(Region.java:35)
        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
        	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:80)
        	at jadx.core.codegen.RegionGen.makeTryCatch(RegionGen.java:302)
        	at jadx.core.dex.regions.TryCatchRegion.generate(TryCatchRegion.java:85)
        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
        	at jadx.core.dex.regions.Region.generate(Region.java:35)
        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
        	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:80)
        	at jadx.core.codegen.RegionGen.makeTryCatch(RegionGen.java:302)
        	at jadx.core.dex.regions.TryCatchRegion.generate(TryCatchRegion.java:85)
        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
        	at jadx.core.dex.regions.Region.generate(Region.java:35)
        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
        	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:80)
        	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:137)
        	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:156)
        	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:133)
        	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
        	at jadx.core.dex.regions.Region.generate(Region.java:35)
        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
        	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:296)
        	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:275)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:371)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:306)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:272)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
        */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0348 A[Catch: Exception -> 0x05aa, all -> 0x05d9, TryCatch #0 {Exception -> 0x05aa, blocks: (B:29:0x00e9, B:31:0x0102, B:33:0x010a, B:34:0x020b, B:35:0x0111, B:37:0x012c, B:39:0x013e, B:40:0x0144, B:42:0x0157, B:45:0x016b, B:47:0x017d, B:51:0x018f, B:53:0x0199, B:55:0x01b8, B:56:0x01c0, B:59:0x01cc, B:61:0x01d6, B:62:0x01e0, B:64:0x01e6, B:69:0x0222, B:71:0x0234, B:74:0x0247, B:77:0x025b, B:80:0x026f, B:81:0x0289, B:83:0x0294, B:85:0x02ba, B:87:0x02c2, B:90:0x02ca, B:93:0x02dc, B:94:0x02e0, B:96:0x02e6, B:102:0x02fd, B:104:0x0311, B:106:0x0319, B:110:0x032e, B:112:0x0336, B:113:0x033e, B:114:0x0342, B:116:0x0348, B:125:0x0367, B:127:0x036f, B:128:0x040a, B:130:0x0412, B:131:0x041c, B:133:0x0424, B:134:0x0377, B:135:0x037b, B:137:0x0381, B:142:0x0434, B:144:0x043c, B:145:0x0448, B:146:0x044c, B:148:0x0452, B:153:0x049b, B:155:0x04a3, B:161:0x04bb, B:163:0x04c3, B:165:0x04cb, B:167:0x04d3, B:169:0x04db, B:171:0x04e3, B:173:0x04ff, B:175:0x0507, B:177:0x050f, B:180:0x04eb, B:182:0x04f3, B:186:0x051d, B:188:0x0536, B:190:0x053e, B:191:0x058d, B:192:0x0545, B:194:0x056d, B:198:0x0578, B:199:0x0583, B:205:0x059b, B:206:0x05a2, B:209:0x05e5, B:211:0x0607, B:213:0x060f, B:214:0x0652, B:218:0x0616, B:219:0x06a9, B:222:0x0637, B:226:0x0647, B:230:0x06ba, B:234:0x06c4, B:236:0x06c8, B:237:0x06ca, B:239:0x06e5, B:241:0x06ed, B:242:0x0718, B:244:0x06f6, B:232:0x0715, B:246:0x0739, B:248:0x0741, B:249:0x0750, B:252:0x075a, B:253:0x0770, B:258:0x0792, B:260:0x07a4, B:262:0x07c1, B:263:0x07b6, B:264:0x07c6, B:266:0x07ce, B:267:0x07d7, B:268:0x07e8, B:271:0x07f2, B:273:0x0804, B:277:0x0824, B:278:0x0830, B:280:0x0841, B:281:0x0854, B:282:0x0859, B:283:0x0864, B:284:0x0467, B:286:0x046f, B:287:0x047c, B:289:0x0484, B:294:0x03e6, B:296:0x03ee, B:297:0x03f8, B:299:0x0400, B:302:0x0394, B:304:0x039c, B:305:0x03ae, B:307:0x03b6, B:308:0x03c8, B:309:0x03da, B:312:0x086f, B:316:0x087b, B:317:0x0885, B:319:0x088b, B:322:0x089c, B:324:0x08a3, B:326:0x08b5, B:327:0x08bb, B:329:0x08d4, B:331:0x08dc, B:332:0x08ff, B:334:0x08e3), top: B:28:0x00e9, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0452 A[Catch: Exception -> 0x05aa, all -> 0x05d9, LOOP:5: B:146:0x044c->B:148:0x0452, LOOP_END, TryCatch #0 {Exception -> 0x05aa, blocks: (B:29:0x00e9, B:31:0x0102, B:33:0x010a, B:34:0x020b, B:35:0x0111, B:37:0x012c, B:39:0x013e, B:40:0x0144, B:42:0x0157, B:45:0x016b, B:47:0x017d, B:51:0x018f, B:53:0x0199, B:55:0x01b8, B:56:0x01c0, B:59:0x01cc, B:61:0x01d6, B:62:0x01e0, B:64:0x01e6, B:69:0x0222, B:71:0x0234, B:74:0x0247, B:77:0x025b, B:80:0x026f, B:81:0x0289, B:83:0x0294, B:85:0x02ba, B:87:0x02c2, B:90:0x02ca, B:93:0x02dc, B:94:0x02e0, B:96:0x02e6, B:102:0x02fd, B:104:0x0311, B:106:0x0319, B:110:0x032e, B:112:0x0336, B:113:0x033e, B:114:0x0342, B:116:0x0348, B:125:0x0367, B:127:0x036f, B:128:0x040a, B:130:0x0412, B:131:0x041c, B:133:0x0424, B:134:0x0377, B:135:0x037b, B:137:0x0381, B:142:0x0434, B:144:0x043c, B:145:0x0448, B:146:0x044c, B:148:0x0452, B:153:0x049b, B:155:0x04a3, B:161:0x04bb, B:163:0x04c3, B:165:0x04cb, B:167:0x04d3, B:169:0x04db, B:171:0x04e3, B:173:0x04ff, B:175:0x0507, B:177:0x050f, B:180:0x04eb, B:182:0x04f3, B:186:0x051d, B:188:0x0536, B:190:0x053e, B:191:0x058d, B:192:0x0545, B:194:0x056d, B:198:0x0578, B:199:0x0583, B:205:0x059b, B:206:0x05a2, B:209:0x05e5, B:211:0x0607, B:213:0x060f, B:214:0x0652, B:218:0x0616, B:219:0x06a9, B:222:0x0637, B:226:0x0647, B:230:0x06ba, B:234:0x06c4, B:236:0x06c8, B:237:0x06ca, B:239:0x06e5, B:241:0x06ed, B:242:0x0718, B:244:0x06f6, B:232:0x0715, B:246:0x0739, B:248:0x0741, B:249:0x0750, B:252:0x075a, B:253:0x0770, B:258:0x0792, B:260:0x07a4, B:262:0x07c1, B:263:0x07b6, B:264:0x07c6, B:266:0x07ce, B:267:0x07d7, B:268:0x07e8, B:271:0x07f2, B:273:0x0804, B:277:0x0824, B:278:0x0830, B:280:0x0841, B:281:0x0854, B:282:0x0859, B:283:0x0864, B:284:0x0467, B:286:0x046f, B:287:0x047c, B:289:0x0484, B:294:0x03e6, B:296:0x03ee, B:297:0x03f8, B:299:0x0400, B:302:0x0394, B:304:0x039c, B:305:0x03ae, B:307:0x03b6, B:308:0x03c8, B:309:0x03da, B:312:0x086f, B:316:0x087b, B:317:0x0885, B:319:0x088b, B:322:0x089c, B:324:0x08a3, B:326:0x08b5, B:327:0x08bb, B:329:0x08d4, B:331:0x08dc, B:332:0x08ff, B:334:0x08e3), top: B:28:0x00e9, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:293:0x035d A[EDGE_INSN: B:293:0x035d->B:120:0x035d ?: BREAK  , SYNTHETIC] */
    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void write(com.alibaba.fastjson.serializer.JSONSerializer r71, java.lang.Object r72, java.lang.Object r73, java.lang.reflect.Type r74) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2323
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.serializer.JavaBeanSerializer.write(com.alibaba.fastjson.serializer.JSONSerializer, java.lang.Object, java.lang.Object, java.lang.reflect.Type):void");
    }

    public Map<String, Object> getFieldValuesMap(Object object) throws Exception {
        FieldSerializer[] fieldSerializerArr;
        Map<String, Object> map = new LinkedHashMap<>(this.sortedGetters.length);
        for (FieldSerializer getter : this.sortedGetters) {
            map.put(getter.fieldInfo.name, getter.getPropertyValue(object));
        }
        return map;
    }
}
