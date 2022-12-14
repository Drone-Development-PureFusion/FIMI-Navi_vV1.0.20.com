package com.fimi.x8sdk.connect;

import android.content.Context;
import android.hardware.usb.UsbAccessory;
import com.fimi.kernel.connect.usb.IUSBStatusListener;
import com.fimi.x8sdk.connect.tcp.TcpConnectThread;
import com.fimi.x8sdk.connect.usb.UsbConnectThread;
/* loaded from: classes2.dex */
public class CommunicationManager implements IUSBStatusListener {
    public static CommunicationManager communicationManager = new CommunicationManager();
    UsbAccessory accessory;
    IConnectHandler connectThread;
    private boolean isExiting;

    public void setAccessory(UsbAccessory accessory) {
        this.accessory = accessory;
    }

    public static CommunicationManager getCommunicationManager() {
        return communicationManager;
    }

    public void startConnectThread(Context context, ConnectType type) {
        switch (type) {
            case Tcp:
                if (this.connectThread == null) {
                    this.connectThread = new TcpConnectThread(context);
                    return;
                }
                return;
            case Aoa:
                if (this.connectThread == null) {
                    this.connectThread = new UsbConnectThread(context, this.accessory, this);
                    return;
                }
                return;
            default:
                return;
        }
    }

    public void stopConnectThread() {
        if (this.connectThread != null) {
            synchronized (this.connectThread) {
                if (!this.isExiting) {
                    this.isExiting = true;
                    if (this.connectThread != null) {
                        this.connectThread.exit();
                        this.connectThread = null;
                    }
                    this.isExiting = false;
                }
            }
        }
    }

    @Override // com.fimi.kernel.connect.usb.IUSBStatusListener
    public void onAoaIoError(int type) {
        stopConnectThread();
    }
}
