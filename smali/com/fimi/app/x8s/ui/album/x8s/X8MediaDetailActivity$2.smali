.class Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$2;
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
    .line 194
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 202
    new-instance v0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->access$100(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_album_warn_tip:I

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    sget v4, Lcom/fimi/app/x8s/R$string;->album_dialog_delete_title:I

    invoke-virtual {v3, v4}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    sget v5, Lcom/fimi/app/x8s/R$string;->media_delete:I

    invoke-virtual {v4, v5}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$2$1;

    invoke-direct {v5, p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$2$1;-><init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$2;)V

    invoke-direct/range {v0 .. v5}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    .line 212
    .local v0, "doubleCustomDialog":Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;
    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 213
    return-void
.end method
