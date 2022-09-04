.class public final Lcom/fimi/player/widget/MeasureHelper;
.super Ljava/lang/Object;
.source "MeasureHelper.java"


# instance fields
.field private mCurrentAspectRatio:I

.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field private mVideoHeight:I

.field private mVideoRotationDegree:I

.field private mVideoSarDen:I

.field private mVideoSarNum:I

.field private mVideoWidth:I

.field private mWeakView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/player/widget/MeasureHelper;->mCurrentAspectRatio:I

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fimi/player/widget/MeasureHelper;->mWeakView:Ljava/lang/ref/WeakReference;

    .line 41
    return-void
.end method


# virtual methods
.method public doMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 72
    iget v10, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoRotationDegree:I

    const/16 v11, 0x5a

    if-eq v10, v11, :cond_0

    iget v10, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoRotationDegree:I

    const/16 v11, 0x10e

    if-ne v10, v11, :cond_1

    .line 73
    :cond_0
    move v6, p1

    .line 74
    .local v6, "tempSpec":I
    move p1, p2

    .line 75
    move p2, v6

    .line 78
    .end local v6    # "tempSpec":I
    :cond_1
    iget v10, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoWidth:I

    invoke-static {v10, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v7

    .line 79
    .local v7, "width":I
    iget v10, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoHeight:I

    invoke-static {v10, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v1

    .line 80
    .local v1, "height":I
    iget v10, p0, Lcom/fimi/player/widget/MeasureHelper;->mCurrentAspectRatio:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_3

    .line 81
    move v7, p1

    .line 82
    move v1, p2

    .line 200
    :cond_2
    :goto_0
    iput v7, p0, Lcom/fimi/player/widget/MeasureHelper;->mMeasuredWidth:I

    .line 201
    iput v1, p0, Lcom/fimi/player/widget/MeasureHelper;->mMeasuredHeight:I

    .line 202
    return-void

    .line 83
    :cond_3
    iget v10, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoWidth:I

    if-lez v10, :cond_2

    iget v10, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoHeight:I

    if-lez v10, :cond_2

    .line 84
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 85
    .local v8, "widthSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 86
    .local v9, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 87
    .local v2, "heightSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 89
    .local v3, "heightSpecSize":I
    const/high16 v10, -0x80000000

    if-ne v8, v10, :cond_b

    const/high16 v10, -0x80000000

    if-ne v2, v10, :cond_b

    .line 90
    int-to-float v10, v9

    int-to-float v11, v3

    div-float v5, v10, v11

    .line 92
    .local v5, "specAspectRatio":F
    iget v10, p0, Lcom/fimi/player/widget/MeasureHelper;->mCurrentAspectRatio:I

    packed-switch v10, :pswitch_data_0

    .line 107
    iget v10, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoWidth:I

    int-to-float v10, v10

    iget v11, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoHeight:I

    int-to-float v11, v11

    div-float v0, v10, v11

    .line 108
    .local v0, "displayAspectRatio":F
    iget v10, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoSarNum:I

    if-lez v10, :cond_4

    iget v10, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoSarDen:I

    if-lez v10, :cond_4

    .line 109
    iget v10, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoSarNum:I

    int-to-float v10, v10

    mul-float/2addr v10, v0

    iget v11, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoSarDen:I

    int-to-float v11, v11

    div-float v0, v10, v11

    .line 112
    :cond_4
    :goto_1
    cmpl-float v10, v0, v5

    if-lez v10, :cond_7

    const/4 v4, 0x1

    .line 114
    .local v4, "shouldBeWider":Z
    :goto_2
    iget v10, p0, Lcom/fimi/player/widget/MeasureHelper;->mCurrentAspectRatio:I

    packed-switch v10, :pswitch_data_1

    .line 141
    :pswitch_0
    if-eqz v4, :cond_a

    .line 143
    iget v10, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoWidth:I

    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 144
    int-to-float v10, v7

    div-float/2addr v10, v0

    float-to-int v1, v10

    goto :goto_0

    .line 94
    .end local v0    # "displayAspectRatio":F
    .end local v4    # "shouldBeWider":Z
    :pswitch_1
    const v0, 0x3fe38e39

    .line 95
    .restart local v0    # "displayAspectRatio":F
    iget v10, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoRotationDegree:I

    const/16 v11, 0x5a

    if-eq v10, v11, :cond_5

    iget v10, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoRotationDegree:I

    const/16 v11, 0x10e

    if-ne v10, v11, :cond_4

    .line 96
    :cond_5
    const/high16 v10, 0x3f800000    # 1.0f

    div-float v0, v10, v0

    goto :goto_1

    .line 99
    .end local v0    # "displayAspectRatio":F
    :pswitch_2
    const v0, 0x3faaaaab

    .line 100
    .restart local v0    # "displayAspectRatio":F
    iget v10, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoRotationDegree:I

    const/16 v11, 0x5a

    if-eq v10, v11, :cond_6

    iget v10, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoRotationDegree:I

    const/16 v11, 0x10e

    if-ne v10, v11, :cond_4

    .line 101
    :cond_6
    const/high16 v10, 0x3f800000    # 1.0f

    div-float v0, v10, v0

    goto :goto_1

    .line 112
    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    .line 118
    .restart local v4    # "shouldBeWider":Z
    :pswitch_3
    if-eqz v4, :cond_8

    .line 120
    move v7, v9

    .line 121
    int-to-float v10, v7

    div-float/2addr v10, v0

    float-to-int v1, v10

    goto/16 :goto_0

    .line 124
    :cond_8
    move v1, v3

    .line 125
    int-to-float v10, v1

    mul-float/2addr v10, v0

    float-to-int v7, v10

    .line 127
    goto/16 :goto_0

    .line 129
    :pswitch_4
    if-eqz v4, :cond_9

    .line 131
    move v1, v3

    .line 132
    int-to-float v10, v1

    mul-float/2addr v10, v0

    float-to-int v7, v10

    goto/16 :goto_0

    .line 135
    :cond_9
    move v7, v9

    .line 136
    int-to-float v10, v7

    div-float/2addr v10, v0

    float-to-int v1, v10

    .line 138
    goto/16 :goto_0

    .line 147
    :cond_a
    iget v10, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoHeight:I

    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 148
    int-to-float v10, v1

    mul-float/2addr v10, v0

    float-to-int v7, v10

    goto/16 :goto_0

    .line 152
    .end local v0    # "displayAspectRatio":F
    .end local v4    # "shouldBeWider":Z
    .end local v5    # "specAspectRatio":F
    :cond_b
    const/high16 v10, 0x40000000    # 2.0f

    if-ne v8, v10, :cond_d

    const/high16 v10, 0x40000000    # 2.0f

    if-ne v2, v10, :cond_d

    .line 154
    move v7, v9

    .line 155
    move v1, v3

    .line 158
    iget v10, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoWidth:I

    mul-int/2addr v10, v1

    iget v11, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoHeight:I

    mul-int/2addr v11, v7

    if-ge v10, v11, :cond_c

    .line 160
    iget v10, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoWidth:I

    mul-int/2addr v10, v1

    iget v11, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoHeight:I

    div-int v7, v10, v11

    goto/16 :goto_0

    .line 161
    :cond_c
    iget v10, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoWidth:I

    mul-int/2addr v10, v1

    iget v11, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoHeight:I

    mul-int/2addr v11, v7

    if-le v10, v11, :cond_2

    .line 163
    iget v10, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoHeight:I

    mul-int/2addr v10, v7

    iget v11, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoWidth:I

    div-int v1, v10, v11

    goto/16 :goto_0

    .line 165
    :cond_d
    const/high16 v10, 0x40000000    # 2.0f

    if-ne v8, v10, :cond_e

    .line 167
    move v7, v9

    .line 168
    iget v10, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoHeight:I

    mul-int/2addr v10, v7

    iget v11, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoWidth:I

    div-int v1, v10, v11

    .line 169
    const/high16 v10, -0x80000000

    if-ne v2, v10, :cond_2

    if-le v1, v3, :cond_2

    .line 171
    move v1, v3

    goto/16 :goto_0

    .line 173
    :cond_e
    const/high16 v10, 0x40000000    # 2.0f

    if-ne v2, v10, :cond_f

    .line 175
    move v1, v3

    .line 176
    iget v10, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoWidth:I

    mul-int/2addr v10, v1

    iget v11, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoHeight:I

    div-int v7, v10, v11

    .line 177
    const/high16 v10, -0x80000000

    if-ne v8, v10, :cond_2

    if-le v7, v9, :cond_2

    .line 179
    move v7, v9

    goto/16 :goto_0

    .line 183
    :cond_f
    iget v7, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoWidth:I

    .line 184
    iget v1, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoHeight:I

    .line 185
    const/high16 v10, -0x80000000

    if-ne v2, v10, :cond_10

    if-le v1, v3, :cond_10

    .line 187
    move v1, v3

    .line 188
    iget v10, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoWidth:I

    mul-int/2addr v10, v1

    iget v11, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoHeight:I

    div-int v7, v10, v11

    .line 190
    :cond_10
    const/high16 v10, -0x80000000

    if-ne v8, v10, :cond_2

    if-le v7, v9, :cond_2

    .line 192
    move v7, v9

    .line 193
    iget v10, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoHeight:I

    mul-int/2addr v10, v7

    iget v11, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoWidth:I

    div-int v1, v10, v11

    goto/16 :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 114
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public getMeasuredHeight()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/fimi/player/widget/MeasureHelper;->mMeasuredHeight:I

    return v0
.end method

.method public getMeasuredWidth()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/fimi/player/widget/MeasureHelper;->mMeasuredWidth:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fimi/player/widget/MeasureHelper;->mWeakView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fimi/player/widget/MeasureHelper;->mWeakView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method public setAspectRatio(I)V
    .locals 0
    .param p1, "aspectRatio"    # I

    .prologue
    .line 213
    iput p1, p0, Lcom/fimi/player/widget/MeasureHelper;->mCurrentAspectRatio:I

    .line 214
    return-void
.end method

.method public setVideoRotation(I)V
    .locals 0
    .param p1, "videoRotationDegree"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoRotationDegree:I

    .line 61
    return-void
.end method

.method public setVideoSampleAspectRatio(II)V
    .locals 0
    .param p1, "videoSarNum"    # I
    .param p2, "videoSarDen"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoSarNum:I

    .line 56
    iput p2, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoSarDen:I

    .line 57
    return-void
.end method

.method public setVideoSize(II)V
    .locals 0
    .param p1, "videoWidth"    # I
    .param p2, "videoHeight"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoWidth:I

    .line 51
    iput p2, p0, Lcom/fimi/player/widget/MeasureHelper;->mVideoHeight:I

    .line 52
    return-void
.end method
