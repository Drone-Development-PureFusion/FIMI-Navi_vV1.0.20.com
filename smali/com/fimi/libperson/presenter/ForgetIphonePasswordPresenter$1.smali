.class Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter$1;
.super Landroid/os/Handler;
.source "ForgetIphonePasswordPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter$1;->this$0:Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 34
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 35
    const-string v0, "ForgetIphonePasswordPre"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mSecond:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter$1;->this$0:Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;

    invoke-static {v2}, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->access$000(Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_0

    .line 37
    const-string v0, "ForgetIphonePasswordPre"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter$1;->this$0:Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;

    invoke-static {v2}, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->access$000(Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter$1;->this$0:Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;

    invoke-static {v0}, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->access$000(Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;)I

    move-result v0

    if-nez v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter$1;->this$0:Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;

    invoke-static {v0}, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->access$100(Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;)Lcom/fimi/libperson/ivew/IForgetIphonePasswordView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, v3}, Lcom/fimi/libperson/ivew/IForgetIphonePasswordView;->updateSeconds(ZI)V

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter$1;->this$0:Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;

    invoke-static {v0}, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->access$100(Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;)Lcom/fimi/libperson/ivew/IForgetIphonePasswordView;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter$1;->this$0:Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;

    invoke-static {v1}, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->access$000(Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;)I

    move-result v1

    invoke-interface {v0, v3, v1}, Lcom/fimi/libperson/ivew/IForgetIphonePasswordView;->updateSeconds(ZI)V

    .line 42
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter$1;->this$0:Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;

    invoke-static {v0}, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->access$010(Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;)I

    .line 43
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter$1;->this$0:Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;

    invoke-static {v0}, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->access$200(Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
