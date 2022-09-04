.class Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$1;
.super Ljava/lang/Object;
.source "X8MediaDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->doTrans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->finish()V

    .line 191
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;)Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->setOnDestory()V

    .line 192
    return-void
.end method
