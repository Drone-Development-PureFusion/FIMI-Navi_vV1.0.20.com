.class Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$1;
.super Ljava/lang/Object;
.source "X8AiLinePointValueAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->setSigleListener(Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 100
    const/4 v0, 0x1

    .line 101
    .local v0, "isSelect":Z
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 102
    .local v1, "pos":I
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;

    invoke-static {v2}, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->access$000(Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 103
    const/4 v0, 0x0

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;

    invoke-static {v2}, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->access$100(Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;)Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$OnItemClickListener;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;

    invoke-static {v3}, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->access$000(Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;)I

    move-result v3

    invoke-interface {v2, v1, v3, v0}, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$OnItemClickListener;->onItemClicked(IIZ)V

    .line 106
    if-eqz v0, :cond_1

    .line 107
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;

    invoke-static {v2, v1}, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->access$002(Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;I)I

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->access$002(Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;I)I

    goto :goto_0
.end method
