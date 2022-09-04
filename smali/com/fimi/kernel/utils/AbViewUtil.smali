.class public Lcom/fimi/kernel/utils/AbViewUtil;
.super Ljava/lang/Object;
.source "AbViewUtil.java"


# static fields
.field public static final INVALID:I = -0x80000000

.field private static xBoxs:[I = null

.field private static final xMax:I = 0x6

.field private static yBoxs:[I = null

.field private static final yMax:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyDimension(IFLandroid/util/DisplayMetrics;)F
    .locals 2
    .param p0, "unit"    # I
    .param p1, "value"    # F
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 322
    packed-switch p0, :pswitch_data_0

    .line 336
    const/4 p1, 0x0

    .end local p1    # "value":F
    :goto_0
    :pswitch_0
    return p1

    .line 326
    .restart local p1    # "value":F
    :pswitch_1
    iget v0, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    goto :goto_0

    .line 328
    :pswitch_2
    iget v0, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr p1, v0

    goto :goto_0

    .line 330
    :pswitch_3
    iget v0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr v0, p1

    const v1, 0x3c638e39

    mul-float p1, v0, v1

    goto :goto_0

    .line 332
    :pswitch_4
    iget v0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr p1, v0

    goto :goto_0

    .line 334
    :pswitch_5
    iget v0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr v0, p1

    const v1, 0x3d214285

    mul-float p1, v0, v1

    goto :goto_0

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static dip2px(Landroid/content/Context;F)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dipValue"    # F

    .prologue
    .line 209
    invoke-static {p0}, Lcom/fimi/kernel/utils/AbAppUtil;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 210
    .local v0, "mDisplayMetrics":Landroid/util/DisplayMetrics;
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Lcom/fimi/kernel/utils/AbViewUtil;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    return v1
.end method

.method public static getAbsListViewHeight(Landroid/widget/AbsListView;II)I
    .locals 13
    .param p0, "absListView"    # Landroid/widget/AbsListView;
    .param p1, "lineNumber"    # I
    .param p2, "verticalSpace"    # I

    .prologue
    .line 90
    const/4 v7, 0x0

    .line 91
    .local v7, "totalHeight":I
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 93
    .local v10, "w":I
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 95
    .local v1, "h":I
    invoke-virtual {p0, v10, v1}, Landroid/widget/AbsListView;->measure(II)V

    .line 96
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v5

    check-cast v5, Landroid/widget/ListAdapter;

    .line 97
    .local v5, "mListAdapter":Landroid/widget/ListAdapter;
    if-nez v5, :cond_0

    move v8, v7

    .end local v7    # "totalHeight":I
    .local v8, "totalHeight":I
    move v9, v7

    .line 131
    .end local v8    # "totalHeight":I
    .end local p0    # "absListView":Landroid/widget/AbsListView;
    .local v9, "totalHeight":I
    :goto_0
    return v9

    .line 101
    .end local v9    # "totalHeight":I
    .restart local v7    # "totalHeight":I
    .restart local p0    # "absListView":Landroid/widget/AbsListView;
    :cond_0
    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 102
    .local v0, "count":I
    instance-of v11, p0, Landroid/widget/ListView;

    if-eqz v11, :cond_4

    .line 103
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 104
    const/4 v11, 0x0

    invoke-interface {v5, v2, v11, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 105
    .local v4, "listItem":Landroid/view/View;
    invoke-virtual {v4, v10, v1}, Landroid/view/View;->measure(II)V

    .line 106
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v7, v11

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 108
    .end local v4    # "listItem":Landroid/view/View;
    :cond_1
    if-nez v0, :cond_3

    .line 109
    move v7, p2

    .end local v2    # "i":I
    .end local p0    # "absListView":Landroid/widget/AbsListView;
    :cond_2
    :goto_2
    move v8, v7

    .end local v7    # "totalHeight":I
    .restart local v8    # "totalHeight":I
    move v9, v7

    .line 131
    .end local v8    # "totalHeight":I
    .restart local v9    # "totalHeight":I
    goto :goto_0

    .line 111
    .end local v9    # "totalHeight":I
    .restart local v2    # "i":I
    .restart local v7    # "totalHeight":I
    .restart local p0    # "absListView":Landroid/widget/AbsListView;
    :cond_3
    check-cast p0, Landroid/widget/ListView;

    .line 112
    .end local p0    # "absListView":Landroid/widget/AbsListView;
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v11

    add-int/lit8 v12, v0, -0x1

    mul-int/2addr v11, v12

    add-int/2addr v7, v11

    goto :goto_2

    .line 115
    .end local v2    # "i":I
    .restart local p0    # "absListView":Landroid/widget/AbsListView;
    :cond_4
    instance-of v11, p0, Landroid/widget/GridView;

    if-eqz v11, :cond_2

    .line 116
    rem-int v6, v0, p1

    .line 117
    .local v6, "remain":I
    if-lez v6, :cond_5

    .line 118
    const/4 v6, 0x1

    .line 120
    :cond_5
    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v11

    if-nez v11, :cond_6

    .line 121
    move v7, p2

    goto :goto_2

    .line 123
    :cond_6
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {v5, v11, v12, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 124
    .restart local v4    # "listItem":Landroid/view/View;
    invoke-virtual {v4, v10, v1}, Landroid/view/View;->measure(II)V

    .line 125
    div-int v11, v0, p1

    add-int v3, v11, v6

    .line 126
    .local v3, "line":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    mul-int/2addr v11, v3

    add-int/lit8 v12, v3, -0x1

    mul-int/2addr v12, p2

    add-int v7, v11, v12

    goto :goto_2
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 566
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 567
    .local v0, "dm":Landroid/util/DisplayMetrics;
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 568
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v1
.end method

.method public static getScreenOrientation(Landroid/app/Activity;)I
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 572
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 573
    .local v3, "rotation":I
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 574
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 575
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 576
    .local v4, "width":I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 579
    .local v1, "height":I
    if-eqz v3, :cond_0

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    :cond_0
    if-gt v1, v4, :cond_3

    :cond_1
    const/4 v5, 0x1

    if-eq v3, v5, :cond_2

    const/4 v5, 0x3

    if-ne v3, v5, :cond_4

    :cond_2
    if-le v4, v1, :cond_4

    .line 583
    :cond_3
    packed-switch v3, :pswitch_data_0

    .line 599
    const/4 v2, 0x1

    .line 623
    .local v2, "orientation":I
    :goto_0
    return v2

    .line 585
    .end local v2    # "orientation":I
    :pswitch_0
    const/4 v2, 0x1

    .line 586
    .restart local v2    # "orientation":I
    goto :goto_0

    .line 588
    .end local v2    # "orientation":I
    :pswitch_1
    const/4 v2, 0x0

    .line 589
    .restart local v2    # "orientation":I
    goto :goto_0

    .line 591
    .end local v2    # "orientation":I
    :pswitch_2
    const/16 v2, 0x9

    .line 593
    .restart local v2    # "orientation":I
    goto :goto_0

    .line 595
    .end local v2    # "orientation":I
    :pswitch_3
    const/16 v2, 0x8

    .line 597
    .restart local v2    # "orientation":I
    goto :goto_0

    .line 603
    .end local v2    # "orientation":I
    :cond_4
    packed-switch v3, :pswitch_data_1

    .line 619
    const/4 v2, 0x0

    .restart local v2    # "orientation":I
    goto :goto_0

    .line 605
    .end local v2    # "orientation":I
    :pswitch_4
    const/4 v2, 0x0

    .line 606
    .restart local v2    # "orientation":I
    goto :goto_0

    .line 608
    .end local v2    # "orientation":I
    :pswitch_5
    const/4 v2, 0x1

    .line 609
    .restart local v2    # "orientation":I
    goto :goto_0

    .line 611
    .end local v2    # "orientation":I
    :pswitch_6
    const/16 v2, 0x8

    .line 613
    .restart local v2    # "orientation":I
    goto :goto_0

    .line 615
    .end local v2    # "orientation":I
    :pswitch_7
    const/16 v2, 0x9

    .line 617
    .restart local v2    # "orientation":I
    goto :goto_0

    .line 583
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 603
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 560
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 561
    .local v0, "dm":Landroid/util/DisplayMetrics;
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 562
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v1
.end method

.method public static getViewHeight(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 182
    invoke-static {p0}, Lcom/fimi/kernel/utils/AbViewUtil;->measureView(Landroid/view/View;)V

    .line 183
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public static getViewWidth(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 170
    invoke-static {p0}, Lcom/fimi/kernel/utils/AbViewUtil;->measureView(Landroid/view/View;)V

    .line 171
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public static measureView(Landroid/view/View;)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 144
    .local v3, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 145
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 149
    .restart local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6, v6, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 150
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 152
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 153
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 159
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->measure(II)V

    .line 160
    return-void

    .line 156
    .end local v0    # "childHeightSpec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_0
.end method

.method public static px2dip(Landroid/content/Context;F)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pxValue"    # F

    .prologue
    .line 221
    invoke-static {p0}, Lcom/fimi/kernel/utils/AbAppUtil;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 222
    .local v0, "mDisplayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v1, p1, v1

    return v1
.end method

.method public static px2sp(Landroid/content/Context;F)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pxValue"    # F

    .prologue
    .line 245
    invoke-static {p0}, Lcom/fimi/kernel/utils/AbAppUtil;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 246
    .local v0, "mDisplayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v1, p1, v1

    return v1
.end method

.method public static removeSelfFromParent(Landroid/view/View;)V
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 193
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 194
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 195
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 198
    :cond_0
    return-void
.end method

.method public static scale(IIF)I
    .locals 5
    .param p0, "displayWidth"    # I
    .param p1, "displayHeight"    # I
    .param p2, "pxValue"    # F

    .prologue
    .line 298
    const/4 v3, 0x0

    cmpl-float v3, p2, v3

    if-nez v3, :cond_0

    .line 299
    const/4 v3, 0x0

    .line 308
    :goto_0
    return v3

    .line 301
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 303
    .local v0, "scale":F
    int-to-float v3, p0

    const/high16 v4, 0x44340000    # 720.0f

    div-float v2, v3, v4

    .line 304
    .local v2, "scaleWidth":F
    int-to-float v3, p1

    const/high16 v4, 0x44a00000    # 1280.0f

    div-float v1, v3, v4

    .line 305
    .local v1, "scaleHeight":F
    :try_start_0
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 308
    :goto_1
    mul-float v3, p2, v0

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    goto :goto_0

    .line 306
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static scaleContentView(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 369
    const/4 v0, 0x0

    .line 370
    .local v0, "contentView":Landroid/view/ViewGroup;
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 371
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 372
    check-cast v0, Landroid/view/ViewGroup;

    .line 374
    :cond_0
    return-void
.end method

.method public static scaleContentView(Landroid/view/View;I)V
    .locals 3
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "id"    # I

    .prologue
    .line 351
    const/4 v0, 0x0

    .line 352
    .local v0, "contentView":Landroid/view/ViewGroup;
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 353
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 354
    check-cast v0, Landroid/view/ViewGroup;

    .line 356
    :cond_0
    return-void
.end method

.method public static scaleTextValue(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # F

    .prologue
    .line 279
    invoke-static {p0}, Lcom/fimi/kernel/utils/AbAppUtil;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 281
    .local v0, "mDisplayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 285
    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2, p1}, Lcom/fimi/kernel/utils/AbViewUtil;->scale(IIF)I

    move-result v1

    return v1
.end method

.method public static scaleValue(Landroid/content/Context;F)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # F

    .prologue
    const/16 v4, 0x2d0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 257
    invoke-static {p0}, Lcom/fimi/kernel/utils/AbAppUtil;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 259
    .local v0, "mDisplayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 261
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v1, v4, :cond_1

    .line 262
    const v1, 0x3fa66666    # 1.3f

    iget v2, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v2, v3, v2

    sub-float/2addr v1, v2

    mul-float/2addr p1, v1

    .line 267
    :cond_0
    :goto_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2, p1}, Lcom/fimi/kernel/utils/AbViewUtil;->scale(IIF)I

    move-result v1

    return v1

    .line 263
    :cond_1
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ge v1, v4, :cond_0

    .line 264
    iget v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v1, v3, v1

    sub-float v1, v3, v1

    mul-float/2addr p1, v1

    goto :goto_0
.end method

.method public static scaleView(Landroid/view/View;)V
    .locals 11
    .param p0, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    const/4 v8, -0x2

    .line 384
    instance-of v7, p0, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    move-object v5, p0

    .line 385
    check-cast v5, Landroid/widget/TextView;

    .line 386
    .local v5, "textView":Landroid/widget/TextView;
    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    invoke-static {v5, v7}, Lcom/fimi/kernel/utils/AbViewUtil;->setTextSize(Landroid/widget/TextView;F)V

    .line 389
    .end local v5    # "textView":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 390
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v4, :cond_3

    .line 391
    const/high16 v6, -0x80000000

    .line 392
    .local v6, "width":I
    const/high16 v0, -0x80000000

    .line 393
    .local v0, "height":I
    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v7, v8, :cond_1

    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v7, v9, :cond_1

    .line 395
    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 398
    :cond_1
    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v7, v8, :cond_2

    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v7, v9, :cond_2

    .line 400
    iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 404
    :cond_2
    invoke-static {p0, v6, v0}, Lcom/fimi/kernel/utils/AbViewUtil;->setViewSize(Landroid/view/View;II)V

    .line 407
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    invoke-static {p0, v7, v8, v9, v10}, Lcom/fimi/kernel/utils/AbViewUtil;->setPadding(Landroid/view/View;IIII)V

    .line 411
    .end local v0    # "height":I
    .end local v6    # "width":I
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    instance-of v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_4

    .line 413
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 414
    .local v1, "mMarginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v1, :cond_4

    .line 415
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v10, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {p0, v7, v8, v9, v10}, Lcom/fimi/kernel/utils/AbViewUtil;->setMargin(Landroid/view/View;IIII)V

    .line 419
    .end local v1    # "mMarginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_4
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-lt v7, v8, :cond_5

    .line 421
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Lcom/fimi/kernel/utils/AbViewUtil;->scaleValue(Landroid/content/Context;F)I

    move-result v3

    .line 422
    .local v3, "minWidth":I
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Lcom/fimi/kernel/utils/AbViewUtil;->scaleValue(Landroid/content/Context;F)I

    move-result v2

    .line 423
    .local v2, "minHeight":I
    invoke-virtual {p0, v3}, Landroid/view/View;->setMinimumWidth(I)V

    .line 424
    invoke-virtual {p0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 426
    .end local v2    # "minHeight":I
    .end local v3    # "minWidth":I
    :cond_5
    return-void
.end method

.method public static setAbsListViewHeight(Landroid/widget/AbsListView;II)V
    .locals 4
    .param p0, "absListView"    # Landroid/widget/AbsListView;
    .param p1, "lineNumber"    # I
    .param p2, "verticalSpace"    # I

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-static {p0, p1, p2}, Lcom/fimi/kernel/utils/AbViewUtil;->getAbsListViewHeight(Landroid/widget/AbsListView;II)I

    move-result v1

    .line 74
    .local v1, "totalHeight":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 75
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object v2, v0

    .line 76
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 77
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    return-void
.end method

.method public static setMargin(Landroid/view/View;IIII)V
    .locals 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/high16 v7, -0x80000000

    .line 532
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    int-to-float v6, p1

    invoke-static {v5, v6}, Lcom/fimi/kernel/utils/AbViewUtil;->scaleValue(Landroid/content/Context;F)I

    move-result v2

    .line 533
    .local v2, "scaledLeft":I
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    int-to-float v6, p2

    invoke-static {v5, v6}, Lcom/fimi/kernel/utils/AbViewUtil;->scaleValue(Landroid/content/Context;F)I

    move-result v4

    .line 534
    .local v4, "scaledTop":I
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    int-to-float v6, p3

    invoke-static {v5, v6}, Lcom/fimi/kernel/utils/AbViewUtil;->scaleValue(Landroid/content/Context;F)I

    move-result v3

    .line 535
    .local v3, "scaledRight":I
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    int-to-float v6, p4

    invoke-static {v5, v6}, Lcom/fimi/kernel/utils/AbViewUtil;->scaleValue(Landroid/content/Context;F)I

    move-result v1

    .line 537
    .local v1, "scaledBottom":I
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_4

    .line 539
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 540
    .local v0, "mMarginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v0, :cond_4

    .line 541
    if-eq p1, v7, :cond_0

    .line 542
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 544
    :cond_0
    if-eq p3, v7, :cond_1

    .line 545
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 547
    :cond_1
    if-eq p2, v7, :cond_2

    .line 548
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 550
    :cond_2
    if-eq p4, v7, :cond_3

    .line 551
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 553
    :cond_3
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 557
    .end local v0    # "mMarginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_4
    return-void
.end method

.method public static setPadding(Landroid/view/View;IIII)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 514
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    int-to-float v5, p1

    invoke-static {v4, v5}, Lcom/fimi/kernel/utils/AbViewUtil;->scaleValue(Landroid/content/Context;F)I

    move-result v1

    .line 515
    .local v1, "scaledLeft":I
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    int-to-float v5, p2

    invoke-static {v4, v5}, Lcom/fimi/kernel/utils/AbViewUtil;->scaleValue(Landroid/content/Context;F)I

    move-result v3

    .line 516
    .local v3, "scaledTop":I
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    int-to-float v5, p3

    invoke-static {v4, v5}, Lcom/fimi/kernel/utils/AbViewUtil;->scaleValue(Landroid/content/Context;F)I

    move-result v2

    .line 517
    .local v2, "scaledRight":I
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    int-to-float v5, p4

    invoke-static {v4, v5}, Lcom/fimi/kernel/utils/AbViewUtil;->scaleValue(Landroid/content/Context;F)I

    move-result v0

    .line 518
    .local v0, "scaledBottom":I
    invoke-virtual {p0, v1, v3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 519
    return-void
.end method

.method public static setSPTextSize(Landroid/widget/TextView;F)V
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "size"    # F

    .prologue
    .line 437
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/fimi/kernel/utils/AbViewUtil;->scaleTextValue(Landroid/content/Context;F)I

    move-result v1

    int-to-float v0, v1

    .line 438
    .local v0, "scaledSize":F
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 439
    return-void
.end method

.method public static setTextSize(Landroid/content/Context;Landroid/graphics/Paint;F)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "sizePixels"    # F

    .prologue
    .line 476
    invoke-static {p0, p2}, Lcom/fimi/kernel/utils/AbViewUtil;->scaleTextValue(Landroid/content/Context;F)I

    move-result v1

    int-to-float v0, v1

    .line 477
    .local v0, "scaledSize":F
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 478
    return-void
.end method

.method public static setTextSize(Landroid/content/Context;Landroid/text/TextPaint;F)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textPaint"    # Landroid/text/TextPaint;
    .param p2, "sizePixels"    # F

    .prologue
    .line 463
    invoke-static {p0, p2}, Lcom/fimi/kernel/utils/AbViewUtil;->scaleTextValue(Landroid/content/Context;F)I

    move-result v1

    int-to-float v0, v1

    .line 464
    .local v0, "scaledSize":F
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 465
    return-void
.end method

.method public static setTextSize(Landroid/widget/TextView;F)V
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "sizePixels"    # F

    .prologue
    .line 450
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/fimi/kernel/utils/AbViewUtil;->scaleTextValue(Landroid/content/Context;F)I

    move-result v1

    int-to-float v0, v1

    .line 451
    .local v0, "scaledSize":F
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 452
    return-void
.end method

.method public static setViewSize(Landroid/view/View;II)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "widthPixels"    # I
    .param p2, "heightPixels"    # I

    .prologue
    const/high16 v5, -0x80000000

    .line 488
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    int-to-float v4, p1

    invoke-static {v3, v4}, Lcom/fimi/kernel/utils/AbViewUtil;->scaleValue(Landroid/content/Context;F)I

    move-result v2

    .line 489
    .local v2, "scaledWidth":I
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    int-to-float v4, p2

    invoke-static {v3, v4}, Lcom/fimi/kernel/utils/AbViewUtil;->scaleValue(Landroid/content/Context;F)I

    move-result v1

    .line 490
    .local v1, "scaledHeight":I
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 491
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 501
    :goto_0
    return-void

    .line 494
    :cond_0
    if-eq p1, v5, :cond_1

    .line 495
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 497
    :cond_1
    if-eq p2, v5, :cond_2

    .line 498
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 500
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public static sp2px(Landroid/content/Context;F)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spValue"    # F

    .prologue
    .line 233
    invoke-static {p0}, Lcom/fimi/kernel/utils/AbAppUtil;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 234
    .local v0, "mDisplayMetrics":Landroid/util/DisplayMetrics;
    const/4 v1, 0x2

    invoke-static {v1, p1, v0}, Lcom/fimi/kernel/utils/AbViewUtil;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    return v1
.end method

.method public static xyToBox(Landroid/content/Context;FF)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 639
    const/4 v0, 0x0

    .line 640
    .local v0, "currentNumber":I
    const/4 v2, 0x0

    .line 641
    .local v2, "isBreak":Z
    sget-object v6, Lcom/fimi/kernel/utils/AbViewUtil;->xBoxs:[I

    if-nez v6, :cond_0

    sget-object v6, Lcom/fimi/kernel/utils/AbViewUtil;->yBoxs:[I

    if-nez v6, :cond_0

    .line 642
    invoke-static {p0}, Lcom/fimi/kernel/utils/AbViewUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v6

    div-int/lit8 v4, v6, 0x6

    .line 643
    .local v4, "singleBoxX":I
    invoke-static {p0}, Lcom/fimi/kernel/utils/AbViewUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v6

    div-int/lit8 v5, v6, 0x4

    .line 644
    .local v5, "singleBoxY":I
    const/4 v6, 0x6

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v4, v6, v7

    const/4 v7, 0x1

    mul-int/lit8 v8, v4, 0x2

    aput v8, v6, v7

    const/4 v7, 0x2

    mul-int/lit8 v8, v4, 0x3

    aput v8, v6, v7

    const/4 v7, 0x3

    mul-int/lit8 v8, v4, 0x4

    aput v8, v6, v7

    const/4 v7, 0x4

    mul-int/lit8 v8, v4, 0x5

    aput v8, v6, v7

    const/4 v7, 0x5

    mul-int/lit8 v8, v4, 0x6

    aput v8, v6, v7

    sput-object v6, Lcom/fimi/kernel/utils/AbViewUtil;->xBoxs:[I

    .line 645
    const/4 v6, 0x4

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v5, v6, v7

    const/4 v7, 0x1

    mul-int/lit8 v8, v5, 0x2

    aput v8, v6, v7

    const/4 v7, 0x2

    mul-int/lit8 v8, v5, 0x3

    aput v8, v6, v7

    const/4 v7, 0x3

    mul-int/lit8 v8, v5, 0x4

    aput v8, v6, v7

    sput-object v6, Lcom/fimi/kernel/utils/AbViewUtil;->yBoxs:[I

    .line 647
    .end local v4    # "singleBoxX":I
    .end local v5    # "singleBoxY":I
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v6, Lcom/fimi/kernel/utils/AbViewUtil;->xBoxs:[I

    array-length v6, v6

    if-ge v1, v6, :cond_2

    .line 648
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_1
    sget-object v6, Lcom/fimi/kernel/utils/AbViewUtil;->yBoxs:[I

    array-length v6, v6

    if-ge v3, v6, :cond_1

    .line 649
    sget-object v6, Lcom/fimi/kernel/utils/AbViewUtil;->xBoxs:[I

    aget v6, v6, v1

    int-to-float v6, v6

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_3

    sget-object v6, Lcom/fimi/kernel/utils/AbViewUtil;->yBoxs:[I

    aget v6, v6, v3

    int-to-float v6, v6

    cmpg-float v6, p2, v6

    if-gtz v6, :cond_3

    .line 650
    mul-int/lit8 v6, v3, 0x6

    add-int v0, v6, v1

    .line 651
    const/4 v2, 0x1

    .line 655
    :cond_1
    if-eqz v2, :cond_4

    .line 659
    .end local v3    # "n":I
    :cond_2
    return v0

    .line 648
    .restart local v3    # "n":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 647
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
