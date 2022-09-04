package com.fimi.album.download.task;

import android.support.graphics.drawable.PathInterpolatorCompat;
import com.fimi.album.download.entity.FileInfo;
import com.fimi.album.download.interfaces.OnDownloadListener;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
import java.net.URL;
import org.apache.mina.proxy.handlers.http.HttpProxyConstants;
/* loaded from: classes.dex */
public class DownloadTask implements Runnable {
    private int finished = 0;
    private FileInfo info;
    private OnDownloadListener listener;

    public DownloadTask(FileInfo info, OnDownloadListener listener) {
        this.info = info;
        this.listener = listener;
        info.setDownloading(true);
    }

    @Override // java.lang.Runnable
    public void run() {
        startDownload();
    }

    public void startBreakPoint() {
        getLength();
        download();
    }

    private void startDownload() {
        File dir = new File(this.info.getPath());
        if (!dir.exists()) {
            dir.mkdirs();
        }
        File file = new File(this.info.getPath(), this.info.getDownloadFileName());
        try {
            URL url = new URL(this.info.getUrl());
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setConnectTimeout(30000);
            conn.setReadTimeout(30000);
            conn.setInstanceFollowRedirects(true);
            InputStream is = conn.getInputStream();
            OutputStream os = new FileOutputStream(file);
            CopyStream(is, os);
            save(this.info);
            os.close();
            conn.disconnect();
        } catch (Throwable ex) {
            ex.printStackTrace();
        }
        if (this.info.isDownloadFinish()) {
            this.listener.onSuccess(this.info);
        } else {
            this.listener.onFailure(this.info);
        }
    }

    public void CopyStream(InputStream is, OutputStream os) {
        try {
            byte[] buffer = new byte[4096];
            while (true) {
                int len = is.read(buffer);
                if (len != -1) {
                    os.write(buffer, 0, len);
                    this.finished += len;
                    this.info.setFinished(this.finished);
                    this.listener.onProgress(this.info, this.info.getFinished(), this.info.getLength());
                    if (this.info.isStop()) {
                        this.info.setDownloading(false);
                        break;
                    }
                } else {
                    this.info.setDownloadFinish(true);
                    this.info.setDownloading(false);
                    break;
                }
            }
        } catch (Exception e) {
        }
    }

    public boolean save(FileInfo info) {
        File xmlFile = new File(info.getPath(), info.getFileName());
        File tmpFile = new File(info.getPath(), info.getDownloadFileName());
        return tmpFile.renameTo(xmlFile);
    }

    private void download() {
        int start;
        RandomAccessFile rwd;
        HttpURLConnection connection = null;
        RandomAccessFile rwd2 = null;
        try {
            try {
                URL url = new URL(this.info.getUrl());
                connection = (HttpURLConnection) url.openConnection();
                connection.setRequestMethod(HttpProxyConstants.GET);
                connection.setConnectTimeout(PathInterpolatorCompat.MAX_NUM_POINTS);
                start = this.info.getFinished();
                connection.setRequestProperty("Range", "bytes=" + start + "-" + this.info.getLength());
                File file = new File(this.info.getPath(), this.info.getDownloadFileName());
                rwd = new RandomAccessFile(file, "rwd");
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            rwd.seek(start);
            this.finished += this.info.getFinished();
            int d = connection.getResponseCode();
            if (d == 206) {
                InputStream is = connection.getInputStream();
                byte[] buffer = new byte[4096];
                do {
                    int len = is.read(buffer);
                    if (len != -1) {
                        rwd.write(buffer, 0, len);
                        this.finished += len;
                        this.info.setFinished(this.finished);
                        this.listener.onProgress(this.info, this.info.getFinished(), this.info.getLength());
                    } else {
                        this.info.setDownloading(false);
                        this.listener.onSuccess(this.info);
                        is.close();
                    }
                } while (!this.info.isStop());
                this.info.setDownloading(false);
                is.close();
                if (connection != null) {
                    connection.disconnect();
                }
                if (rwd != null) {
                    try {
                        rwd.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                }
                return;
            }
            if (connection != null) {
                connection.disconnect();
            }
            if (rwd != null) {
                try {
                    rwd.close();
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
            }
        } catch (Exception e4) {
            e = e4;
            rwd2 = rwd;
            e.printStackTrace();
            this.listener.onFailure(this.info);
            if (connection != null) {
                connection.disconnect();
            }
            if (rwd2 == null) {
                return;
            }
            try {
                rwd2.close();
            } catch (IOException e5) {
                e5.printStackTrace();
            }
        } catch (Throwable th2) {
            th = th2;
            rwd2 = rwd;
            if (connection != null) {
                connection.disconnect();
            }
            if (rwd2 != null) {
                try {
                    rwd2.close();
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
            }
            throw th;
        }
    }

    private void getLength() {
        HttpURLConnection connection = null;
        try {
            try {
                URL url = new URL(this.info.getUrl());
                connection = (HttpURLConnection) url.openConnection();
                connection.setRequestMethod(HttpProxyConstants.GET);
                connection.setConnectTimeout(PathInterpolatorCompat.MAX_NUM_POINTS);
                int length = -1;
                if (connection.getResponseCode() == 200) {
                    length = connection.getContentLength();
                }
                if (length <= 0) {
                    if (connection == null) {
                        return;
                    }
                    try {
                        connection.disconnect();
                        return;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                }
                File dir = new File(this.info.getPath());
                if (!dir.exists()) {
                    dir.mkdirs();
                }
                this.info.setLength(length);
                if (connection == null) {
                    return;
                }
                try {
                    connection.disconnect();
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            } catch (Exception e3) {
                e3.printStackTrace();
                if (connection == null) {
                    return;
                }
                try {
                    connection.disconnect();
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        } catch (Throwable th) {
            if (connection != null) {
                try {
                    connection.disconnect();
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
            }
            throw th;
        }
    }
}
