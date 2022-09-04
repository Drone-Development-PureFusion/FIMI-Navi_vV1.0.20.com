package com.fimi.x8sdk.controller;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.hardware.usb.UsbAccessory;
import android.hardware.usb.UsbManager;
import com.fimi.x8sdk.connect.CommunicationManager;
import com.fimi.x8sdk.connect.ConnectType;
import com.fimi.x8sdk.listener.ConnectStatusListener;
/* loaded from: classes2.dex */
public class ConnectAOAManager {
    private static final String ACTION_USB_PERMISSION = "com.google.android.DemoKit.action.USB_PERMISSION";
    Context mContext;
    private PendingIntent mPermissionIntent;
    UsbManager usbManager;
    boolean isRequestPermission = false;
    private volatile boolean mConnected = false;
    ConnectStatusListener.IEngineCallback callback = this.callback;
    ConnectStatusListener.IEngineCallback callback = this.callback;

    public void conectAOA() {
        UsbAccessory accessory = null;
        if (!this.mConnected) {
            if (this.usbManager != null) {
                UsbAccessory[] accessories = this.usbManager.getAccessoryList();
                if (accessories != null) {
                    accessory = accessories[0];
                }
                if (accessory != null) {
                    if (this.usbManager.hasPermission(accessory)) {
                        CommunicationManager.getCommunicationManager().setAccessory(accessory);
                        CommunicationManager.getCommunicationManager().startConnectThread(this.mContext, ConnectType.Aoa);
                        this.callback.onConnected();
                        this.mConnected = true;
                    } else if (!this.isRequestPermission) {
                        this.usbManager.requestPermission(accessory, this.mPermissionIntent);
                        this.callback.onConnectionEstablished();
                        this.isRequestPermission = true;
                    }
                }
            }
        } else if (this.usbManager != null) {
            UsbAccessory[] accessories2 = this.usbManager.getAccessoryList();
            if (accessories2 != null) {
                accessory = accessories2[0];
            }
            if (accessory == null) {
                this.mConnected = false;
                this.callback.onConnectionClosed();
                CommunicationManager.getCommunicationManager().stopConnectThread();
            }
        }
    }

    public ConnectAOAManager(Context mContext) {
        this.mContext = mContext;
        this.mContext = mContext;
        this.usbManager = (UsbManager) mContext.getSystemService("usb");
        this.mPermissionIntent = PendingIntent.getBroadcast(mContext, 0, new Intent(ACTION_USB_PERMISSION), 0);
    }

    public void unConnectAOA() {
        CommunicationManager.getCommunicationManager().stopConnectThread();
        this.mConnected = false;
        this.callback.onConnectionClosed();
    }
}
