.class Lcom/fimi/app/x8s/widget/X8IMUCustomDialog$1;
.super Ljava/lang/Object;
.source "X8IMUCustomDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/fimi/app/x8s/widget/X8IMUCustomDialog$onDialogButtonClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

.field final synthetic val$listener:Lcom/fimi/app/x8s/widget/X8IMUCustomDialog$onDialogButtonClickListener;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;Lcom/fimi/app/x8s/widget/X8IMUCustomDialog$onDialogButtonClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog$1;->this$0:Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    iput-object p2, p0, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog$1;->val$listener:Lcom/fimi/app/x8s/widget/X8IMUCustomDialog$onDialogButtonClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog$1;->this$0:Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;->dismiss()V

    .line 72
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog$1;->val$listener:Lcom/fimi/app/x8s/widget/X8IMUCustomDialog$onDialogButtonClickListener;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog$1;->val$listener:Lcom/fimi/app/x8s/widget/X8IMUCustomDialog$onDialogButtonClickListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog$onDialogButtonClickListener;->onSingleButtonClick()V

    .line 75
    :cond_0
    return-void
.end method
