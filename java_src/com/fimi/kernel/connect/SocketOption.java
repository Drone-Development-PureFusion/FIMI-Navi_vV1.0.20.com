package com.fimi.kernel.connect;

import android.support.graphics.drawable.PathInterpolatorCompat;
/* loaded from: classes.dex */
public class SocketOption {
    private String host;
    private int port;
    private int bufferSize = com.fimi.kernel.connect.tcp.SocketOption.RECEIVE_BUFFER_SIZE;
    private String charSet = com.fimi.kernel.connect.tcp.SocketOption.DEFAULT_CHARSET;
    private boolean isAutoReconnect = false;
    private int outTime = PathInterpolatorCompat.MAX_NUM_POINTS;

    public int getBufferSize() {
        return this.bufferSize;
    }

    public void setBufferSize(int bufferSize) {
        this.bufferSize = bufferSize;
    }

    public String getCharSet() {
        return this.charSet;
    }

    public void setCharSet(String charSet) {
        this.charSet = charSet;
    }

    public boolean isAutoReconnect() {
        return this.isAutoReconnect;
    }

    public void setAutoReconnect(boolean autoReconnect) {
        this.isAutoReconnect = autoReconnect;
    }

    public String getHost() {
        return this.host;
    }

    public void setHost(String host) {
        this.host = host;
    }

    public int getPort() {
        return this.port;
    }

    public void setPort(int port) {
        this.port = port;
    }

    public int getOutTime() {
        return this.outTime;
    }

    public void setOutTime(int outTime) {
        this.outTime = outTime;
    }
}
