package com.umeng.commonsdk.statistics.internal;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.proguard.C2345b;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import com.umeng.commonsdk.statistics.UMServerURL;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.noise.ABTest;
import java.io.IOException;
import java.io.InputStream;
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
/* compiled from: NetworkHelper.java */
/* renamed from: com.umeng.commonsdk.statistics.internal.c */
/* loaded from: classes2.dex */
public class C2449c {

    /* renamed from: e */
    private static boolean f1349e = false;

    /* renamed from: a */
    private String f1350a = "10.0.0.172";

    /* renamed from: b */
    private int f1351b = 80;

    /* renamed from: c */
    private Context f1352c;

    /* renamed from: d */
    private AbstractC2448b f1353d;

    public C2449c(Context context) {
        this.f1352c = context;
    }

    /* renamed from: a */
    public void m232a(AbstractC2448b abstractC2448b) {
        this.f1353d = abstractC2448b;
    }

    /* renamed from: a */
    private void m233a() {
        String imprintProperty = UMEnvelopeBuild.imprintProperty(this.f1352c, "domain_p", "");
        String imprintProperty2 = UMEnvelopeBuild.imprintProperty(this.f1352c, "domain_s", "");
        if (!TextUtils.isEmpty(imprintProperty)) {
            UMServerURL.DEFAULT_URL = DataHelper.assembleURL(imprintProperty);
        }
        if (!TextUtils.isEmpty(imprintProperty2)) {
            UMServerURL.SECONDARY_URL = DataHelper.assembleURL(imprintProperty2);
        }
        AnalyticsConstants.APPLOG_URL_LIST = new String[]{UMServerURL.DEFAULT_URL, UMServerURL.SECONDARY_URL};
        int testPolicy = ABTest.getService(this.f1352c).getTestPolicy();
        if (testPolicy != -1) {
            if (testPolicy != 0) {
                if (testPolicy == 1) {
                    AnalyticsConstants.APPLOG_URL_LIST = new String[]{UMServerURL.SECONDARY_URL, UMServerURL.DEFAULT_URL};
                    return;
                }
                return;
            }
            AnalyticsConstants.APPLOG_URL_LIST = new String[]{UMServerURL.DEFAULT_URL, UMServerURL.SECONDARY_URL};
        }
    }

