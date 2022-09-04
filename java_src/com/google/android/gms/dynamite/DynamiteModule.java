package com.google.android.gms.dynamite;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.zzbq;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
@Hide
/* loaded from: classes2.dex */
public final class DynamiteModule {
    private static Boolean zzhdc;
    private static zzk zzhdd;
    private static zzm zzhde;
    private static String zzhdf;
    private static final ThreadLocal<zza> zzhdg = new ThreadLocal<>();
    private static final zzi zzhdh = new com.google.android.gms.dynamite.zza();
    public static final zzd zzhdi = new com.google.android.gms.dynamite.zzb();
    private static zzd zzhdj = new com.google.android.gms.dynamite.zzc();
    public static final zzd zzhdk = new com.google.android.gms.dynamite.zzd();
    public static final zzd zzhdl = new zze();
    public static final zzd zzhdm = new zzf();
    public static final zzd zzhdn = new zzg();
    private final Context zzhdo;

    @DynamiteApi
    /* loaded from: classes2.dex */
    public static class DynamiteLoaderClassLoader {
        public static ClassLoader sClassLoader;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class zza {
        public Cursor zzhdp;

        private zza() {
        }

        /* synthetic */ zza(com.google.android.gms.dynamite.zza zzaVar) {
            this();
        }
    }

    /* loaded from: classes2.dex */
    static class zzb implements zzi {
        private final int zzhdq;
        private final int zzhdr = 0;

        public zzb(int i, int i2) {
            this.zzhdq = i;
        }

        @Override // com.google.android.gms.dynamite.zzi
        public final int zzc(Context context, String str, boolean z) {
            return 0;
        }

        @Override // com.google.android.gms.dynamite.zzi
        public final int zzx(Context context, String str) {
            return this.zzhdq;
        }
    }

    /* loaded from: classes2.dex */
    public static class zzc extends Exception {
        private zzc(String str) {
            super(str);
        }

        /* synthetic */ zzc(String str, com.google.android.gms.dynamite.zza zzaVar) {
            this(str);
        }

        private zzc(String str, Throwable th) {
            super(str, th);
        }

        /* synthetic */ zzc(String str, Throwable th, com.google.android.gms.dynamite.zza zzaVar) {
            this(str, th);
        }
    }

    /* loaded from: classes2.dex */
    public interface zzd {
        zzj zza(Context context, String str, zzi zziVar) throws zzc;
    }

    private DynamiteModule(Context context) {
        this.zzhdo = (Context) zzbq.checkNotNull(context);
    }

    private static Context zza(Context context, String str, int i, Cursor cursor, zzm zzmVar) {
        try {
            return (Context) com.google.android.gms.dynamic.zzn.zzy(zzmVar.zza(com.google.android.gms.dynamic.zzn.zzz(context), str, i, com.google.android.gms.dynamic.zzn.zzz(cursor)));
        } catch (Exception e) {
            String valueOf = String.valueOf(e.toString());
            Log.e("DynamiteModule", valueOf.length() != 0 ? "Failed to load DynamiteLoader: ".concat(valueOf) : new String("Failed to load DynamiteLoader: "));
            return null;
        }
    }

