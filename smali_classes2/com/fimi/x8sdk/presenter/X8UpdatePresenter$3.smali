.class Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$3;
.super Landroid/os/Handler;
.source "X8UpdatePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;


# direct methods
.method constructor <init>(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    .prologue
    .line 730
    iput-object p1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 733
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v6, :cond_1

    .line 734
    iget-object v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v2}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$1300(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)Lcom/fimi/x8sdk/ivew/IX8UpdateProgressView;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v4}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$1200(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v6, v3, v5, v4}, Lcom/fimi/x8sdk/ivew/IX8UpdateProgressView;->showUpdateProgress(ZILjava/util/List;Ljava/lang/String;)V

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 736
    iget-object v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v2}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$1400(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 737
    iget-object v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    sget-object v3, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;->updateEnd:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    iput-object v3, v2, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateState:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    .line 738
    iget-object v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v2}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$1500(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)V

    .line 739
    iget-object v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v2}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$700(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 740
    iget-object v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v2}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$1300(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)Lcom/fimi/x8sdk/ivew/IX8UpdateProgressView;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v4}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$1200(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v7, v3, v5, v4}, Lcom/fimi/x8sdk/ivew/IX8UpdateProgressView;->showUpdateProgress(ZILjava/util/List;Ljava/lang/String;)V

    .line 741
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v2}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$1600(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 746
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v2}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$1600(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_5

    .line 747
    iget-object v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v2}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$1600(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "j":I
    :goto_3
    if-le v1, v0, :cond_4

    .line 748
    iget-object v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v2}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$1600(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/x8sdk/update/fwpack/FwInfo;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getTypeId()B

    move-result v3

    iget-object v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v2}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$1600(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/x8sdk/update/fwpack/FwInfo;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getTypeId()B

    move-result v2

    if-ne v3, v2, :cond_3

    iget-object v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v2}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$1600(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/x8sdk/update/fwpack/FwInfo;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getModelId()B

    move-result v3

    iget-object v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v2}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$1600(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/x8sdk/update/fwpack/FwInfo;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getModelId()B

    move-result v2

    if-ne v3, v2, :cond_3

    .line 751
    iget-object v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v2}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$1600(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 747
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 746
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 757
    .end local v1    # "j":I
    :cond_5
    iget-object v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v2}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$1300(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)Lcom/fimi/x8sdk/ivew/IX8UpdateProgressView;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v4}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$1600(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)Ljava/util/List;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v2, v6, v3, v4, v5}, Lcom/fimi/x8sdk/ivew/IX8UpdateProgressView;->showUpdateProgress(ZILjava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 759
    .end local v0    # "i":I
    :cond_6
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 760
    iget-object v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v2}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$1300(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)Lcom/fimi/x8sdk/ivew/IX8UpdateProgressView;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v4}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$1200(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v7, v3, v5, v4}, Lcom/fimi/x8sdk/ivew/IX8UpdateProgressView;->showUpdateProgress(ZILjava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
