.class public final Lorg/tensorflow/TensorFlow;
.super Ljava/lang/Object;
.source "TensorFlow.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 70
    invoke-static {}, Lorg/tensorflow/TensorFlow;->init()V

    .line 71
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static init()V
    .locals 0

    .prologue
    .line 66
    invoke-static {}, Lorg/tensorflow/NativeLibrary;->load()V

    .line 67
    return-void
.end method

.method private static native libraryDelete(J)V
.end method

.method private static native libraryLoad(Ljava/lang/String;)J
.end method

.method private static native libraryOpList(J)[B
.end method

.method public static loadLibrary(Ljava/lang/String;)[B
    .locals 5
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 43
    const-wide/16 v2, 0x0

    .line 45
    .local v2, "h":J
    :try_start_0
    invoke-static {p0}, Lorg/tensorflow/TensorFlow;->libraryLoad(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 50
    :try_start_1
    invoke-static {v2, v3}, Lorg/tensorflow/TensorFlow;->libraryOpList(J)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 52
    invoke-static {v2, v3}, Lorg/tensorflow/TensorFlow;->libraryDelete(J)V

    .line 50
    return-object v1

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Lorg/tensorflow/TensorFlow;->libraryDelete(J)V

    throw v1
.end method

.method public static native registeredOpList()[B
.end method

.method public static native version()Ljava/lang/String;
.end method
