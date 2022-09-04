.class public Lcom/fimi/app/x8s/test/LogSaveLocalHelper;
.super Ljava/lang/Object;
.source "LogSaveLocalHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/test/LogSaveLocalHelper$FormatDate;,
        Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;
    }
.end annotation


# static fields
.field private static instance:Lcom/fimi/app/x8s/test/LogSaveLocalHelper;

.field private static tag:Ljava/lang/String;


# instance fields
.field private appid:I

.field private dirPath:Ljava/lang/String;

.field private logThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-object v0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper;->instance:Lcom/fimi/app/x8s/test/LogSaveLocalHelper;

    .line 27
    sput-object v0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper;->tag:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper;->appid:I

    .line 43
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "seeker"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper;->dirPath:Ljava/lang/String;

    .line 49
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper;->dirPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 53
    :cond_0
    return-void

    .line 47
    .end local v0    # "dir":Ljava/io/File;
    :cond_1
    iput-object p2, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper;->dirPath:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/fimi/app/x8s/test/LogSaveLocalHelper;
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 35
    sget-object v0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper;->instance:Lcom/fimi/app/x8s/test/LogSaveLocalHelper;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper;

    invoke-direct {v0, p0, p1}, Lcom/fimi/app/x8s/test/LogSaveLocalHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper;->instance:Lcom/fimi/app/x8s/test/LogSaveLocalHelper;

    .line 38
    :cond_0
    sget-object v0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper;->instance:Lcom/fimi/app/x8s/test/LogSaveLocalHelper;

    return-object v0
.end method


# virtual methods
.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 56
    sput-object p1, Lcom/fimi/app/x8s/test/LogSaveLocalHelper;->tag:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper;->logThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;

    iget v2, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper;->appid:I

    iget-object v3, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper;->dirPath:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/fimi/app/x8s/test/LogSaveLocalHelper$LogRunnable;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper;->logThread:Ljava/lang/Thread;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/test/LogSaveLocalHelper;->logThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 67
    return-void
.end method
