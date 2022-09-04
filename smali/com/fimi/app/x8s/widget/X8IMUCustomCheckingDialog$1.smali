.class Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog$1;
.super Ljava/lang/Object;
.source "X8IMUCustomCheckingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog$1;->this$0:Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 71
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x1

    .line 74
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
