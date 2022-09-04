.class Lcom/fimi/album/presenter/MediaPresenter$1;
.super Ljava/lang/Object;
.source "MediaPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/album/presenter/MediaPresenter;->loadDateComplete(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/album/presenter/MediaPresenter;


# direct methods
.method constructor <init>(Lcom/fimi/album/presenter/MediaPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/album/presenter/MediaPresenter;

    .prologue
    .line 35
    .local p0, "this":Lcom/fimi/album/presenter/MediaPresenter$1;, "Lcom/fimi/album/presenter/MediaPresenter$1;"
    iput-object p1, p0, Lcom/fimi/album/presenter/MediaPresenter$1;->this$0:Lcom/fimi/album/presenter/MediaPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 38
    .local p0, "this":Lcom/fimi/album/presenter/MediaPresenter$1;, "Lcom/fimi/album/presenter/MediaPresenter$1;"
    iget-object v0, p0, Lcom/fimi/album/presenter/MediaPresenter$1;->this$0:Lcom/fimi/album/presenter/MediaPresenter;

    invoke-static {v0}, Lcom/fimi/album/presenter/MediaPresenter;->access$000(Lcom/fimi/album/presenter/MediaPresenter;)Lcom/fimi/album/ui/MediaActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/album/ui/MediaActivity;->getmProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 39
    return-void
.end method
