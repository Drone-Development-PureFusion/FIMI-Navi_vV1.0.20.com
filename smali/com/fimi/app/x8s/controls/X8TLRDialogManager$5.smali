.class Lcom/fimi/app/x8s/controls/X8TLRDialogManager$5;
.super Ljava/lang/Object;
.source "X8TLRDialogManager.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->showLandingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/X8TLRDialogManager;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/X8TLRDialogManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/X8TLRDialogManager;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager$5;->this$0:Lcom/fimi/app/x8s/controls/X8TLRDialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeft()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public onRight()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager$5;->this$0:Lcom/fimi/app/x8s/controls/X8TLRDialogManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->onLandingClick()V

    .line 109
    return-void
.end method