    /* renamed from: a */
    public byte[] m230a(byte[] bArr, boolean z) {
        byte[] bArr2 = null;
        m233a();
        int i = 0;
        while (true) {
            if (i >= AnalyticsConstants.APPLOG_URL_LIST.length) {
                break;
            }
            bArr2 = m231a(bArr, AnalyticsConstants.APPLOG_URL_LIST[i]);
            if (bArr2 != null) {
                if (this.f1353d != null) {
                    this.f1353d.onRequestSucceed(z);
                }
            } else {
                if (this.f1353d != null) {
                    this.f1353d.onRequestFailed();
                }
                i++;
            }
        }
        return bArr2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0056, code lost:
        if (r0.equals("uniwap") != false) goto L24;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean m229b() {
        ConnectivityManager connectivityManager;
        String extraInfo;
        if (this.f1352c.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", this.f1352c.getPackageName()) != 0) {
            return false;
        }
        try {
            connectivityManager = (ConnectivityManager) this.f1352c.getSystemService("connectivity");
        } catch (Throwable th) {
            C2345b.m708a(this.f1352c, th);
        }
        if (!DeviceConfig.checkPermission(this.f1352c, "android.permission.ACCESS_NETWORK_STATE")) {
            return false;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.getType() != 1 && (extraInfo = activeNetworkInfo.getExtraInfo()) != null) {
            if (!extraInfo.equals("cmwap") && !extraInfo.equals("3gwap")) {
            }
            return true;
        }
        return false;
    }

    /* renamed from: a */
    public byte[] m231a(byte[] bArr, String str) {
        OutputStream outputStream;
        HttpsURLConnection httpsURLConnection;
        OutputStream outputStream2;
        OutputStream outputStream3;
        try {
            try {
                if (this.f1353d != null) {
                    this.f1353d.onRequestStart();
                }
                if (m229b()) {
                    httpsURLConnection = (HttpsURLConnection) new URL(str).openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(this.f1350a, this.f1351b)));
                } else {
                    httpsURLConnection = (HttpsURLConnection) new URL(str).openConnection();
                }
            } catch (Throwable th) {
                th = th;
            }
            try {
                if (!f1349e) {
                    HttpsURLConnection.setDefaultHostnameVerifier(new X509HostnameVerifier() { // from class: com.umeng.commonsdk.statistics.internal.c.1
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
                    f1349e = true;
                }
                httpsURLConnection.setRequestProperty("X-Umeng-UTC", String.valueOf(System.currentTimeMillis()));
                httpsURLConnection.setRequestProperty("X-Umeng-Sdk", C2445a.m240a(this.f1352c).m238b());
                httpsURLConnection.setRequestProperty("Content-Type", C2445a.m240a(this.f1352c).m241a());
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
                    if (this.f1353d != null) {
                        this.f1353d.onRequestEnd();
                    }
                    int responseCode = httpsURLConnection.getResponseCode();
                    String headerField = httpsURLConnection.getHeaderField("Content-Type");
                    boolean z = !TextUtils.isEmpty(headerField) && headerField.equalsIgnoreCase("application/thrift");
                    if (AnalyticsConstants.UM_DEBUG) {
                        MLog.m394d("status code : " + responseCode + "; isThrifit:" + z);
                    }
                    if (responseCode != 200 || !z) {
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (Exception e) {
                                C2345b.m708a(this.f1352c, e);
                            }
                        }
                        if (httpsURLConnection != null) {
                            httpsURLConnection.disconnect();
                        }
                        return null;
                    }
                    MLog.m382i("Send message to server. status code is: " + responseCode);
                    InputStream inputStream = httpsURLConnection.getInputStream();
                    try {
                        byte[] readStreamToByteArray = HelperUtils.readStreamToByteArray(inputStream);
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (Exception e2) {
                                C2345b.m708a(this.f1352c, e2);
                            }
                        }
                        if (httpsURLConnection == null) {
                            return readStreamToByteArray;
                        }
                        httpsURLConnection.disconnect();
                        return readStreamToByteArray;
                    } finally {
                        HelperUtils.safeClose(inputStream);
                    }
                } catch (SSLHandshakeException e3) {
                    outputStream3 = outputStream;
                    if (outputStream3 != null) {
                        try {
                            outputStream3.close();
                        } catch (Exception e4) {
                            C2345b.m708a(this.f1352c, e4);
                        }
                    }
                    if (httpsURLConnection != null) {
                        httpsURLConnection.disconnect();
                    }
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    C2345b.m708a(this.f1352c, th);
                    if (outputStream != null) {
                        try {
                            outputStream.close();
                        } catch (Exception e5) {
                            C2345b.m708a(this.f1352c, e5);
                        }
                    }
                    if (httpsURLConnection != null) {
                        httpsURLConnection.disconnect();
                    }
                    return null;
                }
            } catch (SSLHandshakeException e6) {
                outputStream3 = null;
            } catch (Throwable th3) {
                th = th3;
                outputStream2 = null;
                if (outputStream2 != null) {
                    try {
                        outputStream2.close();
                    } catch (Exception e7) {
                        C2345b.m708a(this.f1352c, e7);
                    }
                }
                if (httpsURLConnection != null) {
                    httpsURLConnection.disconnect();
                }
                throw th;
            }
        } catch (SSLHandshakeException e8) {
            outputStream3 = null;
            httpsURLConnection = null;
        } catch (Throwable th4) {
            th = th4;
            outputStream = null;
            httpsURLConnection = null;
        }
    }
}
