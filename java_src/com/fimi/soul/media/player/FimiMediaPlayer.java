package com.fimi.soul.media.player;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.fimi.soul.media.player.annotations.AccessedByNative;
import com.fimi.soul.media.player.annotations.CalledByNative;
import com.fimi.soul.media.player.pragma.DebugLog;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes.dex */
public final class FimiMediaPlayer extends AbstractMediaPlayer {
    public static final int IJK_LOG_DEBUG = 3;
    public static final int IJK_LOG_DEFAULT = 1;
    public static final int IJK_LOG_ERROR = 6;
    public static final int IJK_LOG_FATAL = 7;
    public static final int IJK_LOG_INFO = 4;
    public static final int IJK_LOG_SILENT = 8;
    public static final int IJK_LOG_UNKNOWN = 0;
    public static final int IJK_LOG_VERBOSE = 2;
    public static final int IJK_LOG_WARN = 5;
    private static final int MEDIA_BUFFERING_UPDATE = 3;
    private static final int MEDIA_ERROR = 100;
    private static final int MEDIA_INFO = 200;
    private static final int MEDIA_NOP = 0;
    private static final int MEDIA_PLAYBACK_COMPLETE = 2;
    private static final int MEDIA_PREPARED = 1;
    private static final int MEDIA_SEEK_COMPLETE = 4;
    protected static final int MEDIA_SET_VIDEO_SAR = 10001;
    private static final int MEDIA_SET_VIDEO_SIZE = 5;
    private static final int MEDIA_TIMED_TEXT = 99;
    public static final int OPT_CATEGORY_CODEC = 2;
    public static final int OPT_CATEGORY_FORMAT = 1;
    public static final int OPT_CATEGORY_PLAYER = 4;
    public static final int OPT_CATEGORY_SWS = 3;
    public static final int SDL_FCC_RV16 = 909203026;
    public static final int SDL_FCC_RV32 = 842225234;
    public static final int SDL_FCC_YV12 = 842094169;
    private static FimiMediaPlayer fimiMediaPlayer;
    private String mDataSource;
    private EventHandler mEventHandler;
    @AccessedByNative
    private int mListenerContext;
    @AccessedByNative
    private long mNativeMediaPlayer;
    @AccessedByNative
    private int mNativeSurfaceTexture;
    private OnControlMessageListener mOnControlMessageListener;
    private OnMediaCodecSelectListener mOnMediaCodecSelectListener;
    private OnNativeInvokeListener mOnNativeInvokeListener;
    private boolean mScreenOnWhilePlaying;
    private boolean mStayAwake;
    private SurfaceHolder mSurfaceHolder;
    private int mVideoHeight;
    private int mVideoSarDen;
    private int mVideoSarNum;
    private int mVideoWidth;
    private PowerManager.WakeLock mWakeLock;
    private static final String TAG = FimiMediaPlayer.class.getName();
    private static FimiLibLoader sLocalLibLoader = new FimiLibLoader() { // from class: com.fimi.soul.media.player.FimiMediaPlayer.1
        @Override // com.fimi.soul.media.player.FimiLibLoader
        public void loadLibrary(String libName) throws UnsatisfiedLinkError, SecurityException {
            System.loadLibrary(libName);
        }
    };
    private static volatile boolean mIsLibLoaded = false;
    private static volatile boolean mIsNativeInitialized = false;

    /* loaded from: classes.dex */
    public interface OnControlMessageListener {
        String onControlResolveSegmentUrl(int i);
    }

    /* loaded from: classes.dex */
    public interface OnMediaCodecSelectListener {
        String onMediaCodecSelect(IMediaPlayer iMediaPlayer, String str, int i, int i2);
    }

    /* loaded from: classes.dex */
    public interface OnNativeInvokeListener {
        boolean onNativeInvoke(int i, Bundle bundle);
    }

    private native String _getAudioCodecInfo();

    private static native String _getColorFormatName(int i);

    private native Bundle _getMediaMeta();

    private native String _getVideoCodecInfo();

    private native void _pause() throws IllegalStateException;

    private native void _release();

    private native void _reset();

