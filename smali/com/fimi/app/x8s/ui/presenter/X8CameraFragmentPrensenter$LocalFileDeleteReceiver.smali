.class public Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$LocalFileDeleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "X8CameraFragmentPrensenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalFileDeleteReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;


# direct methods
.method public constructor <init>(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    .prologue
    .line 535
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$LocalFileDeleteReceiver;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter<TT;>.LocalFileDeleteReceiver;"
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$LocalFileDeleteReceiver;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 538
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$LocalFileDeleteReceiver;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter<TT;>.LocalFileDeleteReceiver;"
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$LocalFileDeleteReceiver;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->access$2300(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 542
    .local v0, "action":Ljava/lang/String;
    const-string v1, "LOCALFILEDELETEEIVER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 543
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$LocalFileDeleteReceiver;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->access$100(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$LocalFileDeleteReceiver$1;

    invoke-direct {v2, p0, p2}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$LocalFileDeleteReceiver$1;-><init>(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$LocalFileDeleteReceiver;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
