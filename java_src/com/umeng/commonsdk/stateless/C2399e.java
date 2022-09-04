package com.umeng.commonsdk.stateless;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.umeng.commonsdk.proguard.C2345b;
import com.umeng.commonsdk.statistics.common.C2419e;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.MLog;
import java.io.IOException;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import org.apache.http.conn.ssl.X509HostnameVerifier;
/* compiled from: UMSLNetWorkSenderHelper.java */
/* renamed from: com.umeng.commonsdk.stateless.e */
/* loaded from: classes2.dex */
public class C2399e {

    /* renamed from: a */
    private String f1204a = "10.0.0.172";

    /* renamed from: b */
    private int f1205b = 80;

    /* renamed from: c */
    private Context f1206c;

    public C2399e(Context context) {
        this.f1206c = context;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x005a, code lost:
        if (r0.equals("uniwap") != false) goto L26;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean m425a() {
        String extraInfo;
        if (this.f1206c != null) {
            if (this.f1206c.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", this.f1206c.getPackageName()) != 0) {
                return false;
            }
            try {
                ConnectivityManager connectivityManager = (ConnectivityManager) this.f1206c.getSystemService("connectivity");
                if (!DeviceConfig.checkPermission(this.f1206c, "android.permission.ACCESS_NETWORK_STATE")) {
                    return false;
                }
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo != null && activeNetworkInfo.getType() != 1 && (extraInfo = activeNetworkInfo.getExtraInfo()) != null) {
                    if (!extraInfo.equals("cmwap") && !extraInfo.equals("3gwap")) {
                    }
                    return true;
                }
            } catch (Throwable th) {
                C2345b.m708a(this.f1206c, th);
            }
        }
        return false;
    }

    /* renamed from: a */
    public boolean m424a(byte[] bArr, String str) {
        HttpsURLConnection httpsURLConnection;
        OutputStream outputStream;
        boolean z;
        if (bArr != null) {
            try {
                if (str != null) {
                    try {
                        httpsURLConnection = m425a() ? (HttpsURLConnection) new URL("https://plbslog.umeng.com/" + str).openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(this.f1204a, this.f1205b))) : (HttpsURLConnection) new URL("https://plbslog.umeng.com/" + str).openConnection();
                    } catch (SSLHandshakeException e) {
                        e = e;
                        outputStream = null;
                        httpsURLConnection = null;
                    } catch (Throwable th) {
                        th = th;
                        outputStream = null;
                        httpsURLConnection = null;
                    }
                    try {
                        HttpsURLConnection.setDefaultHostnameVerifier(new X509HostnameVerifier() { // from class: com.umeng.commonsdk.stateless.e.1
                            @Override // org.apache.http.conn.ssl.X509HostnameVerifier, javax.net.ssl.HostnameVerifier
                            public boolean verify(String str2, SSLSession sSLSession) {
                                return true;
                            }

                            @Override // org.apache.http.conn.ssl.X509HostnameVerifier
                            public void verify(String str2, SSLSocket sSLSocket) throws IOException {
                            }

                            @Override // org.apache.http.conn.ssl.X509HostnameVerifier
                            public void verify(String str2, X509Certificate x509Certificate) throws SSLException {
                            }

                            @Override // org.apache.http.conn.ssl.X509HostnameVerifier
                            public void verify(String str2, String[] strArr, String[] strArr2) throws SSLException {
                            }
                        });
                        SSLContext sSLContext = SSLContext.getInstance("TLS");
                        sSLContext.init(null, null, new SecureRandom());
                        HttpsURLConnection.setDefaultSSLSocketFactory(sSLContext.getSocketFactory());
                        httpsURLConnection.setRequestProperty("X-Umeng-UTC", String.valueOf(System.currentTimeMillis()));
                        httpsURLConnection.setRequestProperty("Msg-Type", "envelope/json");
                        httpsURLConnection.setConnectTimeout(30000);
                        httpsURLConnection.setReadTimeout(30000);
                        httpsURLConnection.setRequestMethod("POST");
                        httpsURLConnection.setDoOutput(true);
                        httpsURLConnection.setDoInput(true);
                        httpsURLConnection.setUseCaches(false);
                        outputStream = httpsURLConnection.getOutputStream();
                        try {
                            outputStream.write(bArr);
                            outputStream.flush();
                            httpsURLConnection.connect();
                            z = httpsURLConnection.getResponseCode() == 200;
                            if (outputStream != null) {
                                try {
                                    outputStream.close();
                                } catch (Exception e2) {
                                }
                            }
                            if (httpsURLConnection != null) {
                                httpsURLConnection.disconnect();
                            }
                        } catch (SSLHandshakeException e3) {
                            e = e3;
                            MLog.m386e("SSLHandshakeException, Failed to send message.", e);
                            if (outputStream != null) {
                                try {
                                    outputStream.close();
                                } catch (Exception e4) {
                                }
                            }
                            if (httpsURLConnection != null) {
                                httpsURLConnection.disconnect();
                                z = false;
                                return z;
                            }
                            z = false;
                            return z;
                        } catch (Throwable th2) {
                            th = th2;
                            MLog.m386e("Exception,Failed to send message.", th);
                            C2345b.m708a(this.f1206c, th);
                            if (outputStream != null) {
                                try {
                                    outputStream.close();
                                } catch (Exception e5) {
                                }
                            }
                            if (httpsURLConnection != null) {
                                httpsURLConnection.disconnect();
                                z = false;
                                return z;
                            }
                            z = false;
                            return z;
                        }
                    } catch (SSLHandshakeException e6) {
                        e = e6;
                        outputStream = null;
                    } catch (Throwable th3) {
                        th = th3;
                        outputStream = null;
                    }
                    return z;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        }
        C2419e.m328a("walle", "[stateless] sendMessage, envelopeByte == null || path == null ");
        return false;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:40)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:203)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:46)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:40)
        */
    /* renamed from: b */
    public boolean m423b(byte[] r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.stateless.C2399e.m423b(byte[], java.lang.String):boolean");
    }
}
