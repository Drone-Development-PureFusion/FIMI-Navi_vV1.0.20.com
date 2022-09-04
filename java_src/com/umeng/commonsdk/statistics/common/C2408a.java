package com.umeng.commonsdk.statistics.common;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import java.io.IOException;
import java.util.concurrent.LinkedBlockingQueue;
/* compiled from: AdvertisingId.java */
/* renamed from: com.umeng.commonsdk.statistics.common.a */
/* loaded from: classes2.dex */
public class C2408a {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AdvertisingId.java */
    /* renamed from: com.umeng.commonsdk.statistics.common.a$a */
    /* loaded from: classes2.dex */
    public static final class C2410a {

        /* renamed from: a */
        private final String f1245a;

        /* renamed from: b */
        private final boolean f1246b;

        C2410a(String str, boolean z) {
            this.f1245a = str;
            this.f1246b = z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b */
        public String m360b() {
            return this.f1245a;
        }

        /* renamed from: a */
        public boolean m362a() {
            return this.f1246b;
        }
    }

    /* renamed from: a */
    public static String m364a(Context context) {
        try {
            C2410a m363b = m363b(context);
            if (m363b != null) {
                return m363b.m360b();
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: b */
    private static C2410a m363b(Context context) throws Exception {
        C2410a c2410a = null;
        if (Looper.myLooper() != Looper.getMainLooper()) {
            try {
                context.getPackageManager().getPackageInfo("com.android.vending", 0);
                ServiceConnectionC2411b serviceConnectionC2411b = new ServiceConnectionC2411b();
                Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                intent.setPackage("com.google.android.gms");
                if (context.bindService(intent, serviceConnectionC2411b, 1)) {
                    try {
                        try {
                            C2412c c2412c = new C2412c(serviceConnectionC2411b.m359a());
                            c2410a = new C2410a(c2412c.m358a(), c2412c.m357a(true));
                        } catch (Exception e) {
                            throw e;
                        }
                    } finally {
                        context.unbindService(serviceConnectionC2411b);
                    }
                } else {
                    throw new IOException("Google Play connection failed");
                }
            } catch (Exception e2) {
                throw e2;
            }
        }
        return c2410a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AdvertisingId.java */
    /* renamed from: com.umeng.commonsdk.statistics.common.a$b */
    /* loaded from: classes2.dex */
    public static final class ServiceConnectionC2411b implements ServiceConnection {

        /* renamed from: a */
        boolean f1247a;

        /* renamed from: b */
        private final LinkedBlockingQueue<IBinder> f1248b;

        private ServiceConnectionC2411b() {
            this.f1247a = false;
            this.f1248b = new LinkedBlockingQueue<>(1);
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.f1248b.put(iBinder);
            } catch (InterruptedException e) {
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }

        /* renamed from: a */
        public IBinder m359a() throws InterruptedException {
            if (this.f1247a) {
                throw new IllegalStateException();
            }
            this.f1247a = true;
            return this.f1248b.take();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AdvertisingId.java */
    /* renamed from: com.umeng.commonsdk.statistics.common.a$c */
    /* loaded from: classes2.dex */
    public static final class C2412c implements IInterface {

        /* renamed from: a */
        private IBinder f1249a;

        public C2412c(IBinder iBinder) {
            this.f1249a = iBinder;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.f1249a;
        }

        /* renamed from: a */
        public String m358a() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f1249a.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readString();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        /* renamed from: a */
        public boolean m357a(boolean z) throws RemoteException {
            boolean z2 = true;
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                obtain.writeInt(z ? 1 : 0);
                this.f1249a.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() == 0) {
                    z2 = false;
                }
                return z2;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }
    }
}
