.class Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$3;
.super Ljava/lang/Object;
.source "CustomMediaContoller.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->initAction()V
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
    .line 124
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$3;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 127
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 144
    :cond_0
    :goto_0
    return v1

    .line 129
    :pswitch_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$3;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->access$700(Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$3;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->show()V

    goto :goto_0

    .line 134
    :pswitch_1
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$3;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->access$700(Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$3;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->hide()V

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$3;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->show()V

    goto :goto_0

    .line 141
    :pswitch_2
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$3;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->access$500(Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
