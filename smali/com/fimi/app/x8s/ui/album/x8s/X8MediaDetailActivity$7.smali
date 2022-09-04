.class Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$7;
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
    .line 264
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$7;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$7;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;)Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->isDownloadFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$7;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;)Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->startActivity()V

    .line 273
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$7;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$7;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_download_hint:I

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
