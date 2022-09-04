package com.umeng.analytics.pro;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.text.TextUtils;
import android.util.Base64;
import com.umeng.analytics.pro.C2217c;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: UMStoreManager.java */
/* renamed from: com.umeng.analytics.pro.g */
/* loaded from: classes2.dex */
public class C2238g {

    /* renamed from: a */
    public static final int f544a = 2049;

    /* renamed from: b */
    public static final int f545b = 2050;

    /* renamed from: c */
    private static Context f546c = null;

    /* renamed from: d */
    private static String f547d = null;

    /* renamed from: e */
    private static final String f548e = "umeng+";

    /* renamed from: f */
    private static final String f549f = "ek__id";

    /* renamed from: g */
    private static final String f550g = "ek_key";

    /* renamed from: h */
    private List<String> f551h;

    /* renamed from: i */
    private List<Integer> f552i;

    /* renamed from: j */
    private String f553j;

    /* compiled from: UMStoreManager.java */
    /* renamed from: com.umeng.analytics.pro.g$a */
    /* loaded from: classes2.dex */
    public enum EnumC2240a {
        AUTOPAGE,
        PAGE,
        BEGIN,
        END,
        NEWSESSION
    }

    /* renamed from: a */
    public void m1179a(int i) {
        SQLiteDatabase sQLiteDatabase = null;
        try {
            try {
                sQLiteDatabase = C2234e.m1189a(f546c).m1190a();
                sQLiteDatabase.beginTransaction();
                if (i == 0) {
                    sQLiteDatabase.execSQL("delete from __dp where __ty=0");
                } else if (i == 4) {
                    sQLiteDatabase.execSQL("delete from __dp where __ty=3");
                    sQLiteDatabase.execSQL("delete from __dp where __ty=2");
                } else if (i == 1) {
                    sQLiteDatabase.execSQL("delete from __dp where __ty=1");
                }
                sQLiteDatabase.setTransactionSuccessful();
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable th) {
                    }
                }
                C2234e.m1189a(f546c).m1188b();
            } catch (Throwable th2) {
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable th3) {
                    }
                }
                C2234e.m1189a(f546c).m1188b();
                throw th2;
            }
        } catch (SQLiteDatabaseCorruptException e) {
            C2237f.m1186a(f546c);
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.endTransaction();
                } catch (Throwable th4) {
                }
            }
            C2234e.m1189a(f546c).m1188b();
        } catch (Throwable th5) {
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.endTransaction();
                } catch (Throwable th6) {
                }
            }
            C2234e.m1189a(f546c).m1188b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: UMStoreManager.java */
    /* renamed from: com.umeng.analytics.pro.g$b */
    /* loaded from: classes2.dex */
    public static class C2241b {

        /* renamed from: a */
        private static final C2238g f560a = new C2238g();

        private C2241b() {
        }
    }

    private C2238g() {
        this.f551h = new ArrayList();
        this.f552i = new ArrayList();
        this.f553j = null;
    }

    /* renamed from: a */
    public static C2238g m1178a(Context context) {
        C2238g c2238g = C2241b.f560a;
        if (f546c == null && context != null) {
            f546c = context.getApplicationContext();
            c2238g.m1156h();
        }
        return c2238g;
    }

    /* renamed from: h */
    private void m1156h() {
        synchronized (this) {
            m1155i();
            this.f551h.clear();
        }
    }

    /* renamed from: a */
    public void m1180a() {
        this.f551h.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public void m1171a(JSONObject jSONObject, int i) {
        SQLiteDatabase sQLiteDatabase = null;
        try {
            try {
                sQLiteDatabase = C2234e.m1189a(f546c).m1190a();
                sQLiteDatabase.beginTransaction();
                ContentValues contentValues = new ContentValues();
                String optString = jSONObject.optString("__ii");
                contentValues.put(C2217c.C2218a.C2219a.f487a, Long.valueOf(System.currentTimeMillis() - 10000));
                if (TextUtils.isEmpty(optString)) {
                    optString = "-1";
                }
                contentValues.put("__ii", optString);
                jSONObject.remove("__ii");
                contentValues.put(C2217c.C2218a.C2219a.f489c, m1177a(jSONObject.toString()));
                contentValues.put(C2217c.C2218a.C2219a.f490d, Integer.valueOf(i));
                contentValues.put(C2217c.C2218a.C2219a.f491e, DeviceConfig.getAppVersionCode(f546c));
                sQLiteDatabase.insert(C2217c.C2218a.f486a, null, contentValues);
                sQLiteDatabase.setTransactionSuccessful();
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable th) {
                    }
                }
                C2234e m1189a = C2234e.m1189a(f546c);
                m1189a.m1188b();
                sQLiteDatabase = m1189a;
            } catch (Throwable th2) {
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable th3) {
                    }
                }
                C2234e.m1189a(f546c).m1188b();
                throw th2;
            }
        } catch (SQLiteDatabaseCorruptException e) {
            C2237f.m1186a(f546c);
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.endTransaction();
                } catch (Throwable th4) {
                }
            }
            C2234e m1189a2 = C2234e.m1189a(f546c);
            m1189a2.m1188b();
            sQLiteDatabase = m1189a2;
        } catch (Throwable th5) {
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.endTransaction();
                } catch (Throwable th6) {
                }
            }
            C2234e.m1189a(f546c).m1188b();
        }
    }

    /* renamed from: a */
    public void m1172a(JSONArray jSONArray) {
        SQLiteDatabase sQLiteDatabase = null;
        try {
            try {
                try {
                    sQLiteDatabase = C2234e.m1189a(f546c).m1190a();
                    sQLiteDatabase.beginTransaction();
                    for (int i = 0; i < jSONArray.length(); i++) {
                        try {
                            JSONObject jSONObject = jSONArray.getJSONObject(i);
                            ContentValues contentValues = new ContentValues();
                            String optString = jSONObject.optString("__i");
                            if (TextUtils.isEmpty(optString) || "-1".equals(optString)) {
                                optString = C2259o.m1061a().m1050c();
                                if (TextUtils.isEmpty(optString)) {
                                    optString = "-1";
                                }
                            }
                            contentValues.put("__i", optString);
                            contentValues.put("__e", jSONObject.optString("id"));
                            contentValues.put("__t", Integer.valueOf(jSONObject.optInt("__t")));
                            jSONObject.remove("__i");
                            jSONObject.remove("__t");
                            contentValues.put(C2217c.C2225d.C2226a.f513c, m1177a(jSONObject.toString()));
                            sQLiteDatabase.insert(C2217c.C2225d.f510a, null, contentValues);
                        } catch (Exception e) {
                        }
                    }
                    sQLiteDatabase.setTransactionSuccessful();
                    if (sQLiteDatabase != null) {
                        try {
                            sQLiteDatabase.endTransaction();
                        } catch (Throwable th) {
                        }
                    }
                    C2234e.m1189a(f546c).m1188b();
                } catch (SQLiteDatabaseCorruptException e2) {
                    C2237f.m1186a(f546c);
                    if (sQLiteDatabase != null) {
                        try {
                            sQLiteDatabase.endTransaction();
                        } catch (Throwable th2) {
                        }
                    }
                    C2234e.m1189a(f546c).m1188b();
                }
            } catch (Throwable th3) {
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable th4) {
                    }
                }
                C2234e.m1189a(f546c).m1188b();
                throw th3;
            }
        } catch (Throwable th5) {
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.endTransaction();
                } catch (Throwable th6) {
                }
            }
            C2234e.m1189a(f546c).m1188b();
        }
    }

    /* renamed from: a */
    public boolean m1176a(String str, String str2, int i) {
        SQLiteDatabase sQLiteDatabase = null;
        try {
            try {
                sQLiteDatabase = C2234e.m1189a(f546c).m1190a();
                sQLiteDatabase.beginTransaction();
                ContentValues contentValues = new ContentValues();
                contentValues.put("__i", str);
                String m1177a = m1177a(str2);
                if (!TextUtils.isEmpty(m1177a)) {
                    contentValues.put("__a", m1177a);
                    contentValues.put("__t", Integer.valueOf(i));
                    sQLiteDatabase.insert(C2217c.C2222c.f503a, null, contentValues);
                }
                sQLiteDatabase.setTransactionSuccessful();
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable th) {
                    }
                }
                C2234e.m1189a(f546c).m1188b();
                return false;
            } catch (SQLiteDatabaseCorruptException e) {
                C2237f.m1186a(f546c);
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable th2) {
                    }
                }
                C2234e.m1189a(f546c).m1188b();
                return false;
            } catch (Throwable th3) {
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable th4) {
                    }
                }
                C2234e.m1189a(f546c).m1188b();
                return false;
            }
        } catch (Throwable th5) {
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.endTransaction();
                } catch (Throwable th6) {
                }
            }
            C2234e.m1189a(f546c).m1188b();
            throw th5;
        }
    }

    /* renamed from: b */
    public void m1165b() {
        SQLiteDatabase sQLiteDatabase = null;
        try {
            try {
                sQLiteDatabase = C2234e.m1189a(f546c).m1190a();
                sQLiteDatabase.beginTransaction();
                String m1048d = C2259o.m1061a().m1048d();
                if (TextUtils.isEmpty(m1048d)) {
                    if (sQLiteDatabase != null) {
                        try {
                            sQLiteDatabase.endTransaction();
                        } catch (Throwable th) {
                        }
                    }
                    C2234e.m1189a(f546c).m1188b();
                    return;
                }
                String[] strArr = {"", "-1"};
                for (int i = 0; i < strArr.length; i++) {
                    sQLiteDatabase.execSQL("update __et set __i=\"" + m1048d + "\" where __i=\"" + strArr[i] + "\"");
                }
                sQLiteDatabase.setTransactionSuccessful();
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable th2) {
                    }
                }
                C2234e.m1189a(f546c).m1188b();
            } catch (SQLiteDatabaseCorruptException e) {
                C2237f.m1186a(f546c);
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable th3) {
                    }
                }
                C2234e.m1189a(f546c).m1188b();
            } catch (Throwable th4) {
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable th5) {
                    }
                }
                C2234e.m1189a(f546c).m1188b();
            }
        } catch (Throwable th6) {
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.endTransaction();
                } catch (Throwable th7) {
                }
            }
            C2234e.m1189a(f546c).m1188b();
            throw th6;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00d2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean m1173a(String str, JSONObject jSONObject, EnumC2240a enumC2240a) {
        Throwable th;
        SQLiteDatabase sQLiteDatabase;
        SQLiteDatabase sQLiteDatabase2;
        SQLiteDatabase sQLiteDatabase3 = null;
        if (jSONObject != null) {
            try {
                sQLiteDatabase2 = C2234e.m1189a(f546c).m1190a();
                try {
                    sQLiteDatabase2.beginTransaction();
                    if (enumC2240a == EnumC2240a.BEGIN) {
                        long longValue = ((Long) jSONObject.get("__e")).longValue();
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("__ii", str);
                        contentValues.put("__e", String.valueOf(longValue));
                        sQLiteDatabase2.insert(C2217c.C2228e.f519a, null, contentValues);
                    } else if (enumC2240a == EnumC2240a.END) {
                        sQLiteDatabase2.execSQL("update __sd set __f=\"" + ((Long) jSONObject.get(C2217c.C2228e.C2229a.f526g)).longValue() + "\" where __ii=\"" + str + "\"");
                    } else if (enumC2240a == EnumC2240a.PAGE) {
                        m1174a(str, jSONObject, sQLiteDatabase2, "__a");
                    } else if (enumC2240a == EnumC2240a.AUTOPAGE) {
                        m1174a(str, jSONObject, sQLiteDatabase2, C2217c.C2228e.C2229a.f522c);
                    } else if (enumC2240a == EnumC2240a.NEWSESSION) {
                        m1175a(str, jSONObject, sQLiteDatabase2);
                    }
                    sQLiteDatabase2.setTransactionSuccessful();
                    if (sQLiteDatabase2 != null) {
                        try {
                            sQLiteDatabase2.endTransaction();
                        } catch (Throwable th2) {
                        }
                    }
                    C2234e.m1189a(f546c).m1188b();
                } catch (SQLiteDatabaseCorruptException e) {
                    sQLiteDatabase3 = sQLiteDatabase2;
                    try {
                        C2237f.m1186a(f546c);
                        if (sQLiteDatabase3 != null) {
                            try {
                                sQLiteDatabase3.endTransaction();
                            } catch (Throwable th3) {
                            }
                        }
                        C2234e.m1189a(f546c).m1188b();
                        return false;
                    } catch (Throwable th4) {
                        th = th4;
                        sQLiteDatabase = sQLiteDatabase3;
                        if (sQLiteDatabase != null) {
                            try {
                                sQLiteDatabase.endTransaction();
                            } catch (Throwable th5) {
                            }
                        }
                        C2234e.m1189a(f546c).m1188b();
                        throw th;
                    }
                } catch (Throwable th6) {
                    if (sQLiteDatabase2 != null) {
                        try {
                            sQLiteDatabase2.endTransaction();
                        } catch (Throwable th7) {
                        }
                    }
                    C2234e.m1189a(f546c).m1188b();
                    return false;
                }
            } catch (SQLiteDatabaseCorruptException e2) {
            } catch (Throwable th8) {
                th = th8;
                sQLiteDatabase = null;
            }
        }
        return false;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:40)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:203)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:46)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:40)
        */
    /* renamed from: a */
    private void m1175a(java.lang.String r6, org.json.JSONObject r7, android.database.sqlite.SQLiteDatabase r8) {
        /*
            Method dump skipped, instructions count: 316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.C2238g.m1175a(java.lang.String, org.json.JSONObject, android.database.sqlite.SQLiteDatabase):void");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:40)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:203)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:46)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:40)
        */
    /* renamed from: a */
    private void m1174a(java.lang.String r5, org.json.JSONObject r6, android.database.sqlite.SQLiteDatabase r7, java.lang.String r8) throws org.json.JSONException {
        /*
            r4 = this;
            r1 = 0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lba
            r0.<init>()     // Catch: java.lang.Throwable -> Lba
            java.lang.String r2 = "select "
            java.lang.StringBuilder r0 = r0.append(r2)     // Catch: java.lang.Throwable -> Lba
            java.lang.StringBuilder r0 = r0.append(r8)     // Catch: java.lang.Throwable -> Lba
            java.lang.String r2 = " from "
            java.lang.StringBuilder r0 = r0.append(r2)     // Catch: java.lang.Throwable -> Lba
            java.lang.String r2 = "__sd"
            java.lang.StringBuilder r0 = r0.append(r2)     // Catch: java.lang.Throwable -> Lba
            java.lang.String r2 = " where "
            java.lang.StringBuilder r0 = r0.append(r2)     // Catch: java.lang.Throwable -> Lba
            java.lang.String r2 = "__ii"
            java.lang.StringBuilder r0 = r0.append(r2)     // Catch: java.lang.Throwable -> Lba
            java.lang.String r2 = "=\""
            java.lang.StringBuilder r0 = r0.append(r2)     // Catch: java.lang.Throwable -> Lba
            java.lang.StringBuilder r0 = r0.append(r5)     // Catch: java.lang.Throwable -> Lba
            java.lang.String r2 = "\""
            java.lang.StringBuilder r0 = r0.append(r2)     // Catch: java.lang.Throwable -> Lba
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> Lba
            r2 = 0
            android.database.Cursor r0 = r7.rawQuery(r0, r2)     // Catch: java.lang.Throwable -> Lba
            if (r0 == 0) goto Ld1
        L43:
            boolean r2 = r0.moveToNext()     // Catch: java.lang.Throwable -> Lcf
            if (r2 == 0) goto L56
            int r1 = r0.getColumnIndex(r8)     // Catch: java.lang.Throwable -> Lcf
            java.lang.String r1 = r0.getString(r1)     // Catch: java.lang.Throwable -> Lcf
            java.lang.String r1 = r4.m1163b(r1)     // Catch: java.lang.Throwable -> Lcf
            goto L43
        L56:
            r2 = r1
        L57:
            org.json.JSONArray r1 = new org.json.JSONArray     // Catch: java.lang.Throwable -> Lcf
            r1.<init>()     // Catch: java.lang.Throwable -> Lcf
            boolean r3 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Throwable -> Lcf
            if (r3 != 0) goto L67
            org.json.JSONArray r1 = new org.json.JSONArray     // Catch: java.lang.Throwable -> Lcf
            r1.<init>(r2)     // Catch: java.lang.Throwable -> Lcf
        L67:
            r1.put(r6)     // Catch: java.lang.Throwable -> Lcf
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> Lcf
            java.lang.String r1 = r4.m1177a(r1)     // Catch: java.lang.Throwable -> Lcf
            boolean r2 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> Lcf
            if (r2 != 0) goto Lb4
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lcf
            r2.<init>()     // Catch: java.lang.Throwable -> Lcf
            java.lang.String r3 = "update __sd set "
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch: java.lang.Throwable -> Lcf
            java.lang.StringBuilder r2 = r2.append(r8)     // Catch: java.lang.Throwable -> Lcf
            java.lang.String r3 = "=\""
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch: java.lang.Throwable -> Lcf
            java.lang.StringBuilder r1 = r2.append(r1)     // Catch: java.lang.Throwable -> Lcf
            java.lang.String r2 = "\" where "
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.lang.Throwable -> Lcf
            java.lang.String r2 = "__ii"
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.lang.Throwable -> Lcf
            java.lang.String r2 = "=\""
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.lang.Throwable -> Lcf
            java.lang.StringBuilder r1 = r1.append(r5)     // Catch: java.lang.Throwable -> Lcf
            java.lang.String r2 = "\""
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.lang.Throwable -> Lcf
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> Lcf
            r7.execSQL(r1)     // Catch: java.lang.Throwable -> Lcf
        Lb4:
            if (r0 == 0) goto Lb9
            r0.close()
        Lb9:
            return
        Lba:
            r0 = move-exception
            r0 = r1
        Lbc:
            if (r0 == 0) goto Lb9
            r0.close()
            goto Lb9
        Lc2:
            r0 = move-exception
            r2 = r0
            r3 = r1
        Lc5:
            if (r3 == 0) goto Lca
            r3.close()
        Lca:
            throw r2
        Lcb:
            r1 = move-exception
            r2 = r1
            r3 = r0
            goto Lc5
        Lcf:
            r1 = move-exception
            goto Lbc
        Ld1:
            r2 = r1
            goto L57
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.C2238g.m1174a(java.lang.String, org.json.JSONObject, android.database.sqlite.SQLiteDatabase, java.lang.String):void");
    }

    /* renamed from: a */
    public JSONObject m1168a(boolean z) {
        m1180a();
        this.f552i.clear();
        JSONObject jSONObject = new JSONObject();
        if (!z) {
            m1169a(jSONObject, z);
            m1162b(jSONObject, null);
            m1170a(jSONObject, (String) null);
        } else {
            String m1169a = m1169a(jSONObject, z);
            if (!TextUtils.isEmpty(m1169a)) {
                m1162b(jSONObject, m1169a);
                m1170a(jSONObject, m1169a);
            }
        }
        return jSONObject;
    }

    /* JADX WARN: Not initialized variable reg: 0, insn: 0x00c2: MOVE  (r4 I:??[OBJECT, ARRAY]) = (r0 I:??[OBJECT, ARRAY]), block:B:91:0x00c1 */
    /* renamed from: c */
    public JSONObject m1161c() {
        Cursor cursor;
        SQLiteDatabase sQLiteDatabase;
        Throwable th;
        Cursor cursor2;
        Cursor cursor3;
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        try {
            try {
                sQLiteDatabase = C2234e.m1189a(f546c).m1190a();
            } catch (Throwable th2) {
                th = th2;
                cursor2 = cursor3;
            }
        } catch (SQLiteDatabaseCorruptException e) {
            cursor = null;
            sQLiteDatabase = null;
        } catch (Throwable th3) {
            cursor = null;
            sQLiteDatabase = null;
        }
        try {
            sQLiteDatabase.beginTransaction();
            cursor = sQLiteDatabase.rawQuery("select *  from __dp", null);
            if (cursor != null) {
                try {
                    JSONArray jSONArray = new JSONArray();
                    JSONArray jSONArray2 = new JSONArray();
                    JSONArray jSONArray3 = new JSONArray();
                    while (cursor.moveToNext()) {
                        String string = cursor.getString(cursor.getColumnIndex(C2217c.C2218a.C2219a.f489c));
                        int i = cursor.getInt(cursor.getColumnIndex(C2217c.C2218a.C2219a.f490d));
                        if (!TextUtils.isEmpty(string) && (jSONObject = new JSONObject(m1163b(string))) != null && jSONObject.length() > 0) {
                            if (i == 2) {
                                jSONArray2.put(jSONObject);
                            } else if (i == 3) {
                                jSONArray2.put(jSONObject);
                            } else if (i == 0) {
                                jSONArray.put(jSONObject);
                            } else if (i == 1) {
                                jSONArray3.put(jSONObject);
                            }
                        }
                        if (jSONArray.length() > 0) {
                            jSONObject2.put(C2216b.f431Y, jSONArray);
                        }
                        if (jSONArray2.length() > 0) {
                            jSONObject2.put(C2216b.f436ac, jSONArray2);
                        }
                        if (jSONArray3.length() > 0) {
                            jSONObject2.put(C2216b.f441ah, jSONArray3);
                        }
                    }
                } catch (SQLiteDatabaseCorruptException e2) {
                    C2237f.m1186a(f546c);
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (sQLiteDatabase != null) {
                        try {
                            sQLiteDatabase.endTransaction();
                        } catch (Throwable th4) {
                        }
                    }
                    C2234e.m1189a(f546c).m1188b();
                    return jSONObject2;
                } catch (Throwable th5) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (sQLiteDatabase != null) {
                        try {
                            sQLiteDatabase.endTransaction();
                        } catch (Throwable th6) {
                        }
                    }
                    C2234e.m1189a(f546c).m1188b();
                    return jSONObject2;
                }
            }
            sQLiteDatabase.setTransactionSuccessful();
            if (cursor != null) {
                cursor.close();
            }
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.endTransaction();
                } catch (Throwable th7) {
                }
            }
            C2234e.m1189a(f546c).m1188b();
        } catch (SQLiteDatabaseCorruptException e3) {
            cursor = null;
        } catch (Throwable th8) {
            th = th8;
            cursor2 = null;
            if (cursor2 != null) {
                cursor2.close();
            }
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.endTransaction();
                } catch (Throwable th9) {
                }
            }
            C2234e.m1189a(f546c).m1188b();
            throw th;
        }
        return jSONObject2;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0115 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m1170a(JSONObject jSONObject, String str) {
        Throwable th;
        Cursor cursor;
        SQLiteDatabase sQLiteDatabase;
        Cursor cursor2;
        Cursor cursor3;
        try {
            sQLiteDatabase = C2234e.m1189a(f546c).m1190a();
            try {
                sQLiteDatabase.beginTransaction();
                String str2 = "select *  from __et";
                if (!TextUtils.isEmpty(str)) {
                    str2 = "select *  from __et where __i=\"" + str + "\"";
                }
                Cursor rawQuery = sQLiteDatabase.rawQuery(str2, null);
                if (rawQuery != null) {
                    try {
                        JSONObject jSONObject2 = new JSONObject();
                        JSONObject jSONObject3 = new JSONObject();
                        String m1050c = C2259o.m1061a().m1050c();
                        while (rawQuery.moveToNext()) {
                            int i = rawQuery.getInt(rawQuery.getColumnIndex("__t"));
                            String string = rawQuery.getString(rawQuery.getColumnIndex("__i"));
                            String string2 = rawQuery.getString(rawQuery.getColumnIndex(C2217c.C2225d.C2226a.f513c));
                            if (TextUtils.isEmpty(string) || "-1".equals(string)) {
                                if (!TextUtils.isEmpty(m1050c)) {
                                    string = m1050c;
                                }
                            }
                            this.f552i.add(Integer.valueOf(rawQuery.getInt(0)));
                            switch (i) {
                                case f544a /* 2049 */:
                                    if (!TextUtils.isEmpty(string2)) {
                                        JSONObject jSONObject4 = new JSONObject(m1163b(string2));
                                        JSONArray optJSONArray = jSONObject2.has(string) ? jSONObject2.optJSONArray(string) : new JSONArray();
                                        optJSONArray.put(jSONObject4);
                                        jSONObject2.put(string, optJSONArray);
                                        break;
                                    } else {
                                        continue;
                                    }
                                case f545b /* 2050 */:
                                    if (!TextUtils.isEmpty(string2)) {
                                        JSONObject jSONObject5 = new JSONObject(m1163b(string2));
                                        JSONArray optJSONArray2 = jSONObject3.has(string) ? jSONObject3.optJSONArray(string) : new JSONArray();
                                        optJSONArray2.put(jSONObject5);
                                        jSONObject3.put(string, optJSONArray2);
                                        break;
                                    } else {
                                        continue;
                                    }
                                default:
                                    continue;
                            }
                        }
                        if (jSONObject2.length() > 0) {
                            JSONArray jSONArray = new JSONArray();
                            Iterator<String> keys = jSONObject2.keys();
                            while (keys.hasNext()) {
                                JSONObject jSONObject6 = new JSONObject();
                                String next = keys.next();
                                jSONObject6.put(next, new JSONArray(jSONObject2.optString(next)));
                                if (jSONObject6.length() > 0) {
                                    jSONArray.put(jSONObject6);
                                }
                            }
                            if (jSONArray.length() > 0) {
                                jSONObject.put(C2216b.f420N, jSONArray);
                            }
                        }
                        if (jSONObject3.length() > 0) {
                            JSONArray jSONArray2 = new JSONArray();
                            Iterator<String> keys2 = jSONObject3.keys();
                            while (keys2.hasNext()) {
                                JSONObject jSONObject7 = new JSONObject();
                                String next2 = keys2.next();
                                jSONObject7.put(next2, new JSONArray(jSONObject3.optString(next2)));
                                if (jSONObject7.length() > 0) {
                                    jSONArray2.put(jSONObject7);
                                }
                            }
                            if (jSONArray2.length() > 0) {
                                jSONObject.put(C2216b.f421O, jSONArray2);
                            }
                        }
                    } catch (SQLiteDatabaseCorruptException e) {
                        cursor3 = rawQuery;
                        try {
                            C2237f.m1186a(f546c);
                            if (cursor3 != null) {
                                cursor3.close();
                            }
                            if (sQLiteDatabase != null) {
                                try {
                                    sQLiteDatabase.endTransaction();
                                } catch (Throwable th2) {
                                }
                            }
                            C2234e.m1189a(f546c).m1188b();
                            return;
                        } catch (Throwable th3) {
                            th = th3;
                            cursor = cursor3;
                            if (cursor != null) {
                                cursor.close();
                            }
                            if (sQLiteDatabase != null) {
                                try {
                                    sQLiteDatabase.endTransaction();
                                } catch (Throwable th4) {
                                }
                            }
                            C2234e.m1189a(f546c).m1188b();
                            throw th;
                        }
                    } catch (Throwable th5) {
                        cursor2 = rawQuery;
                        if (cursor2 != null) {
                            cursor2.close();
                        }
                        if (sQLiteDatabase != null) {
                            try {
                                sQLiteDatabase.endTransaction();
                            } catch (Throwable th6) {
                            }
                        }
                        C2234e.m1189a(f546c).m1188b();
                        return;
                    }
                }
                sQLiteDatabase.setTransactionSuccessful();
                if (rawQuery != null) {
                    rawQuery.close();
                }
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable th7) {
                    }
                }
                C2234e.m1189a(f546c).m1188b();
            } catch (SQLiteDatabaseCorruptException e2) {
                cursor3 = null;
            } catch (Throwable th8) {
                th = th8;
                cursor = null;
            }
        } catch (SQLiteDatabaseCorruptException e3) {
            cursor3 = null;
            sQLiteDatabase = null;
        } catch (Throwable th9) {
            th = th9;
            cursor = null;
            sQLiteDatabase = null;
        }
    }

    /* JADX WARN: Not initialized variable reg: 0, insn: 0x00d7: MOVE  (r4 I:??[OBJECT, ARRAY]) = (r0 I:??[OBJECT, ARRAY]), block:B:76:0x00d6 */
    /* renamed from: b */
    private void m1162b(JSONObject jSONObject, String str) {
        Cursor cursor;
        SQLiteDatabase sQLiteDatabase;
        Throwable th;
        Cursor cursor2;
        Cursor cursor3;
        try {
            try {
                sQLiteDatabase = C2234e.m1189a(f546c).m1190a();
            } catch (Throwable th2) {
                th = th2;
                cursor2 = cursor3;
            }
        } catch (SQLiteDatabaseCorruptException e) {
            cursor = null;
            sQLiteDatabase = null;
        } catch (Throwable th3) {
            cursor = null;
            sQLiteDatabase = null;
        }
        try {
            sQLiteDatabase.beginTransaction();
            String str2 = "select *  from __er";
            if (!TextUtils.isEmpty(str)) {
                str2 = "select *  from __er where __i=\"" + str + "\"";
            }
            cursor = sQLiteDatabase.rawQuery(str2, null);
            if (cursor != null) {
                try {
                    JSONArray jSONArray = new JSONArray();
                    while (cursor.moveToNext()) {
                        String string = cursor.getString(cursor.getColumnIndex("__a"));
                        if (!TextUtils.isEmpty(string)) {
                            jSONArray.put(new JSONObject(m1163b(string)));
                        }
                    }
                    if (jSONArray.length() > 0) {
                        jSONObject.put("error", jSONArray);
                    }
                } catch (SQLiteDatabaseCorruptException e2) {
                    C2237f.m1186a(f546c);
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (sQLiteDatabase != null) {
                        try {
                            sQLiteDatabase.endTransaction();
                        } catch (Throwable th4) {
                        }
                    }
                    C2234e.m1189a(f546c).m1188b();
                    return;
                } catch (Throwable th5) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (sQLiteDatabase != null) {
                        try {
                            sQLiteDatabase.endTransaction();
                        } catch (Throwable th6) {
                        }
                    }
                    C2234e.m1189a(f546c).m1188b();
                    return;
                }
            }
            sQLiteDatabase.setTransactionSuccessful();
            if (cursor != null) {
                cursor.close();
            }
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.endTransaction();
                } catch (Throwable th7) {
                }
            }
            C2234e.m1189a(f546c).m1188b();
        } catch (SQLiteDatabaseCorruptException e3) {
            cursor = null;
        } catch (Throwable th8) {
            th = th8;
            cursor2 = null;
            if (cursor2 != null) {
                cursor2.close();
            }
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.endTransaction();
                } catch (Throwable th9) {
                }
            }
            C2234e.m1189a(f546c).m1188b();
            throw th;
        }
    }

    /* renamed from: a */
    private String m1169a(JSONObject jSONObject, boolean z) {
        SQLiteDatabase sQLiteDatabase = null;
        Cursor cursor = null;
        String str = null;
        try {
            try {
                sQLiteDatabase = C2234e.m1189a(f546c).m1190a();
                sQLiteDatabase.beginTransaction();
                cursor = sQLiteDatabase.rawQuery("select *  from __sd", null);
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable th2) {
                    }
                }
                C2234e.m1189a(f546c).m1188b();
                throw th;
            }
        } catch (SQLiteDatabaseCorruptException e) {
            C2237f.m1186a(f546c);
            if (cursor != null) {
                cursor.close();
            }
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.endTransaction();
                } catch (Throwable th3) {
                }
            }
            C2234e.m1189a(f546c).m1188b();
        } catch (Throwable th4) {
            if (cursor != null) {
                cursor.close();
            }
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.endTransaction();
                } catch (Throwable th5) {
                }
            }
            C2234e.m1189a(f546c).m1188b();
        }
        if (cursor != null) {
            JSONArray jSONArray = new JSONArray();
            while (cursor.moveToNext()) {
                JSONObject jSONObject2 = new JSONObject();
                String string = cursor.getString(cursor.getColumnIndex(C2217c.C2228e.C2229a.f526g));
                String string2 = cursor.getString(cursor.getColumnIndex("__e"));
                str = cursor.getString(cursor.getColumnIndex("__ii"));
                if (!TextUtils.isEmpty(string) && !TextUtils.isEmpty(string2)) {
                    if (Long.parseLong(string) - Long.parseLong(string2) > 0) {
                        String string3 = cursor.getString(cursor.getColumnIndex("__a"));
                        String string4 = cursor.getString(cursor.getColumnIndex(C2217c.C2228e.C2229a.f522c));
                        String string5 = cursor.getString(cursor.getColumnIndex(C2217c.C2228e.C2229a.f523d));
                        String string6 = cursor.getString(cursor.getColumnIndex(C2217c.C2228e.C2229a.f524e));
                        this.f551h.add(str);
                        jSONObject2.put("id", str);
                        jSONObject2.put(C2216b.f469p, string2);
                        jSONObject2.put(C2216b.f470q, string);
                        jSONObject2.put("duration", Long.parseLong(string) - Long.parseLong(string2));
                        if (!TextUtils.isEmpty(string3)) {
                            jSONObject2.put(C2216b.f472s, new JSONArray(m1163b(string3)));
                        }
                        if (!TextUtils.isEmpty(string4)) {
                            jSONObject2.put(C2216b.f473t, new JSONArray(m1163b(string4)));
                        }
                        if (!TextUtils.isEmpty(string5)) {
                            jSONObject2.put(C2216b.f407A, new JSONObject(m1163b(string5)));
                        }
                        if (!TextUtils.isEmpty(string6)) {
                            jSONObject2.put(C2216b.f476w, new JSONArray(m1163b(string6)));
                        }
                        if (jSONObject2.length() > 0) {
                            jSONArray.put(jSONObject2);
                        }
                    }
                    if (z) {
                        break;
                    }
                }
            }
            if (this.f551h.size() < 1) {
                if (cursor != null) {
                    cursor.close();
                }
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable th6) {
                    }
                }
                C2234e.m1189a(f546c).m1188b();
                return str;
            } else if (jSONArray.length() > 0) {
                jSONObject.put(C2216b.f467n, jSONArray);
            }
        }
        sQLiteDatabase.setTransactionSuccessful();
        if (cursor != null) {
            cursor.close();
        }
        if (sQLiteDatabase != null) {
            try {
                sQLiteDatabase.endTransaction();
            } catch (Throwable th7) {
            }
        }
        C2234e.m1189a(f546c).m1188b();
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0090 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m1166a(boolean z, boolean z2) {
        SQLiteDatabase sQLiteDatabase;
        Throwable th;
        SQLiteDatabase sQLiteDatabase2;
        SQLiteDatabase sQLiteDatabase3 = null;
        try {
            sQLiteDatabase = C2234e.m1189a(f546c).m1190a();
            try {
                sQLiteDatabase.beginTransaction();
                if (z2) {
                    if (z) {
                        sQLiteDatabase.execSQL("delete from __sd");
                    }
                } else if (this.f551h.size() > 0) {
                    int i = 0;
                    while (true) {
                        int i2 = i;
                        if (i2 >= this.f551h.size()) {
                            break;
                        }
                        sQLiteDatabase.execSQL("delete from __sd where __ii=\"" + this.f551h.get(i2) + "\"");
                        i = i2 + 1;
                    }
                }
                sQLiteDatabase.setTransactionSuccessful();
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable th2) {
                    }
                }
                C2234e.m1189a(f546c).m1188b();
            } catch (SQLiteDatabaseCorruptException e) {
                sQLiteDatabase3 = sQLiteDatabase;
                try {
                    C2237f.m1186a(f546c);
                    if (sQLiteDatabase3 != null) {
                        try {
                            sQLiteDatabase3.endTransaction();
                        } catch (Throwable th3) {
                        }
                    }
                    C2234e.m1189a(f546c).m1188b();
                } catch (Throwable th4) {
                    th = th4;
                    sQLiteDatabase2 = sQLiteDatabase3;
                    if (sQLiteDatabase2 != null) {
                        try {
                            sQLiteDatabase2.endTransaction();
                        } catch (Throwable th5) {
                        }
                    }
                    C2234e.m1189a(f546c).m1188b();
                    throw th;
                }
            } catch (Throwable th6) {
                th = th6;
                sQLiteDatabase2 = sQLiteDatabase;
                if (sQLiteDatabase2 != null) {
                }
                C2234e.m1189a(f546c).m1188b();
                throw th;
            }
        } catch (SQLiteDatabaseCorruptException e2) {
        } catch (Throwable th7) {
            sQLiteDatabase = null;
        }
    }

    /* renamed from: d */
    public void m1160d() {
        SQLiteDatabase sQLiteDatabase = null;
        try {
            try {
                sQLiteDatabase = C2234e.m1189a(f546c).m1190a();
                sQLiteDatabase.beginTransaction();
                if (this.f552i.size() > 0) {
                    for (int i = 0; i < this.f552i.size(); i++) {
                        sQLiteDatabase.execSQL("delete from __et where rowid=" + this.f552i.get(i));
                    }
                }
                this.f552i.clear();
                sQLiteDatabase.setTransactionSuccessful();
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable th) {
                    }
                }
                C2234e.m1189a(f546c).m1188b();
            } catch (SQLiteDatabaseCorruptException e) {
                C2237f.m1186a(f546c);
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable th2) {
                    }
                }
                C2234e.m1189a(f546c).m1188b();
            } catch (Throwable th3) {
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable th4) {
                    }
                }
                C2234e.m1189a(f546c).m1188b();
            }
        } catch (Throwable th5) {
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.endTransaction();
                } catch (Throwable th6) {
                }
            }
            C2234e.m1189a(f546c).m1188b();
            throw th5;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: e */
    public void m1159e() {
        SQLiteDatabase sQLiteDatabase = null;
        try {
            try {
                sQLiteDatabase = C2234e.m1189a(f546c).m1190a();
                sQLiteDatabase.beginTransaction();
                sQLiteDatabase.execSQL("delete from __er");
                sQLiteDatabase.setTransactionSuccessful();
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable th) {
                    }
                }
                C2234e m1189a = C2234e.m1189a(f546c);
                m1189a.m1188b();
                sQLiteDatabase = m1189a;
            } catch (SQLiteDatabaseCorruptException e) {
                C2237f.m1186a(f546c);
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable th2) {
                    }
                }
                C2234e m1189a2 = C2234e.m1189a(f546c);
                m1189a2.m1188b();
                sQLiteDatabase = m1189a2;
            } catch (Throwable th3) {
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable th4) {
                    }
                }
                C2234e.m1189a(f546c).m1188b();
            }
        } catch (Throwable th5) {
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.endTransaction();
                } catch (Throwable th6) {
                }
            }
            C2234e.m1189a(f546c).m1188b();
            throw th5;
        }
    }

    /* renamed from: f */
    public void m1158f() {
        m1164b(-1);
    }

    /* renamed from: b */
    public void m1164b(int i) {
        SQLiteDatabase sQLiteDatabase = null;
        try {
            try {
                sQLiteDatabase = C2234e.m1189a(f546c).m1190a();
                sQLiteDatabase.beginTransaction();
                if (i == -1) {
                    sQLiteDatabase.execSQL("delete from __dp");
                } else if (i == 1) {
                    sQLiteDatabase.execSQL("delete from __dp where __ty=1");
                } else if (i == 4) {
                    sQLiteDatabase.execSQL("delete from __dp where __ty=3");
                    sQLiteDatabase.execSQL("delete from __dp where __ty=2");
                } else if (i == 3) {
                    sQLiteDatabase.execSQL("delete from __dp where __ty=3");
                } else if (i == 0) {
                    sQLiteDatabase.execSQL("delete from __dp where __ty=0");
                } else if (i == 2) {
                    sQLiteDatabase.execSQL("delete from __dp where __ty=2");
                }
                sQLiteDatabase.setTransactionSuccessful();
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable th) {
                    }
                }
                C2234e.m1189a(f546c).m1188b();
            } catch (SQLiteDatabaseCorruptException e) {
                C2237f.m1186a(f546c);
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable th2) {
                    }
                }
                C2234e.m1189a(f546c).m1188b();
            } catch (Throwable th3) {
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable th4) {
                    }
                }
                C2234e.m1189a(f546c).m1188b();
            }
        } catch (Throwable th5) {
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.endTransaction();
                } catch (Throwable th6) {
                }
            }
            C2234e.m1189a(f546c).m1188b();
            throw th5;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v27 */
    /* renamed from: g */
    public void m1157g() {
        Throwable th;
        SQLiteDatabase sQLiteDatabase;
        SQLiteDatabase sQLiteDatabase2;
        ?? isEmpty = TextUtils.isEmpty(this.f553j);
        try {
            if (isEmpty == 0) {
                try {
                    sQLiteDatabase2 = C2234e.m1189a(f546c).m1190a();
                    try {
                        sQLiteDatabase2.beginTransaction();
                        sQLiteDatabase2.execSQL("delete from __er where __i=\"" + this.f553j + "\"");
                        sQLiteDatabase2.execSQL("delete from __et where __i=\"" + this.f553j + "\"");
                        sQLiteDatabase2.setTransactionSuccessful();
                        if (sQLiteDatabase2 != null) {
                            try {
                                sQLiteDatabase2.endTransaction();
                            } catch (Throwable th2) {
                            }
                        }
                        C2234e m1189a = C2234e.m1189a(f546c);
                        m1189a.m1188b();
                        isEmpty = m1189a;
                    } catch (SQLiteDatabaseCorruptException e) {
                        C2237f.m1186a(f546c);
                        if (sQLiteDatabase2 != null) {
                            try {
                                sQLiteDatabase2.endTransaction();
                            } catch (Throwable th3) {
                            }
                        }
                        C2234e m1189a2 = C2234e.m1189a(f546c);
                        m1189a2.m1188b();
                        isEmpty = m1189a2;
                        this.f553j = null;
                    } catch (Throwable th4) {
                        if (sQLiteDatabase2 != null) {
                            try {
                                sQLiteDatabase2.endTransaction();
                            } catch (Throwable th5) {
                            }
                        }
                        C2234e.m1189a(f546c).m1188b();
                        this.f553j = null;
                    }
                } catch (SQLiteDatabaseCorruptException e2) {
                    sQLiteDatabase2 = null;
                } catch (Throwable th6) {
                    sQLiteDatabase2 = null;
                }
            }
            this.f553j = null;
        } catch (Throwable th7) {
            th = th7;
            sQLiteDatabase = isEmpty;
        }
    }

    /* renamed from: a */
    public void m1167a(boolean z, String str) {
        SQLiteDatabase sQLiteDatabase = null;
        try {
            try {
                this.f553j = str;
                sQLiteDatabase = C2234e.m1189a(f546c).m1190a();
                sQLiteDatabase.beginTransaction();
                if (!TextUtils.isEmpty(str)) {
                    sQLiteDatabase.execSQL("delete from __er where __i=\"" + str + "\"");
                    sQLiteDatabase.execSQL("delete from __et where __i=\"" + str + "\"");
                    if (z) {
                        sQLiteDatabase.execSQL("update __sd set __b=\"" + ((Object) null) + "\" where __ii=\"" + str + "\"");
                        sQLiteDatabase.execSQL("update __sd set __a=\"" + ((Object) null) + "\" where __ii=\"" + str + "\"");
                    }
                }
                sQLiteDatabase.setTransactionSuccessful();
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable th) {
                    }
                }
                C2234e.m1189a(f546c).m1188b();
            } catch (SQLiteDatabaseCorruptException e) {
                C2237f.m1186a(f546c);
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable th2) {
                    }
                }
                C2234e.m1189a(f546c).m1188b();
            } catch (Throwable th3) {
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable th4) {
                    }
                }
                C2234e.m1189a(f546c).m1188b();
            }
        } catch (Throwable th5) {
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.endTransaction();
                } catch (Throwable th6) {
                }
            }
            C2234e.m1189a(f546c).m1188b();
            throw th5;
        }
    }

    /* renamed from: i */
    private void m1155i() {
        try {
            if (TextUtils.isEmpty(f547d)) {
                SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f546c);
                String string = sharedPreferences.getString(f549f, null);
                if (TextUtils.isEmpty(string)) {
                    string = DeviceConfig.getDBencryptID(f546c);
                    if (!TextUtils.isEmpty(string)) {
                        sharedPreferences.edit().putString(f549f, string).commit();
                    }
                }
                if (!TextUtils.isEmpty(string)) {
                    String substring = string.substring(1, 9);
                    StringBuilder sb = new StringBuilder();
                    for (int i = 0; i < substring.length(); i++) {
                        char charAt = substring.charAt(i);
                        if (Character.isDigit(charAt)) {
                            if (Integer.parseInt(Character.toString(charAt)) == 0) {
                                sb.append(0);
                            } else {
                                sb.append(10 - Integer.parseInt(Character.toString(charAt)));
                            }
                        } else {
                            sb.append(charAt);
                        }
                    }
                    f547d = sb.toString();
                }
                if (!TextUtils.isEmpty(f547d)) {
                    f547d += new StringBuilder(f547d).reverse().toString();
                    String string2 = sharedPreferences.getString(f550g, null);
                    if (TextUtils.isEmpty(string2)) {
                        sharedPreferences.edit().putString(f550g, m1177a(f548e)).commit();
                    } else if (!f548e.equals(m1163b(string2))) {
                        m1166a(true, false);
                    }
                }
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    public String m1177a(String str) {
        try {
            if (!TextUtils.isEmpty(f547d)) {
                return Base64.encodeToString(DataHelper.encrypt(str.getBytes(), f547d.getBytes()), 0);
            }
            return str;
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: b */
    public String m1163b(String str) {
        try {
            if (!TextUtils.isEmpty(f547d)) {
                return new String(DataHelper.decrypt(Base64.decode(str.getBytes(), 0), f547d.getBytes()));
            }
            return str;
        } catch (Exception e) {
            return null;
        }
    }
}
