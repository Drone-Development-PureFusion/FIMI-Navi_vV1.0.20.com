.class public Lcom/github/moduth/blockcanary/ui/DisplayActivity;
.super Landroid/app/Activity;
.source "DisplayActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;,
        Lcom/github/moduth/blockcanary/ui/DisplayActivity$BlockListAdapter;
    }
.end annotation


# static fields
.field private static final SHOW_BLOCK_EXTRA:Ljava/lang/String; = "show_latest"

.field public static final SHOW_BLOCK_EXTRA_KEY:Ljava/lang/String; = "BlockStartTime"

.field private static final TAG:Ljava/lang/String; = "DisplayActivity"


# instance fields
.field private mActionButton:Landroid/widget/Button;

.field private mBlockInfoEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/github/moduth/blockcanary/ui/BlockInfoEx;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockStartTime:Ljava/lang/String;

.field private mFailureView:Landroid/widget/TextView;

.field private mListView:Landroid/widget/ListView;

.field private mMaxStoredBlockCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->mBlockInfoEntries:Ljava/util/List;

    .line 372
    return-void
.end method

.method static synthetic access$000(Lcom/github/moduth/blockcanary/ui/DisplayActivity;Lcom/github/moduth/blockcanary/ui/BlockInfoEx;)V
    .locals 0
    .param p0, "x0"    # Lcom/github/moduth/blockcanary/ui/DisplayActivity;
    .param p1, "x1"    # Lcom/github/moduth/blockcanary/ui/BlockInfoEx;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->shareBlock(Lcom/github/moduth/blockcanary/ui/BlockInfoEx;)V

    return-void
.end method

.method static synthetic access$100(Lcom/github/moduth/blockcanary/ui/DisplayActivity;Lcom/github/moduth/blockcanary/ui/BlockInfoEx;)V
    .locals 0
    .param p0, "x0"    # Lcom/github/moduth/blockcanary/ui/DisplayActivity;
    .param p1, "x1"    # Lcom/github/moduth/blockcanary/ui/BlockInfoEx;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->shareHeapDump(Lcom/github/moduth/blockcanary/ui/BlockInfoEx;)V

    return-void
.end method

