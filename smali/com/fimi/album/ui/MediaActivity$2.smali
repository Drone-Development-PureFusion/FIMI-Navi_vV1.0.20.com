.class Lcom/fimi/album/ui/MediaActivity$2;
.super Ljava/lang/Object;
.source "MediaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/album/ui/MediaActivity;->doTrans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/album/ui/MediaActivity;


# direct methods
.method constructor <init>(Lcom/fimi/album/ui/MediaActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/album/ui/MediaActivity;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/fimi/album/ui/MediaActivity$2;->this$0:Lcom/fimi/album/ui/MediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 100
    iget-object v0, p0, Lcom/fimi/album/ui/MediaActivity$2;->this$0:Lcom/fimi/album/ui/MediaActivity;

    invoke-static {v0}, Lcom/fimi/album/ui/MediaActivity;->access$000(Lcom/fimi/album/ui/MediaActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/fimi/album/ui/MediaActivity$2;->this$0:Lcom/fimi/album/ui/MediaActivity;

    invoke-static {v0}, Lcom/fimi/album/ui/MediaActivity;->access$100(Lcom/fimi/album/ui/MediaActivity;)Lcom/fimi/album/presenter/MediaPresenter;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/fimi/album/presenter/MediaPresenter;->enterSelectMode(ZZ)V

    .line 102
    return-void
.end method
