.class Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi$4;
.super Ljava/lang/Object;
.source "X8AiLinesPointValueUi.java"

# interfaces
.implements Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->lablesPointEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;

    .prologue
    .line 503
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(IIZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "last"    # I
    .param p3, "isSelect"    # Z

    .prologue
    const/4 v2, 0x0

    .line 507
    if-eqz p3, :cond_1

    .line 508
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->access$200(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;->setState(I)V

    .line 509
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->access$200(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;->setState(I)V

    .line 511
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->access$300(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;)Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->notifyItemChanged(I)V

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->access$300(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;)Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->notifyItemChanged(I)V

    .line 519
    :goto_0
    return-void

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->access$200(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;->setState(I)V

    .line 516
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->access$300(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;)Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->notifyItemChanged(I)V

    goto :goto_0
.end method
