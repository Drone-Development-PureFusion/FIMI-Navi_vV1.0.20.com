.class Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$1;
.super Ljava/lang/Object;
.source "X8CameraFragmentPrensenter.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->doTrans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    .prologue
    .line 77
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$1;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$1;"
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$1;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$1;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$1;"
    const/16 v2, 0x8

    .line 80
    instance-of v1, p1, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 81
    check-cast v0, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;

    .line 82
    .local v0, "mBodyRecycleViewHolder":Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;
    iget-object v1, v0, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->tvDuringdate:Lcom/fimi/album/widget/MediaStrokeTextView;

    invoke-virtual {v1, v2}, Lcom/fimi/album/widget/MediaStrokeTextView;->setVisibility(I)V

    .line 83
    iget-object v1, v0, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->ivSelect:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    .end local v0    # "mBodyRecycleViewHolder":Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;
    :cond_0
    return-void
.end method
