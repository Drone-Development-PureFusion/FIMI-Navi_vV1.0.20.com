.class public Lcom/fimi/kernel/utils/FontUtil;
.super Ljava/lang/Object;
.source "FontUtil.java"


# static fields
.field private static lantingTF:Landroid/graphics/Typeface;

.field private static sDINAlernateBold:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    sput-object v0, Lcom/fimi/kernel/utils/FontUtil;->lantingTF:Landroid/graphics/Typeface;

    .line 20
    sput-object v0, Lcom/fimi/kernel/utils/FontUtil;->sDINAlernateBold:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs changeDINAlernateBold(Landroid/content/res/AssetManager;[Landroid/view/View;)V
    .locals 3
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "root"    # [Landroid/view/View;

    .prologue
    .line 44
    sget-object v2, Lcom/fimi/kernel/utils/FontUtil;->sDINAlernateBold:Landroid/graphics/Typeface;

    if-nez v2, :cond_0

    .line 45
    const-string v2, "DIN_Alternate_Bold.TTF"

    invoke-static {p0, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/fimi/kernel/utils/FontUtil;->sDINAlernateBold:Landroid/graphics/Typeface;

    .line 48
    :cond_0
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 49
    aget-object v0, p1, v1

    .line 50
    .local v0, "v":Landroid/view/View;
    instance-of v2, v0, Landroid/widget/Button;

    if-eqz v2, :cond_2

    .line 51
    check-cast v0, Landroid/widget/Button;

    .end local v0    # "v":Landroid/view/View;
    sget-object v2, Lcom/fimi/kernel/utils/FontUtil;->sDINAlernateBold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 48
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    .restart local v0    # "v":Landroid/view/View;
    :cond_2
    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 53
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "v":Landroid/view/View;
    sget-object v2, Lcom/fimi/kernel/utils/FontUtil;->sDINAlernateBold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 54
    .restart local v0    # "v":Landroid/view/View;
    :cond_3
    instance-of v2, v0, Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 55
    check-cast v0, Landroid/widget/EditText;

    .end local v0    # "v":Landroid/view/View;
    sget-object v2, Lcom/fimi/kernel/utils/FontUtil;->sDINAlernateBold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 58
    :cond_4
    return-void
.end method

.method public static varargs changeFontLanTing(Landroid/content/res/AssetManager;[Landroid/view/View;)V
    .locals 3
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "root"    # [Landroid/view/View;

    .prologue
    .line 62
    sget-object v2, Lcom/fimi/kernel/utils/FontUtil;->lantingTF:Landroid/graphics/Typeface;

    if-nez v2, :cond_0

    .line 63
    const-string v2, "lanting.TTF"

    invoke-static {p0, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/fimi/kernel/utils/FontUtil;->lantingTF:Landroid/graphics/Typeface;

    .line 66
    :cond_0
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 67
    aget-object v0, p1, v1

    .line 68
    .local v0, "v":Landroid/view/View;
    instance-of v2, v0, Landroid/widget/Button;

    if-eqz v2, :cond_2

    .line 69
    check-cast v0, Landroid/widget/Button;

    .end local v0    # "v":Landroid/view/View;
    sget-object v2, Lcom/fimi/kernel/utils/FontUtil;->lantingTF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 66
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .restart local v0    # "v":Landroid/view/View;
    :cond_2
    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 71
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "v":Landroid/view/View;
    sget-object v2, Lcom/fimi/kernel/utils/FontUtil;->lantingTF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 72
    .restart local v0    # "v":Landroid/view/View;
    :cond_3
    instance-of v2, v0, Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 73
    check-cast v0, Landroid/widget/EditText;

    .end local v0    # "v":Landroid/view/View;
    sget-object v2, Lcom/fimi/kernel/utils/FontUtil;->lantingTF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 76
    :cond_4
    return-void
.end method

.method public static varargs changeFontLanTingBlod(Landroid/content/res/AssetManager;[Landroid/view/View;)V
    .locals 3
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "root"    # [Landroid/view/View;

    .prologue
    .line 80
    sget-object v2, Lcom/fimi/kernel/utils/FontUtil;->lantingTF:Landroid/graphics/Typeface;

    if-nez v2, :cond_0

    .line 81
    const-string v2, "MILanTing_Bold.ttf"

    invoke-static {p0, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/fimi/kernel/utils/FontUtil;->lantingTF:Landroid/graphics/Typeface;

    .line 84
    :cond_0
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 85
    aget-object v0, p1, v1

    .line 86
    .local v0, "v":Landroid/view/View;
    instance-of v2, v0, Landroid/widget/Button;

    if-eqz v2, :cond_2

    .line 87
    check-cast v0, Landroid/widget/Button;

    .end local v0    # "v":Landroid/view/View;
    sget-object v2, Lcom/fimi/kernel/utils/FontUtil;->lantingTF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 84
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .restart local v0    # "v":Landroid/view/View;
    :cond_2
    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 89
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "v":Landroid/view/View;
    sget-object v2, Lcom/fimi/kernel/utils/FontUtil;->lantingTF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 90
    .restart local v0    # "v":Landroid/view/View;
    :cond_3
    instance-of v2, v0, Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 91
    check-cast v0, Landroid/widget/EditText;

    .end local v0    # "v":Landroid/view/View;
    sget-object v2, Lcom/fimi/kernel/utils/FontUtil;->lantingTF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 94
    :cond_4
    return-void
.end method

.method public static changeViewLanTing(Landroid/content/res/AssetManager;Landroid/view/View;)V
    .locals 5
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 102
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    move-object v2, p1

    .line 103
    check-cast v2, Landroid/view/ViewGroup;

    .line 104
    .local v2, "vp":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 105
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 106
    .local v1, "viewchild":Landroid/view/View;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {p0, v3}, Lcom/fimi/kernel/utils/FontUtil;->changeFontLanTing(Landroid/content/res/AssetManager;[Landroid/view/View;)V

    .line 109
    :cond_0
    invoke-static {p0, v1}, Lcom/fimi/kernel/utils/FontUtil;->changeViewLanTing(Landroid/content/res/AssetManager;Landroid/view/View;)V

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    .end local v0    # "i":I
    .end local v1    # "viewchild":Landroid/view/View;
    .end local v2    # "vp":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method public static getDINAlernateBold(Landroid/content/res/AssetManager;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "mgr"    # Landroid/content/res/AssetManager;

    .prologue
    .line 31
    sget-object v0, Lcom/fimi/kernel/utils/FontUtil;->sDINAlernateBold:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 32
    const-string v0, "DIN_Alternate_Bold.TTF"

    invoke-static {p0, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/fimi/kernel/utils/FontUtil;->sDINAlernateBold:Landroid/graphics/Typeface;

    .line 35
    :cond_0
    sget-object v0, Lcom/fimi/kernel/utils/FontUtil;->sDINAlernateBold:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static getTf(Landroid/content/res/AssetManager;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "mgr"    # Landroid/content/res/AssetManager;

    .prologue
    .line 23
    sget-object v0, Lcom/fimi/kernel/utils/FontUtil;->lantingTF:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 24
    const-string v0, "lanting.TTF"

    invoke-static {p0, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/fimi/kernel/utils/FontUtil;->lantingTF:Landroid/graphics/Typeface;

    .line 27
    :cond_0
    sget-object v0, Lcom/fimi/kernel/utils/FontUtil;->lantingTF:Landroid/graphics/Typeface;

    return-object v0
.end method
