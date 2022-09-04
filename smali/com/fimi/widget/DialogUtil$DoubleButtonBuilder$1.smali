.class Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder$1;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->create()Lcom/fimi/widget/DialogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;


# direct methods
.method constructor <init>(Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder$1;->this$0:Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder$1;->this$0:Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;

    invoke-static {v0}, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->access$000(Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;)Lcom/fimi/widget/DialogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/widget/DialogUtil;->dismiss()V

    .line 177
    iget-object v0, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder$1;->this$0:Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;

    invoke-static {v0}, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->access$100(Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder$1;->this$0:Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;

    invoke-static {v1}, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->access$000(Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;)Lcom/fimi/widget/DialogUtil;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 179
    return-void
.end method
