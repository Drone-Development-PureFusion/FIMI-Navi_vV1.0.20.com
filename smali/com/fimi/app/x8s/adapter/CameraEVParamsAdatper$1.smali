.class Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper$1;
.super Ljava/lang/Object;
.source "CameraEVParamsAdatper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper$1;->this$0:Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;

    iput p2, p0, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper$1;->this$0:Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->access$000(Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper$1;->this$0:Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->access$100(Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;)Lcom/fimi/app/x8s/viewHolder/CameraEVParamListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper$1;->this$0:Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->access$100(Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;)Lcom/fimi/app/x8s/viewHolder/CameraEVParamListener;

    move-result-object v1

    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper$1;->this$0:Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->access$200(Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper$1;->this$0:Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->access$300(Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;)Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper$1;->val$position:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/fimi/app/x8s/viewHolder/CameraEVParamListener;->updateParams(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
