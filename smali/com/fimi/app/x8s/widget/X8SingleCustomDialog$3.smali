.class Lcom/fimi/app/x8s/widget/X8SingleCustomDialog$3;
.super Ljava/lang/Object;
.source "X8SingleCustomDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/fimi/app/x8s/widget/X8SingleCustomDialog$onDialogButtonClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;

.field final synthetic val$listener:Lcom/fimi/app/x8s/widget/X8SingleCustomDialog$onDialogButtonClickListener;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;Lcom/fimi/app/x8s/widget/X8SingleCustomDialog$onDialogButtonClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog$3;->this$0:Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;

    iput-object p2, p0, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog$3;->val$listener:Lcom/fimi/app/x8s/widget/X8SingleCustomDialog$onDialogButtonClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog$3;->this$0:Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;->dismiss()V

    .line 89
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog$3;->val$listener:Lcom/fimi/app/x8s/widget/X8SingleCustomDialog$onDialogButtonClickListener;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog$3;->val$listener:Lcom/fimi/app/x8s/widget/X8SingleCustomDialog$onDialogButtonClickListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog$onDialogButtonClickListener;->onSingleButtonClick()V

    .line 92
    :cond_0
    return-void
.end method
