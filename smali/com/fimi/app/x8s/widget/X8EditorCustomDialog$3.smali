.class Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$3;
.super Ljava/lang/Object;
.source "X8EditorCustomDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$onDialogButtonClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;

.field final synthetic val$listener:Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$onDialogButtonClickListener;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$onDialogButtonClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$3;->this$0:Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;

    iput-object p2, p0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$3;->val$listener:Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$onDialogButtonClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$3;->val$listener:Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$onDialogButtonClickListener;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$3;->val$listener:Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$onDialogButtonClickListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$onDialogButtonClickListener;->onLeft()V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$3;->this$0:Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;->access$102(Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;Z)Z

    .line 78
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$3;->this$0:Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;->dismiss()V

    .line 79
    return-void
.end method
