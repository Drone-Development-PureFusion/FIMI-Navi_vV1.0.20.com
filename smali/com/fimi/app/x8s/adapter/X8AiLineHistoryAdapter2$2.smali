.class Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$2;
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
    .line 126
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$2;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    iput p2, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$2;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->access$300(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;)Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$2;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->access$300(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;)Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;

    move-result-object v1

    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$2;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->access$400(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$2;->val$position:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    invoke-virtual {v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$2;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->access$200(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;)I

    move-result v0

    invoke-interface {v1, v2, v3, v0}, Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;->onSelectId(JI)V

    .line 134
    :cond_0
    return-void
.end method
