.class Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$2;
.super Ljava/lang/Object;
.source "X8AiAutoPhototExcuteController.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackClick()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->closeNextUi(Z)V

    .line 290
    return-void
.end method

.method public onExcuteClick()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->closeNextUi(Z)V

    .line 301
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->access$700(Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;)Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiAutoPhotoExcuteConfirmModule;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiAutoPhotoExcuteConfirmModule;->startAiAutoPhoto(Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhototExcuteListener;)V

    .line 305
    return-void
.end method

.method public onSaveClick()V
    .locals 0

    .prologue
    .line 310
    return-void
.end method
