.class public Lcom/fimi/app/ui/main/HostNewMainActivity$LocalChangeLanguageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HostNewMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/ui/main/HostNewMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalChangeLanguageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/ui/main/HostNewMainActivity;


# direct methods
.method public constructor <init>(Lcom/fimi/app/ui/main/HostNewMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/ui/main/HostNewMainActivity;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity$LocalChangeLanguageReceiver;->this$0:Lcom/fimi/app/ui/main/HostNewMainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity$LocalChangeLanguageReceiver;->this$0:Lcom/fimi/app/ui/main/HostNewMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/ui/main/HostNewMainActivity;->recreate()V

    .line 381
    return-void
.end method
