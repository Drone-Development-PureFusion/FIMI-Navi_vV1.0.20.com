.class Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$4;
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
    .line 212
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$4;->this$0:Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$4;->this$0:Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->access$800(Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;)Lcom/fimi/kernel/percent/PercentRelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/percent/PercentRelativeLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$4;->this$0:Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$4;->this$0:Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->access$900(Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;)Landroid/widget/ImageView;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->play_back_battery_more_bg:I

    invoke-static {v0, v1, v2}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->access$500(Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;Landroid/widget/ImageView;I)V

    .line 217
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$4;->this$0:Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->access$800(Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;)Lcom/fimi/kernel/percent/PercentRelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/percent/PercentRelativeLayout;->setVisibility(I)V

    .line 223
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$4;->this$0:Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$4;->this$0:Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->access$900(Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;)Landroid/widget/ImageView;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_btn_playback_battery_info_end:I

    invoke-static {v0, v1, v2}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->access$500(Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;Landroid/widget/ImageView;I)V

    .line 220
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$4;->this$0:Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->access$800(Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;)Lcom/fimi/kernel/percent/PercentRelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/percent/PercentRelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
