.class Lcom/fimi/libperson/presenter/ThirdLoginPresenter$3;
.super Ljava/lang/Object;
.source "ThirdLoginPresenter.java"

# interfaces
.implements Lcom/fimi/thirdpartysdk/login/LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->loginTwitter()V
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
    .line 136
    iput-object p1, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter$3;->this$0:Lcom/fimi/libperson/presenter/ThirdLoginPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loginFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter$3;->this$0:Lcom/fimi/libperson/presenter/ThirdLoginPresenter;

    iget-object v0, v0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->loginView:Lcom/fimi/libperson/ivew/IThirdLoginView;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/fimi/libperson/ivew/IThirdLoginView;->loginThirdListener(ZLjava/lang/String;)V

    .line 177
    return-void
.end method

.method public loginSuccess(Ljava/lang/Object;)V
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 139
    iget-object v3, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter$3;->this$0:Lcom/fimi/libperson/presenter/ThirdLoginPresenter;

    iget-object v3, v3, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->loginView:Lcom/fimi/libperson/ivew/IThirdLoginView;

    if-eqz v3, :cond_0

    .line 140
    iget-object v3, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter$3;->this$0:Lcom/fimi/libperson/presenter/ThirdLoginPresenter;

    iget-object v3, v3, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->loginView:Lcom/fimi/libperson/ivew/IThirdLoginView;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/fimi/libperson/ivew/IThirdLoginView;->updateProgress(Z)V

    :cond_0
    move-object v0, p1

    .line 142
    check-cast v0, Ljava/util/Map;

    .line 143
    .local v0, "db":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/fimi/network/entity/ThirdAcountDto;

    invoke-direct {v2}, Lcom/fimi/network/entity/ThirdAcountDto;-><init>()V

    .line 144
    .local v2, "thirdAcountDto":Lcom/fimi/network/entity/ThirdAcountDto;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .local v1, "sb":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fimi/network/entity/ThirdAcountDto;->setName(Ljava/lang/String;)V

    .line 147
    const-string/jumbo v3, "userId"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fimi/network/entity/ThirdAcountDto;->setThirdId(Ljava/lang/String;)V

    .line 148
    const-string v3, "iconurl"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fimi/network/entity/ThirdAcountDto;->setUserImgUrl(Ljava/lang/String;)V

    .line 149
    const-string v3, "3"

    invoke-virtual {v2, v3}, Lcom/fimi/network/entity/ThirdAcountDto;->setLoginChannel(Ljava/lang/String;)V

    .line 150
    iget-object v3, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter$3;->this$0:Lcom/fimi/libperson/presenter/ThirdLoginPresenter;

    iget-object v3, v3, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/fimi/network/UserManager;->getIntance(Landroid/content/Context;)Lcom/fimi/network/UserManager;

    move-result-object v3

    new-instance v4, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    new-instance v5, Lcom/fimi/libperson/presenter/ThirdLoginPresenter$3$1;

    invoke-direct {v5, p0}, Lcom/fimi/libperson/presenter/ThirdLoginPresenter$3$1;-><init>(Lcom/fimi/libperson/presenter/ThirdLoginPresenter$3;)V

    invoke-direct {v4, v5}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;)V

    invoke-virtual {v3, v2, v4}, Lcom/fimi/network/UserManager;->thirdUserLogin(Lcom/fimi/network/entity/ThirdAcountDto;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V

    .line 171
    return-void
.end method
