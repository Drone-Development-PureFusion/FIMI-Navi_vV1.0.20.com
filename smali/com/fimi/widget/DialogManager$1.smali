.class Lcom/fimi/widget/DialogManager$1;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/widget/DialogManager;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/widget/DialogManager;


# direct methods
.method constructor <init>(Lcom/fimi/widget/DialogManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/widget/DialogManager;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/fimi/widget/DialogManager$1;->this$0:Lcom/fimi/widget/DialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 201
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 202
    iget-object v0, p0, Lcom/fimi/widget/DialogManager$1;->this$0:Lcom/fimi/widget/DialogManager;

    invoke-static {v0}, Lcom/fimi/widget/DialogManager;->access$000(Lcom/fimi/widget/DialogManager;)Lcom/fimi/widget/DialogManager$OnDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/fimi/widget/DialogManager$1;->this$0:Lcom/fimi/widget/DialogManager;

    invoke-static {v0}, Lcom/fimi/widget/DialogManager;->access$000(Lcom/fimi/widget/DialogManager;)Lcom/fimi/widget/DialogManager$OnDialogListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/widget/DialogManager$1;->this$0:Lcom/fimi/widget/DialogManager;

    invoke-static {v1}, Lcom/fimi/widget/DialogManager;->access$100(Lcom/fimi/widget/DialogManager;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/fimi/widget/DialogManager$OnDialogListener;->dialogBtnRightOrSingleListener(Landroid/view/View;Landroid/content/DialogInterface;I)V

    .line 205
    :cond_0
    return-void
.end method
