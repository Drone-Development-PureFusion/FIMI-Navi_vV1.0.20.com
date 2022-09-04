.class Lcom/fimi/album/ui/MediaDetailActivity$1;
.super Ljava/lang/Object;
.source "MediaDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/album/ui/MediaDetailActivity;->doTrans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/album/ui/MediaDetailActivity;


# direct methods
.method constructor <init>(Lcom/fimi/album/ui/MediaDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/album/ui/MediaDetailActivity;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/fimi/album/ui/MediaDetailActivity$1;->this$0:Lcom/fimi/album/ui/MediaDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/fimi/album/ui/MediaDetailActivity$1;->this$0:Lcom/fimi/album/ui/MediaDetailActivity;

    invoke-virtual {v0}, Lcom/fimi/album/ui/MediaDetailActivity;->finish()V

    .line 81
    return-void
.end method
