.class Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter$1;
.super Ljava/lang/Object;
.source "X8FlightLogListPresenter.java"

# interfaces
.implements Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->synFlightPlaybackData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;


# direct methods
.method constructor <init>(Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Object;)V
    .locals 0
    .param p1, "reasonObj"    # Ljava/lang/Object;

    .prologue
    .line 157
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 14
    .param p1, "responseObj"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-class v9, Lcom/fimi/network/entity/NetModel;

    invoke-static {v7, v9}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/network/entity/NetModel;

    .line 90
    .local v2, "netModel":Lcom/fimi/network/entity/NetModel;
    invoke-virtual {v2}, Lcom/fimi/network/entity/NetModel;->isSuccess()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 91
    invoke-virtual {v2}, Lcom/fimi/network/entity/NetModel;->getData()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 92
    iget-object v7, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    invoke-static {v7}, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->access$000(Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 93
    iget-object v7, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    invoke-static {v7}, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->access$100(Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 94
    iget-object v7, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    invoke-static {v7, v8}, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->access$202(Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;Z)Z

    .line 95
    iget-object v7, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    invoke-virtual {v2}, Lcom/fimi/network/entity/NetModel;->getData()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-class v10, Lcom/fimi/network/entity/X8PlaybackLogEntity;

    invoke-static {v9, v10}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->access$302(Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;Ljava/util/List;)Ljava/util/List;

    .line 96
    iget-object v7, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    invoke-static {v7}, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->access$400(Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 97
    .local v4, "x8FlightLogFileIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fimi/x8sdk/entity/X8FlightLogFile;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 98
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/x8sdk/entity/X8FlightLogFile;

    .line 99
    .local v3, "x8FlightFile":Lcom/fimi/x8sdk/entity/X8FlightLogFile;
    iget-object v7, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    invoke-static {v7}, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->access$500(Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;)J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v7, v10, v12

    if-nez v7, :cond_1

    .line 100
    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->isUpload()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 101
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->isUpload()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    invoke-static {v7, v3}, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->access$600(Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;Lcom/fimi/x8sdk/entity/X8FlightLogFile;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 106
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 111
    :cond_3
    iget-object v7, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    invoke-static {v7}, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->access$300(Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fimi/network/entity/X8PlaybackLogEntity;

    .line 112
    .local v5, "x8PlaybackLogEntity":Lcom/fimi/network/entity/X8PlaybackLogEntity;
    invoke-virtual {v5}, Lcom/fimi/network/entity/X8PlaybackLogEntity;->getLogFileUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 114
    :try_start_0
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 123
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v3    # "x8FlightFile":Lcom/fimi/x8sdk/entity/X8FlightLogFile;
    .end local v5    # "x8PlaybackLogEntity":Lcom/fimi/network/entity/X8PlaybackLogEntity;
    :cond_5
    iget-object v7, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    invoke-static {v7}, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->access$300(Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 124
    .local v6, "x8PlaybackLogEntityIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fimi/network/entity/X8PlaybackLogEntity;>;"
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 125
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fimi/network/entity/X8PlaybackLogEntity;

    .line 126
    .restart local v5    # "x8PlaybackLogEntity":Lcom/fimi/network/entity/X8PlaybackLogEntity;
    iget-object v7, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    invoke-static {v7}, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->access$700(Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/x8sdk/entity/X8FlightLogFile;

    .line 127
    .restart local v3    # "x8FlightFile":Lcom/fimi/x8sdk/entity/X8FlightLogFile;
    invoke-virtual {v5}, Lcom/fimi/network/entity/X8PlaybackLogEntity;->getLogFileUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 129
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 131
    :catch_1
    move-exception v0

    .line 132
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    .line 138
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v3    # "x8FlightFile":Lcom/fimi/x8sdk/entity/X8FlightLogFile;
    .end local v4    # "x8FlightLogFileIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fimi/x8sdk/entity/X8FlightLogFile;>;"
    .end local v5    # "x8PlaybackLogEntity":Lcom/fimi/network/entity/X8PlaybackLogEntity;
    .end local v6    # "x8PlaybackLogEntityIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fimi/network/entity/X8PlaybackLogEntity;>;"
    :cond_8
    iget-object v7, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    invoke-static {v7}, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->access$100(Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;)Ljava/util/List;

    move-result-object v7

    iget-object v9, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    invoke-static {v9}, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->access$400(Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 139
    iget-object v7, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    invoke-static {v7}, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->access$000(Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;)Ljava/util/List;

    move-result-object v7

    iget-object v9, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    invoke-static {v9}, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->access$300(Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    iget-object v9, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    iget-object v7, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    invoke-static {v7}, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->access$100(Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_a

    iget-object v7, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    invoke-static {v7}, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->access$000(Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_a

    const/4 v7, 0x1

    :goto_3
    invoke-static {v9, v7}, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->access$202(Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;Z)Z

    .line 141
    iget-object v7, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    invoke-static {v7}, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->access$000(Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_b

    .line 142
    iget-object v7, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    invoke-static {v7}, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->access$800(Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;)Lcom/fimi/x8sdk/ivew/IX8FlightLogListAction;

    move-result-object v7

    invoke-interface {v7}, Lcom/fimi/x8sdk/ivew/IX8FlightLogListAction;->startSyn()V

    .line 143
    sput v8, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->checkingTaskCount:I

    .line 144
    new-instance v1, Landroid/content/Intent;

    iget-object v7, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    invoke-static {v7}, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->access$900(Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;)Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    .local v1, "intent":Landroid/content/Intent;
    const-string v8, "listDownloadFlightPlayback"

    iget-object v7, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    invoke-static {v7}, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->access$000(Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/io/Serializable;

    invoke-virtual {v1, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 146
    iget-object v7, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    invoke-static {v7}, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->access$900(Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 152
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_9
    :goto_4
    return-void

    :cond_a
    move v7, v8

    .line 140
    goto :goto_3

    .line 148
    :cond_b
    iget-object v7, p0, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    invoke-virtual {v7}, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->uploadFlightLogFiles()V

    goto :goto_4
.end method
