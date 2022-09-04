.class public Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;
.super Landroid/view/ViewGroup;
.source "X8ErrorCodeLayout.java"


# instance fields
.field private level0:Lcom/fimi/app/x8s/entity/X8ErrorCode;

.field private level1:Lcom/fimi/app/x8s/entity/X8ErrorCode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->level0:Lcom/fimi/app/x8s/entity/X8ErrorCode;

    .line 37
    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->level1:Lcom/fimi/app/x8s/entity/X8ErrorCode;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->level0:Lcom/fimi/app/x8s/entity/X8ErrorCode;

    .line 37
    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->level1:Lcom/fimi/app/x8s/entity/X8ErrorCode;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->level0:Lcom/fimi/app/x8s/entity/X8ErrorCode;

    .line 37
    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->level1:Lcom/fimi/app/x8s/entity/X8ErrorCode;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->level0:Lcom/fimi/app/x8s/entity/X8ErrorCode;

    .line 37
    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->level1:Lcom/fimi/app/x8s/entity/X8ErrorCode;

    .line 54
    return-void
.end method

.method private getErrorCodeView()Landroid/view/View;
    .locals 5

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$layout;->x8_error_code_item_view:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 174
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 175
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 176
    const/16 v2, 0x78

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 177
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    return-object v1
.end method

