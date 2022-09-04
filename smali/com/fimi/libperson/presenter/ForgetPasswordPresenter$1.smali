.class Lcom/fimi/libperson/presenter/ForgetPasswordPresenter$1;
.super Ljava/lang/Object;
.source "ForgetPasswordPresenter.java"

# interfaces
.implements Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;->sendEmail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/fimi/libperson/presenter/ForgetPasswordPresenter$1;->this$0:Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Object;)V
    .locals 4
    .param p1, "reasonObj"    # Ljava/lang/Object;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ForgetPasswordPresenter$1;->this$0:Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;

    invoke-static {v0}, Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;->access$000(Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;)Lcom/fimi/libperson/ivew/IForgetPasswordView;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fimi/libperson/presenter/ForgetPasswordPresenter$1;->this$0:Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;

    iget-object v2, v2, Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;->mContext:Landroid/content/Context;

    sget v3, Lcom/fimi/libperson/R$string;->network_exception:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/fimi/libperson/ivew/IForgetPasswordView;->sendEmail(ZLjava/lang/String;)V

    .line 51
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 5
    .param p1, "responseObj"    # Ljava/lang/Object;

    .prologue
    .line 37
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/fimi/network/entity/NetModel;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/network/entity/NetModel;

    .line 38
    .local v0, "netModel":Lcom/fimi/network/entity/NetModel;
    invoke-virtual {v0}, Lcom/fimi/network/entity/NetModel;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/fimi/libperson/presenter/ForgetPasswordPresenter$1;->this$0:Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;

    invoke-static {v1}, Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;->access$000(Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;)Lcom/fimi/libperson/ivew/IForgetPasswordView;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/fimi/libperson/ivew/IForgetPasswordView;->sendEmail(ZLjava/lang/String;)V

    .line 46
    .end local v0    # "netModel":Lcom/fimi/network/entity/NetModel;
    :goto_0
    return-void

    .line 41
    .restart local v0    # "netModel":Lcom/fimi/network/entity/NetModel;
    :cond_0
    iget-object v1, p0, Lcom/fimi/libperson/presenter/ForgetPasswordPresenter$1;->this$0:Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;

    invoke-static {v1}, Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;->access$000(Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;)Lcom/fimi/libperson/ivew/IForgetPasswordView;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fimi/libperson/presenter/ForgetPasswordPresenter$1;->this$0:Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;

    iget-object v3, v3, Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/fimi/network/entity/NetModel;->getErrCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fimi/network/ErrorMessage;->getUserModeErrorMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/fimi/libperson/ivew/IForgetPasswordView;->sendEmail(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    .end local v0    # "netModel":Lcom/fimi/network/entity/NetModel;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
