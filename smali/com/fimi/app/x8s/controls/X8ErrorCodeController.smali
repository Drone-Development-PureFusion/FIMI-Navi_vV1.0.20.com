.class public Lcom/fimi/app/x8s/controls/X8ErrorCodeController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;
.source "X8ErrorCodeController.java"


# instance fields
.field private bean:Lcom/fimi/x8sdk/entity/ErrorCodeBean;

.field public currentMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;",
            ">;"
        }
    .end annotation
.end field

.field private errCodeDesc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private errorCodeLayout:Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;

.field private isGetData:Z

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mX8ErrerCodeSpeakFlashManager:Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;

.field private mediumMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;",
            ">;"
        }
    .end annotation
.end field

.field private seriousMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;-><init>(Landroid/view/View;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->seriousMap:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->mediumMap:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->currentMap:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->errCodeDesc:Ljava/util/Map;

    .line 53
    return-void
.end method

.method private checkConditionValueBeans(Ljava/util/List;Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConditionValuesBean;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 459
    .local p1, "conditionValues":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConditionValuesBean;>;"
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 460
    .local v6, "size":I
    const/4 v4, 0x0

    .line 461
    .local v4, "k":I
    const/4 v0, 0x0

    .line 462
    .local v0, "b":Z
    const/4 v3, 0x0

    .line 463
    .local v3, "isEqual":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConditionValuesBean;

    .line 464
    .local v5, "m":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConditionValuesBean;
    invoke-virtual {v5}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConditionValuesBean;->isEqual()Z

    move-result v3

    .line 466
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 467
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;

    .line 468
    .local v1, "c":Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;
    if-eqz v3, :cond_3

    .line 469
    invoke-virtual {v1}, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;->getType()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->getErrorType(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConditionValuesBean;->getGroupID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 470
    invoke-virtual {v5}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConditionValuesBean;->getValue()I

    move-result v8

    invoke-virtual {v1}, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;->getIndex()I

    move-result v9

    if-ne v8, v9, :cond_2

    const/4 v0, 0x1

    .line 471
    :goto_1
    if-eqz v0, :cond_1

    .line 472
    add-int/lit8 v4, v4, 0x1

    .line 466
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 470
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 476
    :cond_3
    invoke-virtual {v1}, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;->getType()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->getErrorType(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConditionValuesBean;->getGroupID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 479
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 485
    .end local v1    # "c":Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;
    .end local v2    # "i":I
    .end local v5    # "m":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConditionValuesBean;
    :cond_4
    const/4 v0, 0x0

    .line 486
    if-ne v4, v6, :cond_5

    .line 487
    const/4 v0, 0x1

    .line 489
    :cond_5
    return v0
.end method

.method private getErrorType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 306
    packed-switch p1, :pswitch_data_0

    .line 331
    const-string v0, ""

    :goto_0
    return-object v0

    .line 308
    :pswitch_0
    const-string v0, "FCS-A"

    goto :goto_0

    .line 312
    :pswitch_1
    const-string v0, "FCS-B"

    goto :goto_0

    .line 316
    :pswitch_2
    const-string v0, "FCS-C"

    goto :goto_0

    .line 319
    :pswitch_3
    const-string v0, "MTC"

    goto :goto_0

    .line 322
    :pswitch_4
    const-string v0, "ATC"

    goto :goto_0

    .line 325
    :pswitch_5
    const-string v0, "RCS"

    goto :goto_0

    .line 328
    :pswitch_6
    const-string v0, "NFZS"

    goto :goto_0

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getLocalError()Lcom/fimi/x8sdk/entity/ErrorCodeBean;
    .locals 5

    .prologue
    .line 289
    const/4 v2, 0x0

    .line 291
    .local v2, "jsonStr":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "Alarms.json"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/fimi/kernel/utils/FileUtil;->fileToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 295
    :goto_0
    if-eqz v2, :cond_0

    .line 296
    const-class v3, Lcom/fimi/x8sdk/entity/ErrorCodeBean;

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/x8sdk/entity/ErrorCodeBean;

    .line 297
    .local v1, "errorCodeBean":Lcom/fimi/x8sdk/entity/ErrorCodeBean;
    if-eqz v1, :cond_0

    .line 301
    .end local v1    # "errorCodeBean":Lcom/fimi/x8sdk/entity/ErrorCodeBean;
    :goto_1
    return-object v1

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 301
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private initErrCodeDes()V
    .locals 13

    .prologue
    .line 82
    invoke-static {}, Lcom/fimi/kernel/GlobalConfig;->getInstance()Lcom/fimi/kernel/GlobalConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/fimi/kernel/GlobalConfig;->getLanguageModel()Lcom/fimi/kernel/language/LanguageModel;

    move-result-object v7

    .line 83
    .local v7, "model":Lcom/fimi/kernel/language/LanguageModel;
    const/4 v3, 0x0

    .line 84
    .local v3, "inputStream":Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 85
    .local v0, "bufr":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 87
    .local v6, "line":Ljava/lang/String;
    :try_start_0
    const-string v10, "cn"

    invoke-virtual {v7}, Lcom/fimi/kernel/language/LanguageModel;->getInternalCoutry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 88
    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v10, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->rootView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string/jumbo v11, "zh.txt"

    invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .end local v3    # "inputStream":Ljava/io/InputStreamReader;
    .local v4, "inputStream":Ljava/io/InputStreamReader;
    move-object v3, v4

    .line 96
    .end local v4    # "inputStream":Ljava/io/InputStreamReader;
    .restart local v3    # "inputStream":Ljava/io/InputStreamReader;
    :goto_0
    const-string v8, "(\\d+)\\s*=\\s*(.*)\\s*"

    .line 97
    .local v8, "regex":Ljava/lang/String;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .end local v0    # "bufr":Ljava/io/BufferedReader;
    .local v1, "bufr":Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 99
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 102
    invoke-virtual {v6, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 103
    const/4 v10, 0x0

    const-string v11, "="

    invoke-virtual {v6, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 104
    .local v5, "key":I
    const-string v10, "="

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v11, "\""

    const-string v12, ""

    .line 105
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ";"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 106
    .local v9, "value":Ljava/lang/String;
    iget-object v10, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->errCodeDesc:Ljava/util/Map;

    if-nez v10, :cond_1

    .line 107
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->errCodeDesc:Ljava/util/Map;

    .line 109
    :cond_1
    iget-object v10, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->errCodeDesc:Ljava/util/Map;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 115
    .end local v5    # "key":I
    .end local v9    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 116
    .end local v1    # "bufr":Ljava/io/BufferedReader;
    .end local v8    # "regex":Ljava/lang/String;
    .restart local v0    # "bufr":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    if-eqz v3, :cond_2

    .line 119
    invoke-static {v3}, Lcom/fimi/kernel/animutils/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 121
    :cond_2
    if-eqz v0, :cond_3

    .line 122
    invoke-static {v0}, Lcom/fimi/kernel/animutils/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 125
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    :goto_3
    return-void

    .line 89
    :cond_4
    :try_start_3
    const-string v10, "ko"

    invoke-virtual {v7}, Lcom/fimi/kernel/language/LanguageModel;->getInternalCoutry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 90
    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v10, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->rootView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string v11, "ko.txt"

    invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .end local v3    # "inputStream":Ljava/io/InputStreamReader;
    .restart local v4    # "inputStream":Ljava/io/InputStreamReader;
    move-object v3, v4

    .end local v4    # "inputStream":Ljava/io/InputStreamReader;
    .restart local v3    # "inputStream":Ljava/io/InputStreamReader;
    goto/16 :goto_0

    .line 91
    :cond_5
    const-string v10, "es"

    invoke-virtual {v7}, Lcom/fimi/kernel/language/LanguageModel;->getInternalCoutry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 92
    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v10, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->rootView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string v11, "es.txt"

    invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .end local v3    # "inputStream":Ljava/io/InputStreamReader;
    .restart local v4    # "inputStream":Ljava/io/InputStreamReader;
    move-object v3, v4

    .end local v4    # "inputStream":Ljava/io/InputStreamReader;
    .restart local v3    # "inputStream":Ljava/io/InputStreamReader;
    goto/16 :goto_0

    .line 94
    :cond_6
    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v10, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->rootView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string v11, "en.txt"

    invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v3    # "inputStream":Ljava/io/InputStreamReader;
    .restart local v4    # "inputStream":Ljava/io/InputStreamReader;
    move-object v3, v4

    .end local v4    # "inputStream":Ljava/io/InputStreamReader;
    .restart local v3    # "inputStream":Ljava/io/InputStreamReader;
    goto/16 :goto_0

    .line 118
    .end local v0    # "bufr":Ljava/io/BufferedReader;
    .restart local v1    # "bufr":Ljava/io/BufferedReader;
    .restart local v8    # "regex":Ljava/lang/String;
    :cond_7
    if-eqz v3, :cond_8

    .line 119
    invoke-static {v3}, Lcom/fimi/kernel/animutils/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 121
    :cond_8
    if-eqz v1, :cond_b

    .line 122
    invoke-static {v1}, Lcom/fimi/kernel/animutils/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    move-object v0, v1

    .end local v1    # "bufr":Ljava/io/BufferedReader;
    .restart local v0    # "bufr":Ljava/io/BufferedReader;
    goto :goto_3

    .line 118
    .end local v8    # "regex":Ljava/lang/String;
    :catchall_0
    move-exception v10

    :goto_4
    if-eqz v3, :cond_9

    .line 119
    invoke-static {v3}, Lcom/fimi/kernel/animutils/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 121
    :cond_9
    if-eqz v0, :cond_a

    .line 122
    invoke-static {v0}, Lcom/fimi/kernel/animutils/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 124
    :cond_a
    throw v10

    .line 118
    .end local v0    # "bufr":Ljava/io/BufferedReader;
    .restart local v1    # "bufr":Ljava/io/BufferedReader;
    .restart local v8    # "regex":Ljava/lang/String;
    :catchall_1
    move-exception v10

    move-object v0, v1

    .end local v1    # "bufr":Ljava/io/BufferedReader;
    .restart local v0    # "bufr":Ljava/io/BufferedReader;
    goto :goto_4

    .line 115
    .end local v8    # "regex":Ljava/lang/String;
    :catch_1
    move-exception v2

    goto/16 :goto_2

    .end local v0    # "bufr":Ljava/io/BufferedReader;
    .restart local v1    # "bufr":Ljava/io/BufferedReader;
    .restart local v8    # "regex":Ljava/lang/String;
    :cond_b
    move-object v0, v1

    .end local v1    # "bufr":Ljava/io/BufferedReader;
    .restart local v0    # "bufr":Ljava/io/BufferedReader;
    goto/16 :goto_3
.end method


# virtual methods
.method public checkConstraintBitBeans(Ljava/util/List;Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConstraintBitBean;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 516
    .local p1, "constraintBits":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConstraintBitBean;>;"
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;>;"
    const/4 v0, 0x0

    .line 517
    .local v0, "b":Z
    const/4 v3, 0x0

    .line 518
    .local v3, "isFind":Z
    const/4 v4, 0x0

    .line 519
    .local v4, "isValue":Z
    const/4 v5, 0x0

    .line 520
    .local v5, "k":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConstraintBitBean;

    .line 521
    .local v6, "m":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConstraintBitBean;
    invoke-virtual {v6}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConstraintBitBean;->isValue()Z

    move-result v4

    .line 522
    const/4 v3, 0x0

    .line 524
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 525
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;

    .line 526
    .local v1, "c":Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;->getType()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->getErrorType(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConstraintBitBean;->getGroupID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConstraintBitBean;->getBitOffset()I

    move-result v8

    invoke-virtual {v1}, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;->getIndex()I

    move-result v9

    if-ne v8, v9, :cond_2

    .line 527
    const/4 v3, 0x1

    .line 531
    .end local v1    # "c":Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;
    :cond_1
    if-ne v4, v3, :cond_0

    .line 532
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 524
    .restart local v1    # "c":Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 535
    .end local v1    # "c":Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;
    .end local v2    # "i":I
    .end local v6    # "m":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConstraintBitBean;
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ne v5, v7, :cond_4

    .line 536
    const/4 v0, 0x1

    .line 538
    :cond_4
    return v0
.end method

.method public checkCtrlModeNotEqual(Ljava/util/List;I)Z
    .locals 4
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/ErrorCodeBean$CtrlModeBean;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 494
    .local p1, "ctrlMode":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/entity/ErrorCodeBean$CtrlModeBean;>;"
    const/4 v0, 0x1

    .line 495
    .local v0, "b":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/x8sdk/entity/ErrorCodeBean$CtrlModeBean;

    .line 496
    .local v1, "m":Lcom/fimi/x8sdk/entity/ErrorCodeBean$CtrlModeBean;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$CtrlModeBean;->getValue()I

    move-result v3

    if-ne p2, v3, :cond_0

    .line 497
    const/4 v0, 0x0

    .line 501
    .end local v1    # "m":Lcom/fimi/x8sdk/entity/ErrorCodeBean$CtrlModeBean;
    :cond_1
    return v0
.end method

.method public checkFlightPhaseNotEqual(Ljava/util/List;I)Z
    .locals 4
    .param p2, "flightPhasw"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/ErrorCodeBean$FlightPhase;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 505
    .local p1, "flightPhases":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/entity/ErrorCodeBean$FlightPhase;>;"
    const/4 v0, 0x1

    .line 506
    .local v0, "b":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/x8sdk/entity/ErrorCodeBean$FlightPhase;

    .line 507
    .local v1, "m":Lcom/fimi/x8sdk/entity/ErrorCodeBean$FlightPhase;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$FlightPhase;->getValue()I

    move-result v3

    if-ne p2, v3, :cond_0

    .line 508
    const/4 v0, 0x0

    .line 512
    .end local v1    # "m":Lcom/fimi/x8sdk/entity/ErrorCodeBean$FlightPhase;
    :cond_1
    return v0
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public getErrorCodeLayout()Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->errorCodeLayout:Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;

    return-object v0
.end method

.method public getErrorCodeString(I)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 274
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->errCodeDesc:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getErrorDesBean(Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;ZIILjava/util/List;)Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    .locals 10
    .param p1, "info"    # Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;
    .param p2, "isInSky"    # Z
    .param p3, "ctrlMode"    # I
    .param p4, "flightPhasw"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;",
            "ZII",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;",
            ">;)",
            "Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;"
        }
    .end annotation

    .prologue
    .local p5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;>;"
    const/4 v9, 0x0

    .line 377
    const/4 v1, 0x0

    .line 378
    .local v1, "b":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;>;"
    invoke-virtual {p1}, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;->getType()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->getMacthType(I)I

    move-result v4

    .line 381
    .local v4, "matchType":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    .line 382
    const/4 v6, 0x0

    move-object v2, v1

    .line 455
    .end local v1    # "b":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    .local v2, "b":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    :goto_0
    return-object v6

    .line 383
    .end local v2    # "b":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    .restart local v1    # "b":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    :cond_0
    if-nez v4, :cond_2

    .line 384
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->bean:Lcom/fimi/x8sdk/entity/ErrorCodeBean;

    invoke-virtual {v6}, Lcom/fimi/x8sdk/entity/ErrorCodeBean;->getConfigs()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;

    .line 385
    .local v0, "action":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    invoke-virtual {p1}, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;->getType()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->getErrorType(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getGroupID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getOffsetBit()I

    move-result v7

    invoke-virtual {p1}, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;->getIndex()I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 386
    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->isInFlight()Z

    move-result v7

    if-ne v7, p2, :cond_1

    .line 387
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 391
    .end local v0    # "action":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    :cond_2
    const/4 v6, 0x1

    if-ne v4, v6, :cond_4

    .line 392
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->bean:Lcom/fimi/x8sdk/entity/ErrorCodeBean;

    invoke-virtual {v6}, Lcom/fimi/x8sdk/entity/ErrorCodeBean;->getConfigs()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;

    .line 393
    .restart local v0    # "action":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    invoke-virtual {p1}, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;->getType()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->getErrorType(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getGroupID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getValue()I

    move-result v7

    invoke-virtual {p1}, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;->getValue()I

    move-result v8

    if-ne v7, v8, :cond_3

    .line 394
    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->isInFlight()Z

    move-result v7

    if-ne v7, p2, :cond_3

    .line 395
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 402
    .end local v0    # "action":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;

    .line 404
    .restart local v0    # "action":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    const/4 v3, 0x0

    .line 405
    .local v3, "isFind":Z
    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getCtrlMode()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_8

    .line 406
    const/4 v3, 0x1

    .line 407
    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getCtrlMode()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fimi/x8sdk/entity/ErrorCodeBean$CtrlModeBean;

    invoke-virtual {v6}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$CtrlModeBean;->isEqual()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 408
    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getCtrlMode()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fimi/x8sdk/entity/ErrorCodeBean$CtrlModeBean;

    invoke-virtual {v6}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$CtrlModeBean;->getValue()I

    move-result v6

    if-ne v6, p3, :cond_6

    .line 409
    move-object v1, v0

    .end local v0    # "action":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    .end local v3    # "isFind":Z
    :cond_6
    :goto_4
    move-object v2, v1

    .end local v1    # "b":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    .restart local v2    # "b":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    move-object v6, v1

    .line 455
    goto/16 :goto_0

    .line 413
    .end local v2    # "b":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    .restart local v0    # "action":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    .restart local v1    # "b":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    .restart local v3    # "isFind":Z
    :cond_7
    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getCtrlMode()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v6, p3}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->checkCtrlModeNotEqual(Ljava/util/List;I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 414
    move-object v1, v0

    goto :goto_4

    .line 420
    :cond_8
    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getFlightPhase()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_a

    .line 421
    const/4 v3, 0x1

    .line 422
    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getFlightPhase()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fimi/x8sdk/entity/ErrorCodeBean$FlightPhase;

    invoke-virtual {v6}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$FlightPhase;->isEqual()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 423
    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getFlightPhase()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fimi/x8sdk/entity/ErrorCodeBean$FlightPhase;

    invoke-virtual {v6}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$FlightPhase;->getValue()I

    move-result v6

    if-ne v6, p4, :cond_6

    .line 424
    move-object v1, v0

    goto :goto_4

    .line 428
    :cond_9
    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getFlightPhase()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v6, p4}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->checkFlightPhaseNotEqual(Ljava/util/List;I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 429
    move-object v1, v0

    goto :goto_4

    .line 435
    :cond_a
    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getConstraintBits()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_b

    .line 436
    const/4 v3, 0x1

    .line 437
    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getConstraintBits()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p0, v7, p5}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->checkConstraintBitBeans(Ljava/util/List;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 438
    move-object v1, v0

    .line 439
    goto :goto_4

    .line 443
    :cond_b
    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getConditionValues()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_c

    .line 444
    const/4 v3, 0x1

    .line 445
    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getConditionValues()Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v7, p5}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->checkConditionValueBeans(Ljava/util/List;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 446
    move-object v1, v0

    .line 447
    goto :goto_4

    .line 450
    :cond_c
    if-nez v3, :cond_5

    .line 451
    move-object v1, v0

    goto/16 :goto_3
.end method

.method public getMacthType(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 341
    const/4 v0, -0x1

    .line 342
    .local v0, "r":I
    packed-switch p1, :pswitch_data_0

    .line 372
    :goto_0
    return v0

    .line 344
    :pswitch_0
    const/4 v0, 0x0

    .line 346
    goto :goto_0

    .line 348
    :pswitch_1
    const/4 v0, 0x0

    .line 350
    goto :goto_0

    .line 352
    :pswitch_2
    const/4 v0, 0x0

    .line 354
    goto :goto_0

    .line 356
    :pswitch_3
    const/4 v0, 0x1

    .line 358
    goto :goto_0

    .line 360
    :pswitch_4
    const/4 v0, 0x1

    .line 362
    goto :goto_0

    .line 364
    :pswitch_5
    const/4 v0, 0x0

    .line 366
    goto :goto_0

    .line 368
    :pswitch_6
    const/4 v0, 0x1

    goto :goto_0

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getMediumCode()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 580
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->mediumMap:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 581
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 582
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 583
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 584
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;

    .line 585
    .local v1, "entry":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 587
    .end local v1    # "entry":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    :cond_0
    return-object v0
.end method

.method public getSeriousCode()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 569
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->seriousMap:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 570
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 571
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 572
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 573
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;

    .line 574
    .local v1, "entry":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 576
    .end local v1    # "entry":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    :cond_0
    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasErrorCode()Z
    .locals 1

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->hasSeriousCode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->hasMediumCode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMediumCode()Z
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->list:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->onErrorCode3(Ljava/util/List;)V

    .line 561
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->mediumMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMediumCode2()Z
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->mediumMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSeriousCode()Z
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->list:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->onErrorCode3(Ljava/util/List;)V

    .line 552
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->seriousMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSeriousCode2()Z
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->seriousMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initActions()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public initSpeak()V
    .locals 0

    .prologue
    .line 620
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 60
    sget v0, Lcom/fimi/app/x8s/R$id;->v_error_code:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->errorCodeLayout:Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;

    .line 63
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->getLocalError()Lcom/fimi/x8sdk/entity/ErrorCodeBean;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->bean:Lcom/fimi/x8sdk/entity/ErrorCodeBean;

    .line 64
    new-instance v0, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;-><init>(Landroid/content/Context;Lcom/fimi/app/x8s/controls/X8ErrorCodeController;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->mX8ErrerCodeSpeakFlashManager:Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;

    .line 65
    return-void
.end method

.method public isDroneStateErrorByLable(Ljava/lang/String;)Z
    .locals 6
    .param p1, "flag"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 623
    const/4 v1, 0x0

    .line 624
    .local v1, "gpsError":Z
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->seriousMap:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 625
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->seriousMap:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 626
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 627
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;

    .line 628
    .local v0, "entry":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 629
    .local v3, "lable":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v4

    .line 644
    .end local v0    # "entry":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    .end local v1    # "gpsError":Z
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;>;"
    .end local v3    # "lable":Ljava/lang/String;
    :cond_1
    :goto_0
    return v1

    .line 634
    .restart local v1    # "gpsError":Z
    :cond_2
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->mediumMap:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 635
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->mediumMap:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 636
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;>;"
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 637
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;

    .line 638
    .restart local v0    # "entry":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 639
    .restart local v3    # "lable":Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v1, v4

    .line 640
    goto :goto_0
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 543
    const/4 v0, 0x0

    return v0
.end method

.method public onDismissErrorCode()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->isGetData:Z

    .line 151
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->errorCodeLayout:Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->cleanAll()V

    .line 153
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->resetSpeakFlag1()V

    .line 154
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->resetSpeakFlag2()V

    .line 155
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->mX8ErrerCodeSpeakFlashManager:Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->disconnect()V

    .line 156
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 158
    :cond_0
    return-void
.end method

.method public onDroneConnected(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 143
    if-eqz p1, :cond_0

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->onDismissErrorCode()V

    goto :goto_0
.end method

.method public onErrorCode(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;>;"
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->isGetData:Z

    if-eqz v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 186
    :cond_0
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->list:Ljava/util/List;

    .line 187
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->errCodeDesc:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->errCodeDesc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 188
    :cond_1
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->initErrCodeDes()V

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->mX8ErrerCodeSpeakFlashManager:Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->start()V

    goto :goto_0
.end method

.method public declared-synchronized onErrorCode3(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;>;"
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->isGetData:Z

    .line 197
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 198
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->currentMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 199
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 200
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;

    .line 203
    .local v1, "info":Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isInSky()Z

    move-result v2

    .line 204
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getCtrlMode()I

    move-result v3

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getAutoFcHeart()Lcom/fimi/x8sdk/dataparser/AutoFcHeart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AutoFcHeart;->getFlightPhase()I

    move-result v4

    move-object v0, p0

    move-object v5, p1

    .line 203
    invoke-virtual/range {v0 .. v5}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->getErrorDesBean(Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;ZIILjava/util/List;)Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;

    move-result-object v6

    .line 205
    .local v6, "action":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    if-nez v6, :cond_1

    .line 199
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->currentMap:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-virtual {v6}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getSeverity()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 214
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->seriousMap:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->seriousMap:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 196
    .end local v1    # "info":Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;
    .end local v6    # "action":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    .end local v7    # "i":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 218
    .restart local v1    # "info":Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;
    .restart local v6    # "action":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    .restart local v7    # "i":I
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->mediumMap:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->mediumMap:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 223
    .end local v1    # "info":Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;
    .end local v6    # "action":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    :cond_3
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->removeSeriousDismissCode()V

    .line 224
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->removeMediumDismissCode()V

    .line 231
    .end local v7    # "i":I
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->isGetData:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    monitor-exit p0

    return-void

    .line 226
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->resetSpeakFlag1()V

    .line 227
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->resetSpeakFlag2()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public onInteruptForUdating()V
    .locals 0

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->onDismissErrorCode()V

    .line 140
    return-void
.end method

.method public removeMediumDismissCode()V
    .locals 5

    .prologue
    .line 255
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->mediumMap:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 256
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;>;"
    const/4 v2, 0x0

    .line 257
    .local v2, "isFind":Z
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 258
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;

    .line 259
    .local v0, "actionBean":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    const/4 v2, 0x0

    .line 260
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->currentMap:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 261
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->currentMap:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 262
    const/4 v2, 0x1

    .line 266
    :cond_1
    if-nez v2, :cond_0

    .line 267
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->mX8ErrerCodeSpeakFlashManager:Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;

    invoke-virtual {v4, v0}, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->removeMediumMap(Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;)V

    .line 268
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 260
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 271
    .end local v0    # "actionBean":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method public removeSeriousDismissCode()V
    .locals 5

    .prologue
    .line 236
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->seriousMap:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 237
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;>;"
    const/4 v2, 0x0

    .line 238
    .local v2, "isFind":Z
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 239
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;

    .line 240
    .local v0, "actionBean":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    const/4 v2, 0x0

    .line 241
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->currentMap:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 242
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->currentMap:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 243
    const/4 v2, 0x1

    .line 247
    :cond_1
    if-nez v2, :cond_0

    .line 248
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->mX8ErrerCodeSpeakFlashManager:Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;

    invoke-virtual {v4, v0}, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->removeSeriousMap(Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;)V

    .line 249
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 241
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 252
    .end local v0    # "actionBean":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method public resetSpeakFlag1()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 161
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->seriousMap:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;

    .line 162
    .local v0, "actionBean":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->setSpeaking(Z)V

    .line 163
    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->setVibrating(Z)V

    goto :goto_0

    .line 165
    .end local v0    # "actionBean":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->seriousMap:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 166
    return-void
.end method

.method public resetSpeakFlag2()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 170
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->mediumMap:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;

    .line 171
    .local v0, "actionBean":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->setSpeaking(Z)V

    .line 172
    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->setVibrating(Z)V

    .line 173
    invoke-static {}, Lcom/fimi/TcpClient;->getIntance()Lcom/fimi/TcpClient;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fimi/TcpClient;->sendLog(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    .end local v0    # "actionBean":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->mediumMap:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 177
    return-void
.end method

.method public runEnd(Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;)V
    .locals 3
    .param p1, "type"    # Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;

    .prologue
    .line 599
    invoke-static {}, Lcom/fimi/TcpClient;->getIntance()Lcom/fimi/TcpClient;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runEnd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/TcpClient;->sendLog(Ljava/lang/String;)V

    .line 601
    sget-object v0, Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;->serious:Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;

    if-ne v0, p1, :cond_1

    .line 602
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->errorCodeLayout:Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->cleanLevel1()V

    .line 603
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->resetSpeakFlag1()V

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    sget-object v0, Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;->medium:Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;

    if-ne v0, p1, :cond_0

    .line 606
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->errorCodeLayout:Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->cleanLevel0()V

    .line 607
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->resetSpeakFlag2()V

    goto :goto_0
.end method

.method public showTextByCode(Ljava/util/List;Lcom/fimi/app/x8s/interfaces/IX8ErrorTextIsFinishShow;)V
    .locals 2
    .param p2, "isFinishShow"    # Lcom/fimi/app/x8s/interfaces/IX8ErrorTextIsFinishShow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/app/x8s/entity/X8ErrorCode;",
            ">;",
            "Lcom/fimi/app/x8s/interfaces/IX8ErrorTextIsFinishShow;",
            ")V"
        }
    .end annotation

    .prologue
    .line 592
    .local p1, "codeList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/app/x8s/entity/X8ErrorCode;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->errorCodeLayout:Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/app/x8s/widget/X8ErrorCodeLayout;->addErrorCode(Ljava/util/List;Lcom/fimi/app/x8s/interfaces/IX8ErrorTextIsFinishShow;)V

    .line 593
    invoke-static {}, Lcom/fimi/TcpClient;->getIntance()Lcom/fimi/TcpClient;

    move-result-object v0

    const-string v1, "addErrorCode "

    invoke-virtual {v0, v1}, Lcom/fimi/TcpClient;->sendLog(Ljava/lang/String;)V

    .line 595
    return-void
.end method
