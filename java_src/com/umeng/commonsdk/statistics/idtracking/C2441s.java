package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.fimi.kernel.connect.tcp.SocketOption;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLEncoder;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;
import org.apache.http.conn.ssl.BrowserCompatHostnameVerifier;
/* compiled from: UUIDTracker.java */
/* renamed from: com.umeng.commonsdk.statistics.idtracking.s */
/* loaded from: classes2.dex */
public class C2441s extends AbstractC2422a {

    /* renamed from: a */
    private static final String f1337a = "uuid";

    /* renamed from: e */
    private static final String f1338e = "yosuid";

    /* renamed from: f */
    private static final String f1339f = "23346339";

    /* renamed from: b */
    private Context f1340b;

    /* renamed from: c */
    private String f1341c;

    /* renamed from: d */
    private String f1342d;

    public C2441s(Context context) {
        super("uuid");
        this.f1340b = null;
        this.f1341c = null;
        this.f1342d = null;
        this.f1340b = context;
        this.f1341c = null;
        this.f1342d = null;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.AbstractC2422a
    /* renamed from: f */
    public String mo242f() {
        SharedPreferences sharedPreferences;
        SharedPreferences.Editor edit;
        try {
            if (!TextUtils.isEmpty(m244a("ro.yunos.version", "")) && this.f1340b != null && (sharedPreferences = PreferenceWrapper.getDefault(this.f1340b)) != null) {
                String string = sharedPreferences.getString(f1338e, "");
                if (TextUtils.isEmpty(string)) {
                    this.f1342d = m243b(f1339f);
                    if (!TextUtils.isEmpty(this.f1342d) && this.f1340b != null && sharedPreferences != null && (edit = sharedPreferences.edit()) != null) {
                        edit.putString(f1338e, this.f1342d).commit();
                    }
                    return this.f1342d;
                }
                return string;
            }
        } catch (Exception e) {
        }
        return null;
    }

    /* renamed from: b */
    private String m243b(String str) {
        Throwable th;
        BufferedReader bufferedReader;
        DataOutputStream dataOutputStream;
        InputStream inputStream;
        HttpsURLConnection httpsURLConnection;
        DataOutputStream dataOutputStream2;
        HttpsURLConnection httpsURLConnection2;
        BufferedReader bufferedReader2;
        this.f1342d = m244a("ro.yunos.openuuid", "");
        if (!TextUtils.isEmpty(this.f1342d)) {
            return this.f1342d;
        }
        this.f1341c = m244a("ro.aliyun.clouduuid", "");
        if (TextUtils.isEmpty(this.f1341c)) {
            this.f1341c = m244a("ro.sys.aliyun.clouduuid", "");
        }
        if (!TextUtils.isEmpty(this.f1341c)) {
            InputStream inputStream2 = null;
            BufferedReader bufferedReader3 = null;
            try {
                httpsURLConnection2 = (HttpsURLConnection) new URL("https://cmnsguider.yunos.com:443/genDeviceToken").openConnection();
                try {
                    httpsURLConnection2.setConnectTimeout(30000);
                    httpsURLConnection2.setReadTimeout(30000);
                    httpsURLConnection2.setRequestMethod("POST");
                    httpsURLConnection2.setDoInput(true);
                    httpsURLConnection2.setDoOutput(true);
                    httpsURLConnection2.setUseCaches(false);
                    httpsURLConnection2.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
                    httpsURLConnection2.setHostnameVerifier(new HostnameVerifier() { // from class: com.umeng.commonsdk.statistics.idtracking.s.1
                        @Override // javax.net.ssl.HostnameVerifier
                        public boolean verify(String str2, SSLSession sSLSession) {
                            return new BrowserCompatHostnameVerifier().verify("cmnsguider.yunos.com", sSLSession);
                        }
                    });
                    String str2 = "appKey=" + URLEncoder.encode("23338940", SocketOption.DEFAULT_CHARSET) + "&uuid=" + URLEncoder.encode("FC1FE84794417B1BEF276234F6FB4E63", SocketOption.DEFAULT_CHARSET);
                    dataOutputStream = new DataOutputStream(httpsURLConnection2.getOutputStream());
                    try {
                        try {
                            dataOutputStream.writeBytes(str2);
                            dataOutputStream.flush();
                            if (httpsURLConnection2.getResponseCode() == 200) {
                                try {
                                    inputStream = httpsURLConnection2.getInputStream();
                                    try {
                                        bufferedReader2 = new BufferedReader(new InputStreamReader(inputStream));
                                        try {
                                            StringBuffer stringBuffer = new StringBuffer();
                                            while (true) {
                                                String readLine = bufferedReader2.readLine();
                                                if (readLine == null) {
                                                    break;
                                                }
                                                stringBuffer.append(readLine);
                                            }
                                            if (stringBuffer != null) {
                                                this.f1342d = stringBuffer.toString();
                                            }
                                        } catch (Exception e) {
                                        } catch (Throwable th2) {
                                            th = th2;
                                            bufferedReader = bufferedReader2;
                                            httpsURLConnection = httpsURLConnection2;
                                            if (dataOutputStream != null) {
                                                try {
                                                    dataOutputStream.close();
                                                } catch (Exception e2) {
                                                }
                                            }
                                            if (bufferedReader != null) {
                                                try {
                                                    bufferedReader.close();
                                                } catch (Exception e3) {
                                                }
                                            }
                                            if (inputStream != null) {
                                                try {
                                                    inputStream.close();
                                                } catch (Exception e4) {
                                                }
                                            }
                                            if (httpsURLConnection != null) {
                                                httpsURLConnection.disconnect();
                                            }
                                            throw th;
                                        }
                                    } catch (Exception e5) {
                                        bufferedReader2 = null;
                                    } catch (Throwable th3) {
                                        th = th3;
                                        bufferedReader = null;
                                        httpsURLConnection = httpsURLConnection2;
                                    }
                                } catch (Exception e6) {
                                    bufferedReader2 = null;
                                    inputStream = null;
                                }
                            } else {
                                bufferedReader2 = null;
                                inputStream = null;
                            }
                            if (dataOutputStream != null) {
                                try {
                                    dataOutputStream.close();
                                } catch (Exception e7) {
                                }
                            }
                            if (bufferedReader2 != null) {
                                try {
                                    bufferedReader2.close();
                                } catch (Exception e8) {
                                }
                            }
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (Exception e9) {
                                }
                            }
                            if (httpsURLConnection2 != null) {
                                httpsURLConnection2.disconnect();
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            bufferedReader = null;
                            inputStream = null;
                            httpsURLConnection = httpsURLConnection2;
                        }
                    } catch (Exception e10) {
                        dataOutputStream2 = dataOutputStream;
                        if (dataOutputStream2 != null) {
                            try {
                                dataOutputStream2.close();
                            } catch (Exception e11) {
                            }
                        }
                        if (0 != 0) {
                            try {
                                bufferedReader3.close();
                            } catch (Exception e12) {
                            }
                        }
                        if (0 != 0) {
                            try {
                                inputStream2.close();
                            } catch (Exception e13) {
                            }
                        }
                        if (httpsURLConnection2 != null) {
                            httpsURLConnection2.disconnect();
                        }
                        return this.f1342d;
                    }
                } catch (Exception e14) {
                    dataOutputStream2 = null;
                } catch (Throwable th5) {
                    th = th5;
                    bufferedReader = null;
                    dataOutputStream = null;
                    inputStream = null;
                    httpsURLConnection = httpsURLConnection2;
                }
            } catch (Exception e15) {
                dataOutputStream2 = null;
                httpsURLConnection2 = null;
            } catch (Throwable th6) {
                th = th6;
                bufferedReader = null;
                dataOutputStream = null;
                inputStream = null;
                httpsURLConnection = null;
            }
        }
        return this.f1342d;
    }

    /* renamed from: a */
    public static String m244a(String str, String str2) {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, str2);
        } catch (Exception e) {
            return str2;
        }
    }
}
