package com.google.android.gms.common.data;

import android.content.ContentValues;
import android.database.CharArrayBuffer;
import android.database.CursorIndexOutOfBoundsException;
import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.zzbq;
import com.google.android.gms.internal.zzbgl;
import com.google.android.gms.internal.zzbgo;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
@Hide
@KeepName
/* loaded from: classes2.dex */
public final class DataHolder extends zzbgl implements Closeable {
    public static final Parcelable.Creator<DataHolder> CREATOR = new zzf();
    private static final zza zzgcs = new zze(new String[0], null);
    private boolean mClosed;
    private final int zzcc;
    private int zzehz;
    private final String[] zzgcl;
    private Bundle zzgcm;
    private final CursorWindow[] zzgcn;
    private final Bundle zzgco;
    private int[] zzgcp;
    int zzgcq;
    private boolean zzgcr;

    /* loaded from: classes2.dex */
    public static class zza {
        private final String[] zzgcl;
        private final ArrayList<HashMap<String, Object>> zzgct;
        private final String zzgcu;
        private final HashMap<Object, Integer> zzgcv;
        private boolean zzgcw;
        private String zzgcx;

        private zza(String[] strArr, String str) {
            this.zzgcl = (String[]) zzbq.checkNotNull(strArr);
            this.zzgct = new ArrayList<>();
            this.zzgcu = str;
            this.zzgcv = new HashMap<>();
            this.zzgcw = false;
            this.zzgcx = null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public /* synthetic */ zza(String[] strArr, String str, zze zzeVar) {
            this(strArr, null);
        }

        public zza zza(ContentValues contentValues) {
            com.google.android.gms.common.internal.zzc.zzv(contentValues);
            HashMap<String, Object> hashMap = new HashMap<>(contentValues.size());
            for (Map.Entry<String, Object> entry : contentValues.valueSet()) {
                hashMap.put(entry.getKey(), entry.getValue());
            }
            return zza(hashMap);
        }

        public zza zza(HashMap<String, Object> hashMap) {
            int intValue;
            com.google.android.gms.common.internal.zzc.zzv(hashMap);
            if (this.zzgcu == null) {
                intValue = -1;
            } else {
                Object obj = hashMap.get(this.zzgcu);
                if (obj == null) {
                    intValue = -1;
                } else {
                    Integer num = this.zzgcv.get(obj);
                    if (num == null) {
                        this.zzgcv.put(obj, Integer.valueOf(this.zzgct.size()));
                        intValue = -1;
                    } else {
                        intValue = num.intValue();
                    }
                }
            }
            if (intValue == -1) {
                this.zzgct.add(hashMap);
            } else {
                this.zzgct.remove(intValue);
                this.zzgct.add(intValue, hashMap);
            }
            this.zzgcw = false;
            return this;
        }

        public final DataHolder zzca(int i) {
            return new DataHolder(this, 0, (Bundle) null, (zze) null);
        }
    }

