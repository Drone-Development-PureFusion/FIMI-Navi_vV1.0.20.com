.class Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$1;
.super Ljava/lang/Object;
.source "X8AiLineHistoryAdapter2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->onBindViewHolder(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$HistoryViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$1;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    iput p2, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    .line 89
    .local v0, "info1":Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$1;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    invoke-static {v2}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->access$200(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;)I

    move-result v2

    if-nez v2, :cond_5

    .line 90
    invoke-virtual {v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getSaveFlag()I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 91
    invoke-virtual {v0, v7}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->setSaveFlag(I)V

    .line 92
    invoke-static {}, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->getIntance()Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v7, v4, v5}, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->updatelineSaveFlag(IJ)V

    .line 93
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$1;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    invoke-static {v2}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->access$300(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;)Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$1;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    invoke-static {v2}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->access$300(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;)Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;

    move-result-object v3

    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$1;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    invoke-static {v2}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->access$400(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;)Ljava/util/List;

    move-result-object v2

    iget v4, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$1;->val$position:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    invoke-virtual {v2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget v2, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$1;->val$position:I

    invoke-interface {v3, v4, v5, v7, v2}, Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;->onItemChange(JII)V

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$1;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    iget v3, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$1;->val$position:I

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->notifyItemChanged(I)V

    .line 122
    :cond_1
    :goto_0
    return-void

    .line 97
    :cond_2
    invoke-virtual {v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getSaveFlag()I

    move-result v2

    if-nez v2, :cond_1

    .line 98
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$1;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    invoke-static {v2}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->access$300(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;)Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;->favoritesCapacity()I

    move-result v1

    .line 99
    .local v1, "size":I
    const/16 v2, 0x14

    if-ne v1, v2, :cond_3

    .line 100
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$1;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->showMaxSaveDialog()V

    goto :goto_0

    .line 102
    :cond_3
    invoke-virtual {v0, v6}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->setSaveFlag(I)V

    .line 103
    invoke-static {}, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->getIntance()Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v6, v4, v5}, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->updatelineSaveFlag(IJ)V

    .line 104
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$1;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    invoke-static {v2}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->access$300(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;)Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 105
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$1;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    invoke-static {v2}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->access$300(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;)Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;

    move-result-object v3

    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$1;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    invoke-static {v2}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->access$400(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;)Ljava/util/List;

    move-result-object v2

    iget v4, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$1;->val$position:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    invoke-virtual {v2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget v2, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$1;->val$position:I

    invoke-interface {v3, v4, v5, v6, v2}, Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;->onItemChange(JII)V

    .line 106
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$1;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    invoke-static {v2}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->access$300(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;)Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;

    move-result-object v3

    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$1;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    invoke-static {v2}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->access$400(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;)Ljava/util/List;

    move-result-object v2

    iget v4, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$1;->val$position:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    invoke-interface {v3, v2}, Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;->addLineItem(Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;)V

    .line 108
    :cond_4
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$1;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    iget v3, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$1;->val$position:I

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->notifyItemChanged(I)V

    .line 109
    invoke-virtual {v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$1;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    iget v3, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$1;->val$position:I

    invoke-virtual {v2, v3, v0}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->showEditorDialog(ILcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;)V

    goto/16 :goto_0

    .line 116
    .end local v1    # "size":I
    :cond_5
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$1;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    invoke-static {v2}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->access$200(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;)I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 117
    invoke-virtual {v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getSaveFlag()I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 118
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$1;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    iget v3, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$1;->val$position:I

    invoke-virtual {v2, v0, v3}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->showCancleDialog(Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;I)V

    goto/16 :goto_0
.end method
