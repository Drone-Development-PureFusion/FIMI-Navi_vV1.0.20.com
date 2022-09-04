package com.twitter.sdk.android.core.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import com.twitter.sdk.android.core.Twitter;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
class AdvertisingInfoServiceStrategy implements AdvertisingInfoStrategy {
    private static final String GOOGLE_PLAY_SERVICES_INTENT = "com.google.android.gms.ads.identifier.service.START";
    private static final String GOOGLE_PLAY_SERVICES_INTENT_PACKAGE_NAME = "com.google.android.gms";
    private static final String GOOGLE_PLAY_SERVICE_PACKAGE_NAME = "com.android.vending";
    private final Context context;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdvertisingInfoServiceStrategy(Context context) {
        this.context = context.getApplicationContext();
    }

    @Override // com.twitter.sdk.android.core.internal.AdvertisingInfoStrategy
    public AdvertisingInfo getAdvertisingInfo() {
        AdvertisingInfo advertisingInfo = null;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            Twitter.getLogger().mo1293d("Twitter", "AdvertisingInfoServiceStrategy cannot be called on the main thread");
        } else {
            try {
                PackageManager pm = this.context.getPackageManager();
                pm.getPackageInfo("com.android.vending", 0);
                AdvertisingConnection connection = new AdvertisingConnection();
                Intent intent = new Intent(GOOGLE_PLAY_SERVICES_INTENT);
                intent.setPackage("com.google.android.gms");
                try {
                    if (this.context.bindService(intent, connection, 1)) {
                        try {
                            AdvertisingInterface adInterface = new AdvertisingInterface(connection.getBinder());
                            AdvertisingInfo advertisingInfo2 = new AdvertisingInfo(adInterface.getId(), adInterface.isLimitAdTrackingEnabled());
                            this.context.unbindService(connection);
                            advertisingInfo = advertisingInfo2;
                        } catch (Exception e) {
                            Twitter.getLogger().mo1284w("Twitter", "Exception in binding to Google Play Service to capture AdvertisingId", e);
                            this.context.unbindService(connection);
                        }
                    } else {
                        Twitter.getLogger().mo1293d("Twitter", "Could not bind to Google Play Service to capture AdvertisingId");
                    }
                } catch (Throwable t) {
                    Twitter.getLogger().mo1292d("Twitter", "Could not bind to Google Play Service to capture AdvertisingId", t);
                }
            } catch (PackageManager.NameNotFoundException e2) {
                Twitter.getLogger().mo1293d("Twitter", "Unable to find Google Play Services package name");
            } catch (Exception e3) {
                Twitter.getLogger().mo1292d("Twitter", "Unable to determine if Google Play Services is available", e3);
            }
        }
        return advertisingInfo;
    }

    /* loaded from: classes2.dex */
    private static final class AdvertisingConnection implements ServiceConnection {
        private static final int QUEUE_TIMEOUT_IN_MS = 200;
        private final LinkedBlockingQueue<IBinder> queue;
        private boolean retrieved;

        private AdvertisingConnection() {
            this.queue = new LinkedBlockingQueue<>(1);
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName name, IBinder service) {
            try {
                this.queue.put(service);
            } catch (InterruptedException e) {
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName name) {
            this.queue.clear();
        }

        IBinder getBinder() {
            if (this.retrieved) {
                Twitter.getLogger().mo1291e("Twitter", "getBinder already called");
            }
            this.retrieved = true;
            try {
                return this.queue.poll(200L, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e) {
                return null;
            }
        }
    }

    /* loaded from: classes2.dex */
    private static final class AdvertisingInterface implements IInterface {
        private static final String ADVERTISING_ID_SERVICE_INTERFACE_TOKEN = "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService";
        private static final int AD_TRANSACTION_CODE_ID = 1;
        private static final int AD_TRANSACTION_CODE_LIMIT_AD_TRACKING = 2;
        private static final int FLAGS_NONE = 0;
        private final IBinder binder;

        private AdvertisingInterface(IBinder binder) {
            this.binder = binder;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.binder;
        }

        public String getId() throws RemoteException {
            Parcel data = Parcel.obtain();
            Parcel reply = Parcel.obtain();
            String id = null;
            try {
                data.writeInterfaceToken(ADVERTISING_ID_SERVICE_INTERFACE_TOKEN);
                this.binder.transact(1, data, reply, 0);
                reply.readException();
                id = reply.readString();
            } catch (Exception e) {
                Twitter.getLogger().mo1293d("Twitter", "Could not get parcel from Google Play Service to capture AdvertisingId");
            } finally {
                reply.recycle();
                data.recycle();
            }
            return id;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isLimitAdTrackingEnabled() throws RemoteException {
            Parcel data = Parcel.obtain();
            Parcel reply = Parcel.obtain();
            boolean limitAdTracking = false;
            try {
                data.writeInterfaceToken(ADVERTISING_ID_SERVICE_INTERFACE_TOKEN);
                data.writeInt(1);
                this.binder.transact(2, data, reply, 0);
                reply.readException();
                limitAdTracking = reply.readInt() != 0;
            } catch (Exception e) {
                Twitter.getLogger().mo1293d("Twitter", "Could not get parcel from Google Play Service to capture Advertising limitAdTracking");
            } finally {
                reply.recycle();
                data.recycle();
            }
            return limitAdTracking;
        }
    }
}
