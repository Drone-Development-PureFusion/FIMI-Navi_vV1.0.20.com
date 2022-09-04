.class Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$ScreenEventReciver;
.super Landroid/content/BroadcastReceiver;
.source "X8CustomVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenEventReciver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;


# direct methods
.method private constructor <init>(Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;)V
    .locals 0

    .prologue
    .line 715
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$ScreenEventReciver;->this$0:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;
    .param p2, "x1"    # Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$1;

    .prologue
    .line 715
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$ScreenEventReciver;-><init>(Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 718
    const-string v0, "CustomVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 738
    :cond_1
    :goto_1
    return-void

    .line 720
    :sswitch_0
    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 722
    :pswitch_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$ScreenEventReciver;->this$0:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->access$800(Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 723
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$ScreenEventReciver;->this$0:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->access$900(Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 724
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$ScreenEventReciver;->this$0:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->pause()V

    goto :goto_1

    .line 726
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$ScreenEventReciver;->this$0:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->resume()V

    goto :goto_1

    .line 731
    :pswitch_1
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$ScreenEventReciver;->this$0:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->access$800(Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 732
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$ScreenEventReciver;->this$0:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->pause()V

    goto :goto_1

    .line 720
    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_1
        0x311a1d6c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
