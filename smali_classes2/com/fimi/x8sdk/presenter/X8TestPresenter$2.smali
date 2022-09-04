.class Lcom/fimi/x8sdk/presenter/X8TestPresenter$2;
.super Landroid/os/Handler;
.source "X8TestPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x8sdk/presenter/X8TestPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/x8sdk/presenter/X8TestPresenter;


# direct methods
.method constructor <init>(Lcom/fimi/x8sdk/presenter/X8TestPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/x8sdk/presenter/X8TestPresenter;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/fimi/x8sdk/presenter/X8TestPresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8TestPresenter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 144
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 145
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8TestPresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8TestPresenter;

    iget-object v0, v0, Lcom/fimi/x8sdk/presenter/X8TestPresenter;->updateView:Lcom/fimi/x8sdk/ivew/ICameraTestUpdateView;

    invoke-interface {v0, v1}, Lcom/fimi/x8sdk/ivew/ICameraTestUpdateView;->showDataConnect(Z)V

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_2

    .line 148
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8TestPresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8TestPresenter;

    iget-object v0, v0, Lcom/fimi/x8sdk/presenter/X8TestPresenter;->updateView:Lcom/fimi/x8sdk/ivew/ICameraTestUpdateView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fimi/x8sdk/ivew/ICameraTestUpdateView;->showDataConnect(Z)V

    goto :goto_0

    .line 149
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_3

    .line 150
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8TestPresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8TestPresenter;

    iget-object v0, v0, Lcom/fimi/x8sdk/presenter/X8TestPresenter;->updateView:Lcom/fimi/x8sdk/ivew/ICameraTestUpdateView;

    invoke-interface {v0, v2}, Lcom/fimi/x8sdk/ivew/ICameraTestUpdateView;->showUploadProgress(I)V

    goto :goto_0

    .line 151
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_0

    .line 152
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8TestPresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8TestPresenter;

    iget-object v0, v0, Lcom/fimi/x8sdk/presenter/X8TestPresenter;->updateView:Lcom/fimi/x8sdk/ivew/ICameraTestUpdateView;

    invoke-interface {v0, v3}, Lcom/fimi/x8sdk/ivew/ICameraTestUpdateView;->showUploadProgress(I)V

    goto :goto_0
.end method
