.class final Lcom/fimi/kernel/utils/AbAppUtil$2;
.super Ljava/lang/Object;
.source "AbAppUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/kernel/utils/AbAppUtil;->runScript(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$m_process:Ljava/lang/Process;

.field final synthetic val$sbread:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Ljava/lang/Process;Ljava/lang/StringBuilder;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lcom/fimi/kernel/utils/AbAppUtil$2;->val$m_process:Ljava/lang/Process;

    iput-object p2, p0, Lcom/fimi/kernel/utils/AbAppUtil$2;->val$sbread:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 452
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/fimi/kernel/utils/AbAppUtil$2;->val$m_process:Ljava/lang/Process;

    .line 453
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x2000

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 455
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 457
    .local v2, "ls_1":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 458
    iget-object v3, p0, Lcom/fimi/kernel/utils/AbAppUtil$2;->val$sbread:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 460
    :catch_0
    move-exception v1

    .line 461
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 464
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 469
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 464
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 465
    :catch_1
    move-exception v1

    .line 466
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 465
    :catch_2
    move-exception v1

    .line 466
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 463
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 464
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 468
    :goto_2
    throw v3

    .line 465
    :catch_3
    move-exception v1

    .line 466
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
