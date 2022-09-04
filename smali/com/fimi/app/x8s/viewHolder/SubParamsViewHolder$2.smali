.class Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder$2;
.super Landroid/os/Handler;
.source "SubParamsViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;
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
    .line 432
    iput-object p1, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder$2;->this$0:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 435
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 436
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 438
    :pswitch_0
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder$2;->this$0:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    iget-object v0, v0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->listener:Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder$2;->this$0:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    invoke-static {v0}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->access$300(Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder$2;->this$0:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    iget-object v0, v0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->listener:Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;->setRecyclerScroller(Z)V

    .line 440
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder$2;->this$0:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    invoke-static {v0}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->access$100(Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder$2;->this$0:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

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

    .line 441
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder$2;->this$0:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    invoke-static {v0}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->access$300(Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder$2;->this$0:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    iget-object v0, v0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->listener:Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

    const-string v1, "saturation"

    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder$2;->this$0:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    invoke-static {v2}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->access$300(Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;->styleParam(Ljava/lang/String;I)V

    goto :goto_0

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder$2;->this$0:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    invoke-static {v0}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->access$100(Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder$2;->this$0:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

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

    .line 445
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder$2;->this$0:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    invoke-static {v0}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->access$300(Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder$2;->this$0:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    iget-object v0, v0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->listener:Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

    const-string v1, "contrast"

    iget-object v2, p0, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder$2;->this$0:Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;

    invoke-static {v2}, Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;->access$300(Lcom/fimi/app/x8s/viewHolder/SubParamsViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;->styleParam(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 436
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
