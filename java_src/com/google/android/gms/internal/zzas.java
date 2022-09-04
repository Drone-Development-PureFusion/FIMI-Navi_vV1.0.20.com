package com.google.android.gms.internal;

import com.android.volley.toolbox.HttpClientStack;
import com.facebook.common.util.UriUtil;
import com.fimi.kernel.connect.tcp.SocketOption;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLSocketFactory;
import org.apache.mina.proxy.handlers.http.HttpProxyConstants;
/* loaded from: classes2.dex */
public final class zzas extends zzai {
    private final zzat zzcg;
    private final SSLSocketFactory zzch;

    public zzas() {
        this(null);
    }

    private zzas(zzat zzatVar) {
        this(null, null);
    }

    private zzas(zzat zzatVar, SSLSocketFactory sSLSocketFactory) {
        this.zzcg = null;
        this.zzch = null;
    }

    private static InputStream zza(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getInputStream();
        } catch (IOException e) {
            return httpURLConnection.getErrorStream();
        }
    }

    private static void zza(HttpURLConnection httpURLConnection, zzr<?> zzrVar) throws IOException, zza {
        byte[] zzf = zzrVar.zzf();
        if (zzf != null) {
            httpURLConnection.setDoOutput(true);
            String valueOf = String.valueOf(SocketOption.DEFAULT_CHARSET);
            httpURLConnection.addRequestProperty("Content-Type", valueOf.length() != 0 ? "application/x-www-form-urlencoded; charset=".concat(valueOf) : new String("application/x-www-form-urlencoded; charset="));
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.write(zzf);
            dataOutputStream.close();
        }
    }

    private static List<zzl> zzc(Map<String, List<String>> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            if (entry.getKey() != null) {
                for (String str : entry.getValue()) {
                    arrayList.add(new zzl(entry.getKey(), str));
                }
            }
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.zzai
    public final zzaq zza(zzr<?> zzrVar, Map<String, String> map) throws IOException, zza {
        String str;
        String url = zzrVar.getUrl();
        HashMap hashMap = new HashMap();
        hashMap.putAll(zzrVar.getHeaders());
        hashMap.putAll(map);
        if (this.zzcg != null) {
            str = this.zzcg.zzg(url);
            if (str == null) {
                String valueOf = String.valueOf(url);
                throw new IOException(valueOf.length() != 0 ? "URL blocked by rewriter: ".concat(valueOf) : new String("URL blocked by rewriter: "));
            }
        } else {
            str = url;
        }
        URL url2 = new URL(str);
        HttpURLConnection httpURLConnection = (HttpURLConnection) url2.openConnection();
        httpURLConnection.setInstanceFollowRedirects(HttpURLConnection.getFollowRedirects());
        int zzh = zzrVar.zzh();
        httpURLConnection.setConnectTimeout(zzh);
        httpURLConnection.setReadTimeout(zzh);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setDoInput(true);
        UriUtil.HTTPS_SCHEME.equals(url2.getProtocol());
        for (String str2 : hashMap.keySet()) {
            httpURLConnection.addRequestProperty(str2, (String) hashMap.get(str2));
        }
        switch (zzrVar.getMethod()) {
            case -1:
                break;
            case 0:
                httpURLConnection.setRequestMethod(HttpProxyConstants.GET);
                break;
            case 1:
                httpURLConnection.setRequestMethod("POST");
                zza(httpURLConnection, zzrVar);
                break;
            case 2:
                httpURLConnection.setRequestMethod(HttpProxyConstants.PUT);
                zza(httpURLConnection, zzrVar);
                break;
            case 3:
                httpURLConnection.setRequestMethod("DELETE");
                break;
            case 4:
                httpURLConnection.setRequestMethod("HEAD");
                break;
            case 5:
                httpURLConnection.setRequestMethod("OPTIONS");
                break;
            case 6:
                httpURLConnection.setRequestMethod("TRACE");
                break;
            case 7:
                httpURLConnection.setRequestMethod(HttpClientStack.HttpPatch.METHOD_NAME);
                zza(httpURLConnection, zzrVar);
                break;
            default:
                throw new IllegalStateException("Unknown method type.");
        }
        int responseCode = httpURLConnection.getResponseCode();
        if (responseCode == -1) {
            throw new IOException("Could not retrieve response code from HttpUrlConnection.");
        }
        return !(zzrVar.getMethod() != 4 && ((100 > responseCode || responseCode >= 200) && responseCode != 204 && responseCode != 304)) ? new zzaq(responseCode, zzc(httpURLConnection.getHeaderFields())) : new zzaq(responseCode, zzc(httpURLConnection.getHeaderFields()), httpURLConnection.getContentLength(), zza(httpURLConnection));
    }
}
