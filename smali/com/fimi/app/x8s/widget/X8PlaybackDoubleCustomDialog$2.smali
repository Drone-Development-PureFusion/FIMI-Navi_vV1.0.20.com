.class Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog$2;
.super Lcom/fimi/widget/impl/NoDoubleClickListener;
.source "X8PlaybackDoubleCustomDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;-><init>(Landroid/content/Context;Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog$onDialogButtonClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;

.field final synthetic val$listener:Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog$onDialogButtonClickListener;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;ILcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog$onDialogButtonClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;
    .param p2, "x0"    # I

    .prologue
    .line 38
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog$2;->this$0:Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;

    iput-object p3, p0, Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog$2;->val$listener:Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog$onDialogButtonClickListener;

    invoke-direct {p0, p2}, Lcom/fimi/widget/impl/NoDoubleClickListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected onNoDoubleClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog$2;->val$listener:Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog$onDialogButtonClickListener;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog$2;->this$0:Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog$2;->this$0:Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;

    invoke-static {v1}, Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;->access$100(Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;)Lcom/fimi/app/x8s/widget/X8TabHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8TabHost;->getSelectIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;->access$002(Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;I)I

    .line 43
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog$2;->val$listener:Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog$onDialogButtonClickListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog$onDialogButtonClickListener;->onRight()V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog$2;->this$0:Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;->dismiss()V

    .line 46
    return-void
.end method
