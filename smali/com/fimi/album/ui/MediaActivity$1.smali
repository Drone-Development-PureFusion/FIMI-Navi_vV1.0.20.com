.class Lcom/fimi/album/ui/MediaActivity$1;
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
    .line 91
    iput-object p1, p0, Lcom/fimi/album/ui/MediaActivity$1;->this$0:Lcom/fimi/album/ui/MediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/fimi/album/ui/MediaActivity$1;->this$0:Lcom/fimi/album/ui/MediaActivity;

    invoke-virtual {v0}, Lcom/fimi/album/ui/MediaActivity;->finish()V

    .line 95
    return-void
.end method
