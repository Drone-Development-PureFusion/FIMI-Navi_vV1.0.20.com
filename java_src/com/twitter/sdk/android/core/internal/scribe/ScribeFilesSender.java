package com.twitter.sdk.android.core.internal.scribe;

import android.content.Context;
import android.text.TextUtils;
import com.fimi.kernel.connect.tcp.SocketOption;
import com.twitter.sdk.android.core.GuestSessionProvider;
import com.twitter.sdk.android.core.Session;
import com.twitter.sdk.android.core.SessionManager;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.internal.CommonUtils;
import com.twitter.sdk.android.core.internal.IdManager;
import com.twitter.sdk.android.core.internal.network.GuestAuthInterceptor;
import com.twitter.sdk.android.core.internal.network.OAuth1aInterceptor;
import com.twitter.sdk.android.core.internal.network.OkHttpClientHelper;
import com.twitter.sdk.android.core.internal.scribe.QueueFile;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.ResponseBody;
import org.apache.mina.proxy.handlers.socks.SocksProxyConstants;
import retrofit2.Call;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.Headers;
import retrofit2.http.POST;
import retrofit2.http.Path;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ScribeFilesSender implements FilesSender {
    private static final String SEND_FILE_FAILURE_ERROR = "Failed sending files";
    private final TwitterAuthConfig authConfig;
    private final Context context;
    private final ExecutorService executorService;
    private final GuestSessionProvider guestSessionProvider;
    private final IdManager idManager;
    private final long ownerId;
    private final ScribeConfig scribeConfig;
    private final AtomicReference<ScribeService> scribeService = new AtomicReference<>();
    private final SessionManager<? extends Session<TwitterAuthToken>> sessionManager;
    private static final byte[] START_JSON_ARRAY = {SocksProxyConstants.V4_REPLY_REQUEST_REJECTED_OR_FAILED};
    private static final byte[] COMMA = {44};
    private static final byte[] END_JSON_ARRAY = {SocksProxyConstants.V4_REPLY_REQUEST_FAILED_ID_NOT_CONFIRMED};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface ScribeService {
        @FormUrlEncoded
        @Headers({"Content-Type: application/x-www-form-urlencoded;charset=UTF-8"})
        @POST("/{version}/jot/{type}")
        Call<ResponseBody> upload(@Path("version") String str, @Path("type") String str2, @Field("log[]") String str3);

        @FormUrlEncoded
        @Headers({"Content-Type: application/x-www-form-urlencoded;charset=UTF-8"})
        @POST("/scribe/{sequence}")
        Call<ResponseBody> uploadSequence(@Path("sequence") String str, @Field("log[]") String str2);
    }

    public ScribeFilesSender(Context context, ScribeConfig scribeConfig, long ownerId, TwitterAuthConfig authConfig, SessionManager<? extends Session<TwitterAuthToken>> sessionManager, GuestSessionProvider guestSessionProvider, ExecutorService executorService, IdManager idManager) {
        this.context = context;
        this.scribeConfig = scribeConfig;
        this.ownerId = ownerId;
        this.authConfig = authConfig;
        this.sessionManager = sessionManager;
        this.guestSessionProvider = guestSessionProvider;
        this.executorService = executorService;
        this.idManager = idManager;
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.FilesSender
    public boolean send(List<File> files) {
        if (hasApiAdapter()) {
            try {
                String scribeEvents = getScribeEventsAsJsonArrayString(files);
                CommonUtils.logControlled(this.context, scribeEvents);
                Response<ResponseBody> response = upload(scribeEvents);
                if (response.code() == 200) {
                    return true;
                }
                CommonUtils.logControlledError(this.context, SEND_FILE_FAILURE_ERROR, null);
                if (response.code() == 500) {
                    return true;
                }
                if (response.code() == 400) {
                    return true;
                }
            } catch (Exception e) {
                CommonUtils.logControlledError(this.context, SEND_FILE_FAILURE_ERROR, e);
            }
        } else {
            CommonUtils.logControlled(this.context, "Cannot attempt upload at this time");
        }
        return false;
    }

    String getScribeEventsAsJsonArrayString(List<File> files) throws IOException {
        QueueFile qf;
        final ByteArrayOutputStream out = new ByteArrayOutputStream(1024);
        final boolean[] appendComma = new boolean[1];
        out.write(START_JSON_ARRAY);
        for (File f : files) {
            QueueFile qf2 = null;
            try {
                qf = new QueueFile(f);
            } catch (Throwable th) {
                th = th;
            }
            try {
                qf.forEach(new QueueFile.ElementReader() { // from class: com.twitter.sdk.android.core.internal.scribe.ScribeFilesSender.1
                    @Override // com.twitter.sdk.android.core.internal.scribe.QueueFile.ElementReader
                    public void read(InputStream in, int length) throws IOException {
                        byte[] buf = new byte[length];
                        in.read(buf);
                        if (appendComma[0]) {
                            out.write(ScribeFilesSender.COMMA);
                        } else {
                            appendComma[0] = true;
                        }
                        out.write(buf);
                    }
                });
                CommonUtils.closeQuietly(qf);
            } catch (Throwable th2) {
                th = th2;
                qf2 = qf;
                CommonUtils.closeQuietly(qf2);
                throw th;
            }
        }
        out.write(END_JSON_ARRAY);
        return out.toString(SocketOption.DEFAULT_CHARSET);
    }

    private boolean hasApiAdapter() {
        return getScribeService() != null;
    }

    void setScribeService(ScribeService restAdapter) {
        this.scribeService.set(restAdapter);
    }

    /* JADX WARN: Multi-variable type inference failed */
    synchronized ScribeService getScribeService() {
        OkHttpClient client;
        if (this.scribeService.get() == null) {
            Session session = getSession(this.ownerId);
            if (isValidSession(session)) {
                client = new OkHttpClient.Builder().certificatePinner(OkHttpClientHelper.getCertificatePinner()).addInterceptor(new ConfigRequestInterceptor(this.scribeConfig, this.idManager)).addInterceptor(new OAuth1aInterceptor(session, this.authConfig)).build();
            } else {
                client = new OkHttpClient.Builder().certificatePinner(OkHttpClientHelper.getCertificatePinner()).addInterceptor(new ConfigRequestInterceptor(this.scribeConfig, this.idManager)).addInterceptor(new GuestAuthInterceptor(this.guestSessionProvider)).build();
            }
            Retrofit retrofit = new Retrofit.Builder().baseUrl(this.scribeConfig.baseUrl).client(client).build();
            this.scribeService.compareAndSet(null, retrofit.create(ScribeService.class));
        }
        return this.scribeService.get();
    }

    private Session getSession(long ownerId) {
        return this.sessionManager.getSession(ownerId);
    }

    private boolean isValidSession(Session session) {
        return (session == null || session.getAuthToken() == null) ? false : true;
    }

    Response<ResponseBody> upload(String scribeEvents) throws IOException {
        ScribeService service = getScribeService();
        if (!TextUtils.isEmpty(this.scribeConfig.sequence)) {
            return service.uploadSequence(this.scribeConfig.sequence, scribeEvents).execute();
        }
        return service.upload(this.scribeConfig.pathVersion, this.scribeConfig.pathType, scribeEvents).execute();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class ConfigRequestInterceptor implements Interceptor {
        private static final String CLIENT_UUID_HEADER = "X-Client-UUID";
        private static final String POLLING_HEADER = "X-Twitter-Polling";
        private static final String POLLING_HEADER_VALUE = "true";
        private static final String USER_AGENT_HEADER = "User-Agent";
        private final IdManager idManager;
        private final ScribeConfig scribeConfig;

        ConfigRequestInterceptor(ScribeConfig scribeConfig, IdManager idManager) {
            this.scribeConfig = scribeConfig;
            this.idManager = idManager;
        }

        @Override // okhttp3.Interceptor
        public okhttp3.Response intercept(Interceptor.Chain chain) throws IOException {
            Request.Builder builder = chain.request().newBuilder();
            if (!TextUtils.isEmpty(this.scribeConfig.userAgent)) {
                builder.header(USER_AGENT_HEADER, this.scribeConfig.userAgent);
            }
            if (!TextUtils.isEmpty(this.idManager.getDeviceUUID())) {
                builder.header(CLIENT_UUID_HEADER, this.idManager.getDeviceUUID());
            }
            builder.header(POLLING_HEADER, "true");
            return chain.proceed(builder.build());
        }
    }
}
