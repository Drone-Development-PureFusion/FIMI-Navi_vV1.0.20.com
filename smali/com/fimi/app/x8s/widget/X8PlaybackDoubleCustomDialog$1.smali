.class Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog$1;
.super Ljava/lang/Object;
.source "X8PlaybackDoubleCustomDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method constructor <init>(Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog$onDialogButtonClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog$1;->this$0:Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;

    iput-object p2, p0, Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog$1;->val$listener:Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog$onDialogButtonClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog$1;->val$listener:Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog$onDialogButtonClickListener;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog$1;->val$listener:Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog$onDialogButtonClickListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog$onDialogButtonClickListener;->onLeft()V

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog$1;->this$0:Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;->dismiss()V

    .line 36
    return-void
.end method
