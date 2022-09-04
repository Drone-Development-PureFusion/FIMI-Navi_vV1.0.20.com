.class Lcom/fimi/libperson/presenter/ThirdLoginPresenter$4$1;
.super Ljava/lang/Object;
.source "ThirdLoginPresenter.java"

# interfaces
.implements Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/presenter/ThirdLoginPresenter$4;->loginSuccess(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fimi/libperson/presenter/ThirdLoginPresenter$4;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/presenter/ThirdLoginPresenter$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fimi/libperson/presenter/ThirdLoginPresenter$4;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter$4$1;->this$1:Lcom/fimi/libperson/presenter/ThirdLoginPresenter$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Object;)V
    .locals 4
    .param p1, "reasonObj"    # Ljava/lang/Object;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter$4$1;->this$1:Lcom/fimi/libperson/presenter/ThirdLoginPresenter$4;

    iget-object v0, v0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter$4;->this$0:Lcom/fimi/libperson/presenter/ThirdLoginPresenter;

    iget-object v0, v0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->loginView:Lcom/fimi/libperson/ivew/IThirdLoginView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter$4$1;->this$1:Lcom/fimi/libperson/presenter/ThirdLoginPresenter$4;

    iget-object v2, v2, Lcom/fimi/libperson/presenter/ThirdLoginPresenter$4;->this$0:Lcom/fimi/libperson/presenter/ThirdLoginPresenter;

    iget-object v2, v2, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->mContext:Landroid/content/Context;

    sget v3, Lcom/fimi/libperson/R$string;->network_exception:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/fimi/libperson/ivew/IThirdLoginView;->loginThirdListener(ZLjava/lang/String;)V

    .line 238
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 5
    .param p1, "responseObj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 224
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/fimi/network/entity/NetModel;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/network/entity/NetModel;

    .line 225
    .local v0, "netModel":Lcom/fimi/network/entity/NetModel;
    invoke-virtual {v0}, Lcom/fimi/network/entity/NetModel;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    invoke-virtual {v0}, Lcom/fimi/network/entity/NetModel;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/fimi/host/HostConstants;->saveUserDetail(Ljava/lang/Object;)V

    .line 227
    invoke-static {v3, v3}, Lcom/fimi/host/HostConstants;->saveUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter$4$1;->this$1:Lcom/fimi/libperson/presenter/ThirdLoginPresenter$4;

    iget-object v1, v1, Lcom/fimi/libperson/presenter/ThirdLoginPresenter$4;->this$0:Lcom/fimi/libperson/presenter/ThirdLoginPresenter;

    invoke-static {v1}, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->access$000(Lcom/fimi/libperson/presenter/ThirdLoginPresenter;)V

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter$4$1;->this$1:Lcom/fimi/libperson/presenter/ThirdLoginPresenter$4;

    iget-object v1, v1, Lcom/fimi/libperson/presenter/ThirdLoginPresenter$4;->this$0:Lcom/fimi/libperson/presenter/ThirdLoginPresenter;

    iget-object v1, v1, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->loginView:Lcom/fimi/libperson/ivew/IThirdLoginView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter$4$1;->this$1:Lcom/fimi/libperson/presenter/ThirdLoginPresenter$4;

    iget-object v3, v3, Lcom/fimi/libperson/presenter/ThirdLoginPresenter$4;->this$0:Lcom/fimi/libperson/presenter/ThirdLoginPresenter;

    iget-object v3, v3, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/fimi/network/entity/NetModel;->getErrCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fimi/network/ErrorMessage;->getUserModeErrorMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/fimi/libperson/ivew/IThirdLoginView;->loginThirdListener(ZLjava/lang/String;)V

    goto :goto_0
.end method
