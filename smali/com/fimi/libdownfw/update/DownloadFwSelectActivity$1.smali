.class Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$1;
.super Ljava/lang/Object;
.source "DownloadFwSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->doTrans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;


# direct methods
.method constructor <init>(Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$1;->this$0:Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$1;->this$0:Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;

    invoke-virtual {v0}, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->finish()V

    .line 80
    return-void
.end method
