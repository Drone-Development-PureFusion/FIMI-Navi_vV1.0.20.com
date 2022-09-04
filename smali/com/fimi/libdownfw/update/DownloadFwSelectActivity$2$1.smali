.class Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$2$1;
.super Ljava/lang/Object;
.source "DownloadFwSelectActivity.java"

# interfaces
.implements Lcom/fimi/widget/DialogManager$OnDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$2;


# direct methods
.method constructor <init>(Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$2;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$2$1;->this$1:Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dialogBtnLeftListener(Landroid/view/View;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "customView"    # Landroid/view/View;
    .param p2, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    .line 108
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 110
    return-void
.end method

.method public dialogBtnRightOrSingleListener(Landroid/view/View;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "customView"    # Landroid/view/View;
    .param p2, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$2$1;->this$1:Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$2;

    iget-object v0, v0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$2;->this$0:Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;

    invoke-static {v0}, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->access$100(Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;)V

    .line 104
    return-void
.end method
