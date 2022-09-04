.class Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$1;
.super Ljava/lang/Object;
.source "X8MediaBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->initTrans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 128
    new-instance v0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_album_warn_tip:I

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;

    sget v4, Lcom/fimi/app/x8s/R$string;->album_dialog_delete_title:I

    invoke-virtual {v3, v4}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;

    sget v5, Lcom/fimi/app/x8s/R$string;->media_delete:I

    invoke-virtual {v4, v5}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$1$1;

    invoke-direct {v5, p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$1$1;-><init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$1;)V

    invoke-direct/range {v0 .. v5}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    .line 143
    .local v0, "doubleCustomDialog":Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;
    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 145
    return-void
.end method
