.class Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout$2;
.super Ljava/lang/Object;
.source "X8ErrorCodeLayout.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IX8ErrorTextSwitchView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->addErrorCode(Ljava/util/List;Lcom/fimi/app/x8s/interfaces/IX8ErrorTextIsFinishShow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;

.field final synthetic val$isFinishShow:Lcom/fimi/app/x8s/interfaces/IX8ErrorTextIsFinishShow;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;Lcom/fimi/app/x8s/interfaces/IX8ErrorTextIsFinishShow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout$2;->this$0:Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;

    iput-object p2, p0, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout$2;->val$isFinishShow:Lcom/fimi/app/x8s/interfaces/IX8ErrorTextIsFinishShow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isRotationFinish()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout$2;->this$0:Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout$2;->val$isFinishShow:Lcom/fimi/app/x8s/interfaces/IX8ErrorTextIsFinishShow;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout$2;->val$isFinishShow:Lcom/fimi/app/x8s/interfaces/IX8ErrorTextIsFinishShow;

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8ErrorTextIsFinishShow;->isFinish()V

    .line 141
    :cond_0
    return-void
.end method
