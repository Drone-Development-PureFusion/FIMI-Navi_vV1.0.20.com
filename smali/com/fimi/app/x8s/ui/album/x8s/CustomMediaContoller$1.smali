.class Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$1;
.super Landroid/os/Handler;
.source "CustomMediaContoller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 57
    :goto_0
    return-void

    .line 49
    :pswitch_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->hide()V

    goto :goto_0

    .line 52
    :pswitch_1
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;)J

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
