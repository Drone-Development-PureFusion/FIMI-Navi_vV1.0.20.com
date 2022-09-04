package com.umeng.commonsdk.statistics.proto;

import android.support.p001v4.app.NotificationCompat;
import com.umeng.commonsdk.proguard.AbstractC2328ak;
import com.umeng.commonsdk.proguard.AbstractC2337as;
import com.umeng.commonsdk.proguard.AbstractC2338at;
import com.umeng.commonsdk.proguard.AbstractC2339au;
import com.umeng.commonsdk.proguard.AbstractC2340av;
import com.umeng.commonsdk.proguard.AbstractC2365l;
import com.umeng.commonsdk.proguard.AbstractC2374s;
import com.umeng.commonsdk.proguard.C2317ac;
import com.umeng.commonsdk.proguard.C2320ae;
import com.umeng.commonsdk.proguard.C2323af;
import com.umeng.commonsdk.proguard.C2329al;
import com.umeng.commonsdk.proguard.C2331an;
import com.umeng.commonsdk.proguard.C2333ap;
import com.umeng.commonsdk.proguard.C2334aq;
import com.umeng.commonsdk.proguard.C2341aw;
import com.umeng.commonsdk.proguard.C2354g;
import com.umeng.commonsdk.proguard.C2362i;
import com.umeng.commonsdk.proguard.C2373r;
import com.umeng.commonsdk.proguard.C2384x;
import com.umeng.commonsdk.proguard.C2385y;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2.dex */
public class Response implements AbstractC2365l<Response, EnumC2457e>, Serializable, Cloneable {
    private static final int __RESP_CODE_ISSET_ID = 0;
    public static final Map<EnumC2457e, C2384x> metaDataMap;
    private static final long serialVersionUID = -4549277923241195391L;
    private byte __isset_bitfield;
    public C2479d imprint;
    public String msg;
    private EnumC2457e[] optionals;
    public int resp_code;
    private static final C2333ap STRUCT_DESC = new C2333ap("Response");
    private static final C2323af RESP_CODE_FIELD_DESC = new C2323af("resp_code", (byte) 8, 1);
    private static final C2323af MSG_FIELD_DESC = new C2323af(NotificationCompat.CATEGORY_MESSAGE, (byte) 11, 2);
    private static final C2323af IMPRINT_FIELD_DESC = new C2323af(C2354g.f983U, (byte) 12, 3);
    private static final Map<Class<? extends AbstractC2337as>, AbstractC2338at> schemes = new HashMap();

    static {
        schemes.put(AbstractC2339au.class, new C2454b());
        schemes.put(AbstractC2340av.class, new C2456d());
        EnumMap enumMap = new EnumMap(EnumC2457e.class);
        enumMap.put((EnumMap) EnumC2457e.RESP_CODE, (EnumC2457e) new C2384x("resp_code", (byte) 1, new C2385y((byte) 8)));
        enumMap.put((EnumMap) EnumC2457e.MSG, (EnumC2457e) new C2384x(NotificationCompat.CATEGORY_MESSAGE, (byte) 2, new C2385y((byte) 11)));
        enumMap.put((EnumMap) EnumC2457e.IMPRINT, (EnumC2457e) new C2384x(C2354g.f983U, (byte) 2, new C2317ac((byte) 12, C2479d.class)));
        metaDataMap = Collections.unmodifiableMap(enumMap);
        C2384x.m526a(Response.class, metaDataMap);
    }

    /* renamed from: com.umeng.commonsdk.statistics.proto.Response$e */
    /* loaded from: classes2.dex */
    public enum EnumC2457e implements AbstractC2374s {
        RESP_CODE(1, "resp_code"),
        MSG(2, NotificationCompat.CATEGORY_MESSAGE),
        IMPRINT(3, C2354g.f983U);
        

        /* renamed from: d */
        private static final Map<String, EnumC2457e> f1358d = new HashMap();

        /* renamed from: e */
        private final short f1360e;

        /* renamed from: f */
        private final String f1361f;

        static {
            Iterator it = EnumSet.allOf(EnumC2457e.class).iterator();
            while (it.hasNext()) {
                EnumC2457e enumC2457e = (EnumC2457e) it.next();
                f1358d.put(enumC2457e.mo38b(), enumC2457e);
            }
        }

        /* renamed from: a */
        public static EnumC2457e m222a(int i) {
            switch (i) {
                case 1:
                    return RESP_CODE;
                case 2:
                    return MSG;
                case 3:
                    return IMPRINT;
                default:
                    return null;
            }
        }

