.class Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$5;
.super Ljava/lang/Object;
.source "X8FlightPlaybackActivity.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IX8FlightLogTopBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$5;->this$0:Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toMainUI()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$5;->this$0:Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->finish()V

    .line 236
    return-void
.end method
