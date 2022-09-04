.class Lcom/fimi/kernel/fds/FDSClient$1;
.super Ljava/lang/Object;
.source "FDSClient.java"

# interfaces
.implements Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/kernel/fds/FDSClient;->requesetFdsUrl(Ljava/lang/String;Lcom/fimi/kernel/fds/IFdsFileModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/kernel/fds/FDSClient;

.field final synthetic val$model:Lcom/fimi/kernel/fds/IFdsFileModel;


# direct methods
.method constructor <init>(Lcom/fimi/kernel/fds/FDSClient;Lcom/fimi/kernel/fds/IFdsFileModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/kernel/fds/FDSClient;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/fimi/kernel/fds/FDSClient$1;->this$0:Lcom/fimi/kernel/fds/FDSClient;

    iput-object p2, p0, Lcom/fimi/kernel/fds/FDSClient$1;->val$model:Lcom/fimi/kernel/fds/IFdsFileModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Object;)V
    .locals 1
    .param p1, "reasonObj"    # Ljava/lang/Object;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/fimi/kernel/fds/FDSClient$1;->this$0:Lcom/fimi/kernel/fds/FDSClient;

    invoke-virtual {v0}, Lcom/fimi/kernel/fds/FDSClient;->releaseLocked()V

    .line 106
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 4
    .param p1, "responseObj"    # Ljava/lang/Object;

    .prologue
    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/fimi/network/entity/NetModel;

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/network/entity/NetModel;

    .line 93
    .local v0, "netModel":Lcom/fimi/network/entity/NetModel;
    invoke-virtual {v0}, Lcom/fimi/network/entity/NetModel;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/fimi/network/entity/NetModel;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/kernel/fds/FDSClient$1;->val$model:Lcom/fimi/kernel/fds/IFdsFileModel;

    invoke-interface {v2, v1}, Lcom/fimi/kernel/fds/IFdsFileModel;->setFileFdsUrl(Ljava/lang/String;)V

    .line 100
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/fimi/kernel/fds/FDSClient$1;->this$0:Lcom/fimi/kernel/fds/FDSClient;

    invoke-virtual {v2}, Lcom/fimi/kernel/fds/FDSClient;->releaseLocked()V

    .line 101
    return-void
.end method