    public static DynamiteModule zza(Context context, zzd zzdVar, String str) throws zzc {
        zza zzaVar = zzhdg.get();
        zza zzaVar2 = new zza(null);
        zzhdg.set(zzaVar2);
        try {
            zzj zza2 = zzdVar.zza(context, str, zzhdh);
            Log.i("DynamiteModule", new StringBuilder(String.valueOf(str).length() + 68 + String.valueOf(str).length()).append("Considering local module ").append(str).append(":").append(zza2.zzhds).append(" and remote module ").append(str).append(":").append(zza2.zzhdt).toString());
            if (zza2.zzhdu == 0 || ((zza2.zzhdu == -1 && zza2.zzhds == 0) || (zza2.zzhdu == 1 && zza2.zzhdt == 0))) {
                throw new zzc(new StringBuilder(91).append("No acceptable module found. Local version is ").append(zza2.zzhds).append(" and remote version is ").append(zza2.zzhdt).append(".").toString(), (com.google.android.gms.dynamite.zza) null);
            } else if (zza2.zzhdu == -1) {
                DynamiteModule zzz = zzz(context, str);
                if (zzaVar2.zzhdp != null) {
                    zzaVar2.zzhdp.close();
                }
                zzhdg.set(zzaVar);
                return zzz;
            } else if (zza2.zzhdu != 1) {
                throw new zzc(new StringBuilder(47).append("VersionPolicy returned invalid code:").append(zza2.zzhdu).toString(), (com.google.android.gms.dynamite.zza) null);
            } else {
                try {
                    DynamiteModule zza3 = zza(context, str, zza2.zzhdt);
                    if (zzaVar2.zzhdp != null) {
                        zzaVar2.zzhdp.close();
                    }
                    zzhdg.set(zzaVar);
                    return zza3;
                } catch (zzc e) {
                    String valueOf = String.valueOf(e.getMessage());
                    Log.w("DynamiteModule", valueOf.length() != 0 ? "Failed to load remote module: ".concat(valueOf) : new String("Failed to load remote module: "));
                    if (zza2.zzhds == 0 || zzdVar.zza(context, str, new zzb(zza2.zzhds, 0)).zzhdu != -1) {
                        throw new zzc("Remote load failed. No local fallback found.", e, null);
                    }
                    DynamiteModule zzz2 = zzz(context, str);
                    if (zzaVar2.zzhdp != null) {
                        zzaVar2.zzhdp.close();
                    }
                    zzhdg.set(zzaVar);
                    return zzz2;
                }
            }
        } catch (Throwable th) {
            if (zzaVar2.zzhdp != null) {
                zzaVar2.zzhdp.close();
            }
            zzhdg.set(zzaVar);
            throw th;
        }
    }

