.class public Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController$ScrollLinearLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "X8CameraSubParamsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScrollLinearLayoutManager"
.end annotation


# instance fields
.field private isScrollEnable:Z

.field final synthetic this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;


# direct methods
.method public constructor <init>(Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController$ScrollLinearLayoutManager;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    .line 87
    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController$ScrollLinearLayoutManager;->isScrollEnable:Z

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;Landroid/content/Context;IZ)V
    .locals 1
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "orientation"    # I
    .param p4, "reverseLayout"    # Z

    .prologue
    .line 90
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController$ScrollLinearLayoutManager;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    .line 91
    invoke-direct {p0, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController$ScrollLinearLayoutManager;->isScrollEnable:Z

    .line 92
    return-void
.end method

.method public constructor <init>(Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    .line 94
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController$ScrollLinearLayoutManager;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    .line 95
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController$ScrollLinearLayoutManager;->isScrollEnable:Z

    .line 96
    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController$ScrollLinearLayoutManager;->isScrollEnable:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScrollEnable(Z)V
    .locals 0
    .param p1, "isEnable"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController$ScrollLinearLayoutManager;->isScrollEnable:Z

    .line 109
    return-void
.end method
