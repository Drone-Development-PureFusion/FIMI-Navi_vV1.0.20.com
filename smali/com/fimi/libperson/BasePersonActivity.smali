.class public abstract Lcom/fimi/libperson/BasePersonActivity;
.super Lcom/fimi/kernel/base/BaseActivity;
.source "BasePersonActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/fimi/kernel/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected initMVP()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 35
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0}, Lcom/fimi/kernel/base/BaseActivity;->onDestroy()V

    .line 22
    return-void
.end method

.method protected setStatusBarColor()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method
