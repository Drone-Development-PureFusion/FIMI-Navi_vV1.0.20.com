.class Lcom/fimi/libperson/presenter/ThirdLoginPresenter$1;
.super Landroid/os/Handler;
.source "ThirdLoginPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/libperson/presenter/ThirdLoginPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libperson/presenter/ThirdLoginPresenter;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/presenter/ThirdLoginPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/presenter/ThirdLoginPresenter;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter$1;->this$0:Lcom/fimi/libperson/presenter/ThirdLoginPresenter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 53
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter$1;->this$0:Lcom/fimi/libperson/presenter/ThirdLoginPresenter;

    iget-object v0, v0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->loginView:Lcom/fimi/libperson/ivew/IThirdLoginView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fimi/libperson/ivew/IThirdLoginView;->updateProgress(Z)V

    .line 56
    :cond_0
    return-void
.end method
