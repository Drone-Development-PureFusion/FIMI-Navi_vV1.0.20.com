package com.umeng.analytics.pro;

import android.content.Context;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.umeng.analytics.pro.C2217c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UMDBCreater.java */
/* renamed from: com.umeng.analytics.pro.d */
/* loaded from: classes2.dex */
public class C2231d extends SQLiteOpenHelper {

    /* renamed from: b */
    private static Context f536b = null;

    /* renamed from: a */
    private String f537a;

    /* compiled from: UMDBCreater.java */
    /* renamed from: com.umeng.analytics.pro.d$a */
    /* loaded from: classes2.dex */
    private static class C2233a {

        /* renamed from: a */
        private static final C2231d f538a = new C2231d(C2231d.f536b, C2237f.m1182b(C2231d.f536b), C2217c.f482c, null, 1);

        private C2233a() {
        }
    }

    /* renamed from: a */
    public static C2231d m1197a(Context context) {
        if (f536b == null) {
            f536b = context.getApplicationContext();
        }
        return C2233a.f538a;
    }

    private C2231d(Context context, String str, String str2, SQLiteDatabase.CursorFactory cursorFactory, int i) {
        this(new C2215a(context, str), str2, cursorFactory, i);
    }

    private C2231d(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i) {
        super(context, TextUtils.isEmpty(str) ? C2217c.f482c : str, cursorFactory, i);
        this.f537a = null;
        m1198a();
    }

    /* renamed from: a */
    public void m1198a() {
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (!C2237f.m1184a(C2217c.C2228e.f519a, writableDatabase)) {
                m1192d(writableDatabase);
            }
            if (!C2237f.m1184a(C2217c.C2225d.f510a, writableDatabase)) {
                m1193c(writableDatabase);
            }
            if (!C2237f.m1184a(C2217c.C2222c.f503a, writableDatabase)) {
                m1194b(writableDatabase);
            }
            if (!C2237f.m1184a(C2217c.C2218a.f486a, writableDatabase)) {
                m1196a(writableDatabase);
            }
        } catch (Exception e) {
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            try {
                sQLiteDatabase.beginTransaction();
                m1192d(sQLiteDatabase);
                m1193c(sQLiteDatabase);
                m1194b(sQLiteDatabase);
                m1196a(sQLiteDatabase);
                sQLiteDatabase.setTransactionSuccessful();
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable th) {
                    }
                }
            } catch (SQLiteDatabaseCorruptException e) {
                C2237f.m1186a(f536b);
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable th2) {
                    }
                }
            } catch (Throwable th3) {
                if (sQLiteDatabase == null) {
                    return;
                }
                try {
                    sQLiteDatabase.endTransaction();
                } catch (Throwable th4) {
                }
            }
        } catch (Throwable th5) {
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.endTransaction();
                } catch (Throwable th6) {
                }
            }
            throw th5;
        }
    }

    /* renamed from: a */
    private void m1196a(SQLiteDatabase sQLiteDatabase) {
        try {
            this.f537a = "create table if not exists __dp(id INTEGER primary key autoincrement, __id INTEGER, __ii TEXT, __ty INTEGER, __ve TEXT, __io TEXT)";
            sQLiteDatabase.execSQL(this.f537a);
        } catch (SQLException e) {
        }
    }

    /* renamed from: b */
    private void m1194b(SQLiteDatabase sQLiteDatabase) {
        try {
            this.f537a = "create table if not exists __er(id INTEGER primary key autoincrement, __i TEXT, __a TEXT, __t INTEGER)";
            sQLiteDatabase.execSQL(this.f537a);
        } catch (SQLException e) {
        }
    }

    /* renamed from: c */
    private void m1193c(SQLiteDatabase sQLiteDatabase) {
        try {
            this.f537a = "create table if not exists __et(id INTEGER primary key autoincrement, __i TEXT, __e TEXT, __s TEXT, __t INTEGER)";
            sQLiteDatabase.execSQL(this.f537a);
        } catch (SQLException e) {
        }
    }

    /* renamed from: d */
    private void m1192d(SQLiteDatabase sQLiteDatabase) {
        try {
            this.f537a = "create table if not exists __sd(id INTEGER primary key autoincrement, __ii TEXT unique, __a TEXT, __b TEXT, __c TEXT, __d TEXT, __e TEXT, __f TEXT, __g TEXT)";
            sQLiteDatabase.execSQL(this.f537a);
        } catch (SQLException e) {
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