    /* loaded from: classes2.dex */
    public static class zzb extends RuntimeException {
        public zzb(String str) {
            super(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DataHolder(int i, String[] strArr, CursorWindow[] cursorWindowArr, int i2, Bundle bundle) {
        this.mClosed = false;
        this.zzgcr = true;
        this.zzehz = i;
        this.zzgcl = strArr;
        this.zzgcn = cursorWindowArr;
        this.zzcc = i2;
        this.zzgco = bundle;
    }

    private DataHolder(zza zzaVar, int i, Bundle bundle) {
        this(zzaVar.zzgcl, zza(zzaVar, -1), i, (Bundle) null);
    }

    /* synthetic */ DataHolder(zza zzaVar, int i, Bundle bundle, zze zzeVar) {
        this(zzaVar, 0, null);
    }

    private DataHolder(String[] strArr, CursorWindow[] cursorWindowArr, int i, Bundle bundle) {
        this.mClosed = false;
        this.zzgcr = true;
        this.zzehz = 1;
        this.zzgcl = (String[]) zzbq.checkNotNull(strArr);
        this.zzgcn = (CursorWindow[]) zzbq.checkNotNull(cursorWindowArr);
        this.zzcc = i;
        this.zzgco = bundle;
        zzali();
    }

    private static CursorWindow[] zza(zza zzaVar, int i) {
        int i2;
        boolean z;
        if (zzaVar.zzgcl.length == 0) {
            return new CursorWindow[0];
        }
        ArrayList arrayList = zzaVar.zzgct;
        int size = arrayList.size();
        CursorWindow cursorWindow = new CursorWindow(false);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(cursorWindow);
        cursorWindow.setNumColumns(zzaVar.zzgcl.length);
        int i3 = 0;
        boolean z2 = false;
        while (i3 < size) {
            try {
                if (!cursorWindow.allocRow()) {
                    Log.d("DataHolder", new StringBuilder(72).append("Allocating additional cursor window for large data set (row ").append(i3).append(")").toString());
                    cursorWindow = new CursorWindow(false);
                    cursorWindow.setStartPosition(i3);
                    cursorWindow.setNumColumns(zzaVar.zzgcl.length);
                    arrayList2.add(cursorWindow);
                    if (!cursorWindow.allocRow()) {
                        Log.e("DataHolder", "Unable to allocate row to hold data.");
                        arrayList2.remove(cursorWindow);
                        return (CursorWindow[]) arrayList2.toArray(new CursorWindow[arrayList2.size()]);
                    }
                }
                Map map = (Map) arrayList.get(i3);
                boolean z3 = true;
                for (int i4 = 0; i4 < zzaVar.zzgcl.length && z3; i4++) {
                    String str = zzaVar.zzgcl[i4];
                    Object obj = map.get(str);
                    if (obj == null) {
                        z3 = cursorWindow.putNull(i3, i4);
                    } else if (obj instanceof String) {
                        z3 = cursorWindow.putString((String) obj, i3, i4);
                    } else if (obj instanceof Long) {
                        z3 = cursorWindow.putLong(((Long) obj).longValue(), i3, i4);
                    } else if (obj instanceof Integer) {
                        z3 = cursorWindow.putLong(((Integer) obj).intValue(), i3, i4);
                    } else if (obj instanceof Boolean) {
                        z3 = cursorWindow.putLong(((Boolean) obj).booleanValue() ? 1L : 0L, i3, i4);
                    } else if (obj instanceof byte[]) {
                        z3 = cursorWindow.putBlob((byte[]) obj, i3, i4);
                    } else if (obj instanceof Double) {
                        z3 = cursorWindow.putDouble(((Double) obj).doubleValue(), i3, i4);
                    } else if (!(obj instanceof Float)) {
                        String valueOf = String.valueOf(obj);
                        throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 32 + String.valueOf(valueOf).length()).append("Unsupported object for column ").append(str).append(": ").append(valueOf).toString());
                    } else {
                        z3 = cursorWindow.putDouble(((Float) obj).floatValue(), i3, i4);
                    }
                }
                if (z3) {
                    i2 = i3;
                    z = false;
                } else if (z2) {
                    throw new zzb("Could not add the value to a new CursorWindow. The size of value may be larger than what a CursorWindow can handle.");
                } else {
                    Log.d("DataHolder", new StringBuilder(74).append("Couldn't populate window data for row ").append(i3).append(" - allocating new window.").toString());
                    cursorWindow.freeLastRow();
                    cursorWindow = new CursorWindow(false);
                    cursorWindow.setStartPosition(i3);
                    cursorWindow.setNumColumns(zzaVar.zzgcl.length);
                    arrayList2.add(cursorWindow);
                    i2 = i3 - 1;
                    z = true;
                }
                i3 = i2 + 1;
                z2 = z;
            } catch (RuntimeException e) {
                int size2 = arrayList2.size();
                for (int i5 = 0; i5 < size2; i5++) {
                    ((CursorWindow) arrayList2.get(i5)).close();
                }
                throw e;
            }
        }
        return (CursorWindow[]) arrayList2.toArray(new CursorWindow[arrayList2.size()]);
    }

    public static zza zzb(String[] strArr) {
        return new zza(strArr, null, null);
    }

    public static DataHolder zzbz(int i) {
        return new DataHolder(zzgcs, i, null);
    }

