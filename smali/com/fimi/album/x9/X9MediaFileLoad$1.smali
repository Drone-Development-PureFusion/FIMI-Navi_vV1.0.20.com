.class Lcom/fimi/album/x9/X9MediaFileLoad$1;
.super Landroid/os/Handler;
.source "X9MediaFileLoad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/album/x9/X9MediaFileLoad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/album/x9/X9MediaFileLoad;


# direct methods
.method constructor <init>(Lcom/fimi/album/x9/X9MediaFileLoad;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/album/x9/X9MediaFileLoad;

    .prologue
    .line 50
    .local p0, "this":Lcom/fimi/album/x9/X9MediaFileLoad$1;, "Lcom/fimi/album/x9/X9MediaFileLoad$1;"
    iput-object p1, p0, Lcom/fimi/album/x9/X9MediaFileLoad$1;->this$0:Lcom/fimi/album/x9/X9MediaFileLoad;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 60
    .local p0, "this":Lcom/fimi/album/x9/X9MediaFileLoad$1;, "Lcom/fimi/album/x9/X9MediaFileLoad$1;"
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 61
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 74
    :goto_0
    return-void

    .line 63
    :pswitch_0
    iget-object v0, p0, Lcom/fimi/album/x9/X9MediaFileLoad$1;->this$0:Lcom/fimi/album/x9/X9MediaFileLoad;

    invoke-static {v0}, Lcom/fimi/album/x9/X9MediaFileLoad;->access$000(Lcom/fimi/album/x9/X9MediaFileLoad;)Lcom/fimi/album/x9/interfaces/OnX9MediaFileListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fimi/album/x9/interfaces/OnX9MediaFileListener;->onComplete(Z)V

    goto :goto_0

    .line 67
    :pswitch_1
    iget-object v0, p0, Lcom/fimi/album/x9/X9MediaFileLoad$1;->this$0:Lcom/fimi/album/x9/X9MediaFileLoad;

    invoke-static {v0}, Lcom/fimi/album/x9/X9MediaFileLoad;->access$000(Lcom/fimi/album/x9/X9MediaFileLoad;)Lcom/fimi/album/x9/interfaces/OnX9MediaFileListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/fimi/album/x9/interfaces/OnX9MediaFileListener;->onComplete(Z)V

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
