.class public Lcom/fimi/widget/CustomDialog;
.super Landroid/app/Dialog;
.source "CustomDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/widget/CustomDialog$Builder;
    }
.end annotation


# static fields
.field private static onDismissListener:Lcom/fimi/widget/DialogManager$OnDismissListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 33
    return-void
.end method

.method static synthetic access$002(Lcom/fimi/widget/DialogManager$OnDismissListener;)Lcom/fimi/widget/DialogManager$OnDismissListener;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/widget/DialogManager$OnDismissListener;

    .prologue
    .line 26
    sput-object p0, Lcom/fimi/widget/CustomDialog;->onDismissListener:Lcom/fimi/widget/DialogManager$OnDismissListener;

    return-object p0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 39
    sget-object v0, Lcom/fimi/widget/CustomDialog;->onDismissListener:Lcom/fimi/widget/DialogManager$OnDismissListener;

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/fimi/widget/CustomDialog;->onDismissListener:Lcom/fimi/widget/DialogManager$OnDismissListener;

    invoke-interface {v0}, Lcom/fimi/widget/DialogManager$OnDismissListener;->onDismiss()V

    .line 42
    :cond_0
    return-void
.end method
