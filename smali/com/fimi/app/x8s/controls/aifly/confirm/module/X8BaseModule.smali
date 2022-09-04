.class public abstract Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8BaseModule;
.super Ljava/lang/Object;
.source "X8BaseModule.java"


# instance fields
.field protected parentLevel:I

.field protected rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParentLevel()I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8BaseModule;->parentLevel:I

    return v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8BaseModule;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public init(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 28
    iput-object p2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8BaseModule;->rootView:Landroid/view/View;

    .line 29
    return-void
.end method

.method public abstract setFcHeart(ZZ)V
.end method

.method public setParentLevel(I)V
    .locals 0
    .param p1, "parentLevel"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8BaseModule;->parentLevel:I

    .line 15
    return-void
.end method

.method public setRootView(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8BaseModule;->rootView:Landroid/view/View;

    .line 23
    return-void
.end method
