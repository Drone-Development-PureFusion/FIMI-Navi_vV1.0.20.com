.class Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog$1;
.super Ljava/lang/Object;
.source "X8WithTimeDoubleCustomDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

.field final synthetic val$listener:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog$1;->this$0:Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    iput-object p2, p0, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog$1;->val$listener:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog$1;->val$listener:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog$1;->val$listener:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;->onLeft()V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog$1;->this$0:Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->dismiss()V

    .line 54
    return-void
.end method
