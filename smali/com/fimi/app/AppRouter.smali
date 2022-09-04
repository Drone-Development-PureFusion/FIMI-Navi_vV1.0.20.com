.class public Lcom/fimi/app/AppRouter;
.super Ljava/lang/Object;
.source "AppRouter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static register()V
    .locals 2

    .prologue
    .line 16
    const-string v0, "activity://app.main"

    const-class v1, Lcom/fimi/app/ui/main/HostNewMainActivity;

    invoke-static {v0, v1}, Lrouter/Router;->router(Ljava/lang/String;Ljava/lang/Class;)Lrouter/RouterInternal;

    .line 17
    const-string v0, "activity://app.SplashActivity"

    const-class v1, Lcom/fimi/app/ui/SplashActivity;

    invoke-static {v0, v1}, Lrouter/Router;->router(Ljava/lang/String;Ljava/lang/Class;)Lrouter/RouterInternal;

    .line 18
    return-void
.end method