        /* renamed from: b */
        public static EnumC2457e m220b(int i) {
            EnumC2457e m222a = m222a(i);
            if (m222a == null) {
                throw new IllegalArgumentException("Field " + i + " doesn't exist!");
            }
            return m222a;
        }

        /* renamed from: a */
        public static EnumC2457e m221a(String str) {
            return f1358d.get(str);
        }

        EnumC2457e(short s, String str) {
            this.f1360e = s;
            this.f1361f = str;
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2374s
        /* renamed from: a */
        public short mo41a() {
            return this.f1360e;
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2374s
        /* renamed from: b */
        public String mo38b() {
            return this.f1361f;
        }
    }

    public Response() {
        this.__isset_bitfield = (byte) 0;
        this.optionals = new EnumC2457e[]{EnumC2457e.MSG, EnumC2457e.IMPRINT};
    }

    public Response(int i) {
        this();
        this.resp_code = i;
        setResp_codeIsSet(true);
    }

    public Response(Response response) {
        this.__isset_bitfield = (byte) 0;
        this.optionals = new EnumC2457e[]{EnumC2457e.MSG, EnumC2457e.IMPRINT};
        this.__isset_bitfield = response.__isset_bitfield;
        this.resp_code = response.resp_code;
        if (response.isSetMsg()) {
            this.msg = response.msg;
        }
        if (response.isSetImprint()) {
            this.imprint = new C2479d(response.imprint);
        }
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    public AbstractC2365l<Response, EnumC2457e> deepCopy() {
        return new Response(this);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    public void clear() {
        setResp_codeIsSet(false);
        this.resp_code = 0;
        this.msg = null;
        this.imprint = null;
    }

    public int getResp_code() {
        return this.resp_code;
    }

    public Response setResp_code(int i) {
        this.resp_code = i;
        setResp_codeIsSet(true);
        return this;
    }

    public void unsetResp_code() {
        this.__isset_bitfield = C2362i.m608b(this.__isset_bitfield, 0);
    }

    public boolean isSetResp_code() {
        return C2362i.m620a(this.__isset_bitfield, 0);
    }

    public void setResp_codeIsSet(boolean z) {
        this.__isset_bitfield = C2362i.m619a(this.__isset_bitfield, 0, z);
    }

    public String getMsg() {
        return this.msg;
    }

    public Response setMsg(String str) {
        this.msg = str;
        return this;
    }

    public void unsetMsg() {
        this.msg = null;
    }

    public boolean isSetMsg() {
        return this.msg != null;
    }

    public void setMsgIsSet(boolean z) {
        if (!z) {
            this.msg = null;
        }
    }

    public C2479d getImprint() {
        return this.imprint;
    }

    public Response setImprint(C2479d c2479d) {
        this.imprint = c2479d;
        return this;
    }

    public void unsetImprint() {
        this.imprint = null;
    }

    public boolean isSetImprint() {
        return this.imprint != null;
    }

    public void setImprintIsSet(boolean z) {
        if (!z) {
            this.imprint = null;
        }
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    public EnumC2457e fieldForId(int i) {
        return EnumC2457e.m222a(i);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    public void read(AbstractC2328ak abstractC2328ak) throws C2373r {
        schemes.get(abstractC2328ak.mo732D()).mo42b().mo45b(abstractC2328ak, this);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    public void write(AbstractC2328ak abstractC2328ak) throws C2373r {
        schemes.get(abstractC2328ak.mo732D()).mo42b().mo47a(abstractC2328ak, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Response(");
        sb.append("resp_code:");
        sb.append(this.resp_code);
        if (isSetMsg()) {
            sb.append(", ");
            sb.append("msg:");
            if (this.msg == null) {
                sb.append("null");
            } else {
                sb.append(this.msg);
            }
        }
        if (isSetImprint()) {
            sb.append(", ");
            sb.append("imprint:");
            if (this.imprint == null) {
                sb.append("null");
            } else {
                sb.append(this.imprint);
            }
        }
        sb.append(")");
        return sb.toString();
    }

    public void validate() throws C2373r {
        if (this.imprint != null) {
            this.imprint.m88l();
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new C2320ae(new C2341aw(objectOutputStream)));
        } catch (C2373r e) {
            throw new IOException(e.getMessage());
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.__isset_bitfield = (byte) 0;
            read(new C2320ae(new C2341aw(objectInputStream)));
        } catch (C2373r e) {
            throw new IOException(e.getMessage());
        }
    }

    /* renamed from: com.umeng.commonsdk.statistics.proto.Response$b */
    /* loaded from: classes2.dex */
    private static class C2454b implements AbstractC2338at {
        private C2454b() {
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2338at
        /* renamed from: a */
        public C2453a mo42b() {
            return new C2453a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.umeng.commonsdk.statistics.proto.Response$a */
    /* loaded from: classes2.dex */
    public static class C2453a extends AbstractC2339au<Response> {
        private C2453a() {
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2337as
        /* renamed from: a */
        public void mo45b(AbstractC2328ak abstractC2328ak, Response response) throws C2373r {
            abstractC2328ak.mo754j();
            while (true) {
                C2323af mo752l = abstractC2328ak.mo752l();
                if (mo752l.f893b != 0) {
                    switch (mo752l.f894c) {
                        case 1:
                            if (mo752l.f893b == 8) {
                                response.resp_code = abstractC2328ak.mo741w();
                                response.setResp_codeIsSet(true);
                                break;
                            } else {
                                C2331an.m735a(abstractC2328ak, mo752l.f893b);
                                break;
                            }
                        case 2:
                            if (mo752l.f893b == 11) {
                                response.msg = abstractC2328ak.mo738z();
                                response.setMsgIsSet(true);
                                break;
                            } else {
                                C2331an.m735a(abstractC2328ak, mo752l.f893b);
                                break;
                            }
                        case 3:
                            if (mo752l.f893b == 12) {
                                response.imprint = new C2479d();
                                response.imprint.read(abstractC2328ak);
                                response.setImprintIsSet(true);
                                break;
                            } else {
                                C2331an.m735a(abstractC2328ak, mo752l.f893b);
                                break;
                            }
                        default:
                            C2331an.m735a(abstractC2328ak, mo752l.f893b);
                            break;
                    }
                    abstractC2328ak.mo751m();
                } else {
                    abstractC2328ak.mo753k();
                    if (!response.isSetResp_code()) {
                        throw new C2329al("Required field 'resp_code' was not found in serialized data! Struct: " + toString());
                    }
                    response.validate();
                    return;
                }
            }
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2337as
        /* renamed from: b */
        public void mo47a(AbstractC2328ak abstractC2328ak, Response response) throws C2373r {
            response.validate();
            abstractC2328ak.mo767a(Response.STRUCT_DESC);
            abstractC2328ak.mo772a(Response.RESP_CODE_FIELD_DESC);
            abstractC2328ak.mo774a(response.resp_code);
            abstractC2328ak.mo761c();
            if (response.msg != null && response.isSetMsg()) {
                abstractC2328ak.mo772a(Response.MSG_FIELD_DESC);
                abstractC2328ak.mo766a(response.msg);
                abstractC2328ak.mo761c();
            }
            if (response.imprint != null && response.isSetImprint()) {
                abstractC2328ak.mo772a(Response.IMPRINT_FIELD_DESC);
                response.imprint.write(abstractC2328ak);
                abstractC2328ak.mo761c();
            }
            abstractC2328ak.mo760d();
            abstractC2328ak.mo762b();
        }
    }

    /* renamed from: com.umeng.commonsdk.statistics.proto.Response$d */
    /* loaded from: classes2.dex */
    private static class C2456d implements AbstractC2338at {
        private C2456d() {
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2338at
        /* renamed from: a */
        public C2455c mo42b() {
            return new C2455c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.umeng.commonsdk.statistics.proto.Response$c */
    /* loaded from: classes2.dex */
    public static class C2455c extends AbstractC2340av<Response> {
        private C2455c() {
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2337as
        /* renamed from: a */
        public void mo47a(AbstractC2328ak abstractC2328ak, Response response) throws C2373r {
            C2334aq c2334aq = (C2334aq) abstractC2328ak;
            c2334aq.a(response.resp_code);
            BitSet bitSet = new BitSet();
            if (response.isSetMsg()) {
                bitSet.set(0);
            }
            if (response.isSetImprint()) {
                bitSet.set(1);
            }
            c2334aq.m731a(bitSet, 2);
            if (response.isSetMsg()) {
                c2334aq.a(response.msg);
            }
            if (response.isSetImprint()) {
                response.imprint.write(c2334aq);
            }
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2337as
        /* renamed from: b */
        public void mo45b(AbstractC2328ak abstractC2328ak, Response response) throws C2373r {
            C2334aq c2334aq = (C2334aq) abstractC2328ak;
            response.resp_code = c2334aq.w();
            response.setResp_codeIsSet(true);
            BitSet m729b = c2334aq.m729b(2);
            if (m729b.get(0)) {
                response.msg = c2334aq.z();
                response.setMsgIsSet(true);
            }
            if (m729b.get(1)) {
                response.imprint = new C2479d();
                response.imprint.read(c2334aq);
                response.setImprintIsSet(true);
            }
        }
    }
}
