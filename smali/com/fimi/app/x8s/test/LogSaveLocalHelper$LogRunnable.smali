.class Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;
.super Ljava/lang/Object;
.source "LogSaveLocalHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/test/LogSaveLocalHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogRunnable"
.end annotation


# instance fields
.field private cmds:Ljava/lang/String;

.field private fos:Ljava/io/FileOutputStream;

.field private mPid:Ljava/lang/String;

.field private mProcess:Ljava/lang/Process;

.field private mReader:Ljava/io/BufferedReader;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "dirPath"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->mPid:Ljava/lang/String;

    .line 80
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$FormatDate;->getFormatDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 84
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v2, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->fos:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logcat *:v | grep \"("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->mPid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->cmds:Ljava/lang/String;

    .line 89
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 94
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->cmds:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    iput-object v3, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->mProcess:Ljava/lang/Process;

    .line 95
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v5, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->mProcess:Ljava/lang/Process;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v5, 0x400

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v3, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->mReader:Ljava/io/BufferedReader;

    .line 97
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 98
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    iget-object v3, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->fos:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->mPid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    invoke-static {}, Lcom/fimi/app/x8s/test/LogSaveLocalHelper;->access$000()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/fimi/app/x8s/test/LogSaveLocalHelper;->access$000()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/fimi/app/x8s/test/LogSaveLocalHelper;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    :cond_1
    iget-object v3, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->fos:Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$FormatDate;->getFormatTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 107
    .end local v2    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    iget-object v3, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->mProcess:Ljava/lang/Process;

    if-eqz v3, :cond_2

    .line 111
    iget-object v3, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->mProcess:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 112
    iput-object v6, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->mProcess:Ljava/lang/Process;

    .line 115
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->mReader:Ljava/io/BufferedReader;

    if-eqz v3, :cond_3

    .line 116
    iget-object v3, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 117
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->mReader:Ljava/io/BufferedReader;

    .line 119
    :cond_3
    iget-object v3, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->fos:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_4

    .line 120
    iget-object v3, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 121
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->fos:Ljava/io/FileOutputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 127
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    return-void

    .line 110
    .restart local v2    # "line":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->mProcess:Ljava/lang/Process;

    if-eqz v3, :cond_6

    .line 111
    iget-object v3, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->mProcess:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 112
    iput-object v6, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->mProcess:Ljava/lang/Process;

    .line 115
    :cond_6
    :try_start_3
    iget-object v3, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->mReader:Ljava/io/BufferedReader;

    if-eqz v3, :cond_7

    .line 116
    iget-object v3, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 117
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->mReader:Ljava/io/BufferedReader;

    .line 119
    :cond_7
    iget-object v3, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->fos:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_4

    .line 120
    iget-object v3, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 121
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->fos:Ljava/io/FileOutputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 123
    :catch_1
    move-exception v1

    .line 124
    .local v1, "e2":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 123
    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v2    # "line":Ljava/lang/String;
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 124
    .restart local v1    # "e2":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e2":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->mProcess:Ljava/lang/Process;

    if-eqz v4, :cond_8

    .line 111
    iget-object v4, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->mProcess:Ljava/lang/Process;

    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    .line 112
    iput-object v6, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->mProcess:Ljava/lang/Process;

    .line 115
    :cond_8
    :try_start_4
    iget-object v4, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->mReader:Ljava/io/BufferedReader;

    if-eqz v4, :cond_9

    .line 116
    iget-object v4, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 117
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->mReader:Ljava/io/BufferedReader;

    .line 119
    :cond_9
    iget-object v4, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->fos:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_a

    .line 120
    iget-object v4, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 121
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;->fos:Ljava/io/FileOutputStream;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 126
    :cond_a
    :goto_2
    throw v3

    .line 123
    :catch_3
    move-exception v1

    .line 124
    .restart local v1    # "e2":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
