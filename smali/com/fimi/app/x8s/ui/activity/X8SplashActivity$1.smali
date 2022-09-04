.class Lcom/fimi/app/x8s/ui/activity/X8SplashActivity$1;
.super Ljava/lang/Object;
.source "X8SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/ui/activity/X8SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/activity/X8SplashActivity;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/activity/X8SplashActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/activity/X8SplashActivity;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/activity/X8SplashActivity$1;->this$0:Lcom/fimi/app/x8s/ui/activity/X8SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8SplashActivity$1;->this$0:Lcom/fimi/app/x8s/ui/activity/X8SplashActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8SplashActivity;->access$000(Lcom/fimi/app/x8s/ui/activity/X8SplashActivity;)V

    .line 45
    return-void
.end method