    private native void _setDataSource(String str, String[] strArr, String[] strArr2) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException;

    private native void _setDataSourceFd(int i) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException;

    private native void _setOption(int i, String str, long j);

    private native void _setOption(int i, String str, String str2);

    private native void _setVideoSurface(Surface surface);

    private native void _start() throws IllegalStateException;

    private native void _stop() throws IllegalStateException;

    private native int _stream2jpg(String str, String str2);

    private native void native_finalize();

    private static native void native_init();

    private native void native_message_loop(Object obj);

    public static native void native_profileBegin(String str);

    public static native void native_profileEnd();

    public static native void native_setLogLevel(int i);

    private native void native_setup(Object obj);

    public native int GetNetworkInfo(int[] iArr) throws IllegalStateException;

    public native int PreviewInputNetData(byte[] bArr, int i, int i2) throws IllegalStateException;

    public native int RtmpStart(String str, int i, int i2) throws IllegalStateException;

    public native int RtmpStop(int i) throws IllegalStateException;

    public native void _prepareAsync(int i, int i2) throws IllegalStateException;

    public native int fm_avp_concatVid(String str, String str2);

    public native int fm_avp_mergeAV(String str, String str2, String str3);

    public native int fm_avp_splitVid(String str, String str2, int i, int i2);

    public native int fm_avp_vid2img(String str, String str2);

    @Override // com.fimi.soul.media.player.IMediaPlayer
    public native int getAudioSessionId();

    @Override // com.fimi.soul.media.player.IMediaPlayer
    public native long getCurrentPosition();

    @Override // com.fimi.soul.media.player.IMediaPlayer
    public native long getDuration();

    @Override // com.fimi.soul.media.player.IMediaPlayer
    public native boolean isPlaying();

    @Override // com.fimi.soul.media.player.IMediaPlayer
    public native void seekTo(long j) throws IllegalStateException;

    @Override // com.fimi.soul.media.player.IMediaPlayer
    public native void setVolume(float f, float f2);

    public static void loadLibrariesOnce(FimiLibLoader libLoader) {
        synchronized (FimiMediaPlayer.class) {
            if (!mIsLibLoaded) {
                if (libLoader == null) {
                    libLoader = sLocalLibLoader;
                }
                libLoader.loadLibrary("fmffmpeg");
                libLoader.loadLibrary("fmsdl");
                libLoader.loadLibrary("fmplayer");
                mIsLibLoaded = true;
            }
        }
    }

    private static void initNativeOnce() {
        synchronized (FimiMediaPlayer.class) {
            File file = new File("FimiMediaPlayer.java");
            long time = file.lastModified();
            if (!mIsNativeInitialized) {
                native_init();
                mIsNativeInitialized = true;
                DebugLog.m1302w(TAG, "aizj version=" + time);
            }
        }
    }

    public FimiMediaPlayer() {
        this(sLocalLibLoader);
    }

    public static FimiMediaPlayer getIntance() {
        return fimiMediaPlayer == null ? new FimiMediaPlayer() : fimiMediaPlayer;
    }

    public FimiMediaPlayer(FimiLibLoader libLoader) {
        this.mWakeLock = null;
        initPlayer(libLoader);
    }

    private void initPlayer(FimiLibLoader libLoader) {
        loadLibrariesOnce(libLoader);
        initNativeOnce();
        Looper looper = Looper.myLooper();
        if (looper != null) {
            this.mEventHandler = new EventHandler(this, looper);
        } else {
            Looper looper2 = Looper.getMainLooper();
            if (looper2 != null) {
                this.mEventHandler = new EventHandler(this, looper2);
            } else {
                this.mEventHandler = null;
            }
        }
        native_setup(new WeakReference(this));
    }

    @Override // com.fimi.soul.media.player.IMediaPlayer
    public void setDisplay(SurfaceHolder sh) {
        Surface surface;
        this.mSurfaceHolder = sh;
        if (sh != null) {
            surface = sh.getSurface();
        } else {
            surface = null;
        }
        _setVideoSurface(surface);
        updateSurfaceScreenOn();
    }

