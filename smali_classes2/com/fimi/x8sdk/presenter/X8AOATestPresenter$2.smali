.class Lcom/fimi/x8sdk/presenter/X8AOATestPresenter$2;
.super Landroid/os/Handler;
.source "X8AOATestPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;


# direct methods
.method constructor <init>(Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;

    iget-object v0, v0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;->iaoaTestView:Lcom/fimi/x8sdk/ivew/IAOATestView;

    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;

    invoke-static {v1}, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;->access$100(Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/fimi/x8sdk/ivew/IAOATestView;->showSendDataLen(J)V

    .line 57
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;

    iget-object v0, v0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;->iaoaTestView:Lcom/fimi/x8sdk/ivew/IAOATestView;

    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;

    invoke-static {v1}, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;->access$000(Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/fimi/x8sdk/ivew/IAOATestView;->showRecDataLen(J)V

    .line 58
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;

    iget-object v0, v0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 60
    :cond_0
    return-void
.end method
