package com.fimi.kernel.network.okhttp.response;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.fimi.kernel.network.okhttp.exception.OkHttpException;
import com.fimi.kernel.network.okhttp.listener.DisposeDataHandle;
import com.fimi.kernel.network.okhttp.listener.DisposeDownloadListener;
import com.fimi.kernel.utils.LogUtil;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;
/* loaded from: classes.dex */
public class CommonFileCallback implements Callback {
    private static final int PROGRESS_MESSAGE = 1;
    DisposeDataHandle dataHandle;
    private String mFilePath;
    private DisposeDownloadListener mListener;
    private int mProgress;
    protected final int NETWORK_ERROR = -1;
    protected final int IO_ERROR = -2;
    protected final String EMPTY_MSG = "";
    private Handler mDeliveryHandler = new Handler(Looper.getMainLooper()) { // from class: com.fimi.kernel.network.okhttp.response.CommonFileCallback.1
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    CommonFileCallback.this.mListener.onProgress(msg.arg1, msg.arg2);
                    return;
                default:
                    return;
            }
        }
    };

    public CommonFileCallback(DisposeDataHandle handle) {
        this.mListener = (DisposeDownloadListener) handle.mListener;
        this.mFilePath = handle.mSource;
        this.dataHandle = handle;
    }

    @Override // okhttp3.Callback
    public void onFailure(Call call, final IOException ioexception) {
        this.mDeliveryHandler.post(new Runnable() { // from class: com.fimi.kernel.network.okhttp.response.CommonFileCallback.2
            @Override // java.lang.Runnable
            public void run() {
                CommonFileCallback.this.mListener.onFailure(new OkHttpException(-1, ioexception));
            }
        });
    }

    @Override // okhttp3.Callback
    public void onResponse(Call call, Response response) throws IOException {
        final File file = handleResponse(response);
        this.mDeliveryHandler.post(new Runnable() { // from class: com.fimi.kernel.network.okhttp.response.CommonFileCallback.3
            @Override // java.lang.Runnable
            public void run() {
                if (file != null) {
                    CommonFileCallback.this.mListener.onSuccess(file);
                } else {
                    CommonFileCallback.this.mListener.onFailure(new OkHttpException(-2, ""));
                }
            }
        });
    }

    private File handleResponse(Response response) {
        File file;
        File file2;
        FileOutputStream fos;
        if (response == null) {
            return null;
        }
        InputStream inputStream = null;
        FileOutputStream fos2 = null;
        byte[] buffer = new byte[20480];
        int currentLength = 0;
        try {
            try {
                checkLocalFilePath(this.mFilePath);
                file2 = new File(this.mFilePath);
                try {
                    fos = new FileOutputStream(file2);
                } catch (Exception e) {
                    e = e;
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
        try {
            inputStream = response.body().byteStream();
            double sumLength = response.body().contentLength();
            LogUtil.m1330d("moweiru", "dataHandle.isStop()" + this.dataHandle.isStop());
            do {
                int length = inputStream.read(buffer);
                if (length == -1) {
                    break;
                }
                fos.write(buffer, 0, length);
                currentLength += length;
                this.mProgress = (int) ((currentLength / sumLength) * 100.0d);
                Message message = new Message();
                message.what = 1;
                message.arg1 = this.mProgress;
                message.arg2 = currentLength;
                this.mDeliveryHandler.sendMessage(message);
            } while (!this.dataHandle.isStop());
            fos.flush();
            if (fos != null) {
                try {
                    fos.close();
                } catch (IOException e3) {
                    e3.printStackTrace();
                    fos2 = fos;
                    file = file2;
                }
            }
            if (inputStream != null) {
                inputStream.close();
            }
            fos2 = fos;
            file = file2;
        } catch (Exception e4) {
            e = e4;
            fos2 = fos;
            LogUtil.m1330d("moweiru", "file exception:" + e.getMessage());
            file = null;
            if (fos2 != null) {
                try {
                    fos2.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            if (inputStream != null) {
                inputStream.close();
            }
            return file;
        } catch (Throwable th3) {
            th = th3;
            fos2 = fos;
            if (fos2 != null) {
                try {
                    fos2.close();
                } catch (IOException e6) {
                    e6.printStackTrace();
                    throw th;
                }
            }
            if (inputStream != null) {
                inputStream.close();
            }
            throw th;
        }
        return file;
    }

    private void checkLocalFilePath(String localFilePath) {
        File path = new File(localFilePath.substring(0, localFilePath.lastIndexOf("/") + 1));
        File file = new File(localFilePath);
        if (!path.exists()) {
            path.mkdirs();
        }
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