    private final void zzh(String str, int i) {
        if (this.zzgcm == null || !this.zzgcm.containsKey(str)) {
            String valueOf = String.valueOf(str);
            throw new IllegalArgumentException(valueOf.length() != 0 ? "No such column: ".concat(valueOf) : new String("No such column: "));
        } else if (isClosed()) {
            throw new IllegalArgumentException("Buffer is closed.");
        } else {
            if (i >= 0 && i < this.zzgcq) {
                return;
            }
            throw new CursorIndexOutOfBoundsException(i, this.zzgcq);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this) {
            if (!this.mClosed) {
                this.mClosed = true;
                for (int i = 0; i < this.zzgcn.length; i++) {
                    this.zzgcn[i].close();
                }
            }
        }
    }

    protected final void finalize() throws Throwable {
        try {
            if (this.zzgcr && this.zzgcn.length > 0 && !isClosed()) {
                close();
                String obj = toString();
                Log.e("DataBuffer", new StringBuilder(String.valueOf(obj).length() + 178).append("Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: ").append(obj).append(")").toString());
            }
        } finally {
            super.finalize();
        }
    }

    public final int getCount() {
        return this.zzgcq;
    }

    public final int getStatusCode() {
        return this.zzcc;
    }

    public final boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.mClosed;
        }
        return z;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zza(parcel, 1, this.zzgcl, false);
        zzbgo.zza(parcel, 2, (Parcelable[]) this.zzgcn, i, false);
        zzbgo.zzc(parcel, 3, this.zzcc);
        zzbgo.zza(parcel, 4, this.zzgco, false);
        zzbgo.zzc(parcel, 1000, this.zzehz);
        zzbgo.zzai(parcel, zze);
        if ((i & 1) != 0) {
            close();
        }
    }

    public final void zza(String str, int i, int i2, CharArrayBuffer charArrayBuffer) {
        zzh(str, i);
        this.zzgcn[i2].copyStringToBuffer(i, this.zzgcm.getInt(str), charArrayBuffer);
    }

    @Hide
    public final Bundle zzahs() {
        return this.zzgco;
    }

    public final void zzali() {
        this.zzgcm = new Bundle();
        for (int i = 0; i < this.zzgcl.length; i++) {
            this.zzgcm.putInt(this.zzgcl[i], i);
        }
        this.zzgcp = new int[this.zzgcn.length];
        int i2 = 0;
        for (int i3 = 0; i3 < this.zzgcn.length; i3++) {
            this.zzgcp[i3] = i2;
            i2 += this.zzgcn[i3].getNumRows() - (i2 - this.zzgcn[i3].getStartPosition());
        }
        this.zzgcq = i2;
    }

    public final long zzb(String str, int i, int i2) {
        zzh(str, i);
        return this.zzgcn[i2].getLong(i, this.zzgcm.getInt(str));
    }

    @Hide
    public final int zzby(int i) {
        int i2 = 0;
        zzbq.checkState(i >= 0 && i < this.zzgcq);
        while (true) {
            if (i2 >= this.zzgcp.length) {
                break;
            } else if (i < this.zzgcp[i2]) {
                i2--;
                break;
            } else {
                i2++;
            }
        }
        return i2 == this.zzgcp.length ? i2 - 1 : i2;
    }

    public final int zzc(String str, int i, int i2) {
        zzh(str, i);
        return this.zzgcn[i2].getInt(i, this.zzgcm.getInt(str));
    }

    public final String zzd(String str, int i, int i2) {
        zzh(str, i);
        return this.zzgcn[i2].getString(i, this.zzgcm.getInt(str));
    }

    public final boolean zze(String str, int i, int i2) {
        zzh(str, i);
        return Long.valueOf(this.zzgcn[i2].getLong(i, this.zzgcm.getInt(str))).longValue() == 1;
    }

    public final float zzf(String str, int i, int i2) {
        zzh(str, i);
        return this.zzgcn[i2].getFloat(i, this.zzgcm.getInt(str));
    }

    public final byte[] zzg(String str, int i, int i2) {
        zzh(str, i);
        return this.zzgcn[i2].getBlob(i, this.zzgcm.getInt(str));
    }

    public final boolean zzgj(String str) {
        return this.zzgcm.containsKey(str);
    }

    public final boolean zzh(String str, int i, int i2) {
        zzh(str, i);
        return this.zzgcn[i2].isNull(i, this.zzgcm.getInt(str));
    }
}
