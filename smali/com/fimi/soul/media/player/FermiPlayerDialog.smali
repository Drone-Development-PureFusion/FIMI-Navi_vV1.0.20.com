.class Lcom/fimi/soul/media/player/FermiPlayerDialog;
.super Landroid/app/Dialog;
.source "FermiPlayerDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 15
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fimi/soul/media/player/FermiPlayerDialog;->setCancelable(Z)V

    .line 18
    return-void
.end method
