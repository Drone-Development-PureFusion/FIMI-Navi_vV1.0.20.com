.class public Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;
.super Ljava/lang/Object;
.source "PercentLayoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/kernel/percent/PercentLayoutHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PercentLayoutInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;
    }
.end annotation


# instance fields
.field public bottomMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

.field public endMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

.field public heightPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

.field public leftMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

.field final mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

.field public maxHeightPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

.field public maxWidthPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

.field public minHeightPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

.field public minWidthPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

.field public paddingBottomPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

.field public paddingLeftPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

.field public paddingRightPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

.field public paddingTopPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

.field public rightMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

.field public startMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

.field public textSizePercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

.field public topMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

.field public widthPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 733
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 734
    return-void
.end method


# virtual methods
.method public fillLayoutParams(Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 3
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p2, "widthHint"    # I
    .param p3, "heightHint"    # I

    .prologue
    .line 743
    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 744
    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 746
    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->widthPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    if-eqz v1, :cond_0

    .line 748
    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->widthPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    iget-boolean v1, v1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->isBaseWidth:Z

    if-eqz v1, :cond_2

    move v0, p2

    .line 749
    .local v0, "base":I
    :goto_0
    int-to-float v1, v0

    iget-object v2, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->widthPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    iget v2, v2, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 751
    .end local v0    # "base":I
    :cond_0
    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->heightPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    if-eqz v1, :cond_1

    .line 753
    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->heightPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    iget-boolean v1, v1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->isBaseWidth:Z

    if-eqz v1, :cond_3

    move v0, p2

    .line 754
    .restart local v0    # "base":I
    :goto_1
    int-to-float v1, v0

    iget-object v2, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->heightPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    iget v2, v2, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 757
    .end local v0    # "base":I
    :cond_1
    return-void

    :cond_2
    move v0, p3

    .line 748
    goto :goto_0

    :cond_3
    move v0, p3

    .line 753
    goto :goto_1
.end method

.method public fillMarginLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;II)V
    .locals 4
    .param p1, "params"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p2, "widthHint"    # I
    .param p3, "heightHint"    # I

    .prologue
    .line 766
    invoke-virtual {p0, p1, p2, p3}, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->fillLayoutParams(Landroid/view/ViewGroup$LayoutParams;II)V

    .line 769
    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 770
    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 771
    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 772
    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 773
    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 774
    invoke-static {p1}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v2

    .line 773
    invoke-static {v1, v2}, Landroid/support/v4/view/MarginLayoutParamsCompat;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 775
    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 776
    invoke-static {p1}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v2

    .line 775
    invoke-static {v1, v2}, Landroid/support/v4/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 778
    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->leftMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    if-eqz v1, :cond_0

    .line 780
    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->leftMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    iget-boolean v1, v1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->isBaseWidth:Z

    if-eqz v1, :cond_7

    move v0, p2

    .line 781
    .local v0, "base":I
    :goto_0
    int-to-float v1, v0

    iget-object v2, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->leftMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    iget v2, v2, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 783
    .end local v0    # "base":I
    :cond_0
    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->topMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    if-eqz v1, :cond_1

    .line 785
    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->topMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    iget-boolean v1, v1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->isBaseWidth:Z

    if-eqz v1, :cond_8

    move v0, p2

    .line 786
    .restart local v0    # "base":I
    :goto_1
    int-to-float v1, v0

    iget-object v2, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->topMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    iget v2, v2, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 788
    .end local v0    # "base":I
    :cond_1
    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->rightMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    if-eqz v1, :cond_2

    .line 790
    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->rightMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    iget-boolean v1, v1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->isBaseWidth:Z

    if-eqz v1, :cond_9

    move v0, p2

    .line 791
    .restart local v0    # "base":I
    :goto_2
    int-to-float v1, v0

    iget-object v2, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->rightMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    iget v2, v2, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 793
    .end local v0    # "base":I
    :cond_2
    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->bottomMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    if-eqz v1, :cond_3

    .line 795
    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->bottomMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    iget-boolean v1, v1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->isBaseWidth:Z

    if-eqz v1, :cond_a

    move v0, p2

    .line 796
    .restart local v0    # "base":I
    :goto_3
    int-to-float v1, v0

    iget-object v2, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->bottomMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    iget v2, v2, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 798
    .end local v0    # "base":I
    :cond_3
    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->startMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    if-eqz v1, :cond_4

    .line 800
    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->startMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    iget-boolean v1, v1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->isBaseWidth:Z

    if-eqz v1, :cond_b

    move v0, p2

    .line 801
    .restart local v0    # "base":I
    :goto_4
    int-to-float v1, v0

    iget-object v2, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->startMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    iget v2, v2, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {p1, v1}, Landroid/support/v4/view/MarginLayoutParamsCompat;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 804
    .end local v0    # "base":I
    :cond_4
    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->endMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    if-eqz v1, :cond_5

    .line 806
    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->endMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    iget-boolean v1, v1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->isBaseWidth:Z

    if-eqz v1, :cond_c

    move v0, p2

    .line 807
    .restart local v0    # "base":I
    :goto_5
    int-to-float v1, v0

    iget-object v2, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->endMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    iget v2, v2, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {p1, v1}, Landroid/support/v4/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 810
    .end local v0    # "base":I
    :cond_5
    const-string v1, "PercentLayout"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 812
    const-string v1, "PercentLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after fillMarginLayoutParams: ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_6
    return-void

    :cond_7
    move v0, p3

    .line 780
    goto/16 :goto_0

    :cond_8
    move v0, p3

    .line 785
    goto/16 :goto_1

    :cond_9
    move v0, p3

    .line 790
    goto/16 :goto_2

    :cond_a
    move v0, p3

    .line 795
    goto :goto_3

    :cond_b
    move v0, p3

    .line 800
    goto :goto_4

    :cond_c
    move v0, p3

    .line 806
    goto :goto_5
.end method

.method public restoreLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 867
    iget-object v0, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 868
    iget-object v0, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 869
    return-void
.end method

.method public restoreMarginLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 849
    invoke-virtual {p0, p1}, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->restoreLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 850
    iget-object v0, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 851
    iget-object v0, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 852
    iget-object v0, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 853
    iget-object v0, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 854
    iget-object v0, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 855
    invoke-static {v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    .line 854
    invoke-static {p1, v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 856
    iget-object v0, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 857
    invoke-static {v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    .line 856
    invoke-static {p1, v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 858
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PercentLayoutInfo{widthPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->widthPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", heightPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->heightPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", leftMarginPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->leftMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", topMarginPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->topMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rightMarginPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->rightMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bottomMarginPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->bottomMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startMarginPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->startMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endMarginPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->endMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", textSizePercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->textSizePercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxWidthPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->maxWidthPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxHeightPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->maxHeightPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minWidthPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->minWidthPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minHeightPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->minHeightPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paddingLeftPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->paddingLeftPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paddingRightPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->paddingRightPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paddingTopPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->paddingTopPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paddingBottomPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->paddingBottomPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreservedParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
