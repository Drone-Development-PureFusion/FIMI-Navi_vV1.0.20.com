package com.xiaomi.account.http;

import android.net.Network;
/* loaded from: classes2.dex */
public class HttpClientConfig {
    private static volatile long defaultConnectTimeoutMs = 10000;
    private static volatile long defaultWaitCellularTimeoutMs = 5000;
    public final long connectTimeoutMs;
    public final int netWorkSlotId;
    public final Network network;
    public final long readTimeoutMs;
    public final long waitCellularTimeoutMs;
    public final long writeTimeoutMs;

    private HttpClientConfig(Builder builder) {
        this.network = builder.network;
        this.netWorkSlotId = builder.netWorkSlotId;
        this.connectTimeoutMs = defaultConnectTimeoutMs;
        this.waitCellularTimeoutMs = defaultWaitCellularTimeoutMs;
        this.readTimeoutMs = 15000L;
        this.writeTimeoutMs = 15000L;
    }

    public static void setDefaultConnectTimeoutMs(long connectTimeoutMs) {
        defaultConnectTimeoutMs = connectTimeoutMs;
    }

    public static void setDefaultWaitCellularTimeoutMs(long defaultWaitCellularTimeoutMs2) {
        defaultWaitCellularTimeoutMs = defaultWaitCellularTimeoutMs2;
    }

    /* loaded from: classes2.dex */
    public static class Builder {
        int netWorkSlotId = -1;
        Network network;

        public Builder network(Network network) {
            this.network = network;
            return this;
        }

        public Builder useDataNetWork(int slotId) {
            this.netWorkSlotId = slotId;
            return this;
        }

        public HttpClientConfig build() {
            return new HttpClientConfig(this);
        }
    }
}
