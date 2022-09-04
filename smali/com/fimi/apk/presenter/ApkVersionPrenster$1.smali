.class Lcom/fimi/apk/presenter/ApkVersionPrenster$1;
.super Ljava/lang/Object;
.source "ApkVersionPrenster.java"

# interfaces
.implements Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/apk/presenter/ApkVersionPrenster;->getOnlineNewApkFileInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/apk/presenter/ApkVersionPrenster;

.field final synthetic val$savePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fimi/apk/presenter/ApkVersionPrenster;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/apk/presenter/ApkVersionPrenster;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/fimi/apk/presenter/ApkVersionPrenster$1;->this$0:Lcom/fimi/apk/presenter/ApkVersionPrenster;

    iput-object p2, p0, Lcom/fimi/apk/presenter/ApkVersionPrenster$1;->val$savePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Object;)V
    .locals 2
    .param p1, "reasonObj"    # Ljava/lang/Object;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/fimi/apk/presenter/ApkVersionPrenster$1;->this$0:Lcom/fimi/apk/presenter/ApkVersionPrenster;

    invoke-static {v0}, Lcom/fimi/apk/presenter/ApkVersionPrenster;->access$000(Lcom/fimi/apk/presenter/ApkVersionPrenster;)Lcom/fimi/apk/presenter/ApkVersionPrenster$onApkUpdateListerner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/fimi/apk/presenter/ApkVersionPrenster$1;->this$0:Lcom/fimi/apk/presenter/ApkVersionPrenster;

    invoke-static {v0}, Lcom/fimi/apk/presenter/ApkVersionPrenster;->access$000(Lcom/fimi/apk/presenter/ApkVersionPrenster;)Lcom/fimi/apk/presenter/ApkVersionPrenster$onApkUpdateListerner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fimi/apk/presenter/ApkVersionPrenster$onApkUpdateListerner;->haveUpdate(Z)V

    .line 68
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 7
    .param p1, "responseObj"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 43
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/fimi/network/entity/NetModel;

    invoke-static {v4, v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/network/entity/NetModel;

    .line 44
    .local v2, "netModel":Lcom/fimi/network/entity/NetModel;
    invoke-virtual {v2}, Lcom/fimi/network/entity/NetModel;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 45
    invoke-virtual {v2}, Lcom/fimi/network/entity/NetModel;->getData()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 46
    invoke-virtual {v2}, Lcom/fimi/network/entity/NetModel;->getData()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/fimi/network/entity/ApkVersionDto;

    invoke-static {v4, v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/network/entity/ApkVersionDto;

    .line 47
    .local v0, "dto":Lcom/fimi/network/entity/ApkVersionDto;
    new-instance v3, Ljava/net/URL;

    invoke-virtual {v0}, Lcom/fimi/network/entity/ApkVersionDto;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 48
    .local v3, "urlObj":Ljava/net/URL;
    iget-object v4, p0, Lcom/fimi/apk/presenter/ApkVersionPrenster$1;->this$0:Lcom/fimi/apk/presenter/ApkVersionPrenster;

    iget-object v5, p0, Lcom/fimi/apk/presenter/ApkVersionPrenster$1;->val$savePath:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lcom/fimi/apk/presenter/ApkVersionPrenster;->compareApkVersion(Lcom/fimi/network/entity/ApkVersionDto;Ljava/lang/String;)V

    .line 61
    .end local v0    # "dto":Lcom/fimi/network/entity/ApkVersionDto;
    .end local v2    # "netModel":Lcom/fimi/network/entity/NetModel;
    .end local v3    # "urlObj":Ljava/net/URL;
    :cond_0
    :goto_0
    return-void

    .line 51
    .restart local v2    # "netModel":Lcom/fimi/network/entity/NetModel;
    :cond_1
    iget-object v4, p0, Lcom/fimi/apk/presenter/ApkVersionPrenster$1;->this$0:Lcom/fimi/apk/presenter/ApkVersionPrenster;

    invoke-static {v4}, Lcom/fimi/apk/presenter/ApkVersionPrenster;->access$000(Lcom/fimi/apk/presenter/ApkVersionPrenster;)Lcom/fimi/apk/presenter/ApkVersionPrenster$onApkUpdateListerner;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 52
    iget-object v4, p0, Lcom/fimi/apk/presenter/ApkVersionPrenster$1;->this$0:Lcom/fimi/apk/presenter/ApkVersionPrenster;

    invoke-static {v4}, Lcom/fimi/apk/presenter/ApkVersionPrenster;->access$000(Lcom/fimi/apk/presenter/ApkVersionPrenster;)Lcom/fimi/apk/presenter/ApkVersionPrenster$onApkUpdateListerner;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/fimi/apk/presenter/ApkVersionPrenster$onApkUpdateListerner;->haveUpdate(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    .end local v2    # "netModel":Lcom/fimi/network/entity/NetModel;
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/fimi/apk/presenter/ApkVersionPrenster$1;->this$0:Lcom/fimi/apk/presenter/ApkVersionPrenster;

    invoke-static {v4}, Lcom/fimi/apk/presenter/ApkVersionPrenster;->access$000(Lcom/fimi/apk/presenter/ApkVersionPrenster;)Lcom/fimi/apk/presenter/ApkVersionPrenster$onApkUpdateListerner;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 57
    iget-object v4, p0, Lcom/fimi/apk/presenter/ApkVersionPrenster$1;->this$0:Lcom/fimi/apk/presenter/ApkVersionPrenster;

    invoke-static {v4}, Lcom/fimi/apk/presenter/ApkVersionPrenster;->access$000(Lcom/fimi/apk/presenter/ApkVersionPrenster;)Lcom/fimi/apk/presenter/ApkVersionPrenster$onApkUpdateListerner;

    move-result-object v4

    invoke-interface {v4, v6}, Lcom/fimi/apk/presenter/ApkVersionPrenster$onApkUpdateListerner;->haveUpdate(Z)V

    goto :goto_0
.end method