    @Override // com.fimi.soul.media.player.IMediaPlayer
    public void setSurface(Surface surface) {
        if (this.mScreenOnWhilePlaying && surface != null) {
            DebugLog.m1302w(TAG, "setScreenOnWhilePlaying(true) is ineffective for Surface");
        }
        this.mSurfaceHolder = null;
        _setVideoSurface(surface);
        updateSurfaceScreenOn();
    }

    @Override // com.fimi.soul.media.player.IMediaPlayer
    public void setDataSource(Context context, Uri uri) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException {
        setDataSource(context, uri, (Map<String, String>) null);
    }

    @Override // com.fimi.soul.media.player.IMediaPlayer
    @TargetApi(14)
    public void setDataSource(Context context, Uri uri, Map<String, String> headers) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException {
        String scheme = uri.getScheme();
        if ("file".equals(scheme)) {
            setDataSource(uri.getPath());
        } else if ("content".equals(scheme) && "settings".equals(uri.getAuthority()) && (uri = RingtoneManager.getActualDefaultRingtoneUri(context, RingtoneManager.getDefaultType(uri))) == null) {
            throw new FileNotFoundException("Failed to resolve default ringtone");
        } else {
            AssetFileDescriptor fd = null;
            try {
                ContentResolver resolver = context.getContentResolver();
                AssetFileDescriptor fd2 = resolver.openAssetFileDescriptor(uri, "r");
                if (fd2 == null) {
                    if (fd2 == null) {
                        return;
                    }
                    fd2.close();
                    return;
                }
                if (fd2.getDeclaredLength() < 0) {
                    setDataSource(fd2.getFileDescriptor());
                } else {
                    setDataSource(fd2.getFileDescriptor(), fd2.getStartOffset(), fd2.getDeclaredLength());
                }
                if (fd2 == null) {
                    return;
                }
                fd2.close();
            } catch (IOException e) {
                if (0 != 0) {
                    fd.close();
                }
                Log.d(TAG, "Couldn't open file on client side, trying server side");
                setDataSource(uri.toString(), headers);
            } catch (SecurityException e2) {
                if (0 != 0) {
                    fd.close();
                }
                Log.d(TAG, "Couldn't open file on client side, trying server side");
                setDataSource(uri.toString(), headers);
            } catch (Throwable th) {
                if (0 != 0) {
                    fd.close();
                }
                throw th;
            }
        }
    }

    @Override // com.fimi.soul.media.player.IMediaPlayer
    public void setDataSource(String path) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException {
        this.mDataSource = path;
        _setDataSource(path, null, null);
    }

    public void setDataSource(String path, Map<String, String> headers) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException {
        if (headers != null && !headers.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            for (Map.Entry<String, String> entry : headers.entrySet()) {
                sb.append(entry.getKey());
                sb.append(":");
                String value = entry.getValue();
                if (!TextUtils.isEmpty(value)) {
                    sb.append(entry.getValue());
                }
                sb.append("\r\n");
            }
        }
        setDataSource(path);
    }

    @Override // com.fimi.soul.media.player.IMediaPlayer
    @TargetApi(13)
    public void setDataSource(FileDescriptor fd) throws IOException, IllegalArgumentException, IllegalStateException {
        if (Build.VERSION.SDK_INT < 12) {
            try {
                Field f = fd.getClass().getDeclaredField("descriptor");
                f.setAccessible(true);
                int native_fd = f.getInt(fd);
                _setDataSourceFd(native_fd);
                return;
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            } catch (NoSuchFieldException e2) {
                throw new RuntimeException(e2);
            }
        }
        ParcelFileDescriptor pfd = ParcelFileDescriptor.dup(fd);
        try {
            _setDataSourceFd(pfd.getFd());
        } finally {
            pfd.close();
        }
    }

    private void setDataSource(FileDescriptor fd, long offset, long length) throws IOException, IllegalArgumentException, IllegalStateException {
        setDataSource(fd);
    }

    @Override // com.fimi.soul.media.player.IMediaPlayer
    public String getDataSource() {
        return this.mDataSource;
    }

