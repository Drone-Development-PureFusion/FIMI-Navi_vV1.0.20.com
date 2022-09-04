.class Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$1;
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

.field final synthetic val$btnCenter:Landroid/widget/Button;

.field final synthetic val$editorPic:Landroid/widget/ImageView;

.field final synthetic val$imgMiddle:Landroid/view/View;

.field final synthetic val$tvLeft:Landroid/widget/TextView;

.field final synthetic val$tvRight:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/Button;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$1;->this$0:Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;

    iput-object p2, p0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$1;->val$tvRight:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$1;->val$tvLeft:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$1;->val$imgMiddle:Landroid/view/View;

    iput-object p5, p0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$1;->val$editorPic:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$1;->val$btnCenter:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 50
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$1;->this$0:Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;->access$000(Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$1;->val$tvRight:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$1;->val$tvLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$1;->val$imgMiddle:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$1;->val$editorPic:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$1;->val$btnCenter:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$1;->this$0:Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;->showSoftInputFromWindow()V

    .line 57
    return-void
.end method
