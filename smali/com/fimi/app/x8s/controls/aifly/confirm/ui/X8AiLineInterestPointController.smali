.class public Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;
.super Ljava/lang/Object;
.source "X8AiLineInterestPointController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController$OnInterestTouchUp;
    }
.end annotation


# instance fields
.field private group:Landroid/widget/RelativeLayout;

.field private listener:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController$OnInterestTouchUp;

.field private textView:Landroid/widget/TextView;

.field private tmpView:Landroid/widget/ImageView;

.field private view:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "group"    # Landroid/widget/RelativeLayout;
    .param p2, "view"    # Landroid/widget/ImageView;
    .param p3, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->group:Landroid/widget/RelativeLayout;

    .line 37
    iput-object p2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->view:Landroid/widget/ImageView;

    .line 38
    iput-object p3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->textView:Landroid/widget/TextView;

    .line 39
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->addTouchEvent()V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->tmpView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->tmpView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->group:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->view:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;)Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController$OnInterestTouchUp;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->listener:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController$OnInterestTouchUp;

    return-object v0
.end method


# virtual methods
.method public addTouchEvent()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->view:Landroid/widget/ImageView;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController$1;-><init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 63
    return-void
.end method

.method public setInterestEnable(Z)V
    .locals 1
    .param p1, "interestEnable"    # Z

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->view:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 23
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController$OnInterestTouchUp;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController$OnInterestTouchUp;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->listener:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController$OnInterestTouchUp;

    .line 31
    return-void
.end method

.method public showView(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 66
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->view:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 67
    if-eqz p1, :cond_1

    .line 68
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->view:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->view:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
