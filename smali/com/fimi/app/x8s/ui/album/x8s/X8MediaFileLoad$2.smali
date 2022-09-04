.class Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$2;
.super Landroid/os/Handler;
.source "X8MediaFileLoad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;

    .prologue
    .line 137
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$2;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$2;"
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 141
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$2;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$2;"
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 142
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 152
    :goto_0
    return-void

    .line 144
    :pswitch_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->access$700(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;)Lcom/fimi/app/x8s/ui/album/x8s/OnX8MediaFileListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/OnX8MediaFileListener;->onComplete(Z)V

    goto :goto_0

    .line 147
    :pswitch_1
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->access$700(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;)Lcom/fimi/app/x8s/ui/album/x8s/OnX8MediaFileListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/OnX8MediaFileListener;->onComplete(Z)V

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
