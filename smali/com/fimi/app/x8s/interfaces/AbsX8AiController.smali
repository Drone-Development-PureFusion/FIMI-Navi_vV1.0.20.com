.class public abstract Lcom/fimi/app/x8s/interfaces/AbsX8AiController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;
.source "AbsX8AiController.java"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;-><init>(Landroid/view/View;)V

    .line 16
    return-void
.end method


# virtual methods
.method public closeUi()V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->closeUi()V

    .line 28
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fimi/app/x8s/X8Application;->enableGesture:Z

    .line 30
    return-void
.end method

.method public openUi()V
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->openUi()V

    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fimi/app/x8s/X8Application;->enableGesture:Z

    .line 23
    return-void
.end method
