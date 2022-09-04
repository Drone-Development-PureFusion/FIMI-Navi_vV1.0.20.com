.class public Lcom/fimi/app/x8s/X8sRouter;
.super Ljava/lang/Object;
.source "X8sRouter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static register(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    const-string v0, "activity://x8s.main"

    const-class v1, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0, v1}, Lrouter/Router;->router(Ljava/lang/String;Ljava/lang/Class;)Lrouter/RouterInternal;

    .line 18
    new-instance v0, Lcom/fimi/app/x8s/X8Application;

    invoke-direct {v0}, Lcom/fimi/app/x8s/X8Application;-><init>()V

    invoke-virtual {v0, p0}, Lcom/fimi/app/x8s/X8Application;->onCreate(Landroid/content/Context;)V

    .line 19
    return-void
.end method
