.class public Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesHistoryUi;
.super Ljava/lang/Object;
.source "X8AiLinesHistoryUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private adapter:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;

.field private btnNext:Landroid/widget/Button;

.field private contentView:Landroid/view/View;

.field private controller:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

.field private lv:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_ai_line_history_layout:I

    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "parent":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesHistoryUi;->contentView:Landroid/view/View;

    .line 31
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesHistoryUi;->contentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesHistoryUi;->initView(Landroid/view/View;)V

    .line 32
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesHistoryUi;->initAction()V

    .line 33
    return-void
.end method


# virtual methods
.method public initAction()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesHistoryUi;->lv:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesHistoryUi;->adapter:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesHistoryUi;->btnNext:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 4
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 36
    sget v1, Lcom/fimi/app/x8s/R$id;->lv:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesHistoryUi;->lv:Landroid/widget/ListView;

    .line 37
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_ai_follow_confirm_ok:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesHistoryUi;->btnNext:Landroid/widget/Button;

    .line 38
    invoke-static {}, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->getIntance()Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;

    move-result-object v2

    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/common/GlobalConfig;->getMapType()Lcom/fimi/x8sdk/map/MapType;

    move-result-object v1

    sget-object v3, Lcom/fimi/x8sdk/map/MapType;->AMap:Lcom/fimi/x8sdk/map/MapType;

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->getLastItem(I)Ljava/util/List;

    move-result-object v0

    .line 41
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;>;"
    new-instance v1, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesHistoryUi;->contentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesHistoryUi;->adapter:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;

    .line 42
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesHistoryUi;->lv:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesHistoryUi;->adapter:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    return-void

    .line 38
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 54
    .local v0, "id":I
    sget v2, Lcom/fimi/app/x8s/R$id;->btn_ai_follow_confirm_ok:I

    if-ne v0, v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesHistoryUi;->adapter:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter;->getItemSelect()Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    move-result-object v1

    .line 56
    .local v1, "info":Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;
    if-nez v1, :cond_1

    .line 57
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesHistoryUi;->contentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesHistoryUi;->contentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_line_history_select_tip:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 62
    .end local v1    # "info":Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;
    :cond_0
    :goto_0
    return-void

    .line 59
    .restart local v1    # "info":Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;
    :cond_1
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesHistoryUi;->controller:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-virtual {v2, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->historyUi2NextUi(Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;)V

    goto :goto_0
.end method

.method public setController(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)V
    .locals 0
    .param p1, "controller"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesHistoryUi;->controller:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .line 67
    return-void
.end method

.method public setFcHeart(ZZ)V
    .locals 2
    .param p1, "isInSky"    # Z
    .param p2, "isLowPower"    # Z

    .prologue
    .line 70
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 71
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesHistoryUi;->btnNext:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesHistoryUi;->btnNext:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
