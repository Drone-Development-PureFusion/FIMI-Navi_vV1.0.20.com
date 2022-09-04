package com.google.android.gms.internal;

import android.os.SystemClock;
import android.text.TextUtils;
import com.fimi.kernel.connect.tcp.SocketOption;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class zzam implements zzb {
    private final Map<String, zzan> zzbw;
    private long zzbx;
    private final File zzby;
    private final int zzbz;

    public zzam(File file) {
        this(file, 5242880);
    }

    private zzam(File file, int i) {
        this.zzbw = new LinkedHashMap(16, 0.75f, true);
        this.zzbx = 0L;
        this.zzby = file;
        this.zzbz = 5242880;
    }

    private final synchronized void remove(String str) {
        boolean delete = zze(str).delete();
        removeEntry(str);
        if (!delete) {
            zzaf.zzb("Could not delete cache entry for key=%s, filename=%s", str, zzd(str));
        }
    }

    private final void removeEntry(String str) {
        zzan remove = this.zzbw.remove(str);
        if (remove != null) {
            this.zzbx -= remove.zzca;
        }
    }

    private static int zza(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        if (read == -1) {
            throw new EOFException();
        }
        return read;
    }

    private static InputStream zza(File file) throws FileNotFoundException {
        return new FileInputStream(file);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zza(zzao zzaoVar) throws IOException {
        return new String(zza(zzaoVar, zzc(zzaoVar)), SocketOption.DEFAULT_CHARSET);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(OutputStream outputStream, int i) throws IOException {
        outputStream.write(i & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write(i >>> 24);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(OutputStream outputStream, long j) throws IOException {
        outputStream.write((byte) j);
        outputStream.write((byte) (j >>> 8));
        outputStream.write((byte) (j >>> 16));
        outputStream.write((byte) (j >>> 24));
        outputStream.write((byte) (j >>> 32));
        outputStream.write((byte) (j >>> 40));
        outputStream.write((byte) (j >>> 48));
        outputStream.write((byte) (j >>> 56));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(OutputStream outputStream, String str) throws IOException {
        byte[] bytes = str.getBytes(SocketOption.DEFAULT_CHARSET);
        zza(outputStream, bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    private final void zza(String str, zzan zzanVar) {
        if (!this.zzbw.containsKey(str)) {
            this.zzbx += zzanVar.zzca;
        } else {
            this.zzbx = (zzanVar.zzca - this.zzbw.get(str).zzca) + this.zzbx;
        }
        this.zzbw.put(str, zzanVar);
    }

    private static byte[] zza(zzao zzaoVar, long j) throws IOException {
        long zzn = zzaoVar.zzn();
        if (j < 0 || j > zzn || ((int) j) != j) {
            throw new IOException(new StringBuilder(73).append("streamToBytes length=").append(j).append(", maxLength=").append(zzn).toString());
        }
        byte[] bArr = new byte[(int) j];
        new DataInputStream(zzaoVar).readFully(bArr);
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzb(InputStream inputStream) throws IOException {
        return zza(inputStream) | 0 | (zza(inputStream) << 8) | (zza(inputStream) << 16) | (zza(inputStream) << 24);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<zzl> zzb(zzao zzaoVar) throws IOException {
        int zzb = zzb((InputStream) zzaoVar);
        List<zzl> emptyList = zzb == 0 ? Collections.emptyList() : new ArrayList<>(zzb);
        for (int i = 0; i < zzb; i++) {
            emptyList.add(new zzl(zza(zzaoVar).intern(), zza(zzaoVar).intern()));
        }
        return emptyList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long zzc(InputStream inputStream) throws IOException {
        return 0 | (zza(inputStream) & 255) | ((zza(inputStream) & 255) << 8) | ((zza(inputStream) & 255) << 16) | ((zza(inputStream) & 255) << 24) | ((zza(inputStream) & 255) << 32) | ((zza(inputStream) & 255) << 40) | ((zza(inputStream) & 255) << 48) | ((zza(inputStream) & 255) << 56);
    }

    private static String zzd(String str) {
        int length = str.length() / 2;
        String valueOf = String.valueOf(String.valueOf(str.substring(0, length).hashCode()));
        String valueOf2 = String.valueOf(String.valueOf(str.substring(length).hashCode()));
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    private final File zze(String str) {
        return new File(this.zzby, zzd(str));
    }

    @Override // com.google.android.gms.internal.zzb
    public final synchronized void initialize() {
        if (this.zzby.exists()) {
            File[] listFiles = this.zzby.listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    try {
                        long length = file.length();
                        zzao zzaoVar = new zzao(new BufferedInputStream(zza(file)), length);
                        try {
                            zzan zzc = zzan.zzc(zzaoVar);
                            zzc.zzca = length;
                            zza(zzc.key, zzc);
                            zzaoVar.close();
                        } catch (Throwable th) {
                            zzaoVar.close();
                            throw th;
                            break;
                        }
                    } catch (IOException e) {
                        file.delete();
                    }
                }
            }
        } else if (!this.zzby.mkdirs()) {
            zzaf.zzc("Unable to create cache dir %s", this.zzby.getAbsolutePath());
        }
    }

    @Override // com.google.android.gms.internal.zzb
    public final synchronized zzc zza(String str) {
        zzc zzcVar;
        zzan zzanVar = this.zzbw.get(str);
        if (zzanVar == null) {
            zzcVar = null;
        } else {
            File zze = zze(str);
            try {
                zzao zzaoVar = new zzao(new BufferedInputStream(zza(zze)), zze.length());
                try {
                    zzan zzc = zzan.zzc(zzaoVar);
                    if (!TextUtils.equals(str, zzc.key)) {
                        zzaf.zzb("%s: key=%s, found=%s", zze.getAbsolutePath(), str, zzc.key);
                        removeEntry(str);
                        zzcVar = null;
                    } else {
                        byte[] zza = zza(zzaoVar, zzaoVar.zzn());
                        zzc zzcVar2 = new zzc();
                        zzcVar2.data = zza;
                        zzcVar2.zza = zzanVar.zza;
                        zzcVar2.zzb = zzanVar.zzb;
                        zzcVar2.zzc = zzanVar.zzc;
                        zzcVar2.zzd = zzanVar.zzd;
                        zzcVar2.zze = zzanVar.zze;
                        zzcVar2.zzf = zzap.zza(zzanVar.zzg);
                        zzcVar2.zzg = Collections.unmodifiableList(zzanVar.zzg);
                        zzaoVar.close();
                        zzcVar = zzcVar2;
                    }
                } finally {
                }
            } catch (IOException e) {
                zzaf.zzb("%s: %s", zze.getAbsolutePath(), e.toString());
                remove(str);
                zzcVar = null;
            }
        }
        return zzcVar;
    }

    @Override // com.google.android.gms.internal.zzb
    public final synchronized void zza(String str, zzc zzcVar) {
        BufferedOutputStream bufferedOutputStream;
        zzan zzanVar;
        int i;
        int i2 = 0;
        synchronized (this) {
            int length = zzcVar.data.length;
            if (this.zzbx + length >= this.zzbz) {
                if (zzaf.DEBUG) {
                    zzaf.zza("Pruning old cache entries.", new Object[0]);
                }
                long j = this.zzbx;
                long elapsedRealtime = SystemClock.elapsedRealtime();
                Iterator<Map.Entry<String, zzan>> it = this.zzbw.entrySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        i = i2;
                        break;
                    }
                    zzan value = it.next().getValue();
                    if (zze(value.key).delete()) {
                        this.zzbx -= value.zzca;
                    } else {
                        zzaf.zzb("Could not delete cache entry for key=%s, filename=%s", value.key, zzd(value.key));
                    }
                    it.remove();
                    i = i2 + 1;
                    if (((float) (this.zzbx + length)) < this.zzbz * 0.9f) {
                        break;
                    }
                    i2 = i;
                }
                if (zzaf.DEBUG) {
                    zzaf.zza("pruned %d files, %d bytes, %d ms", Integer.valueOf(i), Long.valueOf(this.zzbx - j), Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime));
                }
            }
            File zze = zze(str);
            try {
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(zze));
                zzanVar = new zzan(str, zzcVar);
            } catch (IOException e) {
                if (!zze.delete()) {
                    zzaf.zzb("Could not clean up file %s", zze.getAbsolutePath());
                }
            }
            if (!zzanVar.zza(bufferedOutputStream)) {
                bufferedOutputStream.close();
                zzaf.zzb("Failed to write header for %s", zze.getAbsolutePath());
                throw new IOException();
            }
            bufferedOutputStream.write(zzcVar.data);
            bufferedOutputStream.close();
            zza(str, zzanVar);
        }
    }
}
