.class Lcom/fimi/libperson/presenter/LoginPresenter$4;
.super Ljava/lang/Object;
.source "LoginPresenter.java"

# interfaces
.implements Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/presenter/LoginPresenter;->getFwDetail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libperson/presenter/LoginPresenter;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/presenter/LoginPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/presenter/LoginPresenter;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/fimi/libperson/presenter/LoginPresenter$4;->this$0:Lcom/fimi/libperson/presenter/LoginPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Object;)V
    .locals 1
    .param p1, "reasonObj"    # Ljava/lang/Object;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/fimi/libperson/presenter/LoginPresenter$4;->this$0:Lcom/fimi/libperson/presenter/LoginPresenter;

    iget-object v0, v0, Lcom/fimi/libperson/presenter/LoginPresenter;->mView:Lcom/fimi/libperson/ivew/ILoginView;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/fimi/libperson/presenter/LoginPresenter$4;->this$0:Lcom/fimi/libperson/presenter/LoginPresenter;

    iget-object v0, v0, Lcom/fimi/libperson/presenter/LoginPresenter;->mView:Lcom/fimi/libperson/ivew/ILoginView;

    invoke-interface {v0}, Lcom/fimi/libperson/ivew/ILoginView;->loginSuccess()V

    .line 198
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 6
    .param p1, "responseObj"    # Ljava/lang/Object;

    .prologue
    .line 175
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/fimi/network/entity/NetModel;

    invoke-static {v3, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/network/entity/NetModel;

    .line 176
    .local v2, "netModel":Lcom/fimi/network/entity/NetModel;
    const-string v3, "moweiru"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "responseObj:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fimi/kernel/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v2}, Lcom/fimi/network/entity/NetModel;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    invoke-virtual {v2}, Lcom/fimi/network/entity/NetModel;->getData()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 179
    invoke-virtual {v2}, Lcom/fimi/network/entity/NetModel;->getData()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/fimi/network/entity/UpfirewareDto;

    invoke-static {v3, v4}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 180
    .local v1, "fwDtos":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    invoke-static {v1}, Lcom/fimi/host/HostConstants;->saveFirmwareDetail(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    .end local v1    # "fwDtos":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    :cond_0
    iget-object v3, p0, Lcom/fimi/libperson/presenter/LoginPresenter$4;->this$0:Lcom/fimi/libperson/presenter/LoginPresenter;

    iget-object v3, v3, Lcom/fimi/libperson/presenter/LoginPresenter;->mView:Lcom/fimi/libperson/ivew/ILoginView;

    if-eqz v3, :cond_1

    .line 188
    iget-object v3, p0, Lcom/fimi/libperson/presenter/LoginPresenter$4;->this$0:Lcom/fimi/libperson/presenter/LoginPresenter;

    iget-object v3, v3, Lcom/fimi/libperson/presenter/LoginPresenter;->mView:Lcom/fimi/libperson/ivew/ILoginView;

    invoke-interface {v3}, Lcom/fimi/libperson/ivew/ILoginView;->loginSuccess()V

    .line 191
    .end local v2    # "netModel":Lcom/fimi/network/entity/NetModel;
    :cond_1
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Lcom/fimi/host/HostConstants;->saveFirmwareDetail(Ljava/util/List;)V

    .line 185
    invoke-static {}, Lcom/fimi/host/HostLogBack;->getInstance()Lcom/fimi/host/HostLogBack;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u56fa\u4ef6Json\u8f6c\u6362\u5f02\u5e38\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fimi/host/HostLogBack;->writeLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    iget-object v3, p0, Lcom/fimi/libperson/presenter/LoginPresenter$4;->this$0:Lcom/fimi/libperson/presenter/LoginPresenter;

    iget-object v3, v3, Lcom/fimi/libperson/presenter/LoginPresenter;->mView:Lcom/fimi/libperson/ivew/ILoginView;

    if-eqz v3, :cond_1

    .line 188
    iget-object v3, p0, Lcom/fimi/libperson/presenter/LoginPresenter$4;->this$0:Lcom/fimi/libperson/presenter/LoginPresenter;

    iget-object v3, v3, Lcom/fimi/libperson/presenter/LoginPresenter;->mView:Lcom/fimi/libperson/ivew/ILoginView;

    invoke-interface {v3}, Lcom/fimi/libperson/ivew/ILoginView;->loginSuccess()V

    goto :goto_0

    .line 187
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/fimi/libperson/presenter/LoginPresenter$4;->this$0:Lcom/fimi/libperson/presenter/LoginPresenter;

    iget-object v4, v4, Lcom/fimi/libperson/presenter/LoginPresenter;->mView:Lcom/fimi/libperson/ivew/ILoginView;

    if-eqz v4, :cond_2

    .line 188
    iget-object v4, p0, Lcom/fimi/libperson/presenter/LoginPresenter$4;->this$0:Lcom/fimi/libperson/presenter/LoginPresenter;

    iget-object v4, v4, Lcom/fimi/libperson/presenter/LoginPresenter;->mView:Lcom/fimi/libperson/ivew/ILoginView;

    invoke-interface {v4}, Lcom/fimi/libperson/ivew/ILoginView;->loginSuccess()V

    .line 190
    :cond_2
    throw v3
.end method
