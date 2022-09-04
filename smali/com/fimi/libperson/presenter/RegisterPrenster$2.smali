.class Lcom/fimi/libperson/presenter/RegisterPrenster$2;
.super Ljava/lang/Object;
.source "RegisterPrenster.java"

# interfaces
.implements Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/presenter/RegisterPrenster;->getVerificationCode(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libperson/presenter/RegisterPrenster;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/presenter/RegisterPrenster;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/presenter/RegisterPrenster;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/fimi/libperson/presenter/RegisterPrenster$2;->this$0:Lcom/fimi/libperson/presenter/RegisterPrenster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Object;)V
    .locals 4
    .param p1, "reasonObj"    # Ljava/lang/Object;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/fimi/libperson/presenter/RegisterPrenster$2;->this$0:Lcom/fimi/libperson/presenter/RegisterPrenster;

    iget-object v0, v0, Lcom/fimi/libperson/presenter/RegisterPrenster;->iRegisterView:Lcom/fimi/libperson/ivew/IRegisterView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fimi/libperson/presenter/RegisterPrenster$2;->this$0:Lcom/fimi/libperson/presenter/RegisterPrenster;

    iget-object v2, v2, Lcom/fimi/libperson/presenter/RegisterPrenster;->mContext:Landroid/content/Context;

    sget v3, Lcom/fimi/libperson/R$string;->network_exception:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/fimi/libperson/ivew/IRegisterView;->getCodeResult(ZLjava/lang/String;)V

    .line 87
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 5
    .param p1, "responseObj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/fimi/network/entity/NetModel;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/network/entity/NetModel;

    .line 75
    .local v0, "netModel":Lcom/fimi/network/entity/NetModel;
    invoke-virtual {v0}, Lcom/fimi/network/entity/NetModel;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/fimi/libperson/presenter/RegisterPrenster$2;->this$0:Lcom/fimi/libperson/presenter/RegisterPrenster;

    const/16 v2, 0x3c

    invoke-static {v1, v2}, Lcom/fimi/libperson/presenter/RegisterPrenster;->access$002(Lcom/fimi/libperson/presenter/RegisterPrenster;I)I

    .line 77
    iget-object v1, p0, Lcom/fimi/libperson/presenter/RegisterPrenster$2;->this$0:Lcom/fimi/libperson/presenter/RegisterPrenster;

    invoke-static {v1}, Lcom/fimi/libperson/presenter/RegisterPrenster;->access$100(Lcom/fimi/libperson/presenter/RegisterPrenster;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 78
    iget-object v1, p0, Lcom/fimi/libperson/presenter/RegisterPrenster$2;->this$0:Lcom/fimi/libperson/presenter/RegisterPrenster;

    iget-object v1, v1, Lcom/fimi/libperson/presenter/RegisterPrenster;->iRegisterView:Lcom/fimi/libperson/ivew/IRegisterView;

    const/4 v2, 0x0

    invoke-interface {v1, v3, v2}, Lcom/fimi/libperson/ivew/IRegisterView;->getCodeResult(ZLjava/lang/String;)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/fimi/libperson/presenter/RegisterPrenster$2;->this$0:Lcom/fimi/libperson/presenter/RegisterPrenster;

    iget-object v1, v1, Lcom/fimi/libperson/presenter/RegisterPrenster;->iRegisterView:Lcom/fimi/libperson/ivew/IRegisterView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fimi/libperson/presenter/RegisterPrenster$2;->this$0:Lcom/fimi/libperson/presenter/RegisterPrenster;

    iget-object v3, v3, Lcom/fimi/libperson/presenter/RegisterPrenster;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/fimi/network/entity/NetModel;->getErrCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fimi/network/ErrorMessage;->getUserModeErrorMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/fimi/libperson/ivew/IRegisterView;->getCodeResult(ZLjava/lang/String;)V

    goto :goto_0
.end method
