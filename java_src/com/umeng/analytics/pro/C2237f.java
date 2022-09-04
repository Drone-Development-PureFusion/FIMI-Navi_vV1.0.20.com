package com.umeng.analytics.pro;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UMDBUtils.java */
/* renamed from: com.umeng.analytics.pro.f */
/* loaded from: classes2.dex */
public class C2237f {
    C2237f() {
    }

    /* renamed from: a */
    public static boolean m1184a(String str, SQLiteDatabase sQLiteDatabase) {
        Cursor cursor = null;
        boolean z = false;
        if (str != null) {
            try {
                cursor = sQLiteDatabase.rawQuery("select count(*) as c from sqlite_master where type ='table' and name ='" + str.trim() + "' ", null);
                if (cursor.moveToNext()) {
                    if (cursor.getInt(0) > 0) {
                        z = true;
                    }
                }
                if (cursor != null) {
                    cursor.close();
                }
            } catch (Exception e) {
                if (cursor != null) {
                    cursor.close();
                }
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        }
        return z;
    }

    /* renamed from: a */
    public static void m1186a(Context context) {
        if (context != null) {
            try {
                File file = new File(C2217c.f480a + context.getPackageName() + C2217c.f481b + C2217c.f482c);
                if (file != null && file.exists()) {
                    file.delete();
                }
                C2231d.m1197a(context).m1198a();
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: b */
    public static String m1182b(Context context) {
        return C2217c.f480a + context.getPackageName() + C2217c.f481b;
    }

    /* renamed from: a */
    public static String m1183a(List<String> list) {
        return TextUtils.join("!", list);
    }

    /* renamed from: a */
    public static List<String> m1185a(String str) {
        return new ArrayList(Arrays.asList(str.split("!")));
    }

    /* renamed from: b */
    public static List<String> m1181b(List<String> list) {
        ArrayList arrayList = new ArrayList();
        try {
            for (String str : list) {
                if (Collections.frequency(arrayList, str) < 1) {
                    arrayList.add(str);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return arrayList;
    }
}
