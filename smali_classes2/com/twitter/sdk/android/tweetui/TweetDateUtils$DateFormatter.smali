.class Lcom/twitter/sdk/android/tweetui/TweetDateUtils$DateFormatter;
.super Ljava/lang/Object;
.source "TweetDateUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/TweetDateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DateFormatter"
.end annotation


# instance fields
.field private currentLocale:Ljava/util/Locale;

.field private final dateFormatArray:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetDateUtils$DateFormatter;->dateFormatArray:Landroid/support/v4/util/SparseArrayCompat;

    return-void
.end method

.method private declared-synchronized getDateFormat(Landroid/content/res/Resources;I)Ljava/text/DateFormat;
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "patternId"    # I

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/TweetDateUtils$DateFormatter;->currentLocale:Ljava/util/Locale;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/TweetDateUtils$DateFormatter;->currentLocale:Ljava/util/Locale;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eq v2, v3, :cond_1

    .line 121
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, p0, Lcom/twitter/sdk/android/tweetui/TweetDateUtils$DateFormatter;->currentLocale:Ljava/util/Locale;

    .line 122
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/TweetDateUtils$DateFormatter;->dateFormatArray:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 125
    :cond_1
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/TweetDateUtils$DateFormatter;->dateFormatArray:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, p2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 126
    .local v0, "format":Ljava/text/SimpleDateFormat;
    if-nez v0, :cond_2

    .line 128
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "pattern":Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    .end local v0    # "format":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 130
    .restart local v0    # "format":Ljava/text/SimpleDateFormat;
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/TweetDateUtils$DateFormatter;->dateFormatArray:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, p2, v0}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .end local v1    # "pattern":Ljava/lang/String;
    :cond_2
    monitor-exit p0

    return-object v0

    .line 120
    .end local v0    # "format":Ljava/text/SimpleDateFormat;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method declared-synchronized formatLongDateString(Landroid/content/res/Resources;Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "date"    # Ljava/util/Date;

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/twitter/sdk/android/tweetui/R$string;->tw__relative_date_format_long:I

    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/tweetui/TweetDateUtils$DateFormatter;->getDateFormat(Landroid/content/res/Resources;I)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized formatShortDateString(Landroid/content/res/Resources;Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "date"    # Ljava/util/Date;

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/twitter/sdk/android/tweetui/R$string;->tw__relative_date_format_short:I

    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/tweetui/TweetDateUtils$DateFormatter;->getDateFormat(Landroid/content/res/Resources;I)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
