.class Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter$2;
.super Ljava/lang/Object;
.source "ForgetIphonePasswordPresenter.java"

# interfaces
.implements Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->sendIphone(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter$2;->this$0:Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Object;)V
    .locals 4
    .param p1, "reasonObj"    # Ljava/lang/Object;

    .prologue
    .line 85
    const-string v0, "ForgetIphonePasswordPre"

    const-string v1, "onFailure: 4"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter$2;->this$0:Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;

    invoke-static {v0}, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->access$100(Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;)Lcom/fimi/libperson/ivew/IForgetIphonePasswordView;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter$2;->this$0:Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;

    iget-object v2, v2, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->mContext:Landroid/content/Context;

    sget v3, Lcom/fimi/libperson/R$string;->network_exception:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/fimi/libperson/ivew/IForgetIphonePasswordView;->sendIphone(ZLjava/lang/String;)V

    .line 87
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 7
    .param p1, "responseObj"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 64
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/fimi/network/entity/NetModel;

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/network/entity/NetModel;

    .line 65
    .local v1, "netModel":Lcom/fimi/network/entity/NetModel;
    const-string v2, "ForgetIphonePasswordPre"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSuccess: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/fimi/network/entity/NetModel;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {v1}, Lcom/fimi/network/entity/NetModel;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter$2;->this$0:Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;

    const/16 v3, 0x3c

    invoke-static {v2, v3}, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->access$002(Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;I)I

    .line 69
    iget-object v2, p0, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter$2;->this$0:Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;

    invoke-static {v2}, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->access$200(Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 70
    iget-object v2, p0, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter$2;->this$0:Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;

    invoke-static {v2}, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->access$100(Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;)Lcom/fimi/libperson/ivew/IForgetIphonePasswordView;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/fimi/libperson/ivew/IForgetIphonePasswordView;->sendIphone(ZLjava/lang/String;)V

    .line 81
    .end local v1    # "netModel":Lcom/fimi/network/entity/NetModel;
    :goto_0
    return-void

    .line 73
    .restart local v1    # "netModel":Lcom/fimi/network/entity/NetModel;
    :cond_0
    const-string v2, "ForgetIphonePasswordPre"

    const-string v3, "onSuccess: 2"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v2, p0, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter$2;->this$0:Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;

    invoke-static {v2}, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->access$100(Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;)Lcom/fimi/libperson/ivew/IForgetIphonePasswordView;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter$2;->this$0:Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;

    iget-object v4, v4, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/fimi/network/entity/NetModel;->getErrCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fimi/network/ErrorMessage;->getUserModeErrorMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/fimi/libperson/ivew/IForgetIphonePasswordView;->sendIphone(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    .end local v1    # "netModel":Lcom/fimi/network/entity/NetModel;
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ForgetIphonePasswordPre"

    const-string v3, "onSuccess: 3"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v2, p0, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter$2;->this$0:Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;

    invoke-static {v2}, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->access$100(Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;)Lcom/fimi/libperson/ivew/IForgetIphonePasswordView;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter$2;->this$0:Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;

    iget-object v3, v3, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->mContext:Landroid/content/Context;

    sget v4, Lcom/fimi/libperson/R$string;->network_exception:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v6, v3}, Lcom/fimi/libperson/ivew/IForgetIphonePasswordView;->sendIphone(ZLjava/lang/String;)V

    goto :goto_0
.end method
