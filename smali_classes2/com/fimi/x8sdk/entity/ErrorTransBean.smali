.class public Lcom/fimi/x8sdk/entity/ErrorTransBean;
.super Ljava/lang/Object;
.source "ErrorTransBean.java"


# static fields
.field public static final X8_LANGUAGE_CHINESE:I = 0x0

.field public static final X8_LANGUAGE_ENGLISH:I = 0x1

.field private static instance:Lcom/fimi/x8sdk/entity/ErrorTransBean;


# instance fields
.field private final X8_CHINESE_TRANS_FILE_PATH:Ljava/lang/String;

.field private final X8_ENGLISH_TRANS_FILE_PATH:Ljava/lang/String;

.field private final X8_ROOT_PATH:Ljava/lang/String;

.field private chineseMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private englishMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/fimi/x8sdk/entity/ErrorTransBean;->instance:Lcom/fimi/x8sdk/entity/ErrorTransBean;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/x8sdk/entity/ErrorTransBean;->X8_ROOT_PATH:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fimi/x8sdk/entity/ErrorTransBean;->X8_ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cn.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/x8sdk/entity/ErrorTransBean;->X8_CHINESE_TRANS_FILE_PATH:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fimi/x8sdk/entity/ErrorTransBean;->X8_ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "en.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/x8sdk/entity/ErrorTransBean;->X8_ENGLISH_TRANS_FILE_PATH:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/entity/ErrorTransBean;->chineseMap:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/entity/ErrorTransBean;->englishMap:Ljava/util/HashMap;

    .line 33
    return-void
.end method

.method public static getInstance()Lcom/fimi/x8sdk/entity/ErrorTransBean;
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/fimi/x8sdk/entity/ErrorTransBean;->instance:Lcom/fimi/x8sdk/entity/ErrorTransBean;

    if-nez v0, :cond_1

    .line 37
    const-class v1, Lcom/fimi/x8sdk/entity/ErrorTransBean;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lcom/fimi/x8sdk/entity/ErrorTransBean;->instance:Lcom/fimi/x8sdk/entity/ErrorTransBean;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/fimi/x8sdk/entity/ErrorTransBean;

    invoke-direct {v0}, Lcom/fimi/x8sdk/entity/ErrorTransBean;-><init>()V

    sput-object v0, Lcom/fimi/x8sdk/entity/ErrorTransBean;->instance:Lcom/fimi/x8sdk/entity/ErrorTransBean;

    monitor-exit v1

    .line 43
    :goto_0
    return-object v0

    .line 41
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_1
    sget-object v0, Lcom/fimi/x8sdk/entity/ErrorTransBean;->instance:Lcom/fimi/x8sdk/entity/ErrorTransBean;

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private parseFileToMap(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 7
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "map"    # Ljava/util/HashMap;

    .prologue
    const/4 v6, 0x3

    .line 83
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 87
    .local v0, "bf":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 88
    .local v3, "s":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 89
    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "result":[Ljava/lang/String;
    array-length v4, v2

    if-lt v4, v6, :cond_2

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/entity/ErrorTransBean;->stringToInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "index":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v5, v2, v5

    invoke-virtual {p2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 95
    .end local v0    # "bf":Ljava/io/BufferedReader;
    .end local v1    # "index":I
    .end local v2    # "result":[Ljava/lang/String;
    .end local v3    # "s":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private stringToInt(Ljava/lang/String;)I
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    :goto_0
    return v1

    .line 105
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 106
    .local v1, "i":I
    goto :goto_0

    .line 107
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public getString(II)Ljava/lang/String;
    .locals 2
    .param p1, "language"    # I
    .param p2, "code"    # I

    .prologue
    .line 68
    packed-switch p1, :pswitch_data_0

    .line 77
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 70
    :pswitch_0
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/ErrorTransBean;->chineseMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 74
    :pswitch_1
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/ErrorTransBean;->englishMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public parse()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/ErrorTransBean;->X8_CHINESE_TRANS_FILE_PATH:Ljava/lang/String;

    iget-object v1, p0, Lcom/fimi/x8sdk/entity/ErrorTransBean;->chineseMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1}, Lcom/fimi/x8sdk/entity/ErrorTransBean;->parseFileToMap(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 50
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/ErrorTransBean;->X8_ENGLISH_TRANS_FILE_PATH:Ljava/lang/String;

    iget-object v1, p0, Lcom/fimi/x8sdk/entity/ErrorTransBean;->englishMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1}, Lcom/fimi/x8sdk/entity/ErrorTransBean;->parseFileToMap(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 57
    return-void
.end method
