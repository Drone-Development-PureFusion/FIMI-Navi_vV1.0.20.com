.class Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$1;
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
    .line 179
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 182
    invoke-static {}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->getInstance()Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->hasDownloading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->showDialogTip()V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->finish()V

    goto :goto_0
.end method
