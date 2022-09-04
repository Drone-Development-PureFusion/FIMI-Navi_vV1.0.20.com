.class Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$7;
.super Ljava/lang/Object;
.source "X8AiGravitationExcuteComfirmUi.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$7;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(Lcom/fimi/app/x8s/widget/X8SeekBarView;I)V
    .locals 4
    .param p1, "slideView"    # Lcom/fimi/app/x8s/widget/X8SeekBarView;
    .param p2, "progress"    # I

    .prologue
    .line 346
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$7;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->access$900(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;)I

    move-result v2

    div-int/lit8 v3, p2, 0x14

    add-int/2addr v2, v3

    int-to-float v1, v2

    .line 347
    .local v1, "levelValue":F
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "d":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$7;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->access$1000(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    return-void
.end method

.method public onStart(Lcom/fimi/app/x8s/widget/X8SeekBarView;I)V
    .locals 0
    .param p1, "slideView"    # Lcom/fimi/app/x8s/widget/X8SeekBarView;
    .param p2, "progress"    # I

    .prologue
    .line 342
    return-void
.end method

.method public onStop(Lcom/fimi/app/x8s/widget/X8SeekBarView;I)V
    .locals 0
    .param p1, "slideView"    # Lcom/fimi/app/x8s/widget/X8SeekBarView;
    .param p2, "progress"    # I

    .prologue
    .line 354
    return-void
.end method
