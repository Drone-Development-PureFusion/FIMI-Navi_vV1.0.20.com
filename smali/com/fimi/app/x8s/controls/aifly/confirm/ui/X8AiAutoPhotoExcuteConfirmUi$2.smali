.class Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi$2;
.super Ljava/lang/Object;
.source "X8AiAutoPhotoExcuteConfirmUi.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(Lcom/fimi/app/x8s/widget/X8SeekBarView;I)V
    .locals 6
    .param p1, "slideView"    # Lcom/fimi/app/x8s/widget/X8SeekBarView;
    .param p2, "progress"    # I

    .prologue
    const/high16 v5, 0x41200000    # 10.0f

    const/4 v4, 0x1

    .line 178
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->access$200(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 179
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->access$300(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;)F

    move-result v2

    int-to-float v3, p2

    div-float/2addr v3, v5

    add-float v1, v2, v3

    .line 180
    .local v1, "distance":F
    invoke-static {v1, v4, v4}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "d":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->access$400(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :goto_0
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->setValue()V

    .line 188
    return-void

    .line 183
    .end local v0    # "d":Ljava/lang/String;
    .end local v1    # "distance":F
    :cond_0
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->access$300(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;)F

    move-result v2

    int-to-float v3, p2

    div-float/2addr v3, v5

    add-float v1, v2, v3

    .line 184
    .restart local v1    # "distance":F
    invoke-static {v1, v4, v4}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v0

    .line 185
    .restart local v0    # "d":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->access$400(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStart(Lcom/fimi/app/x8s/widget/X8SeekBarView;I)V
    .locals 0
    .param p1, "slideView"    # Lcom/fimi/app/x8s/widget/X8SeekBarView;
    .param p2, "progress"    # I

    .prologue
    .line 174
    return-void
.end method

.method public onStop(Lcom/fimi/app/x8s/widget/X8SeekBarView;I)V
    .locals 0
    .param p1, "slideView"    # Lcom/fimi/app/x8s/widget/X8SeekBarView;
    .param p2, "progress"    # I

    .prologue
    .line 193
    return-void
.end method
