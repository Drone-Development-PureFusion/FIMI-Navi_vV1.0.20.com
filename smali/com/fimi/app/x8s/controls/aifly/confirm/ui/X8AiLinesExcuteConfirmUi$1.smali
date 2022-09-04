.class Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$1;
.super Ljava/lang/Object;
.source "X8AiLinesExcuteConfirmUi.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8TabHost$OnSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(ILjava/lang/String;I)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "last"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 154
    if-eq p1, p3, :cond_1

    .line 155
    if-ne p1, v2, :cond_2

    .line 156
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->access$100(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;)Lcom/fimi/app/x8s/entity/X8AilinePrameter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->setOrientation(I)V

    .line 157
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->access$200(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;)Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->access$300(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;)Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->access$200(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;)Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->getmX8AiLineInterestPointController()Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->showView(Z)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->changeOrientation(I)V

    .line 169
    :cond_1
    :goto_0
    return-void

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->access$100(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;)Lcom/fimi/app/x8s/entity/X8AilinePrameter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->setOrientation(I)V

    .line 163
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->access$200(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;)Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->access$300(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;)Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    move-result-object v0

    if-nez v0, :cond_3

    .line 164
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->access$200(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;)Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->getmX8AiLineInterestPointController()Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->showView(Z)V

    .line 166
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->changeOrientation(I)V

    goto :goto_0
.end method
