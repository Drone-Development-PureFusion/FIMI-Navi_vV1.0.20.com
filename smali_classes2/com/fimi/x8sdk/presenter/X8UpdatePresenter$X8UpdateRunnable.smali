.class Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;
.super Ljava/lang/Object;
.source "X8UpdatePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "X8UpdateRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;


# direct methods
.method private constructor <init>(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;
    .param p2, "x1"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$1;

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;-><init>(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 187
    :try_start_0
    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    const-wide/16 v8, 0x0

    iput-wide v8, v6, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->offset:D

    .line 188
    new-instance v5, Ljava/io/RandomAccessFile;

    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;->PKG_UPDATE_FILE:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v7, "r"

    invoke-direct {v5, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 190
    .local v5, "randomFile":Ljava/io/RandomAccessFile;
    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v7, v8

    int-to-long v8, v7

    invoke-static {v6, v8, v9}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$102(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;J)J

    .line 191
    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v6}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$100(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)J

    move-result-wide v6

    const-wide/16 v8, 0x400

    div-long/2addr v6, v8

    long-to-int v4, v6

    .line 192
    .local v4, "packageNum":I
    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v6}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$100(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)J

    move-result-wide v6

    const-wide/16 v8, 0x400

    rem-long/2addr v6, v8

    long-to-int v3, v6

    .line 193
    .local v3, "packageMod":I
    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    sget-object v7, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;->updateFile:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    iput-object v7, v6, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateState:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    .line 194
    :goto_0
    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    iget-boolean v6, v6, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateFileEnd:Z

    if-nez v6, :cond_7

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_7

    .line 196
    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v6}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$200(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 270
    .end local v3    # "packageMod":I
    .end local v4    # "packageNum":I
    .end local v5    # "randomFile":Ljava/io/RandomAccessFile;
    :cond_0
    :goto_1
    return-void

    .line 197
    .restart local v3    # "packageMod":I
    .restart local v4    # "packageNum":I
    .restart local v5    # "randomFile":Ljava/io/RandomAccessFile;
    :cond_1
    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    iget-wide v6, v6, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->offset:D

    iget-object v8, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v8}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$100(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)J

    move-result-wide v8

    long-to-double v8, v8

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_6

    .line 198
    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    iget-wide v6, v6, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->offset:D

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    div-double/2addr v6, v8

    int-to-double v8, v4

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_4

    .line 200
    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    iget-wide v6, v6, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->offset:D

    double-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 201
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 203
    .local v0, "bytes":[B
    const/4 v6, 0x0

    const/16 v7, 0x400

    invoke-virtual {v5, v0, v6, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 204
    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    new-instance v7, Lcom/fimi/x8sdk/command/FwUpdateCollection;

    invoke-direct {v7}, Lcom/fimi/x8sdk/command/FwUpdateCollection;-><init>()V

    iget-object v8, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    iget-wide v8, v8, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->offset:D

    double-to-int v8, v8

    invoke-virtual {v7, v8, v0}, Lcom/fimi/x8sdk/command/FwUpdateCollection;->sendFwFileContent(I[B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 205
    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v6}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$300(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 206
    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    iget-object v7, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    iget-wide v8, v7, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->offset:D

    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    add-double/2addr v8, v10

    iput-wide v8, v6, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->offset:D

    .line 207
    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    iget-wide v6, v6, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->offset:D

    const-wide/high16 v8, 0x4049000000000000L    # 50.0

    mul-double/2addr v6, v8

    iget-object v8, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v8}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$100(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)J

    move-result-wide v8

    long-to-double v8, v8

    div-double/2addr v6, v8

    iget-object v8, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v8}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$400(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)I

    move-result v8

    int-to-double v8, v8

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_2

    .line 208
    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    iget-object v7, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    iget-wide v8, v7, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->offset:D

    const-wide/high16 v10, 0x4049000000000000L    # 50.0

    mul-double/2addr v8, v10

    iget-object v7, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v7}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$100(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)J

    move-result-wide v10

    long-to-double v10, v10

    div-double/2addr v8, v10

    double-to-int v7, v8

    invoke-static {v6, v7}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$402(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;I)I

    .line 209
    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v8}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$400(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$500(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;II)V

    .line 244
    .end local v0    # "bytes":[B
    :cond_2
    :goto_2
    const-wide/16 v6, 0x2

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 264
    .end local v3    # "packageMod":I
    .end local v4    # "packageNum":I
    .end local v5    # "randomFile":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v2

    .line 266
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 267
    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v6}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$600(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_1

    .line 213
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "bytes":[B
    .restart local v3    # "packageMod":I
    .restart local v4    # "packageNum":I
    .restart local v5    # "randomFile":Ljava/io/RandomAccessFile;
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$302(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;Z)Z

    goto :goto_2

    .line 222
    .end local v0    # "bytes":[B
    :cond_4
    new-array v1, v3, [B

    .line 223
    .local v1, "bytes2":[B
    mul-int/lit16 v6, v4, 0x400

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 224
    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 225
    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    new-instance v7, Lcom/fimi/x8sdk/command/FwUpdateCollection;

    invoke-direct {v7}, Lcom/fimi/x8sdk/command/FwUpdateCollection;-><init>()V

    iget-object v8, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    iget-wide v8, v8, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->offset:D

    double-to-int v8, v8

    invoke-virtual {v7, v8, v1}, Lcom/fimi/x8sdk/command/FwUpdateCollection;->sendFwFileContent(I[B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 226
    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v6}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$300(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 227
    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    iget-object v7, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    iget-wide v8, v7, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->offset:D

    int-to-double v10, v3

    add-double/2addr v8, v10

    iput-wide v8, v6, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->offset:D

    .line 228
    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    iget-wide v6, v6, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->offset:D

    const-wide/high16 v8, 0x4049000000000000L    # 50.0

    mul-double/2addr v6, v8

    iget-object v8, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v8}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$100(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)J

    move-result-wide v8

    long-to-double v8, v8

    div-double/2addr v6, v8

    iget-object v8, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v8}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$400(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)I

    move-result v8

    int-to-double v8, v8

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_2

    .line 229
    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    iget-object v7, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    iget-wide v8, v7, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->offset:D

    const-wide/high16 v10, 0x4049000000000000L    # 50.0

    mul-double/2addr v8, v10

    iget-object v7, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v7}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$100(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)J

    move-result-wide v10

    long-to-double v10, v10

    div-double/2addr v8, v10

    double-to-int v7, v8

    invoke-static {v6, v7}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$402(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;I)I

    .line 232
    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v8}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$400(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$500(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;II)V

    goto/16 :goto_2

    .line 235
    :cond_5
    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$302(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;Z)Z

    goto/16 :goto_2

    .line 247
    .end local v1    # "bytes2":[B
    :cond_6
    new-array v1, v3, [B

    .line 248
    .restart local v1    # "bytes2":[B
    mul-int/lit16 v6, v4, 0x400

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 249
    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 250
    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    new-instance v7, Lcom/fimi/x8sdk/command/FwUpdateCollection;

    invoke-direct {v7}, Lcom/fimi/x8sdk/command/FwUpdateCollection;-><init>()V

    iget-object v8, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$X8UpdateRunnable;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    iget-wide v8, v8, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->offset:D

    double-to-int v8, v8

    invoke-virtual {v7, v8, v1}, Lcom/fimi/x8sdk/command/FwUpdateCollection;->sendFwFileContent(I[B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 251
    const-wide/16 v6, 0x5

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    .line 261
    .end local v1    # "bytes2":[B
    :cond_7
    if-eqz v5, :cond_0

    .line 262
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