    @Override // com.fimi.soul.media.player.IMediaPlayer
    public void prepareAsync(int net_mode, int buffer_count) throws IllegalStateException {
        _prepareAsync(net_mode, buffer_count);
    }

    @Override // com.fimi.soul.media.player.IMediaPlayer
    public int PlayerPreviewInputNetData(byte[] net_buffer, int start_pos, int data_len) throws IllegalStateException {
        PreviewInputNetData(net_buffer, start_pos, data_len);
        return 0;
    }

    @Override // com.fimi.soul.media.player.IMediaPlayer
    public int PlayerGetNetworkInfo(int[] net_buffer) throws IllegalStateException {
        return GetNetworkInfo(net_buffer);
    }

    @Override // com.fimi.soul.media.player.IMediaPlayer
    public void start() throws IllegalStateException {
        stayAwake(true);
        _start();
    }

    @Override // com.fimi.soul.media.player.IMediaPlayer
    public void stop() throws IllegalStateException {
        stayAwake(false);
        _stop();
    }

    @Override // com.fimi.soul.media.player.IMediaPlayer
    public void pause() throws IllegalStateException {
        stayAwake(false);
        _pause();
    }

    @Override // com.fimi.soul.media.player.IMediaPlayer
    @SuppressLint({"Wakelock"})
    public void setWakeMode(Context context, int mode) {
        boolean washeld = false;
        if (this.mWakeLock != null) {
            if (this.mWakeLock.isHeld()) {
                washeld = true;
                this.mWakeLock.release();
            }
            this.mWakeLock = null;
        }
        PowerManager pm = (PowerManager) context.getSystemService("power");
        this.mWakeLock = pm.newWakeLock(536870912 | mode, FimiMediaPlayer.class.getName());
        this.mWakeLock.setReferenceCounted(false);
        if (washeld) {
            this.mWakeLock.acquire();
        }
    }

