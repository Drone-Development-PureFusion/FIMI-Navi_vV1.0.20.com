package com.fimi.kernel.network.okhttp.response;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.alibaba.fastjson.JSONObject;
import com.fimi.kernel.network.okhttp.exception.OkHttpException;
import com.fimi.kernel.network.okhttp.listener.DisposeDataHandle;
import com.fimi.kernel.network.okhttp.listener.DisposeDataListener;
import com.fimi.kernel.network.okhttp.listener.DisposeHandleCookieListener;
import com.fimi.kernel.utils.DesEncryptUtil;
import com.mp4parser.iso23009.part1.EventMessageBox;
import java.io.IOException;
import java.util.ArrayList;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Headers;
import okhttp3.Response;
/* loaded from: classes.dex */
public class CommonJsonCallback implements Callback {
    private boolean isArray;
    private Class<?> mClass;
    private DisposeDataListener mListener;
    protected final String RESULT_CODE = "ecode";
    protected final int RESULT_CODE_VALUE = 0;
    protected final String ERROR_MSG = EventMessageBox.TYPE;
    protected final String EMPTY_MSG = "";
    protected final String COOKIE_STORE = "Set-Cookie";
    protected final int NETWORK_ERROR = -1;
    protected final int JSON_ERROR = -2;
    protected final int OTHER_ERROR = -3;
    private Handler mDeliveryHandler = new Handler(Looper.getMainLooper());

    public CommonJsonCallback(DisposeDataHandle handle) {
        this.isArray = false;
        this.mListener = handle.mListener;
        this.mClass = handle.mClass;
        this.isArray = handle.isArray;
    }

    @Override // okhttp3.Callback
    public void onFailure(Call call, final IOException ioexception) {
        this.mDeliveryHandler.post(new Runnable() { // from class: com.fimi.kernel.network.okhttp.response.CommonJsonCallback.1
            @Override // java.lang.Runnable
            public void run() {
                CommonJsonCallback.this.mListener.onFailure(new OkHttpException(-1, ioexception));
            }
        });
    }

    @Override // okhttp3.Callback
    public void onResponse(Call call, Response response) throws IOException {
        final String result = DesEncryptUtil.getInstans().desCode(response.body().string(), "fimi??678");
        if (TextUtils.isEmpty(result) || !isJsonformat(result)) {
            this.mDeliveryHandler.post(new Runnable() { // from class: com.fimi.kernel.network.okhttp.response.CommonJsonCallback.2
                @Override // java.lang.Runnable
                public void run() {
                    CommonJsonCallback.this.mListener.onFailure(new OkHttpException(-1, null));
                }
            });
            return;
        }
        final ArrayList<String> cookieLists = handleCookie(response.headers());
        this.mDeliveryHandler.post(new Runnable() { // from class: com.fimi.kernel.network.okhttp.response.CommonJsonCallback.3
            @Override // java.lang.Runnable
            public void run() {
                CommonJsonCallback.this.handleResponse(result);
                if (CommonJsonCallback.this.mListener instanceof DisposeHandleCookieListener) {
                    ((DisposeHandleCookieListener) CommonJsonCallback.this.mListener).onCookie(cookieLists);
                }
            }
        });
    }

    private ArrayList<String> handleCookie(Headers headers) {
        ArrayList<String> tempList = new ArrayList<>();
        for (int i = 0; i < headers.size(); i++) {
            if (headers.name(i).equalsIgnoreCase("Set-Cookie")) {
                tempList.add(headers.value(i));
            }
        }
        return tempList;
    }

    public boolean isJsonformat(String reponse) {
        try {
            JSONObject.parseObject(reponse);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleResponse(Object responseObj) {
        if (responseObj != null) {
            this.mListener.onSuccess(responseObj);
        }
    }
}
