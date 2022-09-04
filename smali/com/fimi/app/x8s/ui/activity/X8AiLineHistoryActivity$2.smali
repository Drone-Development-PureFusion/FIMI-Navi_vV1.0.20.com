.class Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity$2;
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
    .line 116
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addLineItem(Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    .prologue
    .line 132
    return-void
.end method

.method public favoritesCapacity()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public goFavorites()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public onItemChange(JII)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "saveFlag"    # I
    .param p4, "position"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->access$200(Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;)Lcom/fimi/app/x8s/ui/fragment/X8AiLineRecentFragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fimi/app/x8s/ui/fragment/X8AiLineRecentFragment;->notityItemChange(J)V

    .line 127
    return-void
.end method

.method public onItemChange(JLjava/lang/String;I)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "position"    # I

    .prologue
    .line 147
    return-void
.end method

.method public onSelectId(JI)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "type"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fimi/app/x8s/ui/activity/X8AiLineHistoryActivity;->onSelectEvent(JI)V

    .line 122
    return-void
.end method
