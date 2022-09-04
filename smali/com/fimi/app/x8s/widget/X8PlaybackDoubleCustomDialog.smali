.class public Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;
.super Lcom/fimi/app/x8s/widget/X8sBaseDialog;
.source "X8PlaybackDoubleCustomDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog$onDialogButtonClickListener;
    }
.end annotation


# instance fields
.field private x8PlaybackSynType:I

.field private x8TabhostPlaybackSyn:Lcom/fimi/app/x8s/widget/X8TabHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog$onDialogButtonClickListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog$onDialogButtonClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 22
    sget v2, Lcom/fimi/app/x8s/R$style;->fimisdk_custom_dialog:I

    invoke-direct {p0, p1, v2}, Lcom/fimi/app/x8s/widget/X8sBaseDialog;-><init>(Landroid/content/Context;I)V

    .line 23
    sget v2, Lcom/fimi/app/x8s/R$layout;->x8_playback_double_dialog_custom:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;->setContentView(I)V

    .line 24
    sget v2, Lcom/fimi/app/x8s/R$id;->x8_tabhost_playback_syn:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fimi/app/x8s/widget/X8TabHost;

    iput-object v2, p0, Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;->x8TabhostPlaybackSyn:Lcom/fimi/app/x8s/widget/X8TabHost;

    .line 26
    sget v2, Lcom/fimi/app/x8s/R$id;->btn_left:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 27
    .local v0, "tvLeft":Landroid/widget/TextView;
    sget v2, Lcom/fimi/app/x8s/R$id;->btn_right:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 29
    .local v1, "tvRight":Landroid/widget/TextView;
    new-instance v2, Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog$1;

    invoke-direct {v2, p0, p2}, Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog$1;-><init>(Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog$onDialogButtonClickListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    new-instance v2, Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog$2;

    const/16 v3, 0x1f4

    invoke-direct {v2, p0, v3, p2}, Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog$2;-><init>(Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;ILcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog$onDialogButtonClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-void
.end method

.method static synthetic access$002(Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;->x8PlaybackSynType:I

    return p1
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;)Lcom/fimi/app/x8s/widget/X8TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;->x8TabhostPlaybackSyn:Lcom/fimi/app/x8s/widget/X8TabHost;

    return-object v0
.end method


# virtual methods
.method public getX8PlaybackSynType()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;->x8PlaybackSynType:I

    return v0
.end method
