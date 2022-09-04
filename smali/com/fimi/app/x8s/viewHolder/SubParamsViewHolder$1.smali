.class Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder$1;
.super Ljava/lang/Object;
.source "SubParamsViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->initViewStub()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder$1;->this$0:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x40

    .line 242
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder$1;->this$0:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    iget-object v0, v0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->listener:Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder$1;->this$0:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    iget-object v0, v0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->listener:Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;->setRecyclerScroller(Z)V

    .line 244
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder$1;->this$0:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    invoke-static {v0}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->access$100(Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder$1;->this$0:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    invoke-static {v1}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->access$000(Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_camera_saturation:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder$1;->this$0:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    iget-object v0, v0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->listener:Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

    const-string v1, "saturation"

    invoke-interface {v0, v1, v3}, Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;->styleParam(Ljava/lang/String;I)V

    .line 246
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder$1;->this$0:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    invoke-static {v0}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->access$200(Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 247
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder$1;->this$0:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    invoke-static {v0}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->access$300(Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder$1;->this$0:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    invoke-static {v0}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->access$100(Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder$1;->this$0:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    invoke-static {v1}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->access$000(Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_camera_contrast:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder$1;->this$0:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    iget-object v0, v0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->listener:Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

    const-string v1, "contrast"

    invoke-interface {v0, v1, v3}, Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;->styleParam(Ljava/lang/String;I)V

    .line 250
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder$1;->this$0:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    invoke-static {v0}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->access$300(Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder$1;->this$0:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    invoke-static {v0}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->access$200(Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
