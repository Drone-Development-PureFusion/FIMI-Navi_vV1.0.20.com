.class Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$1;
.super Ljava/lang/Object;
.source "FiveKeyDefineAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;->onBindViewHolder(Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$FiveKeyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;

.field final synthetic val$holder:Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$FiveKeyViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$FiveKeyViewHolder;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;

    iput-object p2, p0, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$1;->val$holder:Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$FiveKeyViewHolder;

    iput p3, p0, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;->access$000(Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;

    invoke-static {v1}, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;->access$100(Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$1;->val$holder:Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$FiveKeyViewHolder;

    iget-object v1, v1, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$FiveKeyViewHolder;->btn:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;->access$200(Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;)Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$OnItemClickListener;

    move-result-object v0

    iget v1, p0, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$OnItemClickListener;->onItemClicked(I)V

    goto :goto_0
.end method
