.class Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi$3;
.super Ljava/lang/Object;
.source "X8AiLinesPointValueUi.java"

# interfaces
.implements Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->lablesInterestEvent()V
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
    .line 414
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(IIZ)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "last"    # I
    .param p3, "isSelect"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 418
    if-eqz p3, :cond_1

    .line 419
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->access$200(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;

    invoke-virtual {v2, v5}, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;->setState(I)V

    .line 423
    :goto_0
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->access$300(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;)Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->notifyItemChanged(I)V

    .line 424
    const/4 v1, 0x0

    .line 425
    .local v1, "selectCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->access$200(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 426
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->access$200(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;->getState()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 427
    add-int/lit8 v1, v1, 0x1

    .line 425
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 421
    .end local v0    # "i":I
    .end local v1    # "selectCount":I
    :cond_1
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->access$200(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;

    invoke-virtual {v2, v6}, Lcom/fimi/app/x8s/entity/X8AiLinePointEntity;->setState(I)V

    goto :goto_0

    .line 431
    .restart local v0    # "i":I
    .restart local v1    # "selectCount":I
    :cond_2
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;

    iget v2, v2, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->count:I

    if-ne v2, v1, :cond_3

    .line 432
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->access$500(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->access$400(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_point_bind_interest_unselect:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 433
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->access$300(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;)Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->setAll(Z)V

    .line 439
    :goto_2
    return-void

    .line 435
    :cond_3
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->access$500(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->access$400(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_point_bind_interest_select:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;->access$300(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesPointValueUi;)Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->setAll(Z)V

    goto :goto_2
.end method
