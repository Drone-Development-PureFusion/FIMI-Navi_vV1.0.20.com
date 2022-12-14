.class final Lcom/twitter/sdk/android/tweetui/TweetDateUtils;
.super Ljava/lang/Object;
.source "TweetDateUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetui/TweetDateUtils$DateFormatter;
    }
.end annotation


# static fields
.field static final DATE_TIME_RFC822:Ljava/text/SimpleDateFormat;

.field static final INVALID_DATE:J = -0x1L

.field static final RELATIVE_DATE_FORMAT:Lcom/twitter/sdk/android/tweetui/TweetDateUtils$DateFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE MMM dd HH:mm:ss Z yyyy"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/twitter/sdk/android/tweetui/TweetDateUtils;->DATE_TIME_RFC822:Ljava/text/SimpleDateFormat;

    .line 37
    new-instance v0, Lcom/twitter/sdk/android/tweetui/TweetDateUtils$DateFormatter;

    invoke-direct {v0}, Lcom/twitter/sdk/android/tweetui/TweetDateUtils$DateFormatter;-><init>()V

    sput-object v0, Lcom/twitter/sdk/android/tweetui/TweetDateUtils;->RELATIVE_DATE_FORMAT:Lcom/twitter/sdk/android/tweetui/TweetDateUtils$DateFormatter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apiTimeToLong(Ljava/lang/String;)J
    .locals 4
    .param p0, "apiTime"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, -0x1

    .line 43
    if-nez p0, :cond_0

    .line 48
    :goto_0
    return-wide v2

    .line 46
    :cond_0
    :try_start_0
    sget-object v1, Lcom/twitter/sdk/android/tweetui/TweetDateUtils;->DATE_TIME_RFC822:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/text/ParseException;
    goto :goto_0
.end method

.method static dotPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "timestamp"    # Ljava/lang/String;

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2022 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getRelativeTimeString(Landroid/content/res/Resources;JJ)Ljava/lang/String;
    .locals 15
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "currentTimeMillis"    # J
    .param p3, "timestamp"    # J

    .prologue
    .line 74
    sub-long v4, p1, p3

    .line 75
    .local v4, "diff":J
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-ltz v10, :cond_4

    .line 76
    const-wide/32 v10, 0xea60

    cmp-long v10, v4, v10

    if-gez v10, :cond_0

    .line 77
    const-wide/16 v10, 0x3e8

    div-long v10, v4, v10

    long-to-int v9, v10

    .line 78
    .local v9, "secs":I
    sget v10, Lcom/twitter/sdk/android/tweetui/R$plurals;->tw__time_secs:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v9, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 101
    .end local v9    # "secs":I
    :goto_0
    return-object v10

    .line 79
    :cond_0
    const-wide/32 v10, 0x36ee80

    cmp-long v10, v4, v10

    if-gez v10, :cond_1

    .line 80
    const-wide/32 v10, 0xea60

    div-long v10, v4, v10

    long-to-int v7, v10

    .line 81
    .local v7, "mins":I
    sget v10, Lcom/twitter/sdk/android/tweetui/R$plurals;->tw__time_mins:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v7, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 82
    .end local v7    # "mins":I
    :cond_1
    const-wide/32 v10, 0x5265c00

    cmp-long v10, v4, v10

    if-gez v10, :cond_2

    .line 83
    const-wide/32 v10, 0x36ee80

    div-long v10, v4, v10

    long-to-int v6, v10

    .line 84
    .local v6, "hours":I
    sget v10, Lcom/twitter/sdk/android/tweetui/R$plurals;->tw__time_hours:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v6, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 86
    .end local v6    # "hours":I
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 87
    .local v8, "now":Ljava/util/Calendar;
    move-wide/from16 v0, p1

    invoke-virtual {v8, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 88
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 89
    .local v2, "c":Ljava/util/Calendar;
    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 90
    new-instance v3, Ljava/util/Date;

    move-wide/from16 v0, p3

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 92
    .local v3, "d":Ljava/util/Date;
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    if-ne v10, v11, :cond_3

    .line 94
    sget-object v10, Lcom/twitter/sdk/android/tweetui/TweetDateUtils;->RELATIVE_DATE_FORMAT:Lcom/twitter/sdk/android/tweetui/TweetDateUtils$DateFormatter;

    invoke-virtual {v10, p0, v3}, Lcom/twitter/sdk/android/tweetui/TweetDateUtils$DateFormatter;->formatShortDateString(Landroid/content/res/Resources;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 97
    :cond_3
    sget-object v10, Lcom/twitter/sdk/android/tweetui/TweetDateUtils;->RELATIVE_DATE_FORMAT:Lcom/twitter/sdk/android/tweetui/TweetDateUtils$DateFormatter;

    invoke-virtual {v10, p0, v3}, Lcom/twitter/sdk/android/tweetui/TweetDateUtils$DateFormatter;->formatLongDateString(Landroid/content/res/Resources;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 101
    .end local v2    # "c":Ljava/util/Calendar;
    .end local v3    # "d":Ljava/util/Date;
    .end local v8    # "now":Ljava/util/Calendar;
    :cond_4
    sget-object v10, Lcom/twitter/sdk/android/tweetui/TweetDateUtils;->RELATIVE_DATE_FORMAT:Lcom/twitter/sdk/android/tweetui/TweetDateUtils$DateFormatter;

    new-instance v11, Ljava/util/Date;

    move-wide/from16 v0, p3

    invoke-direct {v11, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, p0, v11}, Lcom/twitter/sdk/android/tweetui/TweetDateUtils$DateFormatter;->formatLongDateString(Landroid/content/res/Resources;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0
.end method

.method static isValidTimestamp(Ljava/lang/String;)Z
    .locals 4
    .param p0, "timestamp"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p0}, Lcom/twitter/sdk/android/tweetui/TweetDateUtils;->apiTimeToLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
