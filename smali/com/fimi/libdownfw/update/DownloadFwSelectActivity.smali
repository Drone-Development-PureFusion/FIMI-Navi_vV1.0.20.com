.class public Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;
.super Lcom/fimi/kernel/base/BaseActivity;
.source "DownloadFwSelectActivity.java"

# interfaces
.implements Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter$SelectListener;


# instance fields
.field private btnDown:Landroid/widget/Button;

.field private btnReturn:Landroid/widget/ImageView;

.field currTime:J

.field private infoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/host/Entity/DownloadFwSelectInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isFirstDown:Z

.field private lvSelectFw:Landroid/widget/ListView;

.field private mUpfirewareDtoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/network/entity/UpfirewareDto;",
            ">;"
        }
    .end annotation
.end field

.field private selectAdapter:Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter;

.field private tvHardWareSize:Landroid/widget/TextView;

.field private tv_title:Landroid/view/View;

.field private tv_title2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/fimi/kernel/base/BaseActivity;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->infoList:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->mUpfirewareDtoList:Ljava/util/List;

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->currTime:J

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->isFirstDown:Z

    return-void
.end method

.method static synthetic access$000(Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->isFirstDown:Z

    return v0
.end method

.method static synthetic access$002(Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->isFirstDown:Z

    return p1
.end method

.method static synthetic access$100(Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->startDownLoad()V

    return-void
.end method

.method private startDownLoad()V
    .locals 5

    .prologue
    .line 130
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v2, "mSelectList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/host/Entity/DownloadFwSelectInfo;>;"
    iget-object v3, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->infoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/host/Entity/DownloadFwSelectInfo;

    .line 133
    .local v0, "info":Lcom/fimi/host/Entity/DownloadFwSelectInfo;
    invoke-virtual {v0}, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->isSelect()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    .end local v0    # "info":Lcom/fimi/host/Entity/DownloadFwSelectInfo;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 137
    const/4 v3, 0x0

    invoke-static {v3, v2}, Lcom/fimi/host/HostConstants;->getNeedDownFw(ZLjava/util/List;)Ljava/util/List;

    .line 138
    const-string v3, "listDownloadFwSelectInfo"

    check-cast v2, Ljava/io/Serializable;

    .end local v2    # "mSelectList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/host/Entity/DownloadFwSelectInfo;>;"
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0, v1}, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->startActivity(Landroid/content/Intent;)V

    .line 140
    invoke-virtual {p0}, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->finish()V

    .line 142
    :cond_2
    return-void
.end method


# virtual methods
.method public doTrans()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->btnReturn:Landroid/widget/ImageView;

    new-instance v1, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$1;

    invoke-direct {v1, p0}, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$1;-><init>(Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->btnDown:Landroid/widget/Button;

    new-instance v1, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$2;

    invoke-direct {v1, p0}, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$2;-><init>(Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->lvSelectFw:Landroid/widget/ListView;

    new-instance v1, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$3;

    invoke-direct {v1, p0}, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$3;-><init>(Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 123
    return-void
.end method

.method protected getContentViewLayoutID()I
    .locals 1

    .prologue
    .line 146
    sget v0, Lcom/fimi/libdownfw/R$layout;->activity_download_fw_select:I

    return v0
.end method

.method public initData()V
    .locals 4

    .prologue
    .line 55
    sget v0, Lcom/fimi/libdownfw/R$id;->iv_return:I

    invoke-virtual {p0, v0}, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->btnReturn:Landroid/widget/ImageView;

    .line 56
    sget v0, Lcom/fimi/libdownfw/R$id;->btn_down:I

    invoke-virtual {p0, v0}, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->btnDown:Landroid/widget/Button;

    .line 57
    sget v0, Lcom/fimi/libdownfw/R$id;->lv_select_fw:I

    invoke-virtual {p0, v0}, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->lvSelectFw:Landroid/widget/ListView;

    .line 58
    sget v0, Lcom/fimi/libdownfw/R$id;->tv_hardSize:I

    invoke-virtual {p0, v0}, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->tvHardWareSize:Landroid/widget/TextView;

    .line 59
    sget v0, Lcom/fimi/libdownfw/R$id;->tv_title2:I

    invoke-virtual {p0, v0}, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->tv_title2:Landroid/widget/TextView;

    .line 60
    sget v0, Lcom/fimi/libdownfw/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->tv_title:Landroid/view/View;

    .line 63
    invoke-virtual {p0}, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->initValue()V

    .line 64
    new-instance v0, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter;

    iget-object v1, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->infoList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->selectAdapter:Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter;

    .line 65
    iget-object v0, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->selectAdapter:Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter;

    invoke-virtual {v0, p0}, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter;->setSelectListener(Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter$SelectListener;)V

    .line 66
    iget-object v0, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->lvSelectFw:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->selectAdapter:Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->currTime:J

    .line 70
    invoke-virtual {p0}, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->tvHardWareSize:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->tv_title2:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->tv_title:Landroid/view/View;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/FontUtil;->changeFontLanTing(Landroid/content/res/AssetManager;[Landroid/view/View;)V

    .line 72
    return-void
.end method

.method public initValue()V
    .locals 5

    .prologue
    .line 151
    invoke-static {}, Lcom/fimi/host/HostConstants;->getDownloadFwSelectInfoList()Ljava/util/List;

    move-result-object v1

    .line 152
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/host/Entity/DownloadFwSelectInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/host/Entity/DownloadFwSelectInfo;

    .line 153
    .local v0, "info":Lcom/fimi/host/Entity/DownloadFwSelectInfo;
    invoke-virtual {v0}, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->hasData()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    sget-object v3, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$4;->$SwitchMap$com$fimi$host$common$ProductEnum:[I

    invoke-virtual {v0}, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->getProduct()Lcom/fimi/host/common/ProductEnum;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/host/common/ProductEnum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 173
    :goto_1
    iget-object v3, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->infoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    :pswitch_0
    iget-object v3, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->tv_title2:Landroid/widget/TextView;

    sget v4, Lcom/fimi/libdownfw/R$string;->downfw_device_hand_gimbal:I

    invoke-virtual {p0, v4}, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 162
    :pswitch_1
    iget-object v3, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->tv_title2:Landroid/widget/TextView;

    sget v4, Lcom/fimi/libdownfw/R$string;->downfw_device_x9:I

    invoke-virtual {p0, v4}, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :pswitch_2
    iget-object v3, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->tv_title2:Landroid/widget/TextView;

    sget v4, Lcom/fimi/libdownfw/R$string;->downfw_device_fimiapp:I

    invoke-virtual {p0, v4}, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 170
    :pswitch_3
    iget-object v3, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->tv_title2:Landroid/widget/TextView;

    sget v4, Lcom/fimi/libdownfw/R$string;->downfw_device_fimiapp:I

    invoke-virtual {p0, v4}, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 176
    .end local v0    # "info":Lcom/fimi/host/Entity/DownloadFwSelectInfo;
    :cond_1
    return-void

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isDSNSuceess()Z
    .locals 4

    .prologue
    .line 218
    const/4 v1, 0x0

    .line 219
    .local v1, "ret":Z
    new-instance v0, Lcom/fimi/kernel/utils/DNSLookupThread;

    const-string/jumbo v2, "www.baidu.com"

    invoke-direct {v0, v2}, Lcom/fimi/kernel/utils/DNSLookupThread;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, "dnsTh":Lcom/fimi/kernel/utils/DNSLookupThread;
    invoke-virtual {v0}, Lcom/fimi/kernel/utils/DNSLookupThread;->start()V

    .line 222
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-virtual {v0, v2, v3}, Lcom/fimi/kernel/utils/DNSLookupThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_0
    invoke-virtual {v0}, Lcom/fimi/kernel/utils/DNSLookupThread;->getIP()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 227
    const/4 v1, 0x1

    .line 229
    :cond_0
    return v1

    .line 223
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 214
    invoke-super {p0}, Lcom/fimi/kernel/base/BaseActivity;->onBackPressed()V

    .line 215
    return-void
.end method

.method public onSelect(Z)V
    .locals 14
    .param p1, "b"    # Z

    .prologue
    .line 180
    if-eqz p1, :cond_3

    .line 181
    iget-object v7, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->btnDown:Landroid/widget/Button;

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 184
    invoke-static {}, Lcom/fimi/host/HostConstants;->getNeedDownFw()Ljava/util/List;

    move-result-object v5

    .line 185
    .local v5, "mList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 186
    const-wide/16 v8, 0x0

    .line 187
    .local v8, "totalSize":J
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/network/entity/UpfirewareDto;

    .line 188
    .local v3, "info":Lcom/fimi/network/entity/UpfirewareDto;
    iget-object v10, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->infoList:Ljava/util/List;

    invoke-static {v3, v10}, Lcom/fimi/host/HostConstants;->iteratorProductSelectList(Lcom/fimi/network/entity/UpfirewareDto;Ljava/util/List;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 189
    invoke-interface {v5, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    .end local v3    # "info":Lcom/fimi/network/entity/UpfirewareDto;
    :cond_1
    const/4 v4, 0x0

    .local v4, "m":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 193
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/network/entity/UpfirewareDto;

    .line 194
    .local v2, "dto":Lcom/fimi/network/entity/UpfirewareDto;
    invoke-virtual {v2}, Lcom/fimi/network/entity/UpfirewareDto;->getFileSize()J

    move-result-wide v10

    add-long/2addr v8, v10

    .line 195
    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_2

    .line 196
    long-to-double v10, v8

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    div-double v0, v10, v12

    .line 197
    .local v0, "allFileSizeM":D
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x2

    invoke-static {v0, v1, v10}, Lcom/fimi/kernel/utils/NumberUtil;->decimalPointStr(DI)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "M"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 198
    .local v6, "tempString":Ljava/lang/String;
    iget-object v7, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->tvHardWareSize:Landroid/widget/TextView;

    sget v10, Lcom/fimi/libdownfw/R$string;->downfw_update_firmware_detail:I

    invoke-virtual {p0, v10}, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v7, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->tvHardWareSize:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    .end local v0    # "allFileSizeM":D
    .end local v6    # "tempString":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 204
    .end local v2    # "dto":Lcom/fimi/network/entity/UpfirewareDto;
    .end local v4    # "m":I
    .end local v5    # "mList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    .end local v8    # "totalSize":J
    :cond_3
    iget-object v7, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->btnDown:Landroid/widget/Button;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 205
    iget-object v7, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->tvHardWareSize:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    :cond_4
    return-void
.end method

.method protected setStatusBarColor()V
    .locals 0

    .prologue
    .line 236
    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->StatusBarLightMode(Landroid/app/Activity;)I

    .line 237
    return-void
.end method
