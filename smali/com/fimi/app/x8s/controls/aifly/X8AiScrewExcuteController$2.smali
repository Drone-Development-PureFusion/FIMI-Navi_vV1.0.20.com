.class Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$2;
.super Ljava/lang/Object;
.source "X8AiScrewExcuteController.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackClick()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->closeNextUi(Z)V

    .line 259
    return-void
.end method

.method public onExcuteClick()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 263
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->closeNextUi(Z)V

    .line 264
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->access$000(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->access$100(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->access$200(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;->RUNNING:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->access$302(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;)Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    .line 268
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->access$400(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)Lcom/fimi/app/x8s/interfaces/IX8ScrewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8ScrewListener;->onAiScrewRunning()V

    .line 269
    return-void
.end method

.method public onSaveClick()V
    .locals 0

    .prologue
    .line 274
    return-void
.end method
