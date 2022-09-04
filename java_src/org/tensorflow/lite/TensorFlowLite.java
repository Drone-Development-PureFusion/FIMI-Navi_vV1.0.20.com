package org.tensorflow.lite;
/* loaded from: classes2.dex */
public final class TensorFlowLite {
    private static final String LIBNAME = "tensorflowlite_jni";

    public static native String version();

    private TensorFlowLite() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean init() {
        try {
            System.loadLibrary(LIBNAME);
            return true;
        } catch (UnsatisfiedLinkError e) {
            System.err.println("TensorFlowLite: failed to load native library: " + e.getMessage());
            return false;
        }
    }

    static {
        init();
    }
}