    private static DynamiteModule zza(Context context, String str, int i) throws zzc {
        Boolean bool;
        synchronized (DynamiteModule.class) {
            bool = zzhdc;
        }
        if (bool == null) {
            throw new zzc("Failed to determine which loading route to use.", (com.google.android.gms.dynamite.zza) null);
        }
        return bool.booleanValue() ? zzc(context, str, i) : zzb(context, str, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.gms.dynamite.zzm] */
    private static void zza(ClassLoader classLoader) throws zzc {
        zzn zznVar;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]);
            if (iBinder == null) {
                zznVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                zznVar = queryLocalInterface instanceof zzm ? (zzm) queryLocalInterface : new zzn(iBinder);
            }
            zzhde = zznVar;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            throw new zzc("Failed to instantiate dynamite loader", e, null);
        }
    }

    private static DynamiteModule zzb(Context context, String str, int i) throws zzc {
        Log.i("DynamiteModule", new StringBuilder(String.valueOf(str).length() + 51).append("Selected remote version of ").append(str).append(", version >= ").append(i).toString());
        zzk zzdh = zzdh(context);
        if (zzdh == null) {
            throw new zzc("Failed to create IDynamiteLoader.", (com.google.android.gms.dynamite.zza) null);
        }
        try {
            IObjectWrapper zza2 = zzdh.zza(com.google.android.gms.dynamic.zzn.zzz(context), str, i);
            if (com.google.android.gms.dynamic.zzn.zzy(zza2) != null) {
                return new DynamiteModule((Context) com.google.android.gms.dynamic.zzn.zzy(zza2));
            }
            throw new zzc("Failed to load remote module.", (com.google.android.gms.dynamite.zza) null);
        } catch (RemoteException e) {
            throw new zzc("Failed to load remote module.", e, null);
        }
    }

    public static int zzc(Context context, String str, boolean z) {
        Class<?> loadClass;
        Field declaredField;
        synchronized (DynamiteModule.class) {
            Boolean bool = zzhdc;
            if (bool == null) {
                try {
                    loadClass = context.getApplicationContext().getClassLoader().loadClass(DynamiteLoaderClassLoader.class.getName());
                    declaredField = loadClass.getDeclaredField("sClassLoader");
                } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e) {
                    String valueOf = String.valueOf(e);
                    Log.w("DynamiteModule", new StringBuilder(String.valueOf(valueOf).length() + 30).append("Failed to load module via V2: ").append(valueOf).toString());
                    bool = Boolean.FALSE;
                }
                synchronized (loadClass) {
                    ClassLoader classLoader = (ClassLoader) declaredField.get(null);
                    if (classLoader != null) {
                        if (classLoader == ClassLoader.getSystemClassLoader()) {
                            bool = Boolean.FALSE;
                        } else {
                            try {
                                zza(classLoader);
                            } catch (zzc e2) {
                            }
                            bool = Boolean.TRUE;
                        }
                    } else if ("com.google.android.gms".equals(context.getApplicationContext().getPackageName())) {
                        declaredField.set(null, ClassLoader.getSystemClassLoader());
                        bool = Boolean.FALSE;
                    } else {
                        try {
                            int zze = zze(context, str, z);
                            if (zzhdf == null || zzhdf.isEmpty()) {
                                return zze;
                            }
                            zzh zzhVar = new zzh(zzhdf, ClassLoader.getSystemClassLoader());
                            zza(zzhVar);
                            declaredField.set(null, zzhVar);
                            zzhdc = Boolean.TRUE;
                            return zze;
                        } catch (zzc e3) {
                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                            bool = Boolean.FALSE;
                        }
                    }
                    zzhdc = bool;
                }
            }
            if (bool.booleanValue()) {
                try {
                    return zze(context, str, z);
                } catch (zzc e4) {
                    String valueOf2 = String.valueOf(e4.getMessage());
                    Log.w("DynamiteModule", valueOf2.length() != 0 ? "Failed to retrieve remote module version: ".concat(valueOf2) : new String("Failed to retrieve remote module version: "));
                    return 0;
                }
            }
            return zzd(context, str, z);
        }
    }

    private static DynamiteModule zzc(Context context, String str, int i) throws zzc {
        zzm zzmVar;
        Log.i("DynamiteModule", new StringBuilder(String.valueOf(str).length() + 51).append("Selected remote version of ").append(str).append(", version >= ").append(i).toString());
        synchronized (DynamiteModule.class) {
            zzmVar = zzhde;
        }
        if (zzmVar == null) {
            throw new zzc("DynamiteLoaderV2 was not cached.", (com.google.android.gms.dynamite.zza) null);
        }
        zza zzaVar = zzhdg.get();
        if (zzaVar == null || zzaVar.zzhdp == null) {
            throw new zzc("No result cursor", (com.google.android.gms.dynamite.zza) null);
        }
        Context zza2 = zza(context.getApplicationContext(), str, i, zzaVar.zzhdp, zzmVar);
        if (zza2 != null) {
            return new DynamiteModule(zza2);
        }
        throw new zzc("Failed to get module context", (com.google.android.gms.dynamite.zza) null);
    }

    private static int zzd(Context context, String str, boolean z) {
        zzk zzdh = zzdh(context);
        if (zzdh == null) {
            return 0;
        }
        try {
            return zzdh.zza(com.google.android.gms.dynamic.zzn.zzz(context), str, z);
        } catch (RemoteException e) {
            String valueOf = String.valueOf(e.getMessage());
            Log.w("DynamiteModule", valueOf.length() != 0 ? "Failed to retrieve remote module version: ".concat(valueOf) : new String("Failed to retrieve remote module version: "));
            return 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.gms.dynamite.zzk] */
    private static zzk zzdh(Context context) {
        zzl zzlVar;
        synchronized (DynamiteModule.class) {
            if (zzhdd != null) {
                return zzhdd;
            } else if (com.google.android.gms.common.zzf.zzahf().isGooglePlayServicesAvailable(context) != 0) {
                return null;
            } else {
                try {
                    IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                    if (iBinder == null) {
                        zzlVar = null;
                    } else {
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                        zzlVar = queryLocalInterface instanceof zzk ? (zzk) queryLocalInterface : new zzl(iBinder);
                    }
                    if (zzlVar != null) {
                        zzhdd = zzlVar;
                        return zzlVar;
                    }
                } catch (Exception e) {
                    String valueOf = String.valueOf(e.getMessage());
                    Log.e("DynamiteModule", valueOf.length() != 0 ? "Failed to load IDynamiteLoader from GmsCore: ".concat(valueOf) : new String("Failed to load IDynamiteLoader from GmsCore: "));
                }
                return null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0066  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int zze(Context context, String str, boolean z) throws zzc {
        Cursor cursor = null;
        try {
            try {
                ContentResolver contentResolver = context.getContentResolver();
                String str2 = z ? "api_force_staging" : "api";
                Cursor query = contentResolver.query(Uri.parse(new StringBuilder(String.valueOf(str2).length() + 42 + String.valueOf(str).length()).append("content://com.google.android.gms.chimera/").append(str2).append("/").append(str).toString()), null, null, null, null);
                if (query != null) {
                    try {
                        if (query.moveToFirst()) {
                            int i = query.getInt(0);
                            if (i > 0) {
                                synchronized (DynamiteModule.class) {
                                    zzhdf = query.getString(2);
                                }
                                zza zzaVar = zzhdg.get();
                                if (zzaVar != null && zzaVar.zzhdp == null) {
                                    zzaVar.zzhdp = query;
                                    query = null;
                                }
                            }
                            if (query != null) {
                                query.close();
                            }
                            return i;
                        }
                    } catch (Exception e) {
                        e = e;
                        if (!(e instanceof zzc)) {
                            throw new zzc("V2 version check failed", e, null);
                        }
                        throw e;
                    }
                }
                Log.w("DynamiteModule", "Failed to retrieve remote module version.");
                throw new zzc("Failed to connect to dynamite module ContentResolver.", (com.google.android.gms.dynamite.zza) null);
            } catch (Throwable th) {
                th = th;
                if (0 != 0) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
        } catch (Throwable th2) {
            th = th2;
            if (0 != 0) {
            }
            throw th;
        }
    }

    public static int zzx(Context context, String str) {
        int i;
        try {
            Class<?> loadClass = context.getApplicationContext().getClassLoader().loadClass(new StringBuilder(String.valueOf(str).length() + 61).append("com.google.android.gms.dynamite.descriptors.").append(str).append(".ModuleDescriptor").toString());
            Field declaredField = loadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = loadClass.getDeclaredField("MODULE_VERSION");
            if (!declaredField.get(null).equals(str)) {
                String valueOf = String.valueOf(declaredField.get(null));
                Log.e("DynamiteModule", new StringBuilder(String.valueOf(valueOf).length() + 51 + String.valueOf(str).length()).append("Module descriptor id '").append(valueOf).append("' didn't match expected id '").append(str).append("'").toString());
                i = 0;
            } else {
                i = declaredField2.getInt(null);
            }
            return i;
        } catch (ClassNotFoundException e) {
            Log.w("DynamiteModule", new StringBuilder(String.valueOf(str).length() + 45).append("Local module descriptor class for ").append(str).append(" not found.").toString());
            return 0;
        } catch (Exception e2) {
            String valueOf2 = String.valueOf(e2.getMessage());
            Log.e("DynamiteModule", valueOf2.length() != 0 ? "Failed to load module descriptor class: ".concat(valueOf2) : new String("Failed to load module descriptor class: "));
            return 0;
        }
    }

    public static int zzy(Context context, String str) {
        return zzc(context, str, false);
    }

    private static DynamiteModule zzz(Context context, String str) {
        String valueOf = String.valueOf(str);
        Log.i("DynamiteModule", valueOf.length() != 0 ? "Selected local version of ".concat(valueOf) : new String("Selected local version of "));
        return new DynamiteModule(context.getApplicationContext());
    }

    public final Context zzarl() {
        return this.zzhdo;
    }

    public final IBinder zzhk(String str) throws zzc {
        try {
            return (IBinder) this.zzhdo.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e) {
            String valueOf = String.valueOf(str);
            throw new zzc(valueOf.length() != 0 ? "Failed to instantiate module class: ".concat(valueOf) : new String("Failed to instantiate module class: "), e, null);
        }
    }
}
