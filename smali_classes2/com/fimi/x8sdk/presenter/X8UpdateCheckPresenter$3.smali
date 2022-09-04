.class Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$3;
.super Landroid/os/Handler;
.source "X8UpdateCheckPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;


# direct methods
.method constructor <init>(Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 186
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 187
    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;

    invoke-static {v1}, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->access$300(Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;)Lcom/fimi/x8sdk/ivew/IUpdateCheckAction;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_1

    :goto_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0, v2}, Lcom/fimi/x8sdk/ivew/IUpdateCheckAction;->showIsUpdate(ZI)V

    .line 191
    :cond_0
    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 193
    return-void

    .line 187
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 188
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;

    invoke-static {v0}, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->access$300(Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;)Lcom/fimi/x8sdk/ivew/IUpdateCheckAction;

    move-result-object v0

    invoke-interface {v0}, Lcom/fimi/x8sdk/ivew/IUpdateCheckAction;->checkUpdate()V

    goto :goto_1
.end method
