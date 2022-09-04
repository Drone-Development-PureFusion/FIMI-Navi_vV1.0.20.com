.class Lcom/fimi/libperson/presenter/ThirdLoginPresenter$4;
.super Ljava/lang/Object;
.source "ThirdLoginPresenter.java"

# interfaces
.implements Lcom/fimi/thirdpartysdk/login/LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->loginMi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libperson/presenter/ThirdLoginPresenter;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/presenter/ThirdLoginPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/presenter/ThirdLoginPresenter;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter$4;->this$0:Lcom/fimi/libperson/presenter/ThirdLoginPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loginFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter$4;->this$0:Lcom/fimi/libperson/presenter/ThirdLoginPresenter;

    iget-object v0, v0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->loginView:Lcom/fimi/libperson/ivew/IThirdLoginView;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/fimi/libperson/ivew/IThirdLoginView;->loginThirdListener(ZLjava/lang/String;)V

    .line 251
    return-void
.end method

.method public loginSuccess(Ljava/lang/Object;)V
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 204
    iget-object v3, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter$4;->this$0:Lcom/fimi/libperson/presenter/ThirdLoginPresenter;

    iget-object v3, v3, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->loginView:Lcom/fimi/libperson/ivew/IThirdLoginView;

    if-eqz v3, :cond_0

    .line 205
    iget-object v3, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter$4;->this$0:Lcom/fimi/libperson/presenter/ThirdLoginPresenter;

    iget-object v3, v3, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->loginView:Lcom/fimi/libperson/ivew/IThirdLoginView;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/fimi/libperson/ivew/IThirdLoginView;->updateProgress(Z)V

    :cond_0
    move-object v0, p1

    .line 207
    check-cast v0, Lorg/json/JSONObject;

    .line 208
    .local v0, "dataJsonObject":Lorg/json/JSONObject;
    new-instance v2, Lcom/fimi/network/entity/ThirdAcountDto;

    invoke-direct {v2}, Lcom/fimi/network/entity/ThirdAcountDto;-><init>()V

    .line 209
    .local v2, "thirdAcountDto":Lcom/fimi/network/entity/ThirdAcountDto;
    const-string v3, "miliaoIcon_orig"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 211
    :try_start_0
    const-string v3, "miliaoIcon_orig"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fimi/network/entity/ThirdAcountDto;->setUserImgUrl(Ljava/lang/String;)V

    .line 212
    const-string/jumbo v3, "userId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 213
    const-string/jumbo v3, "unionId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fimi/network/entity/ThirdAcountDto;->setThirdId(Ljava/lang/String;)V

    .line 217
    :goto_0
    const-string v3, "miliaoNick"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fimi/network/entity/ThirdAcountDto;->setName(Ljava/lang/String;)V

    .line 218
    const-string v3, "miliaoNick"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fimi/network/entity/ThirdAcountDto;->setNickName(Ljava/lang/String;)V

    .line 219
    const-string v3, "1"

    invoke-virtual {v2, v3}, Lcom/fimi/network/entity/ThirdAcountDto;->setLoginChannel(Ljava/lang/String;)V

    .line 221
    iget-object v3, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter$4;->this$0:Lcom/fimi/libperson/presenter/ThirdLoginPresenter;

    iget-object v3, v3, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/fimi/network/UserManager;->getIntance(Landroid/content/Context;)Lcom/fimi/network/UserManager;

    move-result-object v3

    new-instance v4, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    new-instance v5, Lcom/fimi/libperson/presenter/ThirdLoginPresenter$4$1;

    invoke-direct {v5, p0}, Lcom/fimi/libperson/presenter/ThirdLoginPresenter$4$1;-><init>(Lcom/fimi/libperson/presenter/ThirdLoginPresenter$4;)V

    invoke-direct {v4, v5}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;)V

    invoke-virtual {v3, v2, v4}, Lcom/fimi/network/UserManager;->thirdUserLogin(Lcom/fimi/network/entity/ThirdAcountDto;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V

    .line 246
    :cond_1
    :goto_1
    return-void

    .line 215
    :cond_2
    const-string/jumbo v3, "userId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fimi/network/entity/ThirdAcountDto;->setThirdId(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e":Lorg/json/JSONException;
    iget-object v3, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter$4;->this$0:Lcom/fimi/libperson/presenter/ThirdLoginPresenter;

    iget-object v3, v3, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->loginView:Lcom/fimi/libperson/ivew/IThirdLoginView;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/fimi/libperson/ivew/IThirdLoginView;->loginThirdListener(ZLjava/lang/String;)V

    goto :goto_1
.end method
