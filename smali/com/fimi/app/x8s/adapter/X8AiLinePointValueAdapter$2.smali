.class Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$2;
.super Ljava/lang/Object;
.source "X8AiLinePointValueAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->setMulListener(Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$2;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;

    iput p2, p0, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$2;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 154
    const/4 v0, 0x1

    .line 155
    .local v0, "isSelect":Z
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 156
    .local v1, "pos":I
    iget v2, p0, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$2;->val$state:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 157
    const/4 v0, 0x0

    .line 159
    :cond_0
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$2;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;

    invoke-static {v2}, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->access$100(Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;)Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$OnItemClickListener;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$2;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;

    invoke-static {v3}, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;->access$000(Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;)I

    move-result v3

    invoke-interface {v2, v1, v3, v0}, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$OnItemClickListener;->onItemClicked(IIZ)V

    .line 160
    return-void
.end method
