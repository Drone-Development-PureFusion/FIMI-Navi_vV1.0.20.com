.class Landroid/support/v7/widget/TooltipPopup;
.super Ljava/lang/Object;
.source "TooltipPopup.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TooltipPopup"


# instance fields
.field private final mContentView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private final mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mMessageView:Landroid/widget/TextView;

.field private final mTmpAnchorPos:[I

.field private final mTmpAppPos:[I

.field private final mTmpDisplayFrame:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x2

    const/4 v3, -0x2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 53
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpAnchorPos:[I

    .line 54
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpAppPos:[I

    .line 57
    iput-object p1, p0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    .line 59
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$layout;->tooltip:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mContentView:Landroid/view/View;

    .line 60
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mContentView:Landroid/view/View;

    sget v1, Landroid/support/v7/appcompat/R$id;->message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x3ea

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 65
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 66
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 67
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 68
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    sget v1, Landroid/support/v7/appcompat/R$style;->Animation_AppCompat_Tooltip:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 69
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 71
    return-void
.end method

.method private computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;)V
    .locals 24
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "anchorX"    # I
    .param p3, "anchorY"    # I
    .param p4, "fromTouch"    # Z
    .param p5, "outParams"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget v20, Landroid/support/v7/appcompat/R$dimen;->tooltip_precise_anchor_threshold:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v16

    .line 106
    .local v16, "tooltipPreciseAnchorThreshold":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, v16

    if-lt v0, v1, :cond_0

    .line 108
    move/from16 v9, p2

    .line 116
    .local v9, "offsetX":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, v16

    if-lt v0, v1, :cond_1

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget v20, Landroid/support/v7/appcompat/R$dimen;->tooltip_precise_anchor_extra_offset:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    .line 120
    .local v8, "offsetExtra":I
    add-int v7, p3, v8

    .line 121
    .local v7, "offsetBelow":I
    sub-int v6, p3, v8

    .line 128
    .end local v8    # "offsetExtra":I
    .local v6, "offsetAbove":I
    :goto_1
    const/16 v19, 0x31

    move/from16 v0, v19

    move-object/from16 v1, p5

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    if-eqz p4, :cond_2

    sget v19, Landroid/support/v7/appcompat/R$dimen;->tooltip_y_offset_touch:I

    :goto_2
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v15

    .line 133
    .local v15, "tooltipOffset":I
    invoke-static/range {p1 .. p1}, Landroid/support/v7/widget/TooltipPopup;->getAppRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    .line 134
    .local v4, "appView":Landroid/view/View;
    if-nez v4, :cond_3

    .line 135
    const-string v19, "TooltipPopup"

    const-string v20, "Cannot find app view"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_3
    return-void

    .line 111
    .end local v4    # "appView":Landroid/view/View;
    .end local v6    # "offsetAbove":I
    .end local v7    # "offsetBelow":I
    .end local v9    # "offsetX":I
    .end local v15    # "tooltipOffset":I
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v19

    div-int/lit8 v9, v19, 0x2

    .restart local v9    # "offsetX":I
    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 125
    .restart local v7    # "offsetBelow":I
    const/4 v6, 0x0

    .restart local v6    # "offsetAbove":I
    goto :goto_1

    .line 130
    :cond_2
    sget v19, Landroid/support/v7/appcompat/R$dimen;->tooltip_y_offset_non_touch:I

    goto :goto_2

    .line 138
    .restart local v4    # "appView":Landroid/view/View;
    .restart local v15    # "tooltipOffset":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    if-gez v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    if-gez v19, :cond_4

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 144
    .local v10, "res":Landroid/content/res/Resources;
    const-string v19, "status_bar_height"

    const-string v20, "dimen"

    const-string v21, "android"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 145
    .local v11, "resourceId":I
    if-eqz v11, :cond_5

    .line 146
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 150
    .local v13, "statusBarHeight":I
    :goto_4
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 151
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget v0, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    iget v0, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 153
    .end local v5    # "metrics":Landroid/util/DisplayMetrics;
    .end local v10    # "res":Landroid/content/res/Resources;
    .end local v11    # "resourceId":I
    .end local v13    # "statusBarHeight":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpAppPos:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpAnchorPos:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpAnchorPos:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v21, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpAppPos:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    sub-int v21, v21, v22

    aput v21, v19, v20

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpAnchorPos:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v21, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpAppPos:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    sub-int v21, v21, v22

    aput v21, v19, v20

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpAnchorPos:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    add-int v19, v19, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p5

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 162
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 163
    .local v12, "spec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mContentView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v12}, Landroid/view/View;->measure(II)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mContentView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 166
    .local v14, "tooltipHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpAnchorPos:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    add-int v19, v19, v6

    sub-int v19, v19, v15

    sub-int v17, v19, v14

    .line 167
    .local v17, "yAbove":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpAnchorPos:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    add-int v19, v19, v7

    add-int v18, v19, v15

    .line 168
    .local v18, "yBelow":I
    if-eqz p4, :cond_7

    .line 169
    if-ltz v17, :cond_6

    .line 170
    move/from16 v0, v17

    move-object/from16 v1, p5

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_3

    .line 148
    .end local v12    # "spec":I
    .end local v14    # "tooltipHeight":I
    .end local v17    # "yAbove":I
    .end local v18    # "yBelow":I
    .restart local v10    # "res":Landroid/content/res/Resources;
    .restart local v11    # "resourceId":I
    :cond_5
    const/4 v13, 0x0

    .restart local v13    # "statusBarHeight":I
    goto/16 :goto_4

    .line 172
    .end local v10    # "res":Landroid/content/res/Resources;
    .end local v11    # "resourceId":I
    .end local v13    # "statusBarHeight":I
    .restart local v12    # "spec":I
    .restart local v14    # "tooltipHeight":I
    .restart local v17    # "yAbove":I
    .restart local v18    # "yBelow":I
    :cond_6
    move/from16 v0, v18

    move-object/from16 v1, p5

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_3

    .line 175
    :cond_7
    add-int v19, v18, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_8

    .line 176
    move/from16 v0, v18

    move-object/from16 v1, p5

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_3

    .line 178
    :cond_8
    move/from16 v0, v17

    move-object/from16 v1, p5

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_3
.end method

.method private static getAppRootView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p0, "anchorView"    # Landroid/view/View;

    .prologue
    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 185
    .local v0, "context":Landroid/content/Context;
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 186
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 187
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 192
    :goto_1
    return-object v1

    .line 189
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .restart local v0    # "context":Landroid/content/Context;
    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method hide()V
    .locals 3

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/support/v7/widget/TooltipPopup;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 93
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Landroid/support/v7/widget/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method isShowing()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method show(Landroid/view/View;IIZLjava/lang/CharSequence;)V
    .locals 7
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "anchorX"    # I
    .param p3, "anchorY"    # I
    .param p4, "fromTouch"    # Z
    .param p5, "tooltipText"    # Ljava/lang/CharSequence;

    .prologue
    .line 75
    invoke-virtual {p0}, Landroid/support/v7/widget/TooltipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Landroid/support/v7/widget/TooltipPopup;->hide()V

    .line 79
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v5, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/TooltipPopup;->computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;)V

    .line 83
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 84
    .local v6, "wm":Landroid/view/WindowManager;
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mContentView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v6, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    return-void
.end method
