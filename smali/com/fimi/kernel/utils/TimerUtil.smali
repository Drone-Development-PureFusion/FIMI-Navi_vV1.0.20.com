.class public Lcom/fimi/kernel/utils/TimerUtil;
.super Ljava/lang/Object;
.source "TimerUtil.java"


# static fields
.field private static volatile timerUtil:Lcom/fimi/kernel/utils/TimerUtil;


# instance fields
.field private mFormatBuilder:Ljava/lang/StringBuilder;

.field private mFormatter:Ljava/util/Formatter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/fimi/kernel/utils/TimerUtil;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/fimi/kernel/utils/TimerUtil;->timerUtil:Lcom/fimi/kernel/utils/TimerUtil;

    if-nez v0, :cond_1

    .line 13
    const-class v1, Lcom/fimi/kernel/utils/TimerUtil;

    monitor-enter v1

    .line 14
    :try_start_0
    sget-object v0, Lcom/fimi/kernel/utils/TimerUtil;->timerUtil:Lcom/fimi/kernel/utils/TimerUtil;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/fimi/kernel/utils/TimerUtil;

    invoke-direct {v0}, Lcom/fimi/kernel/utils/TimerUtil;-><init>()V

    sput-object v0, Lcom/fimi/kernel/utils/TimerUtil;->timerUtil:Lcom/fimi/kernel/utils/TimerUtil;

    .line 17
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_1
    sget-object v0, Lcom/fimi/kernel/utils/TimerUtil;->timerUtil:Lcom/fimi/kernel/utils/TimerUtil;

    return-object v0

    .line 17
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public stringForTime(I)Ljava/lang/String;
    .locals 9
    .param p1, "totalSeconds"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v3, p0, Lcom/fimi/kernel/utils/TimerUtil;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 49
    new-instance v3, Ljava/util/Formatter;

    iget-object v4, p0, Lcom/fimi/kernel/utils/TimerUtil;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v3, p0, Lcom/fimi/kernel/utils/TimerUtil;->mFormatter:Ljava/util/Formatter;

    .line 50
    div-int/lit16 p1, p1, 0x3e8

    .line 51
    rem-int/lit8 v2, p1, 0x3c

    .line 52
    .local v2, "seconds":I
    div-int/lit8 v3, p1, 0x3c

    rem-int/lit8 v1, v3, 0x3c

    .line 53
    .local v1, "minutes":I
    div-int/lit16 v0, p1, 0xe10

    .line 54
    .local v0, "hours":I
    iget-object v3, p0, Lcom/fimi/kernel/utils/TimerUtil;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 55
    if-lez v0, :cond_0

    .line 56
    iget-object v3, p0, Lcom/fimi/kernel/utils/TimerUtil;->mFormatter:Ljava/util/Formatter;

    const-string v4, "%d h %2d min"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    .line 58
    :goto_0
    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/fimi/kernel/utils/TimerUtil;->mFormatter:Ljava/util/Formatter;

    const-string v4, "%2d min %2d s"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public stringForTime(IZ)Ljava/lang/String;
    .locals 11
    .param p1, "timeMs"    # I
    .param p2, "isMs"    # Z

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v4, p0, Lcom/fimi/kernel/utils/TimerUtil;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 28
    new-instance v4, Ljava/util/Formatter;

    iget-object v5, p0, Lcom/fimi/kernel/utils/TimerUtil;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v4, p0, Lcom/fimi/kernel/utils/TimerUtil;->mFormatter:Ljava/util/Formatter;

    .line 30
    if-eqz p2, :cond_0

    .line 31
    move v3, p1

    .line 36
    .local v3, "totalSeconds":I
    :goto_0
    rem-int/lit8 v2, v3, 0x3c

    .line 37
    .local v2, "seconds":I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 38
    .local v1, "minutes":I
    div-int/lit16 v0, v3, 0xe10

    .line 39
    .local v0, "hours":I
    iget-object v4, p0, Lcom/fimi/kernel/utils/TimerUtil;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 40
    if-lez v0, :cond_1

    .line 41
    iget-object v4, p0, Lcom/fimi/kernel/utils/TimerUtil;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 43
    :goto_1
    return-object v4

    .line 34
    .end local v0    # "hours":I
    .end local v1    # "minutes":I
    .end local v2    # "seconds":I
    .end local v3    # "totalSeconds":I
    :cond_0
    int-to-float v4, p1

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->intValue()I

    move-result v3

    .restart local v3    # "totalSeconds":I
    goto :goto_0

    .line 43
    .restart local v0    # "hours":I
    .restart local v1    # "minutes":I
    .restart local v2    # "seconds":I
    :cond_1
    iget-object v4, p0, Lcom/fimi/kernel/utils/TimerUtil;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method
