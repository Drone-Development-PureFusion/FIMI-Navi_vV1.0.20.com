.class Lcom/fimi/network/DownFwService$1;
.super Ljava/lang/Object;
.source "DownFwService.java"

# interfaces
.implements Lcom/fimi/kernel/network/okhttp/listener/DisposeDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/network/DownFwService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/network/DownFwService;


# direct methods
.method constructor <init>(Lcom/fimi/network/DownFwService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/network/DownFwService;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/fimi/network/DownFwService$1;->this$0:Lcom/fimi/network/DownFwService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Object;)V
    .locals 4
    .param p1, "reasonObj"    # Ljava/lang/Object;

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "pro":I
    invoke-static {}, Lcom/fimi/x9/upgrade/X9UpdateUtil;->getDownList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/fimi/x9/upgrade/X9UpdateUtil;->getDownList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/fimi/network/DownFwService;->checkingTaskCount:I

    if-le v1, v2, :cond_0

    .line 148
    invoke-static {}, Lcom/fimi/x9/upgrade/X9UpdateUtil;->getDownList()Ljava/util/List;

    move-result-object v1

    sget v2, Lcom/fimi/network/DownFwService;->checkingTaskCount:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/network/entity/UpfirewareDto;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/fimi/network/entity/UpfirewareDto;->setDownResult(Ljava/lang/String;)V

    .line 152
    :goto_0
    sget-object v1, Lcom/fimi/network/DownFwService$DownState;->DownFail:Lcom/fimi/network/DownFwService$DownState;

    sput-object v1, Lcom/fimi/network/DownFwService;->state:Lcom/fimi/network/DownFwService$DownState;

    .line 154
    iget-object v1, p0, Lcom/fimi/network/DownFwService$1;->this$0:Lcom/fimi/network/DownFwService;

    sget-object v2, Lcom/fimi/network/DownFwService;->state:Lcom/fimi/network/DownFwService$DownState;

    const-string v3, ""

    invoke-static {v1, v2, v0, v3}, Lcom/fimi/network/DownFwService;->access$000(Lcom/fimi/network/DownFwService;Lcom/fimi/network/DownFwService$DownState;ILjava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/fimi/network/DownFwService$1;->this$0:Lcom/fimi/network/DownFwService;

    invoke-static {v1}, Lcom/fimi/network/DownFwService;->access$200(Lcom/fimi/network/DownFwService;)V

    .line 156
    iget-object v1, p0, Lcom/fimi/network/DownFwService$1;->this$0:Lcom/fimi/network/DownFwService;

    invoke-static {v1}, Lcom/fimi/network/DownFwService;->access$100(Lcom/fimi/network/DownFwService;)V

    .line 157
    return-void

    .line 150
    :cond_0
    sget v1, Lcom/fimi/network/DownFwService;->checkingTaskCount:I

    mul-int/lit8 v1, v1, 0x64

    iget-object v2, p0, Lcom/fimi/network/DownFwService$1;->this$0:Lcom/fimi/network/DownFwService;

    iget-object v2, v2, Lcom/fimi/network/DownFwService;->needDownDto:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int v0, v1, v2

    goto :goto_0
.end method

.method public onProgress(II)V
    .locals 6
    .param p1, "progrss"    # I
    .param p2, "currentLength"    # I

    .prologue
    const/16 v5, 0x64

    .line 108
    sget v1, Lcom/fimi/network/DownFwService;->checkingTaskCount:I

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/fimi/network/DownFwService$1;->this$0:Lcom/fimi/network/DownFwService;

    iget-object v2, v2, Lcom/fimi/network/DownFwService;->needDownDto:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int v0, v1, v2

    .line 109
    .local v0, "pro":I
    if-ne p1, v5, :cond_4

    .line 110
    invoke-static {}, Lcom/fimi/x9/upgrade/X9UpdateUtil;->getDownList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/fimi/x9/upgrade/X9UpdateUtil;->getDownList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/fimi/network/DownFwService;->checkingTaskCount:I

    if-le v1, v2, :cond_0

    .line 111
    invoke-static {}, Lcom/fimi/x9/upgrade/X9UpdateUtil;->getDownList()Ljava/util/List;

    move-result-object v1

    sget v2, Lcom/fimi/network/DownFwService;->checkingTaskCount:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/network/entity/UpfirewareDto;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/fimi/network/entity/UpfirewareDto;->setDownResult(Ljava/lang/String;)V

    .line 116
    :cond_0
    :goto_0
    if-ne v0, v5, :cond_1

    .line 117
    sget-object v1, Lcom/fimi/network/DownFwService$DownState;->Finish:Lcom/fimi/network/DownFwService$DownState;

    sput-object v1, Lcom/fimi/network/DownFwService;->state:Lcom/fimi/network/DownFwService$DownState;

    .line 119
    :cond_1
    sget-boolean v1, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->isStop:Z

    if-eqz v1, :cond_2

    .line 120
    sget-object v1, Lcom/fimi/network/DownFwService$DownState;->StopDown:Lcom/fimi/network/DownFwService$DownState;

    sput-object v1, Lcom/fimi/network/DownFwService;->state:Lcom/fimi/network/DownFwService$DownState;

    .line 123
    :cond_2
    iget-object v2, p0, Lcom/fimi/network/DownFwService$1;->this$0:Lcom/fimi/network/DownFwService;

    sget-object v3, Lcom/fimi/network/DownFwService;->state:Lcom/fimi/network/DownFwService$DownState;

    iget-object v1, p0, Lcom/fimi/network/DownFwService$1;->this$0:Lcom/fimi/network/DownFwService;

    iget-object v1, v1, Lcom/fimi/network/DownFwService;->needDownDto:Ljava/util/List;

    sget v4, Lcom/fimi/network/DownFwService;->checkingTaskCount:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/network/entity/UpfirewareDto;

    invoke-virtual {v1}, Lcom/fimi/network/entity/UpfirewareDto;->getSysName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v0, v1}, Lcom/fimi/network/DownFwService;->access$000(Lcom/fimi/network/DownFwService;Lcom/fimi/network/DownFwService$DownState;ILjava/lang/String;)V

    .line 124
    if-ne p1, v5, :cond_3

    .line 125
    iget-object v1, p0, Lcom/fimi/network/DownFwService$1;->this$0:Lcom/fimi/network/DownFwService;

    invoke-static {v1}, Lcom/fimi/network/DownFwService;->access$100(Lcom/fimi/network/DownFwService;)V

    .line 127
    :cond_3
    return-void

    .line 114
    :cond_4
    sget-object v1, Lcom/fimi/network/DownFwService$DownState;->Downing:Lcom/fimi/network/DownFwService$DownState;

    sput-object v1, Lcom/fimi/network/DownFwService;->state:Lcom/fimi/network/DownFwService$DownState;

    goto :goto_0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 4
    .param p1, "responseObj"    # Ljava/lang/Object;

    .prologue
    .line 131
    invoke-static {}, Lcom/fimi/x9/upgrade/X9UpdateUtil;->getDownList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/fimi/x9/upgrade/X9UpdateUtil;->getDownList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/fimi/network/DownFwService;->checkingTaskCount:I

    if-le v1, v2, :cond_0

    .line 132
    invoke-static {}, Lcom/fimi/x9/upgrade/X9UpdateUtil;->getDownList()Ljava/util/List;

    move-result-object v1

    sget v2, Lcom/fimi/network/DownFwService;->checkingTaskCount:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/network/entity/UpfirewareDto;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/fimi/network/entity/UpfirewareDto;->setDownResult(Ljava/lang/String;)V

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/fimi/network/DownFwService$1;->this$0:Lcom/fimi/network/DownFwService;

    iget-object v1, v1, Lcom/fimi/network/DownFwService;->needDownDto:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fimi/network/DownFwService$1;->this$0:Lcom/fimi/network/DownFwService;

    iget-object v1, v1, Lcom/fimi/network/DownFwService;->needDownDto:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    sget v1, Lcom/fimi/network/DownFwService;->checkingTaskCount:I

    iget-object v2, p0, Lcom/fimi/network/DownFwService$1;->this$0:Lcom/fimi/network/DownFwService;

    iget-object v2, v2, Lcom/fimi/network/DownFwService;->needDownDto:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 135
    :cond_1
    sget-object v1, Lcom/fimi/network/DownFwService$DownState;->Finish:Lcom/fimi/network/DownFwService$DownState;

    sput-object v1, Lcom/fimi/network/DownFwService;->state:Lcom/fimi/network/DownFwService$DownState;

    .line 139
    :cond_2
    sget v1, Lcom/fimi/network/DownFwService;->checkingTaskCount:I

    mul-int/lit8 v1, v1, 0x64

    iget-object v2, p0, Lcom/fimi/network/DownFwService$1;->this$0:Lcom/fimi/network/DownFwService;

    iget-object v2, v2, Lcom/fimi/network/DownFwService;->needDownDto:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int v0, v1, v2

    .line 140
    .local v0, "pro":I
    iget-object v1, p0, Lcom/fimi/network/DownFwService$1;->this$0:Lcom/fimi/network/DownFwService;

    sget-object v2, Lcom/fimi/network/DownFwService;->state:Lcom/fimi/network/DownFwService$DownState;

    const-string v3, ""

    invoke-static {v1, v2, v0, v3}, Lcom/fimi/network/DownFwService;->access$000(Lcom/fimi/network/DownFwService;Lcom/fimi/network/DownFwService$DownState;ILjava/lang/String;)V

    .line 142
    return-void
.end method
