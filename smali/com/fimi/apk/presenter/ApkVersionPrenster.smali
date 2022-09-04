.class public Lcom/fimi/apk/presenter/ApkVersionPrenster;
.super Ljava/lang/Object;
.source "ApkVersionPrenster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/apk/presenter/ApkVersionPrenster$onShowDialogListerner;,
        Lcom/fimi/apk/presenter/ApkVersionPrenster$onApkUpdateListerner;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mApkVerisonView:Lcom/fimi/apk/iview/IApkVerisonView;

.field private mApkVersionManager:Lcom/fimi/network/ApkVersionManager;

.field private mOnApkUpdateListerner:Lcom/fimi/apk/presenter/ApkVersionPrenster$onApkUpdateListerner;

.field private mOnShowDialogListerner:Lcom/fimi/apk/presenter/ApkVersionPrenster$onShowDialogListerner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fimi/apk/iview/IApkVerisonView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mApkVerisonView"    # Lcom/fimi/apk/iview/IApkVerisonView;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/fimi/network/ApkVersionManager;

    invoke-direct {v0}, Lcom/fimi/network/ApkVersionManager;-><init>()V

    iput-object v0, p0, Lcom/fimi/apk/presenter/ApkVersionPrenster;->mApkVersionManager:Lcom/fimi/network/ApkVersionManager;

    .line 30
    iput-object p1, p0, Lcom/fimi/apk/presenter/ApkVersionPrenster;->context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/fimi/apk/presenter/ApkVersionPrenster;->mApkVerisonView:Lcom/fimi/apk/iview/IApkVerisonView;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/apk/presenter/ApkVersionPrenster;)Lcom/fimi/apk/presenter/ApkVersionPrenster$onApkUpdateListerner;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/apk/presenter/ApkVersionPrenster;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fimi/apk/presenter/ApkVersionPrenster;->mOnApkUpdateListerner:Lcom/fimi/apk/presenter/ApkVersionPrenster$onApkUpdateListerner;

    return-object v0
.end method


# virtual methods
.method public compareApkVersion(Lcom/fimi/network/entity/ApkVersionDto;Ljava/lang/String;)V
    .locals 4
    .param p1, "dto"    # Lcom/fimi/network/entity/ApkVersionDto;
    .param p2, "savePath"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/fimi/network/entity/ApkVersionDto;->getNewVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 74
    .local v1, "onlineVersion":I
    invoke-static {}, Lcom/fimi/kernel/utils/SystemParamUtil;->getVersionCode()I

    move-result v0

    .line 75
    .local v0, "localVersion":I
    if-le v1, v0, :cond_2

    .line 76
    iget-object v2, p0, Lcom/fimi/apk/presenter/ApkVersionPrenster;->mOnApkUpdateListerner:Lcom/fimi/apk/presenter/ApkVersionPrenster$onApkUpdateListerner;

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/fimi/apk/presenter/ApkVersionPrenster;->mOnApkUpdateListerner:Lcom/fimi/apk/presenter/ApkVersionPrenster$onApkUpdateListerner;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/fimi/apk/presenter/ApkVersionPrenster$onApkUpdateListerner;->haveUpdate(Z)V

    .line 79
    :cond_0
    iget-object v2, p0, Lcom/fimi/apk/presenter/ApkVersionPrenster;->mOnShowDialogListerner:Lcom/fimi/apk/presenter/ApkVersionPrenster$onShowDialogListerner;

    if-eqz v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/fimi/apk/presenter/ApkVersionPrenster;->mOnShowDialogListerner:Lcom/fimi/apk/presenter/ApkVersionPrenster$onShowDialogListerner;

    invoke-interface {v2, p1, p2}, Lcom/fimi/apk/presenter/ApkVersionPrenster$onShowDialogListerner;->showDialog(Lcom/fimi/network/entity/ApkVersionDto;Ljava/lang/String;)V

    .line 88
    :cond_1
    :goto_0
    return-void

    .line 84
    :cond_2
    iget-object v2, p0, Lcom/fimi/apk/presenter/ApkVersionPrenster;->mOnApkUpdateListerner:Lcom/fimi/apk/presenter/ApkVersionPrenster$onApkUpdateListerner;

    if-eqz v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/fimi/apk/presenter/ApkVersionPrenster;->mOnApkUpdateListerner:Lcom/fimi/apk/presenter/ApkVersionPrenster$onApkUpdateListerner;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/fimi/apk/presenter/ApkVersionPrenster$onApkUpdateListerner;->haveUpdate(Z)V

    goto :goto_0
.end method

.method public getOnlineNewApkFileInfo()V
    .locals 6

    .prologue
    .line 35
    invoke-static {}, Lcom/fimi/kernel/utils/SystemParamUtil;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "packageName":Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "splitName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fimi/kernel/utils/DirectoryPath;->getApkPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "savePath":Ljava/lang/String;
    iget-object v3, p0, Lcom/fimi/apk/presenter/ApkVersionPrenster;->mApkVersionManager:Lcom/fimi/network/ApkVersionManager;

    new-instance v4, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    new-instance v5, Lcom/fimi/apk/presenter/ApkVersionPrenster$1;

    invoke-direct {v5, p0, v1}, Lcom/fimi/apk/presenter/ApkVersionPrenster$1;-><init>(Lcom/fimi/apk/presenter/ApkVersionPrenster;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;)V

    invoke-virtual {v3, v0, v4}, Lcom/fimi/network/ApkVersionManager;->getOnlineNewApkFileInfo(Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V

    .line 70
    return-void
.end method

.method public setOnApkUpdateListerner(Lcom/fimi/apk/presenter/ApkVersionPrenster$onApkUpdateListerner;)V
    .locals 0
    .param p1, "onApkUpdateListerner"    # Lcom/fimi/apk/presenter/ApkVersionPrenster$onApkUpdateListerner;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/fimi/apk/presenter/ApkVersionPrenster;->mOnApkUpdateListerner:Lcom/fimi/apk/presenter/ApkVersionPrenster$onApkUpdateListerner;

    .line 96
    return-void
.end method

.method public setOnShowDialogListerner(Lcom/fimi/apk/presenter/ApkVersionPrenster$onShowDialogListerner;)V
    .locals 0
    .param p1, "onShowDialogListerner"    # Lcom/fimi/apk/presenter/ApkVersionPrenster$onShowDialogListerner;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/fimi/apk/presenter/ApkVersionPrenster;->mOnShowDialogListerner:Lcom/fimi/apk/presenter/ApkVersionPrenster$onShowDialogListerner;

    .line 100
    return-void
.end method

.method public showDialog(Lcom/fimi/network/entity/ApkVersionDto;Ljava/lang/String;)V
    .locals 1
    .param p1, "dto"    # Lcom/fimi/network/entity/ApkVersionDto;
    .param p2, "savePath"    # Ljava/lang/String;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/fimi/apk/presenter/ApkVersionPrenster;->mApkVerisonView:Lcom/fimi/apk/iview/IApkVerisonView;

    invoke-interface {v0, p1, p2}, Lcom/fimi/apk/iview/IApkVerisonView;->showNewApkVersionDialog(Lcom/fimi/network/entity/ApkVersionDto;Ljava/lang/String;)V

    .line 92
    return-void
.end method
