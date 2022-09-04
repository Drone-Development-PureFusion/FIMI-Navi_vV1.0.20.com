.class Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$1;
.super Lcom/fimi/widget/impl/NoDoubleClickListener;
.source "X8FlightPlaybackActivity.java"


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
.method constructor <init>(Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;
    .param p2, "x0"    # I

    .prologue
    .line 170
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$1;->this$0:Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;

    invoke-direct {p0, p2}, Lcom/fimi/widget/impl/NoDoubleClickListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected onNoDoubleClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$1;->this$0:Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->access$000(Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;)Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    move-result-object v0

    iget-object v0, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->mPlayStatus:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$PlayStatus;

    sget-object v1, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$PlayStatus;->Payback:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$PlayStatus;

    if-ne v0, v1, :cond_1

    .line 175
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$1;->this$0:Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->access$000(Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;)Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    move-result-object v0

    iget v0, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->currentProgress:I

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$1;->this$0:Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->access$100(Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$1;->this$0:Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_selector_flightlog_btn_stop:I

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->access$200(Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;I)V

    .line 177
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$1;->this$0:Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->access$000(Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;)Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    move-result-object v0

    sget-object v1, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$PlayStatus;->Stop:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$PlayStatus;

    iput-object v1, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->mPlayStatus:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$PlayStatus;

    .line 182
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$1;->this$0:Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->access$000(Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;)Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->playFlightPlayback()V

    .line 188
    :goto_1
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$1;->this$0:Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->access$000(Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;)Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->currentProgress:I

    .line 180
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$1;->this$0:Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_selector_flightlog_btn_play:I

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->access$200(Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;I)V

    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$1;->this$0:Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->access$000(Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;)Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->stopFlightPlayback()V

    .line 185
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$1;->this$0:Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_selector_flightlog_btn_play:I

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->access$200(Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;I)V

    .line 186
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity$1;->this$0:Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;->access$000(Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;)Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    move-result-object v0

    sget-object v1, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$PlayStatus;->Payback:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$PlayStatus;

    iput-object v1, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->mPlayStatus:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$PlayStatus;

    goto :goto_1
.end method
