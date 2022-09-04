.class Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$6;
.super Ljava/lang/Object;
.source "X8AiLineHistoryAdapter2.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->showEditorDialog(ILcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

.field final synthetic val$info1:Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

.field final synthetic val$positon:I


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$6;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    iput-object p2, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$6;->val$info1:Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    iput p3, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$6;->val$positon:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCenter(Ljava/lang/String;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$6;->val$info1:Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    invoke-virtual {v0, p1}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->setName(Ljava/lang/String;)V

    .line 308
    invoke-static {}, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->getIntance()Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$6;->val$info1:Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    invoke-virtual {v1}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->updateLineName(Ljava/lang/String;J)V

    .line 309
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$6;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->access$300(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;)Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$6;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->access$300(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;)Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;

    move-result-object v1

    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$6;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->access$400(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$6;->val$positon:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    invoke-virtual {v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v0, 0x1

    iget v4, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$6;->val$positon:I

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;->onItemChange(JII)V

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$6;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    iget v1, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$6;->val$positon:I

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->notifyItemChanged(I)V

    .line 313
    return-void
.end method

.method public onLeft()V
    .locals 0

    .prologue
    .line 303
    return-void
.end method

.method public onRight(Ljava/lang/String;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 317
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$6;->val$info1:Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    invoke-virtual {v0, p1}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->setName(Ljava/lang/String;)V

    .line 319
    invoke-static {}, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->getIntance()Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$6;->val$info1:Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    invoke-virtual {v1}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->updateLineName(Ljava/lang/String;J)V

    .line 320
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$6;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->access$300(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;)Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$6;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->access$300(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;)Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;

    move-result-object v1

    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$6;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->access$400(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$6;->val$positon:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    invoke-virtual {v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v0, 0x1

    iget v4, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$6;->val$positon:I

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;->onItemChange(JII)V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$6;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    iget v1, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$6;->val$positon:I

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->notifyItemChanged(I)V

    .line 325
    :cond_1
    return-void
.end method
