.class Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$MyGridLayoutManager;
.super Landroid/support/v7/widget/GridLayoutManager;
.source "X8MediaBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyGridLayoutManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;


# direct methods
.method public constructor <init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "spanCount"    # I

    .prologue
    .line 332
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$MyGridLayoutManager;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;

    .line 333
    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 334
    return-void
.end method

.method public constructor <init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;Landroid/content/Context;IIZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "spanCount"    # I
    .param p4, "orientation"    # I
    .param p5, "reverseLayout"    # Z

    .prologue
    .line 336
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$MyGridLayoutManager;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;

    .line 337
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 338
    return-void
.end method

.method public constructor <init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    .line 328
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$MyGridLayoutManager;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;

    .line 329
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 330
    return-void
.end method


# virtual methods
.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 343
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_0
    return-void

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method
