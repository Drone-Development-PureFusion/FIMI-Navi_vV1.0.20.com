.class Lcom/fimi/x8sdk/service/DownFlightPlaybackService$1;
.super Ljava/lang/Object;
.source "DownFlightPlaybackService.java"

# interfaces
.implements Lcom/fimi/kernel/network/okhttp/listener/DisposeDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x8sdk/service/DownFlightPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/x8sdk/service/DownFlightPlaybackService;


# direct methods
.method constructor <init>(Lcom/fimi/x8sdk/service/DownFlightPlaybackService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/x8sdk/service/DownFlightPlaybackService;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService$1;->this$0:Lcom/fimi/x8sdk/service/DownFlightPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Object;)V
    .locals 4
    .param p1, "reasonObj"    # Ljava/lang/Object;

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 183
    .local v0, "pro":I
    sget v1, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->checkingTaskCount:I

    mul-int/lit8 v1, v1, 0x64

    iget-object v2, p0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService$1;->this$0:Lcom/fimi/x8sdk/service/DownFlightPlaybackService;

    iget-object v2, v2, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->needDownDto:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int v0, v1, v2

    .line 185
    sget-object v1, Lcom/fimi/network/DownFwService$DownState;->DownFail:Lcom/fimi/network/DownFwService$DownState;

    sput-object v1, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->state:Lcom/fimi/network/DownFwService$DownState;

    .line 187
    iget-object v1, p0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService$1;->this$0:Lcom/fimi/x8sdk/service/DownFlightPlaybackService;

    sget-object v2, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->state:Lcom/fimi/network/DownFwService$DownState;

    const-string v3, ""

    invoke-static {v1, v2, v0, v3}, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->access$100(Lcom/fimi/x8sdk/service/DownFlightPlaybackService;Lcom/fimi/network/DownFwService$DownState;ILjava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService$1;->this$0:Lcom/fimi/x8sdk/service/DownFlightPlaybackService;

    invoke-static {v1}, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->access$200(Lcom/fimi/x8sdk/service/DownFlightPlaybackService;)V

    .line 189
    iget-object v1, p0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService$1;->this$0:Lcom/fimi/x8sdk/service/DownFlightPlaybackService;

    invoke-static {v1}, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->access$300(Lcom/fimi/x8sdk/service/DownFlightPlaybackService;)V

    .line 190
    return-void
.end method

.method public onProgress(II)V
    .locals 13
    .param p1, "progrss"    # I
    .param p2, "currentLength"    # I

    .prologue
    .line 106
    sget v7, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->checkingTaskCount:I

    mul-int/lit8 v7, v7, 0x64

    add-int/2addr v7, p1

    iget-object v8, p0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService$1;->this$0:Lcom/fimi/x8sdk/service/DownFlightPlaybackService;

    iget-object v8, v8, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->needDownDto:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    div-int v2, v7, v8

    .line 107
    .local v2, "pro":I
    const/16 v7, 0x64

    if-ne p1, v7, :cond_4

    .line 111
    sget v7, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->checkingTaskCount:I

    iget-object v8, p0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService$1;->this$0:Lcom/fimi/x8sdk/service/DownFlightPlaybackService;

    iget-object v8, v8, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->needDownDto:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v7, v8, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-static {v8}, Lcom/fimi/kernel/utils/DirectoryPath;->getX8LoginFlightPlaybackPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v7, p0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService$1;->this$0:Lcom/fimi/x8sdk/service/DownFlightPlaybackService;

    iget-object v7, v7, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->needDownDto:Ljava/util/List;

    sget v9, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->checkingTaskCount:I

    .line 115
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fimi/network/entity/X8PlaybackLogEntity;

    invoke-virtual {v7}, Lcom/fimi/network/entity/X8PlaybackLogEntity;->getFlieName()Ljava/lang/String;

    move-result-object v7

    const-string v9, ".zip"

    const-string v10, ""

    .line 116
    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, "unZipFileName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v4, "unZipFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 119
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 124
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-static {v8}, Lcom/fimi/kernel/utils/DirectoryPath;->getX8LoginFlightPlaybackPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v7, p0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService$1;->this$0:Lcom/fimi/x8sdk/service/DownFlightPlaybackService;

    iget-object v7, v7, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->needDownDto:Ljava/util/List;

    sget v9, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->checkingTaskCount:I

    .line 125
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fimi/network/entity/X8PlaybackLogEntity;

    invoke-virtual {v7}, Lcom/fimi/network/entity/X8PlaybackLogEntity;->getFlieName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 124
    invoke-static {v7, v5}, Lcom/fimi/kernel/utils/ZipTool;->unzip(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 127
    .local v6, "zipState":I
    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    .line 128
    invoke-static {v5}, Lcom/fimi/x8sdk/util/X8FileHelper;->flightLogListDirs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 129
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 130
    .local v0, "file":Ljava/io/File;
    iget-object v8, p0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService$1;->this$0:Lcom/fimi/x8sdk/service/DownFlightPlaybackService;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->access$002(Lcom/fimi/x8sdk/service/DownFlightPlaybackService;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    iget-object v8, p0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService$1;->this$0:Lcom/fimi/x8sdk/service/DownFlightPlaybackService;

    invoke-static {v8}, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->access$000(Lcom/fimi/x8sdk/service/DownFlightPlaybackService;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v9

    iget-object v9, v9, Lcom/fimi/x8sdk/X8FcLogManager;->prexCollect:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 132
    iget-object v8, p0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService$1;->this$0:Lcom/fimi/x8sdk/service/DownFlightPlaybackService;

    iget-object v9, p0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService$1;->this$0:Lcom/fimi/x8sdk/service/DownFlightPlaybackService;

    invoke-static {v9}, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->access$000(Lcom/fimi/x8sdk/service/DownFlightPlaybackService;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v10

    iget-object v10, v10, Lcom/fimi/x8sdk/X8FcLogManager;->prexCollect:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->access$002(Lcom/fimi/x8sdk/service/DownFlightPlaybackService;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    :cond_3
    iget-object v8, p0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService$1;->this$0:Lcom/fimi/x8sdk/service/DownFlightPlaybackService;

    iget-object v9, p0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService$1;->this$0:Lcom/fimi/x8sdk/service/DownFlightPlaybackService;

    invoke-static {v9}, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->access$000(Lcom/fimi/x8sdk/service/DownFlightPlaybackService;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "."

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/fimi/x8sdk/X8FcLogManager;->prexSD:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->access$002(Lcom/fimi/x8sdk/service/DownFlightPlaybackService;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    new-instance v3, Ljava/io/File;

    iget-object v8, p0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService$1;->this$0:Lcom/fimi/x8sdk/service/DownFlightPlaybackService;

    invoke-static {v8}, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->access$000(Lcom/fimi/x8sdk/service/DownFlightPlaybackService;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .local v3, "tempFile":Ljava/io/File;
    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_1

    .line 146
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v3    # "tempFile":Ljava/io/File;
    .end local v4    # "unZipFile":Ljava/io/File;
    .end local v5    # "unZipFileName":Ljava/lang/String;
    .end local v6    # "zipState":I
    :cond_4
    sget-object v7, Lcom/fimi/network/DownFwService$DownState;->Downing:Lcom/fimi/network/DownFwService$DownState;

    sput-object v7, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->state:Lcom/fimi/network/DownFwService$DownState;

    .line 148
    :cond_5
    const/16 v7, 0x64

    if-ne v2, v7, :cond_6

    .line 149
    sget-object v7, Lcom/fimi/network/DownFwService$DownState;->Finish:Lcom/fimi/network/DownFwService$DownState;

    sput-object v7, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->state:Lcom/fimi/network/DownFwService$DownState;

    .line 151
    :cond_6
    sget-boolean v7, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->isStop:Z

    if-eqz v7, :cond_7

    .line 152
    sget-object v7, Lcom/fimi/network/DownFwService$DownState;->StopDown:Lcom/fimi/network/DownFwService$DownState;

    sput-object v7, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->state:Lcom/fimi/network/DownFwService$DownState;

    .line 155
    :cond_7
    iget-object v7, p0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService$1;->this$0:Lcom/fimi/x8sdk/service/DownFlightPlaybackService;

    sget-object v8, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->state:Lcom/fimi/network/DownFwService$DownState;

    const-string v9, ""

    invoke-static {v7, v8, v2, v9}, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->access$100(Lcom/fimi/x8sdk/service/DownFlightPlaybackService;Lcom/fimi/network/DownFwService$DownState;ILjava/lang/String;)V

    .line 156
    const/16 v7, 0x64

    if-ne p1, v7, :cond_0

    .line 157
    iget-object v7, p0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService$1;->this$0:Lcom/fimi/x8sdk/service/DownFlightPlaybackService;

    invoke-static {v7}, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->access$200(Lcom/fimi/x8sdk/service/DownFlightPlaybackService;)V

    .line 158
    iget-object v7, p0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService$1;->this$0:Lcom/fimi/x8sdk/service/DownFlightPlaybackService;

    invoke-static {v7}, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->access$300(Lcom/fimi/x8sdk/service/DownFlightPlaybackService;)V

    goto/16 :goto_0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 4
    .param p1, "responseObj"    # Ljava/lang/Object;

    .prologue
    .line 167
    iget-object v1, p0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService$1;->this$0:Lcom/fimi/x8sdk/service/DownFlightPlaybackService;

    iget-object v1, v1, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->needDownDto:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService$1;->this$0:Lcom/fimi/x8sdk/service/DownFlightPlaybackService;

    iget-object v1, v1, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->needDownDto:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    sget v1, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->checkingTaskCount:I

    iget-object v2, p0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService$1;->this$0:Lcom/fimi/x8sdk/service/DownFlightPlaybackService;

    iget-object v2, v2, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->needDownDto:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 168
    :cond_0
    sget-object v1, Lcom/fimi/network/DownFwService$DownState;->Finish:Lcom/fimi/network/DownFwService$DownState;

    sput-object v1, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->state:Lcom/fimi/network/DownFwService$DownState;

    .line 172
    :cond_1
    sget v1, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->checkingTaskCount:I

    mul-int/lit8 v1, v1, 0x64

    iget-object v2, p0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService$1;->this$0:Lcom/fimi/x8sdk/service/DownFlightPlaybackService;

    iget-object v2, v2, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->needDownDto:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int v0, v1, v2

    .line 173
    .local v0, "pro":I
    iget-object v1, p0, Lcom/fimi/x8sdk/service/DownFlightPlaybackService$1;->this$0:Lcom/fimi/x8sdk/service/DownFlightPlaybackService;

    sget-object v2, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->state:Lcom/fimi/network/DownFwService$DownState;

    const-string v3, ""

    invoke-static {v1, v2, v0, v3}, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->access$100(Lcom/fimi/x8sdk/service/DownFlightPlaybackService;Lcom/fimi/network/DownFwService$DownState;ILjava/lang/String;)V

    .line 175
    return-void
.end method
