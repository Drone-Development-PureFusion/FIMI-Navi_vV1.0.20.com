.class Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$5;
.super Ljava/lang/Object;
.source "X8CameraFragmentPrensenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->doBodyTrans(Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

.field final synthetic val$holder:Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    .prologue
    .line 321
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$5;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$5;"
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$5;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    iput-object p2, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$5;->val$holder:Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;

    iput p3, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$5;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 325
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$5;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$5;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$5;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$5;->val$holder:Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;

    iget v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$5;->val$position:I

    invoke-virtual {v0, v1, p1, v2}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->onItemClick(Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;Landroid/view/View;I)V

    .line 326
    return-void
.end method