.method static synthetic access$202(Lcom/github/moduth/blockcanary/ui/DisplayActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/github/moduth/blockcanary/ui/DisplayActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->mBlockStartTime:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/github/moduth/blockcanary/ui/DisplayActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->mBlockInfoEntries:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/github/moduth/blockcanary/ui/DisplayActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/github/moduth/blockcanary/ui/DisplayActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->mBlockInfoEntries:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/github/moduth/blockcanary/ui/DisplayActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->updateUi()V

    return-void
.end method

.method static synthetic access$500(Lcom/github/moduth/blockcanary/ui/DisplayActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    .prologue
    .line 67
    iget v0, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->mMaxStoredBlockCount:I

    return v0
.end method

.method public static createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "blockStartTime"    # Ljava/lang/String;

    .prologue
    .line 83
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "show_latest"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 86
    const/4 v1, 0x1

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private getBlock(Ljava/lang/String;)Lcom/github/moduth/blockcanary/ui/BlockInfoEx;
    .locals 4
    .param p1, "startTime"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 316
    iget-object v2, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->mBlockInfoEntries:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 324
    :goto_0
    return-object v0

    .line 319
    :cond_1
    iget-object v2, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->mBlockInfoEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;

    .line 320
    .local v0, "blockInfo":Lcom/github/moduth/blockcanary/ui/BlockInfoEx;
    iget-object v3, v0, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;->timeStart:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;->timeStart:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .end local v0    # "blockInfo":Lcom/github/moduth/blockcanary/ui/BlockInfoEx;
    :cond_3
    move-object v0, v1

    .line 324
    goto :goto_0
.end method

.method private renderBlockDetail(Lcom/github/moduth/blockcanary/ui/BlockInfoEx;)V
    .locals 9
    .param p1, "blockInfo"    # Lcom/github/moduth/blockcanary/ui/BlockInfoEx;

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 277
    iget-object v3, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 279
    .local v2, "listAdapter":Landroid/widget/ListAdapter;
    instance-of v3, v2, Lcom/github/moduth/blockcanary/ui/DetailAdapter;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 280
    check-cast v1, Lcom/github/moduth/blockcanary/ui/DetailAdapter;

    .line 300
    .local v1, "adapter":Lcom/github/moduth/blockcanary/ui/DetailAdapter;
    :goto_0
    iget-object v3, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->mActionButton:Landroid/widget/Button;

    new-instance v4, Lcom/github/moduth/blockcanary/ui/DisplayActivity$6;

    invoke-direct {v4, p0, p1}, Lcom/github/moduth/blockcanary/ui/DisplayActivity$6;-><init>(Lcom/github/moduth/blockcanary/ui/DisplayActivity;Lcom/github/moduth/blockcanary/ui/BlockInfoEx;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    invoke-virtual {v1, p1}, Lcom/github/moduth/blockcanary/ui/DetailAdapter;->update(Lcom/github/moduth/blockcanary/internal/BlockInfo;)V

    .line 312
    sget v3, Lcom/github/moduth/blockcanary/R$string;->block_canary_class_has_blocked:I

    new-array v4, v5, [Ljava/lang/Object;

    iget-wide v6, p1, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;->timeCost:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 313
    return-void

    .line 282
    .end local v1    # "adapter":Lcom/github/moduth/blockcanary/ui/DetailAdapter;
    :cond_0
    new-instance v1, Lcom/github/moduth/blockcanary/ui/DetailAdapter;

    invoke-direct {v1}, Lcom/github/moduth/blockcanary/ui/DetailAdapter;-><init>()V

    .line 283
    .restart local v1    # "adapter":Lcom/github/moduth/blockcanary/ui/DetailAdapter;
    iget-object v3, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 284
    iget-object v3, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->mListView:Landroid/widget/ListView;

    new-instance v4, Lcom/github/moduth/blockcanary/ui/DisplayActivity$5;

    invoke-direct {v4, p0, v1}, Lcom/github/moduth/blockcanary/ui/DisplayActivity$5;-><init>(Lcom/github/moduth/blockcanary/ui/DisplayActivity;Lcom/github/moduth/blockcanary/ui/DetailAdapter;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 290
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_1

    .line 291
    invoke-virtual {p0}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->invalidateOptionsMenu()V

    .line 292
    invoke-virtual {p0}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 293
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 294
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 297
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_1
    iget-object v3, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 298
    iget-object v3, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->mActionButton:Landroid/widget/Button;

    sget v4, Lcom/github/moduth/blockcanary/R$string;->block_canary_delete:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private renderBlockList()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 230
    iget-object v4, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 231
    .local v2, "listAdapter":Landroid/widget/ListAdapter;
    instance-of v4, v2, Lcom/github/moduth/blockcanary/ui/DisplayActivity$BlockListAdapter;

    if-eqz v4, :cond_1

    .line 232
    check-cast v2, Lcom/github/moduth/blockcanary/ui/DisplayActivity$BlockListAdapter;

    .end local v2    # "listAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v2}, Lcom/github/moduth/blockcanary/ui/DisplayActivity$BlockListAdapter;->notifyDataSetChanged()V

    .line 273
    :goto_0
    iget-object v4, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->mActionButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->mBlockInfoEntries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0x8

    :cond_0
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 274
    return-void

    .line 234
    .restart local v2    # "listAdapter":Landroid/widget/ListAdapter;
    :cond_1
    new-instance v1, Lcom/github/moduth/blockcanary/ui/DisplayActivity$BlockListAdapter;

    invoke-direct {v1, p0}, Lcom/github/moduth/blockcanary/ui/DisplayActivity$BlockListAdapter;-><init>(Lcom/github/moduth/blockcanary/ui/DisplayActivity;)V

    .line 235
    .local v1, "adapter":Lcom/github/moduth/blockcanary/ui/DisplayActivity$BlockListAdapter;
    iget-object v4, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 236
    iget-object v4, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->mListView:Landroid/widget/ListView;

    new-instance v5, Lcom/github/moduth/blockcanary/ui/DisplayActivity$3;

    invoke-direct {v5, p0}, Lcom/github/moduth/blockcanary/ui/DisplayActivity$3;-><init>(Lcom/github/moduth/blockcanary/ui/DisplayActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 243
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_2

    .line 244
    invoke-virtual {p0}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->invalidateOptionsMenu()V

    .line 245
    invoke-virtual {p0}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 246
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 247
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 250
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_2
    sget v4, Lcom/github/moduth/blockcanary/R$string;->block_canary_block_list_title:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {p0, v4, v5}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v4, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->mActionButton:Landroid/widget/Button;

    sget v5, Lcom/github/moduth/blockcanary/R$string;->block_canary_delete_all:I

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 252
    iget-object v4, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->mActionButton:Landroid/widget/Button;

    new-instance v5, Lcom/github/moduth/blockcanary/ui/DisplayActivity$4;

    invoke-direct {v5, p0}, Lcom/github/moduth/blockcanary/ui/DisplayActivity$4;-><init>(Lcom/github/moduth/blockcanary/ui/DisplayActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private shareBlock(Lcom/github/moduth/blockcanary/ui/BlockInfoEx;)V
    .locals 3
    .param p1, "blockInfo"    # Lcom/github/moduth/blockcanary/ui/BlockInfoEx;

    .prologue
    .line 193
    invoke-virtual {p1}, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "leakInfo":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "text/plain"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    sget v2, Lcom/github/moduth/blockcanary/R$string;->block_canary_share_with:I

    invoke-virtual {p0, v2}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->startActivity(Landroid/content/Intent;)V

    .line 198
    return-void
.end method

.method private shareHeapDump(Lcom/github/moduth/blockcanary/ui/BlockInfoEx;)V
    .locals 4
    .param p1, "blockInfo"    # Lcom/github/moduth/blockcanary/ui/BlockInfoEx;

    .prologue
    .line 201
    iget-object v0, p1, Lcom/github/moduth/blockcanary/ui/BlockInfoEx;->logFile:Ljava/io/File;

    .line 203
    .local v0, "heapDumpFile":Ljava/io/File;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    .line 204
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 206
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "application/octet-stream"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const-string v2, "android.intent.extra.STREAM"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 209
    sget v2, Lcom/github/moduth/blockcanary/R$string;->block_canary_share_with:I

    invoke-virtual {p0, v2}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->startActivity(Landroid/content/Intent;)V

    .line 210
    return-void
.end method

.method private updateUi()V
    .locals 3

    .prologue
    .line 213
    iget-object v1, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->mBlockStartTime:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->getBlock(Ljava/lang/String;)Lcom/github/moduth/blockcanary/ui/BlockInfoEx;

    move-result-object v0

    .line 214
    .local v0, "blockInfo":Lcom/github/moduth/blockcanary/ui/BlockInfoEx;
    if-nez v0, :cond_0

    .line 215
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->mBlockStartTime:Ljava/lang/String;

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 220
    iget-object v1, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->mFailureView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    if-eqz v0, :cond_1

    .line 223
    invoke-direct {p0, v0}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->renderBlockDetail(Lcom/github/moduth/blockcanary/ui/BlockInfoEx;)V

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_1
    invoke-direct {p0}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->renderBlockList()V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->mBlockStartTime:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->mBlockStartTime:Ljava/lang/String;

    .line 186
    invoke-direct {p0}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->updateUi()V

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    if-eqz p1, :cond_1

    .line 94
    const-string v1, "BlockStartTime"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->mBlockStartTime:Ljava/lang/String;

    .line 102
    :cond_0
    :goto_0
    sget v1, Lcom/github/moduth/blockcanary/R$layout;->block_canary_display_leak:I

    invoke-virtual {p0, v1}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->setContentView(I)V

    .line 104
    sget v1, Lcom/github/moduth/blockcanary/R$id;->__leak_canary_display_leak_list:I

    invoke-virtual {p0, v1}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->mListView:Landroid/widget/ListView;

    .line 105
    sget v1, Lcom/github/moduth/blockcanary/R$id;->__leak_canary_display_leak_failure:I

    invoke-virtual {p0, v1}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->mFailureView:Landroid/widget/TextView;

    .line 106
    sget v1, Lcom/github/moduth/blockcanary/R$id;->__leak_canary_action:I

    invoke-virtual {p0, v1}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->mActionButton:Landroid/widget/Button;

    .line 108
    invoke-virtual {p0}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/github/moduth/blockcanary/R$integer;->block_canary_max_stored_count:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->mMaxStoredBlockCount:I

    .line 110
    invoke-direct {p0}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->updateUi()V

    .line 111
    return-void

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "show_latest"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const-string v1, "show_latest"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->mBlockStartTime:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 150
    iget-object v1, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->mBlockStartTime:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->getBlock(Ljava/lang/String;)Lcom/github/moduth/blockcanary/ui/BlockInfoEx;

    move-result-object v0

    .line 151
    .local v0, "blockInfo":Lcom/github/moduth/blockcanary/ui/BlockInfoEx;
    if-eqz v0, :cond_0

    .line 152
    sget v1, Lcom/github/moduth/blockcanary/R$string;->block_canary_share_leak:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/github/moduth/blockcanary/ui/DisplayActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/github/moduth/blockcanary/ui/DisplayActivity$1;-><init>(Lcom/github/moduth/blockcanary/ui/DisplayActivity;Lcom/github/moduth/blockcanary/ui/BlockInfoEx;)V

    .line 153
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 160
    sget v1, Lcom/github/moduth/blockcanary/R$string;->block_canary_share_stack_dump:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/github/moduth/blockcanary/ui/DisplayActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/github/moduth/blockcanary/ui/DisplayActivity$2;-><init>(Lcom/github/moduth/blockcanary/ui/DisplayActivity;Lcom/github/moduth/blockcanary/ui/BlockInfoEx;)V

    .line 161
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 168
    const/4 v1, 0x1

    .line 170
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 145
    invoke-static {}, Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;->forgetActivity()V

    .line 146
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 175
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->mBlockStartTime:Ljava/lang/String;

    .line 177
    invoke-direct {p0}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->updateUi()V

    .line 179
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 128
    invoke-static {p0}, Lcom/github/moduth/blockcanary/ui/DisplayActivity$LoadBlocks;->load(Lcom/github/moduth/blockcanary/ui/DisplayActivity;)V

    .line 129
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->mBlockInfoEntries:Ljava/util/List;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 122
    const-string v0, "BlockStartTime"

    iget-object v1, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->mBlockStartTime:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public setTheme(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 136
    sget v0, Lcom/github/moduth/blockcanary/R$style;->block_canary_BlockCanary_Base:I

    if-eq p1, v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0
.end method
