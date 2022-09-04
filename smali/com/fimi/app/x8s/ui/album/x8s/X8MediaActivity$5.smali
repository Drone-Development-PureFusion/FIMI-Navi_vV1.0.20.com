.class Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$5;
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
    .line 238
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$5;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$5;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mBtnIsSelect:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$5;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    sget v2, Lcom/example/album/R$string;->media_select_all:I

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$5;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getX9MediaPresenter()Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->selectBtn(Z)V

    .line 243
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$5;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$5;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    sget v2, Lcom/example/album/R$string;->media_select_all_no:I

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$5;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    iget-object v2, v2, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mBtnIsSelect:Landroid/widget/Button;

    invoke-static {v0, v1, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->access$200(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;Ljava/lang/String;Landroid/widget/TextView;)V

    .line 244
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$5;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mBtnIsSelect:Landroid/widget/Button;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_ablum_top_select_press:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 250
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$5;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getX9MediaPresenter()Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->selectBtn(Z)V

    .line 247
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$5;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$5;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    sget v2, Lcom/example/album/R$string;->media_select_all:I

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$5;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    iget-object v2, v2, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mBtnIsSelect:Landroid/widget/Button;

    invoke-static {v0, v1, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->access$200(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;Ljava/lang/String;Landroid/widget/TextView;)V

    .line 248
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$5;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mBtnIsSelect:Landroid/widget/Button;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_ablum_top_select_unclick:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method
