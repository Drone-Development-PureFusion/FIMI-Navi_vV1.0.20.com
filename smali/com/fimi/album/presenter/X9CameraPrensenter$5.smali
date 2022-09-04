.class Lcom/fimi/album/presenter/X9CameraPrensenter$5;
.super Ljava/lang/Object;
.source "X9CameraPrensenter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/album/presenter/X9CameraPrensenter;->doBodyTrans(Lcom/fimi/album/adapter/BodyRecycleViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/album/presenter/X9CameraPrensenter;

.field final synthetic val$holder:Lcom/fimi/album/adapter/BodyRecycleViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/fimi/album/presenter/X9CameraPrensenter;Lcom/fimi/album/adapter/BodyRecycleViewHolder;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/album/presenter/X9CameraPrensenter;

    .prologue
    .line 210
    .local p0, "this":Lcom/fimi/album/presenter/X9CameraPrensenter$5;, "Lcom/fimi/album/presenter/X9CameraPrensenter$5;"
    iput-object p1, p0, Lcom/fimi/album/presenter/X9CameraPrensenter$5;->this$0:Lcom/fimi/album/presenter/X9CameraPrensenter;

    iput-object p2, p0, Lcom/fimi/album/presenter/X9CameraPrensenter$5;->val$holder:Lcom/fimi/album/adapter/BodyRecycleViewHolder;

    iput p3, p0, Lcom/fimi/album/presenter/X9CameraPrensenter$5;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 214
    .local p0, "this":Lcom/fimi/album/presenter/X9CameraPrensenter$5;, "Lcom/fimi/album/presenter/X9CameraPrensenter$5;"
    iget-object v0, p0, Lcom/fimi/album/presenter/X9CameraPrensenter$5;->this$0:Lcom/fimi/album/presenter/X9CameraPrensenter;

    iget-object v1, p0, Lcom/fimi/album/presenter/X9CameraPrensenter$5;->val$holder:Lcom/fimi/album/adapter/BodyRecycleViewHolder;

    iget v2, p0, Lcom/fimi/album/presenter/X9CameraPrensenter$5;->val$position:I

    invoke-static {v0, v1, p1, v2}, Lcom/fimi/album/presenter/X9CameraPrensenter;->access$300(Lcom/fimi/album/presenter/X9CameraPrensenter;Lcom/fimi/album/adapter/BodyRecycleViewHolder;Landroid/view/View;I)V

    .line 215
    const/4 v0, 0x1

    return v0
.end method
