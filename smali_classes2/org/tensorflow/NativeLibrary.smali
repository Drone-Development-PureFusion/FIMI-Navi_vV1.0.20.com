.class final Lorg/tensorflow/NativeLibrary;
.super Ljava/lang/Object;
.source "NativeLibrary.java"


# static fields
.field private static final DEBUG:Z

.field private static final JNI_LIBNAME:Ljava/lang/String; = "tensorflow_jni"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "org.tensorflow.NativeLibrary.DEBUG"

    .line 44
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/tensorflow/NativeLibrary;->DEBUG:Z

    .line 43
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static architecture()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    const-string v1, "os.arch"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "arch":Ljava/lang/String;
    const-string v1, "amd64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "x86_64"

    .end local v0    # "arch":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static copy(Ljava/io/InputStream;Ljava/io/File;)J
    .locals 8
    .param p0, "src"    # Ljava/io/InputStream;
    .param p1, "dstFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 189
    .local v1, "dst":Ljava/io/FileOutputStream;
    const/high16 v3, 0x100000

    :try_start_0
    new-array v0, v3, [B

    .line 190
    .local v0, "buffer":[B
    const-wide/16 v4, 0x0

    .line 191
    .local v4, "ret":J
    const/4 v2, 0x0

    .line 192
    .local v2, "n":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_0

    .line 193
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    int-to-long v6, v2

    add-long/2addr v4, v6

    goto :goto_0

    .line 198
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 199
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 196
    return-wide v4

    .line 198
    .end local v0    # "buffer":[B
    .end local v2    # "n":I
    .end local v4    # "ret":J
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 199
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v3
.end method

.method private static createTemporaryDirectory()Ljava/io/File;
    .locals 8

    .prologue
    .line 206
    new-instance v1, Ljava/io/File;

    const-string v4, "java.io.tmpdir"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    .local v1, "baseDirectory":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tensorflow_native_libraries-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "directoryName":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "attempt":I
    :goto_0
    const/16 v4, 0x3e8

    if-ge v0, v4, :cond_1

    .line 209
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 210
    .local v3, "temporaryDirectory":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 211
    return-object v3

    .line 208
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    .end local v3    # "temporaryDirectory":Ljava/io/File;
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not create a temporary directory (tried to make "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "*) to extract TensorFlow native libraries."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static extractResource(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "resource"    # Ljava/io/InputStream;
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "extractToDirectory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .local v0, "dst":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 151
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "dstPath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extracting native library to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/tensorflow/NativeLibrary;->log(Ljava/lang/String;)V

    .line 153
    invoke-static {p0, v0}, Lorg/tensorflow/NativeLibrary;->copy(Ljava/io/InputStream;Ljava/io/File;)J

    move-result-wide v2

    .line 154
    .local v2, "nbytes":J
    const-string v4, "copied %d bytes to %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/tensorflow/NativeLibrary;->log(Ljava/lang/String;)V

    .line 155
    return-object v1
.end method

.method private static isLoaded()Z
    .locals 2

    .prologue
    .line 121
    :try_start_0
    invoke-static {}, Lorg/tensorflow/TensorFlow;->version()Ljava/lang/String;

    .line 122
    const-string v1, "isLoaded: true"

    invoke-static {v1}, Lorg/tensorflow/NativeLibrary;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    const/4 v1, 0x1

    .line 125
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return v1

    .line 124
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 125
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static load()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 48
    invoke-static {}, Lorg/tensorflow/NativeLibrary;->isLoaded()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {}, Lorg/tensorflow/NativeLibrary;->tryLoadLibrary()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 107
    .local v1, "frameworkLibName":Ljava/lang/String;
    .local v2, "frameworkResource":Ljava/io/InputStream;
    .local v3, "frameworkResourceName":Ljava/lang/String;
    .local v4, "jniLibName":Ljava/lang/String;
    .local v5, "jniResource":Ljava/io/InputStream;
    .local v6, "jniResourceName":Ljava/lang/String;
    .local v7, "tempDirectory":Ljava/lang/String;
    .local v8, "tempPath":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 61
    .end local v1    # "frameworkLibName":Ljava/lang/String;
    .end local v2    # "frameworkResource":Ljava/io/InputStream;
    .end local v3    # "frameworkResourceName":Ljava/lang/String;
    .end local v4    # "jniLibName":Ljava/lang/String;
    .end local v5    # "jniResource":Ljava/io/InputStream;
    .end local v6    # "jniResourceName":Ljava/lang/String;
    .end local v7    # "tempDirectory":Ljava/lang/String;
    .end local v8    # "tempPath":Ljava/io/File;
    :cond_1
    const-string v9, "tensorflow_jni"

    invoke-static {v9}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    .restart local v4    # "jniLibName":Ljava/lang/String;
    invoke-static {v4}, Lorg/tensorflow/NativeLibrary;->makeResourceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 63
    .restart local v6    # "jniResourceName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "jniResourceName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/tensorflow/NativeLibrary;->log(Ljava/lang/String;)V

    .line 64
    const-class v9, Lorg/tensorflow/NativeLibrary;

    .line 65
    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 67
    .restart local v5    # "jniResource":Ljava/io/InputStream;
    const-string v9, "tensorflow_framework"

    .line 68
    invoke-static {v9}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/tensorflow/NativeLibrary;->maybeAdjustForMacOS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .restart local v1    # "frameworkLibName":Ljava/lang/String;
    invoke-static {v1}, Lorg/tensorflow/NativeLibrary;->makeResourceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    .restart local v3    # "frameworkResourceName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "frameworkResourceName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/tensorflow/NativeLibrary;->log(Ljava/lang/String;)V

    .line 71
    const-class v9, Lorg/tensorflow/NativeLibrary;

    .line 72
    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 75
    .restart local v2    # "frameworkResource":Ljava/io/InputStream;
    if-nez v5, :cond_2

    .line 76
    new-instance v9, Ljava/lang/UnsatisfiedLinkError;

    const-string v10, "Cannot find TensorFlow native library for OS: %s, architecture: %s. See https://github.com/tensorflow/tensorflow/tree/master/tensorflow/java/README.md for possible solutions (such as building the library from source). Additional information on attempts to find the native library can be obtained by adding org.tensorflow.NativeLibrary.DEBUG=1 to the system properties of the JVM."

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    .line 83
    invoke-static {}, Lorg/tensorflow/NativeLibrary;->os()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-static {}, Lorg/tensorflow/NativeLibrary;->architecture()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v14

    .line 77
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v9

    .line 87
    :cond_2
    :try_start_0
    invoke-static {}, Lorg/tensorflow/NativeLibrary;->createTemporaryDirectory()Ljava/io/File;

    move-result-object v8

    .line 90
    .restart local v8    # "tempPath":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->deleteOnExit()V

    .line 91
    invoke-virtual {v8}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    .line 92
    .restart local v7    # "tempDirectory":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 93
    invoke-static {v2, v1, v7}, Lorg/tensorflow/NativeLibrary;->extractResource(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    :goto_1
    invoke-static {v5, v4, v7}, Lorg/tensorflow/NativeLibrary;->extractResource(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 102
    .end local v7    # "tempDirectory":Ljava/lang/String;
    .end local v8    # "tempPath":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/IOException;
    new-instance v9, Ljava/lang/UnsatisfiedLinkError;

    const-string v10, "Unable to extract native library into a temporary file (%s)"

    new-array v11, v14, [Ljava/lang/Object;

    .line 105
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v13

    .line 104
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v9

    .line 95
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v7    # "tempDirectory":Ljava/lang/String;
    .restart local v8    # "tempPath":Ljava/io/File;
    :cond_3
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not found. This is fine assuming "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not built to depend on it."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/tensorflow/NativeLibrary;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 177
    sget-boolean v0, Lorg/tensorflow/NativeLibrary;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 178
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "org.tensorflow.NativeLibrary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 180
    :cond_0
    return-void
.end method

.method private static makeResourceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "baseName"    # Ljava/lang/String;

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "org/tensorflow/native/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%s-%s/"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lorg/tensorflow/NativeLibrary;->os()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lorg/tensorflow/NativeLibrary;->architecture()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static maybeAdjustForMacOS(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "libFilename"    # Ljava/lang/String;

    .prologue
    .line 130
    const-string v2, "os.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "OS X"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 144
    .end local p0    # "libFilename":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 135
    .restart local p0    # "libFilename":Ljava/lang/String;
    :cond_1
    const-class v2, Lorg/tensorflow/NativeLibrary;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 136
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-static {p0}, Lorg/tensorflow/NativeLibrary;->makeResourceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    if-nez v2, :cond_0

    .line 140
    const-string v1, ".dylib"

    .line 141
    .local v1, "suffix":Ljava/lang/String;
    const-string v2, ".dylib"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, ".dylib"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static os()Ljava/lang/String;
    .locals 3

    .prologue
    .line 159
    const-string v1, "os.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "p":Ljava/lang/String;
    const-string v1, "linux"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    const-string v1, "linux"

    .line 167
    :goto_0
    return-object v1

    .line 162
    :cond_0
    const-string v1, "os x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "darwin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    :cond_1
    const-string v1, "darwin"

    goto :goto_0

    .line 164
    :cond_2
    const-string v1, "windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 165
    const-string v1, "windows"

    goto :goto_0

    .line 167
    :cond_3
    const-string v1, "\\s"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static tryLoadLibrary()Z
    .locals 3

    .prologue
    .line 111
    :try_start_0
    const-string v1, "tensorflow_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    const/4 v1, 0x1

    .line 115
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return v1

    .line 113
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 114
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryLoadLibraryFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/tensorflow/NativeLibrary;->log(Ljava/lang/String;)V

    .line 115
    const/4 v1, 0x0

    goto :goto_0
.end method
