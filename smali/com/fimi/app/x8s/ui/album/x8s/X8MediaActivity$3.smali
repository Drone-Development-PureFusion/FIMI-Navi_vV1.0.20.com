.class Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$3;
.super Ljava/lang/Object;
.source "X8MediaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->doTrans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$3;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 216
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$3;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getX9MediaPresenter()Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    move-result-object v0

    invoke-virtual {v0, v6, v6}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->enterSelectMode(ZZ)V

    .line 217
    invoke-static {}, Lcom/fimi/album/biz/X9HandleType;->isCameraView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$3;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mTvSelectTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$3;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    sget v2, Lcom/fimi/app/x8s/R$string;->album_select_camera_title:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "0"

    aput-object v4, v3, v5

    const-string v4, "0KB"

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$3;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mRlTopBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$3;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mHackyViewPager:Lcom/fimi/album/widget/HackyViewPager;

    invoke-virtual {v0, v5}, Lcom/fimi/album/widget/HackyViewPager;->setScrollble(Z)V

    .line 224
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$3;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$3;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    sget v2, Lcom/example/album/R$string;->media_select_all:I

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$3;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    iget-object v2, v2, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mBtnIsSelect:Landroid/widget/Button;

    invoke-static {v0, v1, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->access$200(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;Ljava/lang/String;Landroid/widget/TextView;)V

    .line 225
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$3;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mBtnIsSelect:Landroid/widget/Button;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_ablum_top_select_unclick:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 226
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$3;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mTvSelectTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$3;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    sget v2, Lcom/fimi/app/x8s/R$string;->album_select_title:I

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "0"

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
