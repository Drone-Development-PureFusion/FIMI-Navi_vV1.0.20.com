.class Lcom/fimi/libperson/presenter/RegisterPrenster$4;
.super Ljava/lang/Object;
.source "RegisterPrenster.java"

# interfaces
.implements Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/presenter/RegisterPrenster;->registerByEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libperson/presenter/RegisterPrenster;

.field final synthetic val$email:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/presenter/RegisterPrenster;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/presenter/RegisterPrenster;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/fimi/libperson/presenter/RegisterPrenster$4;->this$0:Lcom/fimi/libperson/presenter/RegisterPrenster;

    iput-object p2, p0, Lcom/fimi/libperson/presenter/RegisterPrenster$4;->val$email:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Object;)V
    .locals 4
    .param p1, "reasonObj"    # Ljava/lang/Object;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/fimi/libperson/presenter/RegisterPrenster$4;->this$0:Lcom/fimi/libperson/presenter/RegisterPrenster;

    iget-object v0, v0, Lcom/fimi/libperson/presenter/RegisterPrenster;->iRegisterView:Lcom/fimi/libperson/ivew/IRegisterView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fimi/libperson/presenter/RegisterPrenster$4;->this$0:Lcom/fimi/libperson/presenter/RegisterPrenster;

    iget-object v2, v2, Lcom/fimi/libperson/presenter/RegisterPrenster;->mContext:Landroid/content/Context;

    sget v3, Lcom/fimi/libperson/R$string;->network_exception:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/fimi/libperson/ivew/IRegisterView;->registerEmailResult(ZLjava/lang/String;)V

    .line 170
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 6
    .param p1, "responseObj"    # Ljava/lang/Object;

    .prologue
    .line 152
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/fimi/network/entity/NetModel;

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/network/entity/NetModel;

    .line 153
    .local v1, "netModel":Lcom/fimi/network/entity/NetModel;
    invoke-virtual {v1}, Lcom/fimi/network/entity/NetModel;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    invoke-virtual {v1}, Lcom/fimi/network/entity/NetModel;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/fimi/host/HostConstants;->saveUserDetail(Ljava/lang/Object;)V

    .line 155
    const-string v2, "1"

    iget-object v3, p0, Lcom/fimi/libperson/presenter/RegisterPrenster$4;->val$email:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/fimi/host/HostConstants;->saveUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v2, p0, Lcom/fimi/libperson/presenter/RegisterPrenster$4;->this$0:Lcom/fimi/libperson/presenter/RegisterPrenster;

    invoke-static {v2}, Lcom/fimi/libperson/presenter/RegisterPrenster;->access$200(Lcom/fimi/libperson/presenter/RegisterPrenster;)V

    .line 165
    .end local v1    # "netModel":Lcom/fimi/network/entity/NetModel;
    :goto_0
    return-void

    .line 159
    .restart local v1    # "netModel":Lcom/fimi/network/entity/NetModel;
    :cond_0
    iget-object v2, p0, Lcom/fimi/libperson/presenter/RegisterPrenster$4;->this$0:Lcom/fimi/libperson/presenter/RegisterPrenster;

    iget-object v2, v2, Lcom/fimi/libperson/presenter/RegisterPrenster;->iRegisterView:Lcom/fimi/libperson/ivew/IRegisterView;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/fimi/libperson/presenter/RegisterPrenster$4;->this$0:Lcom/fimi/libperson/presenter/RegisterPrenster;

    iget-object v4, v4, Lcom/fimi/libperson/presenter/RegisterPrenster;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/fimi/network/entity/NetModel;->getErrCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fimi/network/ErrorMessage;->getUserModeErrorMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/fimi/libperson/ivew/IRegisterView;->registerEmailResult(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    .end local v1    # "netModel":Lcom/fimi/network/entity/NetModel;
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
