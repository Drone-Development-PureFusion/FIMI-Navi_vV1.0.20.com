.class public Lcom/fimi/player/widget/AndroidMediaController;
.super Lcom/fimi/player/widget/FmMediaController;
.source "AndroidMediaController.java"

# interfaces
.implements Lcom/fimi/player/widget/IMediaController;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mShowOnceArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/fimi/player/widget/FmMediaController;-><init>(Landroid/content/Context;)V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/player/widget/AndroidMediaController;->mShowOnceArray:Ljava/util/ArrayList;

    .line 43
    invoke-direct {p0, p1}, Lcom/fimi/player/widget/AndroidMediaController;->initView(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/fimi/player/widget/FmMediaController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/player/widget/AndroidMediaController;->mShowOnceArray:Ljava/util/ArrayList;

    .line 33
    invoke-direct {p0, p1}, Lcom/fimi/player/widget/AndroidMediaController;->initView(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useFastForward"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/fimi/player/widget/FmMediaController;-><init>(Landroid/content/Context;Z)V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/player/widget/AndroidMediaController;->mShowOnceArray:Ljava/util/ArrayList;

    .line 38
    invoke-direct {p0, p1}, Lcom/fimi/player/widget/AndroidMediaController;->initView(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 3

    .prologue
    .line 69
    invoke-super {p0}, Lcom/fimi/player/widget/FmMediaController;->hide()V

    .line 70
    iget-object v1, p0, Lcom/fimi/player/widget/AndroidMediaController;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/fimi/player/widget/AndroidMediaController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/fimi/player/widget/AndroidMediaController;->mShowOnceArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 73
    .local v0, "view":Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 75
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setSupportActionBar(Landroid/app/ActionBar;)V
    .locals 1
    .param p1, "actionBar"    # Landroid/app/ActionBar;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 50
    iput-object p1, p0, Lcom/fimi/player/widget/AndroidMediaController;->mActionBar:Landroid/app/ActionBar;

    .line 51
    invoke-virtual {p0}, Lcom/fimi/player/widget/AndroidMediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/app/ActionBar;->show()V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    goto :goto_0
.end method

.method public show()V
    .locals 3

    .prologue
    .line 60
    invoke-super {p0}, Lcom/fimi/player/widget/FmMediaController;->show()V

    .line 61
    iget-object v1, p0, Lcom/fimi/player/widget/AndroidMediaController;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/fimi/player/widget/AndroidMediaController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->show()V

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/fimi/player/widget/AndroidMediaController;->mShowOnceArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 64
    .local v0, "view":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 65
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public showOnce(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 84
    iget-object v0, p0, Lcom/fimi/player/widget/AndroidMediaController;->mShowOnceArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 86
    invoke-virtual {p0}, Lcom/fimi/player/widget/AndroidMediaController;->show()V

    .line 87
    return-void
.end method
