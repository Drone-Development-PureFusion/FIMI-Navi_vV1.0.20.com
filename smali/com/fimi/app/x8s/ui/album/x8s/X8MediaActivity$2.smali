.class Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$2;
.super Ljava/lang/Object;
.source "X8MediaActivity.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->doTrans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 210
    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 5
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    const/4 v4, 0x0

    .line 192
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$color;->x8_media_tab_select:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v0, v1, v2, v4, v4}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;Landroid/view/View;III)V

    .line 193
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getX9MediaPresenter()Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->currentFragmentType()V

    .line 194
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->access$100(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-static {v0, v4}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->access$102(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;Z)Z

    .line 200
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getX9MediaPresenter()Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->switchLoadMedia()V

    goto :goto_0
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 5
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$2;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$color;->x8_media_tab_unselect:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;Landroid/view/View;III)V

    .line 205
    return-void
.end method