.method public static getInAnimation(Landroid/content/Context;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 187
    sget v0, Lcom/fimi/app/x8s/R$anim;->gift_in:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method private setFlashAnimator(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 207
    new-instance v0, Lcom/fimi/app/x8s/anim/FlashAnimator;

    invoke-direct {v0}, Lcom/fimi/app/x8s/anim/FlashAnimator;-><init>()V

    .line 208
    .local v0, "flashAnimator":Lcom/fimi/app/x8s/anim/FlashAnimator;
    invoke-static {v0}, Lcom/fimi/app/x8s/anim/YoYo;->with(Lcom/fimi/app/x8s/anim/BaseViewAnimator;)Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;

    move-result-object v1

    const-wide/16 v2, 0x4b0

    .line 209
    invoke-virtual {v1, v2, v3}, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->duration(J)Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;

    move-result-object v1

    const/4 v2, 0x1

    .line 210
    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->repeat(I)Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;

    move-result-object v1

    .line 211
    invoke-virtual {v1, v4, v4}, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->pivot(FF)Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 212
    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->interpolate(Landroid/view/animation/Interpolator;)Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;

    move-result-object v1

    new-instance v2, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout$3;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout$3;-><init>(Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;)V

    .line 213
    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->withListener(Landroid/animation/Animator$AnimatorListener;)Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;

    move-result-object v1

    .line 233
    invoke-virtual {v1, p1}, Lcom/fimi/app/x8s/anim/YoYo$AnimationComposer;->playOn(Landroid/view/View;)Lcom/fimi/app/x8s/anim/YoYo$YoYoString;

    .line 234
    return-void
.end method


# virtual methods
.method public declared-synchronized addErrorCode(Ljava/util/List;Lcom/fimi/app/x8s/interfaces/IX8ErrorTextIsFinishShow;)V
    .locals 10
    .param p2, "isFinishShow"    # Lcom/fimi/app/x8s/interfaces/IX8ErrorTextIsFinishShow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/app/x8s/entity/X8ErrorCode;",
            ">;",
            "Lcom/fimi/app/x8s/interfaces/IX8ErrorTextIsFinishShow;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "code":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/app/x8s/entity/X8ErrorCode;>;"
    monitor-enter p0

    const/4 v7, 0x0

    .line 88
    .local v7, "view":Landroid/view/View;
    const/4 v4, 0x0

    .line 90
    .local v4, "isAnimation":Z
    const/4 v8, 0x0

    :try_start_0
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fimi/app/x8s/entity/X8ErrorCode;

    invoke-virtual {v8}, Lcom/fimi/app/x8s/entity/X8ErrorCode;->getLevel()Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;

    move-result-object v8

    sget-object v9, Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;->medium:Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;

    if-ne v8, v9, :cond_3

    .line 91
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-nez v8, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->getErrorCodeView()Landroid/view/View;

    move-result-object v7

    .line 93
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 94
    const/4 v4, 0x1

    .line 99
    :goto_0
    sget v8, Lcom/fimi/app/x8s/R$id;->tv_title:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView;

    .line 100
    .local v6, "textView":Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v5, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 102
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 103
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fimi/app/x8s/entity/X8ErrorCode;

    invoke-virtual {v8}, Lcom/fimi/app/x8s/entity/X8ErrorCode;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 96
    .end local v1    # "i":I
    .end local v5    # "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "textView":Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView;
    :cond_0
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    goto :goto_0

    .line 105
    .restart local v1    # "i":I
    .restart local v5    # "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "textView":Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView;
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 107
    new-instance v8, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout$1;

    invoke-direct {v8, p0, p2}, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout$1;-><init>(Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;Lcom/fimi/app/x8s/interfaces/IX8ErrorTextIsFinishShow;)V

    invoke-virtual {v6, v5, v8}, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView;->setResources(Ljava/util/List;Lcom/fimi/app/x8s/interfaces/IX8ErrorTextSwitchView;)V

    .line 147
    .end local v6    # "textView":Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView;
    :goto_2
    sget v8, Lcom/fimi/app/x8s/R$id;->img_bg:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 148
    .local v3, "imgBg":Landroid/widget/ImageView;
    sget v8, Lcom/fimi/app/x8s/R$id;->iv_arrow1:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 151
    .local v2, "imgArrow":Landroid/widget/ImageView;
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fimi/app/x8s/entity/X8ErrorCode;

    invoke-virtual {v8}, Lcom/fimi/app/x8s/entity/X8ErrorCode;->getLevel()Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;

    move-result-object v8

    sget-object v9, Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;->medium:Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;

    if-ne v8, v9, :cond_6

    .line 152
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fimi/app/x8s/entity/X8ErrorCode;

    iput-object v8, p0, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->level0:Lcom/fimi/app/x8s/entity/X8ErrorCode;

    .line 158
    :goto_3
    if-eqz v4, :cond_2

    .line 159
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->getInAnimation(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 160
    .local v0, "giftInAnim":Landroid/view/animation/Animation;
    invoke-virtual {v7, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 161
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fimi/app/x8s/entity/X8ErrorCode;

    invoke-virtual {v8}, Lcom/fimi/app/x8s/entity/X8ErrorCode;->getLevel()Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;

    move-result-object v8

    sget-object v9, Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;->medium:Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;

    if-eq v8, v9, :cond_2

    .line 162
    invoke-direct {p0, v3}, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->setFlashAnimator(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    .end local v0    # "giftInAnim":Landroid/view/animation/Animation;
    :cond_2
    monitor-exit p0

    return-void

    .line 119
    .end local v1    # "i":I
    .end local v2    # "imgArrow":Landroid/widget/ImageView;
    .end local v3    # "imgBg":Landroid/widget/ImageView;
    .end local v5    # "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {p0, v8}, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-nez v8, :cond_4

    .line 120
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->getErrorCodeView()Landroid/view/View;

    move-result-object v7

    .line 121
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 122
    const/4 v4, 0x1

    .line 127
    :goto_4
    sget v8, Lcom/fimi/app/x8s/R$id;->tv_title1:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;

    .line 128
    .local v6, "textView":Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .restart local v5    # "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 130
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_5

    .line 131
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fimi/app/x8s/entity/X8ErrorCode;

    invoke-virtual {v8}, Lcom/fimi/app/x8s/entity/X8ErrorCode;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 124
    .end local v1    # "i":I
    .end local v5    # "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "textView":Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;
    :cond_4
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    goto :goto_4

    .line 133
    .restart local v1    # "i":I
    .restart local v5    # "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "textView":Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;
    :cond_5
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 134
    new-instance v8, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout$2;

    invoke-direct {v8, p0, p2}, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout$2;-><init>(Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;Lcom/fimi/app/x8s/interfaces/IX8ErrorTextIsFinishShow;)V

    invoke-virtual {v6, v5, v8}, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->setResources(Ljava/util/List;Lcom/fimi/app/x8s/interfaces/IX8ErrorTextSwitchView;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 87
    .end local v1    # "i":I
    .end local v5    # "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "textView":Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 154
    .restart local v1    # "i":I
    .restart local v2    # "imgArrow":Landroid/widget/ImageView;
    .restart local v3    # "imgBg":Landroid/widget/ImageView;
    .restart local v5    # "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    const/4 v8, 0x0

    :try_start_2
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fimi/app/x8s/entity/X8ErrorCode;

    iput-object v8, p0, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->level1:Lcom/fimi/app/x8s/entity/X8ErrorCode;

    .line 155
    sget v8, Lcom/fimi/app/x8s/R$drawable;->x8_error_code_type4:I

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 156
    sget v8, Lcom/fimi/app/x8s/R$drawable;->x8_error_code_type1_icon:I

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3
.end method

.method public cleanAll()V
    .locals 0

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->cleanLevel0()V

    .line 192
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->cleanLevel1()V

    .line 193
    return-void
.end method

.method public cleanLevel0()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->level0:Lcom/fimi/app/x8s/entity/X8ErrorCode;

    .line 198
    return-void
.end method

.method public cleanLevel1()V
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->level1:Lcom/fimi/app/x8s/entity/X8ErrorCode;

    .line 204
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/16 v5, 0xa

    const/4 v6, 0x0

    .line 60
    invoke-virtual {p0, v6}, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "childView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 63
    .local v2, "measureHeight":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 64
    .local v3, "measuredWidth":I
    add-int/lit8 v4, v2, 0xa

    invoke-virtual {v0, v6, v5, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 65
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 67
    .local v1, "childView2":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 68
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 69
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->level1:Lcom/fimi/app/x8s/entity/X8ErrorCode;

    if-nez v4, :cond_0

    .line 70
    add-int/lit8 v4, v2, 0xa

    invoke-virtual {v1, v6, v5, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 76
    :goto_0
    return-void

    .line 72
    :cond_0
    add-int/lit8 v4, v2, 0x1e

    add-int/lit8 v5, v2, 0x1e

    add-int/2addr v5, v2

    invoke-virtual {v1, v6, v4, v3, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 80
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 81
    .local v1, "w_size":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 82
    .local v0, "h_size":I
    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->measureChildren(II)V

    .line 83
    invoke-virtual {p0, v1, v0}, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->setMeasuredDimension(II)V

    .line 84
    return-void
.end method
