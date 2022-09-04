.class public abstract Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;
.super Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;
.source "AbsX8MenuBoxControllers.java"


# instance fields
.field protected MAX_WIDTH:I

.field protected contentView:Landroid/view/View;

.field protected width:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;-><init>(Landroid/view/View;)V

    .line 17
    return-void
.end method


# virtual methods
.method public isRunningTask()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public unMountError(Z)V
    .locals 0
    .param p1, "unMount"    # Z

    .prologue
    .line 21
    return-void
.end method

.method public varargs updateViewEnable(Z[Landroid/view/ViewGroup;)V
    .locals 8
    .param p1, "enable"    # Z
    .param p2, "parent"    # [Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 30
    if-eqz p2, :cond_3

    array-length v4, p2

    if-lez v4, :cond_3

    .line 31
    array-length v6, p2

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v0, p2, v4

    .line 32
    .local v0, "group":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 33
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 35
    .local v3, "subView":Landroid/view/View;
    instance-of v7, v3, Landroid/view/ViewGroup;

    if-eqz v7, :cond_0

    .line 36
    const/4 v7, 0x1

    new-array v7, v7, [Landroid/view/ViewGroup;

    check-cast v3, Landroid/view/ViewGroup;

    .end local v3    # "subView":Landroid/view/View;
    aput-object v3, v7, v5

    invoke-virtual {p0, p1, v7}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;->updateViewEnable(Z[Landroid/view/ViewGroup;)V

    .line 33
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 39
    .restart local v3    # "subView":Landroid/view/View;
    :cond_0
    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 40
    if-eqz p1, :cond_1

    .line 41
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v3, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 43
    :cond_1
    const v7, 0x3f19999a    # 0.6f

    invoke-virtual {v3, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 31
    .end local v3    # "subView":Landroid/view/View;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 48
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "j":I
    .end local v2    # "len":I
    :cond_3
    return-void
.end method
