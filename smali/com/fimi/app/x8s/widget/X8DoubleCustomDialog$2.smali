.class Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$2;
.super Ljava/lang/Object;
.source "X8DoubleCustomDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

.field final synthetic val$listener:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$2;->this$0:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iput-object p2, p0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$2;->val$listener:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$2;->val$listener:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$2;->val$listener:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;->onRight()V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$2;->this$0:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->dismiss()V

    .line 53
    return-void
.end method