    @Override // com.fimi.soul.media.player.IMediaPlayer
    public void setScreenOnWhilePlaying(boolean screenOn) {
        if (this.mScreenOnWhilePlaying != screenOn) {
            if (screenOn && this.mSurfaceHolder == null) {
                DebugLog.m1302w(TAG, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder");
            }
            this.mScreenOnWhilePlaying = screenOn;
            updateSurfaceScreenOn();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"Wakelock"})
    public void stayAwake(boolean awake) {
        if (this.mWakeLock != null) {
            if (awake && !this.mWakeLock.isHeld()) {
                this.mWakeLock.acquire();
            } else if (!awake && this.mWakeLock.isHeld()) {
                this.mWakeLock.release();
            }
        }
        this.mStayAwake = awake;
        updateSurfaceScreenOn();
    }

    private void updateSurfaceScreenOn() {
        if (this.mSurfaceHolder != null) {
            this.mSurfaceHolder.setKeepScreenOn(this.mScreenOnWhilePlaying && this.mStayAwake);
        }
    }

    @Override // com.fimi.soul.media.player.IMediaPlayer
    public int getVideoWidth() {
        return this.mVideoWidth;
    }

    @Override // com.fimi.soul.media.player.IMediaPlayer
    public int getVideoHeight() {
        return this.mVideoHeight;
    }

    @Override // com.fimi.soul.media.player.IMediaPlayer
    public int getVideoSarNum() {
        return this.mVideoSarNum;
    }

    @Override // com.fimi.soul.media.player.IMediaPlayer
    public int getVideoSarDen() {
        return this.mVideoSarDen;
    }

    @Override // com.fimi.soul.media.player.IMediaPlayer
    public void release() {
        stayAwake(false);
        updateSurfaceScreenOn();
        resetListeners();
        _release();
    }

    @Override // com.fimi.soul.media.player.IMediaPlayer
    public void reset() {
        stayAwake(false);
        _reset();
        this.mEventHandler.removeCallbacksAndMessages(null);
        this.mVideoWidth = 0;
        this.mVideoHeight = 0;
    }

    @Override // com.fimi.soul.media.player.IMediaPlayer
    public MediaInfo getMediaInfo() {
        MediaInfo mediaInfo = new MediaInfo();
        mediaInfo.mMediaPlayerName = "ijkplayer";
        String videoCodecInfo = _getVideoCodecInfo();
        if (!TextUtils.isEmpty(videoCodecInfo)) {
            String[] nodes = videoCodecInfo.split(",");
            if (nodes.length >= 2) {
                mediaInfo.mVideoDecoder = nodes[0];
                mediaInfo.mVideoDecoderImpl = nodes[1];
            } else if (nodes.length >= 1) {
                mediaInfo.mVideoDecoder = nodes[0];
                mediaInfo.mVideoDecoderImpl = "";
            }
        }
        String audioCodecInfo = _getAudioCodecInfo();
        if (!TextUtils.isEmpty(audioCodecInfo)) {
            String[] nodes2 = audioCodecInfo.split(",");
            if (nodes2.length >= 2) {
                mediaInfo.mAudioDecoder = nodes2[0];
                mediaInfo.mAudioDecoderImpl = nodes2[1];
            } else if (nodes2.length >= 1) {
                mediaInfo.mAudioDecoder = nodes2[0];
                mediaInfo.mAudioDecoderImpl = "";
            }
        }
        try {
            mediaInfo.mMeta = FimiMediaMeta.parse(_getMediaMeta());
        } catch (Throwable e) {
            e.printStackTrace();
        }
        return mediaInfo;
    }

    @Override // com.fimi.soul.media.player.IMediaPlayer
    public void setLogEnabled(boolean enable) {
    }

    @Override // com.fimi.soul.media.player.IMediaPlayer
    public boolean isPlayable() {
        return true;
    }

    public boolean videoToJpg(String remoteUrl, String filename) {
        if (remoteUrl == null || "".equals(remoteUrl)) {
            return false;
        }
        int iRet = _stream2jpg(remoteUrl, filename);
        return iRet == 0;
    }

    public void setOption(int category, String name, String value) {
        _setOption(category, name, value);
    }

    public void setOption(int category, String name, long value) {
        _setOption(category, name, value);
    }

    public Bundle getMediaMeta() {
        return _getMediaMeta();
    }

    public static String getColorFormatName(int mediaCodecColorFormat) {
        return _getColorFormatName(mediaCodecColorFormat);
    }

    @Override // com.fimi.soul.media.player.IMediaPlayer
    public void setAudioStreamType(int streamtype) {
    }

    @Override // com.fimi.soul.media.player.IMediaPlayer
    public void setKeepInBackground(boolean keepInBackground) {
    }

    protected void finalize() {
        native_finalize();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class EventHandler extends Handler {
        private WeakReference<FimiMediaPlayer> mWeakPlayer;

        public EventHandler(FimiMediaPlayer mp, Looper looper) {
            super(looper);
            this.mWeakPlayer = new WeakReference<>(mp);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            FimiMediaPlayer player = this.mWeakPlayer.get();
            if (player == null || player.mNativeMediaPlayer == 0) {
                DebugLog.m1302w(FimiMediaPlayer.TAG, "FimiMediaPlayer went away with unhandled events");
                return;
            }
            switch (msg.what) {
                case 0:
                case 99:
                    return;
                case 1:
                    player.notifyOnPrepared();
                    return;
                case 2:
                    player.notifyOnCompletion();
                    player.stayAwake(false);
                    return;
                case 3:
                    long bufferPosition = msg.arg1;
                    if (bufferPosition < 0) {
                        bufferPosition = 0;
                    }
                    long percent = 0;
                    long duration = player.getDuration();
                    if (duration > 0) {
                        percent = (100 * bufferPosition) / duration;
                    }
                    if (percent >= 100) {
                        percent = 100;
                    }
                    player.notifyOnBufferingUpdate((int) percent);
                    return;
                case 4:
                    player.notifyOnSeekComplete();
                    return;
                case 5:
                    player.mVideoWidth = msg.arg1;
                    player.mVideoHeight = msg.arg2;
                    player.notifyOnVideoSizeChanged(player.mVideoWidth, player.mVideoHeight, player.mVideoSarNum, player.mVideoSarDen);
                    return;
                case 100:
                    DebugLog.m1308e(FimiMediaPlayer.TAG, "Error (" + msg.arg1 + "," + msg.arg2 + ")");
                    if (!player.notifyOnError(msg.arg1, msg.arg2)) {
                        player.notifyOnCompletion();
                    }
                    player.stayAwake(false);
                    return;
                case 200:
                    switch (msg.arg1) {
                        case 3:
                            DebugLog.m1306i(FimiMediaPlayer.TAG, "Info: MEDIA_INFO_VIDEO_RENDERING_START\n");
                            break;
                    }
                    player.notifyOnInfo(msg.arg1, msg.arg2);
                    return;
                case 10001:
                    player.mVideoSarNum = msg.arg1;
                    player.mVideoSarDen = msg.arg2;
                    player.notifyOnVideoSizeChanged(player.mVideoWidth, player.mVideoHeight, player.mVideoSarNum, player.mVideoSarDen);
                    return;
                default:
                    DebugLog.m1308e(FimiMediaPlayer.TAG, "Unknown message type " + msg.what);
                    return;
            }
        }
    }

    @CalledByNative
    private static void postEventFromNative(Object weakThiz, int what, int arg1, int arg2, Object obj) {
        FimiMediaPlayer mp;
        if (weakThiz != null && (mp = (FimiMediaPlayer) ((WeakReference) weakThiz).get()) != null) {
            if (what == 200 && arg1 == 2) {
                mp.start();
            }
            if (mp.mEventHandler != null) {
                Message m = mp.mEventHandler.obtainMessage(what, arg1, arg2, obj);
                mp.mEventHandler.sendMessage(m);
            }
        }
    }

    public void setOnControlMessageListener(OnControlMessageListener listener) {
        this.mOnControlMessageListener = listener;
    }

    @CalledByNative
    private static String onControlResolveSegmentUrl(Object weakThiz, int segment) {
        OnControlMessageListener listener;
        DebugLog.ifmt(TAG, "onControlResolveSegmentUrl %d", Integer.valueOf(segment));
        if (weakThiz == null || !(weakThiz instanceof WeakReference)) {
            return null;
        }
        WeakReference<FimiMediaPlayer> weakPlayer = (WeakReference) weakThiz;
        FimiMediaPlayer player = weakPlayer.get();
        if (player != null && (listener = player.mOnControlMessageListener) != null) {
            return listener.onControlResolveSegmentUrl(segment);
        }
        return null;
    }

    public void setOnNativeInvokeListener(OnNativeInvokeListener listener) {
        this.mOnNativeInvokeListener = listener;
    }

    @CalledByNative
    private static boolean onNativeInvoke(Object weakThiz, int what, Bundle args) {
        OnNativeInvokeListener listener;
        DebugLog.ifmt(TAG, "onNativeInvoke %d", Integer.valueOf(what));
        if (weakThiz == null || !(weakThiz instanceof WeakReference)) {
            return false;
        }
        WeakReference<FimiMediaPlayer> weakPlayer = (WeakReference) weakThiz;
        FimiMediaPlayer player = weakPlayer.get();
        if (player != null && (listener = player.mOnNativeInvokeListener) != null) {
            return listener.onNativeInvoke(what, args);
        }
        return false;
    }

    public void setOnMediaCodecSelectListener(OnMediaCodecSelectListener listener) {
        this.mOnMediaCodecSelectListener = listener;
    }

    @Override // com.fimi.soul.media.player.AbstractMediaPlayer
    public void resetListeners() {
        super.resetListeners();
        this.mOnMediaCodecSelectListener = null;
    }

    @CalledByNative
    private static String onSelectCodec(Object weakThiz, String mimeType, int profile, int level) {
        if (weakThiz == null || !(weakThiz instanceof WeakReference)) {
            return null;
        }
        WeakReference<FimiMediaPlayer> weakPlayer = (WeakReference) weakThiz;
        FimiMediaPlayer player = weakPlayer.get();
        if (player == null) {
            return null;
        }
        OnMediaCodecSelectListener listener = player.mOnMediaCodecSelectListener;
        if (listener == null) {
            listener = DefaultMediaCodecSelector.sInstance;
        }
        return listener.onMediaCodecSelect(player, mimeType, profile, level);
    }

    /* loaded from: classes.dex */
    public static class DefaultMediaCodecSelector implements OnMediaCodecSelectListener {
        public static DefaultMediaCodecSelector sInstance = new DefaultMediaCodecSelector();

        @Override // com.fimi.soul.media.player.FimiMediaPlayer.OnMediaCodecSelectListener
        @TargetApi(16)
        public String onMediaCodecSelect(IMediaPlayer mp, String mimeType, int profile, int level) {
            String[] types;
            FimiMediaCodecInfo candidate;
            if (Build.VERSION.SDK_INT >= 16 && !TextUtils.isEmpty(mimeType)) {
                Log.i(FimiMediaPlayer.TAG, String.format(Locale.US, "onSelectCodec: mime=%s, profile=%d, level=%d", mimeType, Integer.valueOf(profile), Integer.valueOf(level)));
                ArrayList<FimiMediaCodecInfo> candidateCodecList = new ArrayList<>();
                int numCodecs = MediaCodecList.getCodecCount();
                for (int i = 0; i < numCodecs; i++) {
                    MediaCodecInfo codecInfo = MediaCodecList.getCodecInfoAt(i);
                    Log.d(FimiMediaPlayer.TAG, String.format(Locale.US, "  found codec: %s", codecInfo.getName()));
                    if (!codecInfo.isEncoder() && (types = codecInfo.getSupportedTypes()) != null) {
                        for (String type : types) {
                            if (!TextUtils.isEmpty(type)) {
                                Log.d(FimiMediaPlayer.TAG, String.format(Locale.US, "    mime: %s", type));
                                if (type.equalsIgnoreCase(mimeType) && (candidate = FimiMediaCodecInfo.setupCandidate(codecInfo, mimeType)) != null) {
                                    candidateCodecList.add(candidate);
                                    Log.i(FimiMediaPlayer.TAG, String.format(Locale.US, "candidate codec: %s rank=%d", codecInfo.getName(), Integer.valueOf(candidate.mRank)));
                                    candidate.dumpProfileLevels(mimeType);
                                }
                            }
                        }
                    }
                }
                if (candidateCodecList.isEmpty()) {
                    return null;
                }
                FimiMediaCodecInfo bestCodec = candidateCodecList.get(0);
                Iterator<FimiMediaCodecInfo> it = candidateCodecList.iterator();
                while (it.hasNext()) {
                    FimiMediaCodecInfo codec = it.next();
                    if (codec.mRank > bestCodec.mRank) {
                        bestCodec = codec;
                    }
                }
                if (bestCodec.mRank < FimiMediaCodecInfo.RANK_LAST_CHANCE) {
                    Log.w(FimiMediaPlayer.TAG, String.format(Locale.US, "unaccetable codec: %s", bestCodec.mCodecInfo.getName()));
                    return null;
                }
                Log.i(FimiMediaPlayer.TAG, String.format(Locale.US, "selected codec: %s rank=%d", bestCodec.mCodecInfo.getName(), Integer.valueOf(bestCodec.mRank)));
                return bestCodec.mCodecInfo.getName();
            }
            return null;
        }
    }

    public int vid2imgArray(String inputUrl, String outUrl) {
        return fm_avp_vid2img(inputUrl, outUrl);
    }

    public int spliteVedio(String inputUrl, String outUrl, int start, int end) {
        return fm_avp_splitVid(inputUrl, outUrl, start, end);
    }

    public int concatVedio(String input_array, String outUrl) {
        return fm_avp_concatVid(input_array, outUrl);
    }

    public int mergeAudio2Vedio(String vedioUrl, String audioString, String outUrl) {
        return fm_avp_mergeAV(vedioUrl, audioString, outUrl);
    }

    @Override // com.fimi.soul.media.player.IMediaPlayer
    public int PlayerRtmpStart(String str_url, int net_mode, int audio_en) throws IllegalStateException {
        return RtmpStart(str_url, net_mode, audio_en);
    }

    @Override // com.fimi.soul.media.player.IMediaPlayer
    public int PlayerRtmpStop(int flag) throws IllegalStateException {
        return RtmpStop(flag);
    }
}
