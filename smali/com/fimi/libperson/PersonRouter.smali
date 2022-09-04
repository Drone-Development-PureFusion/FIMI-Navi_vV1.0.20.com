.class public Lcom/fimi/libperson/PersonRouter;
.super Ljava/lang/Object;
.source "PersonRouter.java"


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
    .line 17
    const-string v0, "activity://person.setting"

    const-class v1, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;

    invoke-static {v0, v1}, Lrouter/Router;->router(Ljava/lang/String;Ljava/lang/Class;)Lrouter/RouterInternal;

    .line 18
    const-string v0, "activity://person.service"

    const-class v1, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;

    invoke-static {v0, v1}, Lrouter/Router;->router(Ljava/lang/String;Ljava/lang/Class;)Lrouter/RouterInternal;

    .line 19
    return-void
.end method
