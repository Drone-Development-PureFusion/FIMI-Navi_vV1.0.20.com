.class Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment$1;
.super Ljava/lang/Object;
.source "X8AiLineFavoritesFragment.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8SingleCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->showMaxSaveDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment$1;->this$0:Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleButtonClick()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment$1;->this$0:Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->access$000(Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;)Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;->goFavorites()V

    .line 130
    return-void
.end method
