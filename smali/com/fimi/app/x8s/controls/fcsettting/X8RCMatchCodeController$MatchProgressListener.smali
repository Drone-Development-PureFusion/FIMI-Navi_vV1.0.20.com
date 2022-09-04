.class Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchProgressListener;
.super Ljava/lang/Object;
.source "X8RCMatchCodeController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MatchProgressListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;


# direct methods
.method private constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchProgressListener;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;
    .param p2, "x1"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$1;

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchProgressListener;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;)V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 10
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatInvalid"
        }
    .end annotation

    .prologue
    const/16 v9, 0x64

    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 151
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 153
    check-cast v0, Lcom/fimi/x8sdk/dataparser/AckRcMatchCodeState;

    .line 154
    .local v0, "caliState":Lcom/fimi/x8sdk/dataparser/AckRcMatchCodeState;
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckRcMatchCodeState;->getProgress()I

    move-result v1

    .line 155
    .local v1, "progress":I
    if-lez v1, :cond_0

    if-ge v1, v9, :cond_0

    .line 156
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchProgressListener;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 157
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchProgressListener;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchProgressListener;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_calibration_progress:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    if-ne v1, v9, :cond_0

    .line 159
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchProgressListener;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    sget-object v3, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

    invoke-static {v2, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->access$502(Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;)Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

    .line 160
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchProgressListener;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->access$600(Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchProgressListener;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->access$700(Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchProgressListener;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->access$800(Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchProgressListener;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$drawable;->x8_calibration_success_icon:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchProgressListener;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->access$900(Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchProgressListener;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_rc_match_code_success:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchProgressListener;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->access$1000(Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchProgressListener;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->access$1100(Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchProgressListener;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->access$1200(Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchProgressListener;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_compass_reuslt_success_confirm:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchProgressListener;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;->access$1300(Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;)V

    .line 172
    .end local v0    # "caliState":Lcom/fimi/x8sdk/dataparser/AckRcMatchCodeState;
    .end local v1    # "progress":I
    :cond_0
    return-void
.end method
