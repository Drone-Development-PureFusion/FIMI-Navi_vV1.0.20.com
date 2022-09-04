.class public Lcom/fimi/app/x8s/media/WorkThread;
.super Ljava/lang/Thread;
.source "WorkThread.java"


# instance fields
.field private filePath:Ljava/lang/String;

.field isLoop:Z

.field private final mFimiH264Video:Lcom/fimi/app/x8s/media/FimiH264Video;


# direct methods
.method public constructor <init>(Lcom/fimi/app/x8s/media/FimiH264Video;)V
    .locals 2
    .param p1, "mFimiH264Video"    # Lcom/fimi/app/x8s/media/FimiH264Video;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/test.h264"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/media/WorkThread;->filePath:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/fimi/app/x8s/media/WorkThread;->mFimiH264Video:Lcom/fimi/app/x8s/media/FimiH264Video;

    .line 23
    return-void
.end method


# virtual methods
.method public readType1()V
    .locals 7

    .prologue
    .line 41
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/test.h264"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fimi/app/x8s/media/WorkThread;->filePath:Ljava/lang/String;

    .line 42
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/fimi/app/x8s/media/WorkThread;->filePath:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 44
    .local v3, "in":Ljava/io/InputStream;
    if-eqz v3, :cond_0

    .line 45
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 47
    .local v0, "buf":[B
    :goto_0
    iget-boolean v5, p0, Lcom/fimi/app/x8s/media/WorkThread;->isLoop:Z

    if-nez v5, :cond_1

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "len":I
    if-lez v4, :cond_1

    .line 48
    new-array v1, v4, [B

    .line 49
    .local v1, "data":[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v0, v5, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    iget-object v5, p0, Lcom/fimi/app/x8s/media/WorkThread;->mFimiH264Video:Lcom/fimi/app/x8s/media/FimiH264Video;

    invoke-virtual {v5, v1}, Lcom/fimi/app/x8s/media/FimiH264Video;->onRawdataCallBack([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    .end local v0    # "buf":[B
    .end local v1    # "data":[B
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "len":I
    :catch_0
    move-exception v2

    .line 58
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-void

    .line 53
    .restart local v0    # "buf":[B
    .restart local v3    # "in":Ljava/io/InputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public readType2()V
    .locals 9

    .prologue
    .line 63
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/zdy.h264"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/fimi/app/x8s/media/WorkThread;->filePath:Ljava/lang/String;

    .line 64
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/fimi/app/x8s/media/WorkThread;->filePath:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 65
    .local v5, "in":Ljava/io/InputStream;
    const/4 v7, 0x2

    new-array v3, v7, [B

    .line 66
    .local v3, "data":[B
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 67
    .local v0, "availableLen":I
    const/4 v2, 0x0

    .line 68
    .local v2, "count":I
    const/4 v6, 0x0

    .line 69
    .local v6, "len":I
    :goto_0
    iget-boolean v7, p0, Lcom/fimi/app/x8s/media/WorkThread;->isLoop:Z

    if-nez v7, :cond_0

    if-ge v2, v0, :cond_0

    .line 70
    invoke-virtual {v5, v3}, Ljava/io/InputStream;->read([B)I

    .line 71
    add-int/lit8 v2, v2, 0x2

    .line 72
    const/4 v7, 0x0

    aget-byte v7, v3, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    const/4 v8, 0x1

    aget-byte v8, v3, v8

    and-int/lit16 v8, v8, 0xff

    or-int v6, v7, v8

    .line 73
    new-array v1, v6, [B

    .line 74
    .local v1, "cmd":[B
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    .line 75
    add-int/2addr v2, v6

    .line 76
    iget-object v7, p0, Lcom/fimi/app/x8s/media/WorkThread;->mFimiH264Video:Lcom/fimi/app/x8s/media/FimiH264Video;

    invoke-virtual {v7, v1}, Lcom/fimi/app/x8s/media/FimiH264Video;->onRawdataCallBack([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    .end local v0    # "availableLen":I
    .end local v1    # "cmd":[B
    .end local v2    # "count":I
    .end local v3    # "data":[B
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v6    # "len":I
    :catch_0
    move-exception v4

    .line 81
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/fimi/app/x8s/X8Application;->Type2:Z

    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/fimi/app/x8s/media/WorkThread;->readType1()V

    .line 37
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/media/WorkThread;->readType2()V

    goto :goto_0
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/media/WorkThread;->isLoop:Z

    .line 27
    return-void
.end method
