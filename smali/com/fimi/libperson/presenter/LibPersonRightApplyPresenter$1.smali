.class Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter$1;
.super Ljava/lang/Object;
.source "LibPersonRightApplyPresenter.java"

# interfaces
.implements Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter;->sendEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter$1;->this$0:Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Object;)V
    .locals 3
    .param p1, "reasonObj"    # Ljava/lang/Object;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter$1;->this$0:Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter;

    iget-object v0, v0, Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter;->iLibpersonRightApplyView:Lcom/fimi/libperson/ivew/ILibpersonRightApplyView;

    iget-object v1, p0, Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter$1;->this$0:Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter;

    iget-object v1, v1, Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/libperson/R$string;->network_exception:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fimi/libperson/ivew/ILibpersonRightApplyView;->sendFailure(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 5
    .param p1, "responseObj"    # Ljava/lang/Object;

    .prologue
    .line 50
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/fimi/network/entity/NetModel;

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/network/entity/NetModel;

    .line 51
    .local v1, "netModel":Lcom/fimi/network/entity/NetModel;
    invoke-virtual {v1}, Lcom/fimi/network/entity/NetModel;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter$1;->this$0:Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter;

    iget-object v2, v2, Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter;->iLibpersonRightApplyView:Lcom/fimi/libperson/ivew/ILibpersonRightApplyView;

    iget-object v3, p0, Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter$1;->this$0:Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter;

    iget-object v3, v3, Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter;->context:Landroid/content/Context;

    sget v4, Lcom/fimi/libperson/R$string;->libperson_send_hint_one:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/fimi/libperson/ivew/ILibpersonRightApplyView;->sendSuccess(Ljava/lang/String;)V

    .line 60
    .end local v1    # "netModel":Lcom/fimi/network/entity/NetModel;
    :goto_0
    return-void

    .line 54
    .restart local v1    # "netModel":Lcom/fimi/network/entity/NetModel;
    :cond_0
    iget-object v2, p0, Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter$1;->this$0:Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter;

    iget-object v2, v2, Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter;->iLibpersonRightApplyView:Lcom/fimi/libperson/ivew/ILibpersonRightApplyView;

    iget-object v3, p0, Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter$1;->this$0:Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter;

    iget-object v3, v3, Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/fimi/network/entity/NetModel;->getErrCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fimi/network/ErrorMessage;->getUserModeErrorMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/fimi/libperson/ivew/ILibpersonRightApplyView;->sendFailure(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    .end local v1    # "netModel":Lcom/fimi/network/entity/NetModel;
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
