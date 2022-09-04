.class Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$3;
.super Ljava/lang/Object;
.source "X8FlightPlaybackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->doTrans()V
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
    .line 204
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$3;->this$0:Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 207
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$3;->this$0:Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->access$600(Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;)Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->changeMapType()I

    move-result v0

    .line 208
    .local v0, "backType":I
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$3;->this$0:Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;

    invoke-static {v1, v0}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->access$700(Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;I)V

    .line 209
    return-void
.end method
