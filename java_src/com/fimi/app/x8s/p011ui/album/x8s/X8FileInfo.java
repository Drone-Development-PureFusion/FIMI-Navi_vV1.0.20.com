package com.fimi.app.x8s.p011ui.album.x8s;
/* renamed from: com.fimi.app.x8s.ui.album.x8s.X8FileInfo */
/* loaded from: classes.dex */
public class X8FileInfo {
    private boolean downloading;
    private String fileName;
    private int finished;
    private boolean isDownloadFinish;
    private boolean isStop = false;
    private int length;
    private String path;
    private String url;

    public boolean isDownloading() {
        return this.downloading;
    }

    public void setDownloading(boolean downloading) {
        this.downloading = downloading;
    }

    public String getPath() {
        return this.path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public void setDownloadFinish(boolean isDownloadFinish) {
        this.isDownloadFinish = isDownloadFinish;
    }

    public boolean isDownloadFinish() {
        return this.isDownloadFinish;
    }

    public String getDownloadFileName() {
        String downloadName = String.valueOf(this.url.hashCode());
        return downloadName;
    }

    public String getFileName() {
        return this.fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getUrl() {
        return this.url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public int getLength() {
        return this.length;
    }

    public void setLength(int length) {
        this.length = length;
    }

    public int getFinished() {
        return this.finished;
    }

    public void setFinished(int finished) {
        this.finished = finished;
    }

    public boolean isStop() {
        return this.isStop;
    }

    public void setStop(boolean stop) {
        this.isStop = stop;
    }
}
