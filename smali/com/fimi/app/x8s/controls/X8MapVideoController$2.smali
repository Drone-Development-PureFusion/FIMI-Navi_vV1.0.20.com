.class Lcom/fimi/app/x8s/controls/X8MapVideoController$2;
.super Ljava/lang/Object;
.source "X8MapVideoController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/X8MapVideoController;->setSmallViewListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/X8MapVideoController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/X8MapVideoController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/X8MapVideoController;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController$2;->this$0:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController$2;->this$0:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->access$100(Lcom/fimi/app/x8s/controls/X8MapVideoController;)Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->changeSmallSize()V

    .line 423
    return-void
.end method
