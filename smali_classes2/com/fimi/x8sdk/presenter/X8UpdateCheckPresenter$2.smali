.class Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$2;
.super Ljava/lang/Object;
.source "X8UpdateCheckPresenter.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->setPresenterLockMotor(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;

.field final synthetic val$lock:I


# direct methods
.method constructor <init>(Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;

    iput p2, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$2;->val$lock:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 2
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 168
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$2;->val$lock:I

    if-nez v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->access$202(Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;Z)Z

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->access$202(Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;Z)Z

    goto :goto_0
.end method
