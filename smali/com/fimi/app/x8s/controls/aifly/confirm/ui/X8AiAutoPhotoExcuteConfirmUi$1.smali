.class Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi$1;
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
    .line 148
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(Lcom/fimi/app/x8s/widget/X8SeekBarView;I)V
    .locals 6
    .param p1, "slideView"    # Lcom/fimi/app/x8s/widget/X8SeekBarView;
    .param p2, "progress"    # I

    .prologue
    const/4 v5, 0x1

    .line 157
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->access$000(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;)F

    move-result v2

    int-to-float v3, p2

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    add-float v0, v2, v3

    .line 158
    .local v0, "speed":F
    invoke-static {v0, v5, v5}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getSpeedNumberString(FIZ)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "strSpeed":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->access$100(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->setValue()V

    .line 161
    return-void
.end method

.method public onStart(Lcom/fimi/app/x8s/widget/X8SeekBarView;I)V
    .locals 0
    .param p1, "slideView"    # Lcom/fimi/app/x8s/widget/X8SeekBarView;
    .param p2, "progress"    # I

    .prologue
    .line 153
    return-void
.end method

.method public onStop(Lcom/fimi/app/x8s/widget/X8SeekBarView;I)V
    .locals 0
    .param p1, "slideView"    # Lcom/fimi/app/x8s/widget/X8SeekBarView;
    .param p2, "progress"    # I

    .prologue
    .line 166
    return-void
.end method
