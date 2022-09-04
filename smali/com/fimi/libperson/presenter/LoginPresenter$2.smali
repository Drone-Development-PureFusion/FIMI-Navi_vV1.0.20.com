.class Lcom/fimi/libperson/presenter/LoginPresenter$2;
.super Ljava/lang/Object;
.source "LoginPresenter.java"

# interfaces
.implements Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/presenter/LoginPresenter;->loginByPhone(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libperson/presenter/LoginPresenter;

.field final synthetic val$phone:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/presenter/LoginPresenter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/presenter/LoginPresenter;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/fimi/libperson/presenter/LoginPresenter$2;->this$0:Lcom/fimi/libperson/presenter/LoginPresenter;

    iput-object p2, p0, Lcom/fimi/libperson/presenter/LoginPresenter$2;->val$phone:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Object;)V
    .locals 4
    .param p1, "reasonObj"    # Ljava/lang/Object;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/fimi/libperson/presenter/LoginPresenter$2;->this$0:Lcom/fimi/libperson/presenter/LoginPresenter;

    iget-object v0, v0, Lcom/fimi/libperson/presenter/LoginPresenter;->mView:Lcom/fimi/libperson/ivew/ILoginView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fimi/libperson/presenter/LoginPresenter$2;->this$0:Lcom/fimi/libperson/presenter/LoginPresenter;

    iget-object v2, v2, Lcom/fimi/libperson/presenter/LoginPresenter;->mContext:Landroid/content/Context;

    sget v3, Lcom/fimi/libperson/R$string;->network_exception:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/fimi/libperson/ivew/ILoginView;->iphoneLoginResult(ZLjava/lang/String;)V

    .line 115
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 5
    .param p1, "responseObj"    # Ljava/lang/Object;

    .prologue
    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/fimi/network/entity/NetModel;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/network/entity/NetModel;

    .line 101
    .local v0, "netModel":Lcom/fimi/network/entity/NetModel;
    invoke-virtual {v0}, Lcom/fimi/network/entity/NetModel;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/fimi/network/entity/NetModel;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/fimi/host/HostConstants;->saveUserDetail(Ljava/lang/Object;)V

    .line 103
    const-string v1, "0"

    iget-object v2, p0, Lcom/fimi/libperson/presenter/LoginPresenter$2;->val$phone:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/fimi/host/HostConstants;->saveUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/fimi/libperson/presenter/LoginPresenter$2;->this$0:Lcom/fimi/libperson/presenter/LoginPresenter;

    invoke-static {v1}, Lcom/fimi/libperson/presenter/LoginPresenter;->access$100(Lcom/fimi/libperson/presenter/LoginPresenter;)V

    .line 110
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/fimi/libperson/presenter/LoginPresenter$2;->this$0:Lcom/fimi/libperson/presenter/LoginPresenter;

    iget-object v1, v1, Lcom/fimi/libperson/presenter/LoginPresenter;->mView:Lcom/fimi/libperson/ivew/ILoginView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fimi/libperson/presenter/LoginPresenter$2;->this$0:Lcom/fimi/libperson/presenter/LoginPresenter;

    iget-object v3, v3, Lcom/fimi/libperson/presenter/LoginPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/fimi/network/entity/NetModel;->getErrCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fimi/network/ErrorMessage;->getUserModeErrorMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/fimi/libperson/ivew/ILoginView;->iphoneLoginResult(ZLjava/lang/String;)V

    goto :goto_0
.end method
