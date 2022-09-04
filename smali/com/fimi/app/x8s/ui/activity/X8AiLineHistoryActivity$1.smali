.class Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity$1;
.super Ljava/lang/Object;
.source "X8AiLineHistoryActivity.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity$1;->this$0:Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addLineItem(Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity$1;->this$0:Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->access$000(Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;)Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->addLineItem(Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;)V

    .line 96
    return-void
.end method

.method public favoritesCapacity()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity$1;->this$0:Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->access$000(Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;)Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->favoritesCapacity()I

    move-result v0

    return v0
.end method

.method public goFavorites()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity$1;->this$0:Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->access$100(Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;)Landroid/support/design/widget/TabLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 106
    return-void
.end method

.method public onItemChange(JII)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "saveFlag"    # I
    .param p4, "potion"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity$1;->this$0:Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->access$000(Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;)Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->notityItemChange(JI)V

    .line 91
    return-void
.end method

.method public onItemChange(JLjava/lang/String;I)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "position"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity$1;->this$0:Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->access$000(Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;)Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->notityItemChange(JLjava/lang/String;)V

    .line 111
    return-void
.end method

.method public onSelectId(JI)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "type"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity$1;->this$0:Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->onSelectEvent(JI)V

    .line 86
    return-void
.end method
