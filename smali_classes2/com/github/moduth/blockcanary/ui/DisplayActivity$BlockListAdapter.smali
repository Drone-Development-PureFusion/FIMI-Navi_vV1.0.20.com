.class Lcom/github/moduth/blockcanary/ui/DisplayActivity$BlockListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DisplayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/moduth/blockcanary/ui/DisplayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BlockListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity;


# direct methods
.method constructor <init>(Lcom/github/moduth/blockcanary/ui/DisplayActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$BlockListAdapter;->this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$BlockListAdapter;->this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    invoke-static {v0}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->access$300(Lcom/github/moduth/blockcanary/ui/DisplayActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/github/moduth/blockcanary/ui/BlockInfoEx;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 336
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$BlockListAdapter;->this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    invoke-static {v0}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->access$300(Lcom/github/moduth/blockcanary/ui/DisplayActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0, p1}, Lcom/github/moduth/blockcanary/ui/DisplayActivity$BlockListAdapter;->getItem(I)Lcom/github/moduth/blockcanary/ui/BlockInfoEx;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 341
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 346
    if-nez p2, :cond_0

    .line 347
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$BlockListAdapter;->this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    sget v10, Lcom/github/moduth/blockcanary/R$layout;->block_canary_block_row:I

    const/4 v11, 0x0

    .line 348
    move-object/from16 v0, p3

    invoke-virtual {v9, v10, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 350
    :cond_0
    sget v9, Lcom/github/moduth/blockcanary/R$id;->__leak_canary_row_text:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 351
    .local v8, "titleView":Landroid/widget/TextView;
    sget v9, Lcom/github/moduth/blockcanary/R$id;->__leak_canary_row_time:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 352
    .local v6, "timeView":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p1}, Lcom/github/moduth/blockcanary/ui/DisplayActivity$BlockListAdapter;->getItem(I)Lcom/github/moduth/blockcanary/ui/BlockInfoEx;

    move-result-object v2

    .line 355
    .local v2, "blockInfo":Lcom/github/moduth/blockcanary/ui/BlockInfoEx;
    if-nez p1, :cond_1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$BlockListAdapter;->this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    invoke-static {v9}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->access$300(Lcom/github/moduth/blockcanary/ui/DisplayActivity;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$BlockListAdapter;->this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    invoke-static {v10}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->access$500(Lcom/github/moduth/blockcanary/ui/DisplayActivity;)I

    move-result v10

    if-ne v9, v10, :cond_1

    .line 356
    const-string v3, "MAX. "

    .line 361
    .local v3, "index":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Lcom/github/moduth/blockcanary/ui/BlockCanaryUtils;->concernStackString(Lcom/github/moduth/blockcanary/internal/BlockInfo;)Ljava/lang/String;

    move-result-object v4

    .line 362
    .local v4, "keyStackString":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$BlockListAdapter;->this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    sget v11, Lcom/github/moduth/blockcanary/R$string;->block_canary_class_has_blocked:I

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-wide v14, v2, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;->timeCost:J

    .line 363
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 364
    .local v7, "title":Ljava/lang/String;
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$BlockListAdapter;->this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    iget-object v10, v2, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;->logFile:Ljava/io/File;

    .line 366
    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    const/16 v12, 0x11

    .line 365
    invoke-static {v9, v10, v11, v12}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v5

    .line 367
    .local v5, "time":Ljava/lang/String;
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    return-object p2

    .line 358
    .end local v3    # "index":Ljava/lang/String;
    .end local v4    # "keyStackString":Ljava/lang/String;
    .end local v5    # "time":Ljava/lang/String;
    .end local v7    # "title":Ljava/lang/String;
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$BlockListAdapter;->this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    invoke-static {v10}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->access$300(Lcom/github/moduth/blockcanary/ui/DisplayActivity;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    sub-int v10, v10, p1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ". "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "index":Ljava/lang/String;
    goto :goto_0
.end method
