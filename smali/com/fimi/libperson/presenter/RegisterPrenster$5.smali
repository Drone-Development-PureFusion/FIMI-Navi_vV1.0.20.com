.class Lcom/fimi/libperson/presenter/RegisterPrenster$5;
.super Ljava/lang/Object;
.source "RegisterPrenster.java"

# interfaces
.implements Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/presenter/RegisterPrenster;->getFwDetail()V
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
    .line 182
    iput-object p1, p0, Lcom/fimi/libperson/presenter/RegisterPrenster$5;->this$0:Lcom/fimi/libperson/presenter/RegisterPrenster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Object;)V
    .locals 1
    .param p1, "reasonObj"    # Ljava/lang/Object;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/fimi/libperson/presenter/RegisterPrenster$5;->this$0:Lcom/fimi/libperson/presenter/RegisterPrenster;

    iget-object v0, v0, Lcom/fimi/libperson/presenter/RegisterPrenster;->iRegisterView:Lcom/fimi/libperson/ivew/IRegisterView;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/fimi/libperson/presenter/RegisterPrenster$5;->this$0:Lcom/fimi/libperson/presenter/RegisterPrenster;

    iget-object v0, v0, Lcom/fimi/libperson/presenter/RegisterPrenster;->iRegisterView:Lcom/fimi/libperson/ivew/IRegisterView;

    invoke-interface {v0}, Lcom/fimi/libperson/ivew/IRegisterView;->loginSuccess()V

    .line 209
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 6
    .param p1, "responseObj"    # Ljava/lang/Object;

    .prologue
    .line 186
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/fimi/network/entity/NetModel;

    invoke-static {v3, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/network/entity/NetModel;

    .line 187
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

    .line 188
    invoke-virtual {v2}, Lcom/fimi/network/entity/NetModel;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    invoke-virtual {v2}, Lcom/fimi/network/entity/NetModel;->getData()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 190
    invoke-virtual {v2}, Lcom/fimi/network/entity/NetModel;->getData()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/fimi/network/entity/UpfirewareDto;

    invoke-static {v3, v4}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 191
    .local v1, "fwDtos":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    invoke-static {v1}, Lcom/fimi/host/HostConstants;->saveFirmwareDetail(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    .end local v1    # "fwDtos":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    :cond_0
    iget-object v3, p0, Lcom/fimi/libperson/presenter/RegisterPrenster$5;->this$0:Lcom/fimi/libperson/presenter/RegisterPrenster;

    iget-object v3, v3, Lcom/fimi/libperson/presenter/RegisterPrenster;->iRegisterView:Lcom/fimi/libperson/ivew/IRegisterView;

    if-eqz v3, :cond_1

    .line 199
    iget-object v3, p0, Lcom/fimi/libperson/presenter/RegisterPrenster$5;->this$0:Lcom/fimi/libperson/presenter/RegisterPrenster;

    iget-object v3, v3, Lcom/fimi/libperson/presenter/RegisterPrenster;->iRegisterView:Lcom/fimi/libperson/ivew/IRegisterView;

    invoke-interface {v3}, Lcom/fimi/libperson/ivew/IRegisterView;->loginSuccess()V

    .line 202
    .end local v2    # "netModel":Lcom/fimi/network/entity/NetModel;
    :cond_1
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Lcom/fimi/host/HostConstants;->saveFirmwareDetail(Ljava/util/List;)V

    .line 196
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

    .line 198
    iget-object v3, p0, Lcom/fimi/libperson/presenter/RegisterPrenster$5;->this$0:Lcom/fimi/libperson/presenter/RegisterPrenster;

    iget-object v3, v3, Lcom/fimi/libperson/presenter/RegisterPrenster;->iRegisterView:Lcom/fimi/libperson/ivew/IRegisterView;

    if-eqz v3, :cond_1

    .line 199
    iget-object v3, p0, Lcom/fimi/libperson/presenter/RegisterPrenster$5;->this$0:Lcom/fimi/libperson/presenter/RegisterPrenster;

    iget-object v3, v3, Lcom/fimi/libperson/presenter/RegisterPrenster;->iRegisterView:Lcom/fimi/libperson/ivew/IRegisterView;

    invoke-interface {v3}, Lcom/fimi/libperson/ivew/IRegisterView;->loginSuccess()V

    goto :goto_0

    .line 198
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/fimi/libperson/presenter/RegisterPrenster$5;->this$0:Lcom/fimi/libperson/presenter/RegisterPrenster;

    iget-object v4, v4, Lcom/fimi/libperson/presenter/RegisterPrenster;->iRegisterView:Lcom/fimi/libperson/ivew/IRegisterView;

    if-eqz v4, :cond_2

    .line 199
    iget-object v4, p0, Lcom/fimi/libperson/presenter/RegisterPrenster$5;->this$0:Lcom/fimi/libperson/presenter/RegisterPrenster;

    iget-object v4, v4, Lcom/fimi/libperson/presenter/RegisterPrenster;->iRegisterView:Lcom/fimi/libperson/ivew/IRegisterView;

    invoke-interface {v4}, Lcom/fimi/libperson/ivew/IRegisterView;->loginSuccess()V

    .line 201
    :cond_2
    throw v3
.end method
