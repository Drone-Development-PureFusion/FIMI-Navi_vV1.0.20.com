.class Lcom/fimi/album/ui/MediaActivity$3;
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
    .line 105
    iput-object p1, p0, Lcom/fimi/album/ui/MediaActivity$3;->this$0:Lcom/fimi/album/ui/MediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/fimi/album/ui/MediaActivity$3;->this$0:Lcom/fimi/album/ui/MediaActivity;

    invoke-static {v0}, Lcom/fimi/album/ui/MediaActivity;->access$200(Lcom/fimi/album/ui/MediaActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/album/ui/MediaActivity$3;->this$0:Lcom/fimi/album/ui/MediaActivity;

    sget v2, Lcom/example/album/R$string;->media_select_all:I

    invoke-virtual {v1, v2}, Lcom/fimi/album/ui/MediaActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/fimi/album/ui/MediaActivity$3;->this$0:Lcom/fimi/album/ui/MediaActivity;

    invoke-static {v0}, Lcom/fimi/album/ui/MediaActivity;->access$100(Lcom/fimi/album/ui/MediaActivity;)Lcom/fimi/album/presenter/MediaPresenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/album/presenter/MediaPresenter;->selectBtn(Z)V

    .line 110
    iget-object v0, p0, Lcom/fimi/album/ui/MediaActivity$3;->this$0:Lcom/fimi/album/ui/MediaActivity;

    iget-object v1, p0, Lcom/fimi/album/ui/MediaActivity$3;->this$0:Lcom/fimi/album/ui/MediaActivity;

    sget v2, Lcom/example/album/R$string;->media_select_all_no:I

    invoke-virtual {v1, v2}, Lcom/fimi/album/ui/MediaActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/album/ui/MediaActivity$3;->this$0:Lcom/fimi/album/ui/MediaActivity;

    invoke-static {v2}, Lcom/fimi/album/ui/MediaActivity;->access$200(Lcom/fimi/album/ui/MediaActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fimi/album/ui/MediaActivity;->access$300(Lcom/fimi/album/ui/MediaActivity;Ljava/lang/String;Landroid/widget/Button;)V

    .line 115
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/fimi/album/ui/MediaActivity$3;->this$0:Lcom/fimi/album/ui/MediaActivity;

    invoke-static {v0}, Lcom/fimi/album/ui/MediaActivity;->access$100(Lcom/fimi/album/ui/MediaActivity;)Lcom/fimi/album/presenter/MediaPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/album/presenter/MediaPresenter;->selectBtn(Z)V

    .line 113
    iget-object v0, p0, Lcom/fimi/album/ui/MediaActivity$3;->this$0:Lcom/fimi/album/ui/MediaActivity;

    iget-object v1, p0, Lcom/fimi/album/ui/MediaActivity$3;->this$0:Lcom/fimi/album/ui/MediaActivity;

    sget v2, Lcom/example/album/R$string;->media_select_all:I

    invoke-virtual {v1, v2}, Lcom/fimi/album/ui/MediaActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/album/ui/MediaActivity$3;->this$0:Lcom/fimi/album/ui/MediaActivity;

    invoke-static {v2}, Lcom/fimi/album/ui/MediaActivity;->access$200(Lcom/fimi/album/ui/MediaActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fimi/album/ui/MediaActivity;->access$300(Lcom/fimi/album/ui/MediaActivity;Ljava/lang/String;Landroid/widget/Button;)V

    goto :goto_0
.end method
