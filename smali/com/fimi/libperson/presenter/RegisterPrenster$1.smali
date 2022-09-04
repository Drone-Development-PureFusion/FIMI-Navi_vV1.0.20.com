.class Lcom/fimi/libperson/presenter/RegisterPrenster$1;
.super Landroid/os/Handler;
.source "RegisterPrenster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/libperson/presenter/RegisterPrenster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libperson/presenter/RegisterPrenster;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/presenter/RegisterPrenster;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/presenter/RegisterPrenster;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/fimi/libperson/presenter/RegisterPrenster$1;->this$0:Lcom/fimi/libperson/presenter/RegisterPrenster;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 41
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 42
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_0

    .line 43
    const-string v0, "RegisterPrenster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/libperson/presenter/RegisterPrenster$1;->this$0:Lcom/fimi/libperson/presenter/RegisterPrenster;

    invoke-static {v2}, Lcom/fimi/libperson/presenter/RegisterPrenster;->access$000(Lcom/fimi/libperson/presenter/RegisterPrenster;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/fimi/libperson/presenter/RegisterPrenster$1;->this$0:Lcom/fimi/libperson/presenter/RegisterPrenster;

    invoke-static {v0}, Lcom/fimi/libperson/presenter/RegisterPrenster;->access$000(Lcom/fimi/libperson/presenter/RegisterPrenster;)I

    move-result v0

    if-nez v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/fimi/libperson/presenter/RegisterPrenster$1;->this$0:Lcom/fimi/libperson/presenter/RegisterPrenster;

    iget-object v0, v0, Lcom/fimi/libperson/presenter/RegisterPrenster;->iRegisterView:Lcom/fimi/libperson/ivew/IRegisterView;

    invoke-interface {v0, v4, v3}, Lcom/fimi/libperson/ivew/IRegisterView;->updateSeconds(ZI)V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/fimi/libperson/presenter/RegisterPrenster$1;->this$0:Lcom/fimi/libperson/presenter/RegisterPrenster;

    iget-object v0, v0, Lcom/fimi/libperson/presenter/RegisterPrenster;->iRegisterView:Lcom/fimi/libperson/ivew/IRegisterView;

    iget-object v1, p0, Lcom/fimi/libperson/presenter/RegisterPrenster$1;->this$0:Lcom/fimi/libperson/presenter/RegisterPrenster;

    invoke-static {v1}, Lcom/fimi/libperson/presenter/RegisterPrenster;->access$000(Lcom/fimi/libperson/presenter/RegisterPrenster;)I

    move-result v1

    invoke-interface {v0, v3, v1}, Lcom/fimi/libperson/ivew/IRegisterView;->updateSeconds(ZI)V

    .line 48
    iget-object v0, p0, Lcom/fimi/libperson/presenter/RegisterPrenster$1;->this$0:Lcom/fimi/libperson/presenter/RegisterPrenster;

    invoke-static {v0}, Lcom/fimi/libperson/presenter/RegisterPrenster;->access$010(Lcom/fimi/libperson/presenter/RegisterPrenster;)I

    .line 49
    iget-object v0, p0, Lcom/fimi/libperson/presenter/RegisterPrenster$1;->this$0:Lcom/fimi/libperson/presenter/RegisterPrenster;

    invoke-static {v0}, Lcom/fimi/libperson/presenter/RegisterPrenster;->access$100(Lcom/fimi/libperson/presenter/RegisterPrenster;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
