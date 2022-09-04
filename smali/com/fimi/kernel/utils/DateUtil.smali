.class public Lcom/fimi/kernel/utils/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.java"


# static fields
.field public static final AM:Ljava/lang/String; = "AM"

.field public static final PM:Ljava/lang/String; = "PM"

.field public static final dateFormatHM:Ljava/lang/String; = "HH:mm"

.field public static final dateFormatHMS:Ljava/lang/String; = "HH:mm:ss"

.field public static final dateFormatMD:Ljava/lang/String; = "MM/dd"

.field public static final dateFormatYM:Ljava/lang/String; = "yyyy-MM"

.field public static final dateFormatYMD:Ljava/lang/String; = "yyyy-MM-dd"

.field public static final dateFormatYMDHM:Ljava/lang/String; = "yyyy-MM-dd HH:mm"

.field public static final dateFormatYMDHMS:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss SSS"

.field public static final dateFormatYYMMDDHHMMSS:Ljava/lang/String; = "yyyyMMddHHmmss"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDateStr2Desc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "strDate"    # Ljava/lang/String;
    .param p1, "outFormat"    # Ljava/lang/String;

    .prologue
    .line 476
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd HH:mm:ss SSS"

    invoke-direct {v3, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 477
    .local v3, "df":Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 478
    .local v0, "c1":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 480
    .local v1, "c2":Ljava/util/Calendar;
    :try_start_0
    invoke-virtual {v3, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 481
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 482
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/fimi/kernel/utils/DateUtil;->getOffectDay(JJ)I

    move-result v2

    .line 483
    .local v2, "d":I
    if-nez v2, :cond_5

    .line 484
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/fimi/kernel/utils/DateUtil;->getOffectHour(JJ)I

    move-result v4

    .line 485
    .local v4, "h":I
    if-lez v4, :cond_1

    .line 486
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u4eca\u5929"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "HH:mm"

    invoke-static {p0, v8}, Lcom/fimi/kernel/utils/DateUtil;->getStringByFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 524
    .end local v2    # "d":I
    .end local v4    # "h":I
    :cond_0
    :goto_0
    return-object v6

    .line 488
    .restart local v2    # "d":I
    .restart local v4    # "h":I
    :cond_1
    if-gez v4, :cond_3

    .line 517
    .end local v4    # "h":I
    :cond_2
    :goto_1
    invoke-static {p0, p1}, Lcom/fimi/kernel/utils/DateUtil;->getStringByFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 518
    .local v6, "out":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .end local v2    # "d":I
    .end local v6    # "out":Ljava/lang/String;
    :goto_2
    move-object v6, p0

    .line 524
    goto :goto_0

    .line 490
    .restart local v2    # "d":I
    .restart local v4    # "h":I
    :cond_3
    if-nez v4, :cond_2

    .line 491
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/fimi/kernel/utils/DateUtil;->getOffectMinutes(JJ)I

    move-result v5

    .line 492
    .local v5, "m":I
    if-lez v5, :cond_4

    .line 493
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u5206\u949f\u524d"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 494
    :cond_4
    if-ltz v5, :cond_2

    .line 497
    const-string/jumbo v6, "\u521a\u521a"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 501
    .end local v4    # "h":I
    .end local v5    # "m":I
    :cond_5
    if-lez v2, :cond_6

    .line 502
    const/4 v7, 0x1

    if-eq v2, v7, :cond_2

    .line 504
    const/4 v7, 0x2

    if-ne v2, v7, :cond_2

    goto :goto_1

    .line 507
    :cond_6
    if-gez v2, :cond_2

    .line 508
    const/4 v7, -0x1

    if-eq v2, v7, :cond_2

    .line 510
    const/4 v7, -0x2

    if-ne v2, v7, :cond_2

    goto :goto_1

    .line 521
    .end local v2    # "d":I
    :catch_0
    move-exception v7

    goto :goto_2
.end method

.method public static getCurrentDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "format"    # Ljava/lang/String;

    .prologue
    .line 222
    const/4 v1, 0x0

    .line 224
    .local v1, "curDateTime":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 225
    .local v3, "mSimpleDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 226
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 230
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v3    # "mSimpleDateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v1

    .line 227
    :catch_0
    move-exception v2

    .line 228
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getCurrentDateByOffset(Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "calendarField"    # I
    .param p2, "offset"    # I

    .prologue
    .line 243
    const/4 v2, 0x0

    .line 245
    .local v2, "mDateTime":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 246
    .local v3, "mSimpleDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 247
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->add(II)V

    .line 248
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 252
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v3    # "mSimpleDateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v2

    .line 249
    :catch_0
    move-exception v1

    .line 250
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDateByFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p0, "strDate"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 80
    .local v2, "mSimpleDateFormat":Ljava/text/SimpleDateFormat;
    const/4 v0, 0x0

    .line 82
    .local v0, "date":Ljava/util/Date;
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getDayOfWeek(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "calendarField"    # I

    .prologue
    .line 355
    const/4 v4, 0x0

    .line 357
    .local v4, "strDate":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 358
    .local v0, "c":Ljava/util/Calendar;
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 359
    .local v2, "mSimpleDateFormat":Ljava/text/SimpleDateFormat;
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 360
    .local v5, "week":I
    if-ne v5, p1, :cond_0

    .line 361
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 373
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v2    # "mSimpleDateFormat":Ljava/text/SimpleDateFormat;
    .end local v5    # "week":I
    :goto_0
    return-object v4

    .line 363
    .restart local v0    # "c":Ljava/util/Calendar;
    .restart local v2    # "mSimpleDateFormat":Ljava/text/SimpleDateFormat;
    .restart local v5    # "week":I
    :cond_0
    sub-int v3, p1, v5

    .line 364
    .local v3, "offectDay":I
    const/4 v6, 0x1

    if-ne p1, v6, :cond_1

    .line 365
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    rsub-int/lit8 v3, v6, 0x7

    .line 367
    :cond_1
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v3}, Ljava/util/Calendar;->add(II)V

    .line 368
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 370
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v2    # "mSimpleDateFormat":Ljava/text/SimpleDateFormat;
    .end local v3    # "offectDay":I
    .end local v5    # "week":I
    :catch_0
    move-exception v1

    .line 371
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getFirstDayOfMonth(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "format"    # Ljava/lang/String;

    .prologue
    .line 383
    const/4 v3, 0x0

    .line 385
    .local v3, "strDate":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 386
    .local v0, "c":Ljava/util/Calendar;
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 388
    .local v2, "mSimpleDateFormat":Ljava/text/SimpleDateFormat;
    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 389
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 393
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v2    # "mSimpleDateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v3

    .line 390
    :catch_0
    move-exception v1

    .line 391
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getFirstDayOfWeek(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "format"    # Ljava/lang/String;

    .prologue
    .line 334
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/fimi/kernel/utils/DateUtil;->getDayOfWeek(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFirstTimeOfDay()J
    .locals 4

    .prologue
    .line 425
    const/4 v1, 0x0

    .line 427
    .local v1, "date":Ljava/util/Date;
    :try_start_0
    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-static {v2}, Lcom/fimi/kernel/utils/DateUtil;->getCurrentDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "currentDate":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " 00:00:00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss SSS"

    invoke-static {v2, v3}, Lcom/fimi/kernel/utils/DateUtil;->getDateByFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 429
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 432
    .end local v0    # "currentDate":Ljava/lang/String;
    :goto_0
    return-wide v2

    .line 430
    :catch_0
    move-exception v2

    .line 432
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public static getLastDayOfMonth(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "format"    # Ljava/lang/String;

    .prologue
    .line 404
    const/4 v3, 0x0

    .line 406
    .local v3, "strDate":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 407
    .local v0, "c":Ljava/util/Calendar;
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 409
    .local v2, "mSimpleDateFormat":Ljava/text/SimpleDateFormat;
    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 410
    const/4 v4, 0x5

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->roll(II)V

    .line 411
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 415
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v2    # "mSimpleDateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v3

    .line 412
    :catch_0
    move-exception v1

    .line 413
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getLastDayOfWeek(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "format"    # Ljava/lang/String;

    .prologue
    .line 344
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/fimi/kernel/utils/DateUtil;->getDayOfWeek(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastTimeOfDay()J
    .locals 4

    .prologue
    .line 441
    const/4 v1, 0x0

    .line 443
    .local v1, "date":Ljava/util/Date;
    :try_start_0
    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-static {v2}, Lcom/fimi/kernel/utils/DateUtil;->getCurrentDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "currentDate":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " 24:00:00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss SSS"

    invoke-static {v2, v3}, Lcom/fimi/kernel/utils/DateUtil;->getDateByFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 445
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 448
    .end local v0    # "currentDate":Ljava/lang/String;
    :goto_0
    return-wide v2

    .line 446
    :catch_0
    move-exception v2

    .line 448
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public static getOffectDay(JJ)I
    .locals 10
    .param p0, "milliseconds1"    # J
    .param p2, "milliseconds2"    # J

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x6

    .line 264
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 265
    .local v0, "calendar1":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 266
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 267
    .local v1, "calendar2":Ljava/util/Calendar;
    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 269
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 270
    .local v6, "y1":I
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 271
    .local v7, "y2":I
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 272
    .local v2, "d1":I
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 273
    .local v3, "d2":I
    const/4 v5, 0x0

    .line 274
    .local v5, "maxDays":I
    const/4 v4, 0x0

    .line 275
    .local v4, "day":I
    sub-int v8, v6, v7

    if-lez v8, :cond_0

    .line 276
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    .line 277
    sub-int v8, v2, v3

    add-int v4, v8, v5

    .line 284
    :goto_0
    return v4

    .line 278
    :cond_0
    sub-int v8, v6, v7

    if-gez v8, :cond_1

    .line 279
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    .line 280
    sub-int v8, v2, v3

    sub-int v4, v8, v5

    goto :goto_0

    .line 282
    :cond_1
    sub-int v4, v2, v3

    goto :goto_0
.end method

.method public static getOffectHour(JJ)I
    .locals 8
    .param p0, "date1"    # J
    .param p2, "date2"    # J

    .prologue
    const/16 v6, 0xb

    .line 295
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 296
    .local v0, "calendar1":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 297
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 298
    .local v1, "calendar2":Ljava/util/Calendar;
    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 299
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 300
    .local v4, "h1":I
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 301
    .local v5, "h2":I
    const/4 v3, 0x0

    .line 302
    .local v3, "h":I
    invoke-static {p0, p1, p2, p3}, Lcom/fimi/kernel/utils/DateUtil;->getOffectDay(JJ)I

    move-result v2

    .line 303
    .local v2, "day":I
    sub-int v6, v4, v5

    mul-int/lit8 v7, v2, 0x18

    add-int v3, v6, v7

    .line 304
    return v3
.end method

.method public static getOffectMinutes(JJ)I
    .locals 8
    .param p0, "date1"    # J
    .param p2, "date2"    # J

    .prologue
    const/16 v6, 0xc

    .line 315
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 316
    .local v0, "calendar1":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 317
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 318
    .local v1, "calendar2":Ljava/util/Calendar;
    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 319
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 320
    .local v4, "m1":I
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 321
    .local v5, "m2":I
    invoke-static {p0, p1, p2, p3}, Lcom/fimi/kernel/utils/DateUtil;->getOffectHour(JJ)I

    move-result v2

    .line 322
    .local v2, "h":I
    const/4 v3, 0x0

    .line 323
    .local v3, "m":I
    sub-int v6, v4, v5

    mul-int/lit8 v7, v2, 0x3c

    add-int v3, v6, v7

    .line 324
    return v3
.end method

.method public static getStringByFormat(JLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "milliseconds"    # J
    .param p2, "format"    # Ljava/lang/String;

    .prologue
    .line 205
    const/4 v2, 0x0

    .line 207
    .local v2, "thisDateTime":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 208
    .local v1, "mSimpleDateFormat":Ljava/text/SimpleDateFormat;
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 212
    .end local v1    # "mSimpleDateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v2

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getStringByFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "strDate"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 184
    const/4 v2, 0x0

    .line 186
    .local v2, "mDateTime":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 187
    .local v0, "c":Ljava/util/Calendar;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss SSS"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 188
    .local v3, "mSimpleDateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 189
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-direct {v4, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 190
    .local v4, "mSimpleDateFormat2":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 194
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v3    # "mSimpleDateFormat":Ljava/text/SimpleDateFormat;
    .end local v4    # "mSimpleDateFormat2":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v2

    .line 191
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getStringByFormat(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 163
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 164
    .local v1, "mSimpleDateFormat":Ljava/text/SimpleDateFormat;
    const/4 v2, 0x0

    .line 166
    .local v2, "strDate":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 168
    invoke-static {}, Lcom/fimi/kernel/base/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/fimi/kernel/R$string;->date_today:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v3, v2

    .line 173
    .end local v2    # "strDate":Ljava/lang/String;
    .local v3, "strDate":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 170
    .end local v3    # "strDate":Ljava/lang/String;
    .restart local v2    # "strDate":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v3, v2

    .end local v2    # "strDate":Ljava/lang/String;
    .restart local v3    # "strDate":Ljava/lang/String;
    move-object v4, v2

    .line 173
    goto :goto_0
.end method

.method public static getStringByFormat2(JLjava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "milliseconds"    # J
    .param p2, "format"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 694
    const/4 v3, 0x0

    .line 696
    .local v3, "thisDateTime":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 697
    .local v1, "mSimpleDateFormat":Ljava/text/SimpleDateFormat;
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 701
    .end local v1    # "mSimpleDateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 702
    .local v2, "ret":[Ljava/lang/String;
    aget-object v4, v2, v7

    const-string v5, "-"

    const-string v6, " "

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    .line 703
    return-object v2

    .line 698
    .end local v2    # "ret":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 699
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getStringByFormat3(JLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "milliseconds"    # J
    .param p2, "format"    # Ljava/lang/String;

    .prologue
    .line 714
    const/4 v2, 0x0

    .line 716
    .local v2, "thisDateTime":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 717
    .local v1, "mSimpleDateFormat":Ljava/text/SimpleDateFormat;
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 721
    .end local v1    # "mSimpleDateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v2

    .line 718
    :catch_0
    move-exception v0

    .line 719
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getStringByOffset(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .param p0, "strDate"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "calendarField"    # I
    .param p3, "offset"    # I

    .prologue
    .line 118
    const/4 v2, 0x0

    .line 120
    .local v2, "mDateTime":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 121
    .local v0, "c":Ljava/util/Calendar;
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 122
    .local v3, "mSimpleDateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 123
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->add(II)V

    .line 124
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 128
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v3    # "mSimpleDateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v2

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getStringByOffset(Ljava/util/Date;Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "calendarField"    # I
    .param p3, "offset"    # I

    .prologue
    .line 141
    const/4 v3, 0x0

    .line 143
    .local v3, "strDate":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 144
    .local v0, "c":Ljava/util/Calendar;
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 145
    .local v2, "mSimpleDateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 146
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->add(II)V

    .line 147
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 151
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v2    # "mSimpleDateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v3

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getTimeDescription(J)Ljava/lang/String;
    .locals 12
    .param p0, "milliseconds"    # J

    .prologue
    const-wide/16 v10, 0x3c

    const-wide/16 v8, 0x3e8

    .line 594
    cmp-long v4, p0, v8

    if-lez v4, :cond_1

    .line 596
    div-long v4, p0, v8

    div-long/2addr v4, v10

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 597
    div-long v4, p0, v8

    div-long v0, v4, v10

    .line 598
    .local v0, "minute":J
    div-long v4, p0, v8

    rem-long v2, v4, v10

    .line 599
    .local v2, "second":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u5206"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u79d2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 605
    .end local v0    # "minute":J
    .end local v2    # "second":J
    :goto_0
    return-object v4

    .line 602
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    div-long v6, p0, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u79d2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 605
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u6beb\u79d2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static getTimeQuantum(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "strDate"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 579
    invoke-static {p0, p1}, Lcom/fimi/kernel/utils/DateUtil;->getDateByFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 580
    .local v1, "mDate":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v0

    .line 581
    .local v0, "hour":I
    const/16 v2, 0xc

    if-lt v0, v2, :cond_0

    .line 582
    const-string v2, "PM"

    .line 584
    :goto_0
    return-object v2

    :cond_0
    const-string v2, "AM"

    goto :goto_0
.end method

.method public static getWeekNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "strDate"    # Ljava/lang/String;
    .param p1, "inFormat"    # Ljava/lang/String;

    .prologue
    .line 536
    const-string/jumbo v4, "\u661f\u671f\u65e5"

    .line 537
    .local v4, "week":Ljava/lang/String;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 538
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 540
    .local v1, "df":Ljava/text/DateFormat;
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .line 545
    .local v3, "intTemp":I
    packed-switch v3, :pswitch_data_0

    :goto_0
    move-object v5, v4

    .end local v4    # "week":Ljava/lang/String;
    .local v5, "week":Ljava/lang/String;
    move-object v6, v4

    .line 568
    .end local v3    # "intTemp":I
    :goto_1
    return-object v6

    .line 541
    .end local v5    # "week":Ljava/lang/String;
    .restart local v4    # "week":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 542
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "\u9519\u8bef"

    move-object v5, v4

    .end local v4    # "week":Ljava/lang/String;
    .restart local v5    # "week":Ljava/lang/String;
    goto :goto_1

    .line 547
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "week":Ljava/lang/String;
    .restart local v3    # "intTemp":I
    .restart local v4    # "week":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v4, "\u661f\u671f\u65e5"

    .line 548
    goto :goto_0

    .line 550
    :pswitch_1
    const-string/jumbo v4, "\u661f\u671f\u4e00"

    .line 551
    goto :goto_0

    .line 553
    :pswitch_2
    const-string/jumbo v4, "\u661f\u671f\u4e8c"

    .line 554
    goto :goto_0

    .line 556
    :pswitch_3
    const-string/jumbo v4, "\u661f\u671f\u4e09"

    .line 557
    goto :goto_0

    .line 559
    :pswitch_4
    const-string/jumbo v4, "\u661f\u671f\u56db"

    .line 560
    goto :goto_0

    .line 562
    :pswitch_5
    const-string/jumbo v4, "\u661f\u671f\u4e94"

    .line 563
    goto :goto_0

    .line 565
    :pswitch_6
    const-string/jumbo v4, "\u661f\u671f\u516d"

    goto :goto_0

    .line 545
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

.method public static isLeapYear(I)Z
    .locals 1
    .param p0, "year"    # I

    .prologue
    .line 459
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_0

    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_1

    :cond_0
    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_2

    .line 460
    :cond_1
    const/4 v0, 0x1

    .line 462
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isToday(Ljava/util/Date;)Z
    .locals 3
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 610
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 611
    .local v0, "fmt":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 612
    const/4 v1, 0x1

    .line 614
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 627
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMddHHmmssSSS"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 628
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    const-wide/32 v2, 0x5d249e35

    .line 629
    .local v2, "time":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 630
    .local v0, "date":Ljava/util/Date;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 631
    return-void
.end method

.method private setTimeBytes([BII)V
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "pos"    # I
    .param p3, "value"    # I

    .prologue
    .line 673
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 674
    mul-int/lit8 v2, v0, 0x8

    shr-int v1, p3, v2

    .line 675
    .local v1, "v":I
    add-int v2, p2, v0

    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 673
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 677
    .end local v1    # "v":I
    :cond_0
    return-void
.end method

.method private setUtc([BIJ)V
    .locals 7
    .param p1, "bytes"    # [B
    .param p2, "pos"    # I
    .param p3, "value"    # J

    .prologue
    .line 680
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 681
    mul-int/lit8 v1, v0, 0x8

    shr-long v2, p3, v1

    .line 682
    .local v2, "v":J
    add-int v1, p2, v0

    const-wide/16 v4, 0xff

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, p1, v1

    .line 680
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 684
    .end local v2    # "v":J
    :cond_0
    return-void
.end method


# virtual methods
.method public getDateByOffset(Ljava/util/Date;II)Ljava/util/Date;
    .locals 3
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "calendarField"    # I
    .param p3, "offset"    # I

    .prologue
    .line 98
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 100
    .local v0, "c":Ljava/util/Calendar;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 101
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->add(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    return-object v2

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getUTC([B)V
    .locals 8
    .param p1, "bytes"    # [B

    .prologue
    .line 637
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 639
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v2, 0x0

    .line 640
    .local v2, "pos":I
    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-direct {p0, p1, v2, v6}, Lcom/fimi/kernel/utils/DateUtil;->setTimeBytes([BII)V

    .line 641
    add-int/lit8 v2, v2, 0x4

    .line 642
    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-direct {p0, p1, v2, v6}, Lcom/fimi/kernel/utils/DateUtil;->setTimeBytes([BII)V

    .line 643
    add-int/lit8 v2, v2, 0x4

    .line 644
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-direct {p0, p1, v2, v6}, Lcom/fimi/kernel/utils/DateUtil;->setTimeBytes([BII)V

    .line 645
    add-int/lit8 v2, v2, 0x4

    .line 646
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-direct {p0, p1, v2, v6}, Lcom/fimi/kernel/utils/DateUtil;->setTimeBytes([BII)V

    .line 647
    add-int/lit8 v2, v2, 0x4

    .line 648
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-direct {p0, p1, v2, v6}, Lcom/fimi/kernel/utils/DateUtil;->setTimeBytes([BII)V

    .line 649
    add-int/lit8 v2, v2, 0x4

    .line 650
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit16 v6, v6, -0x76c

    invoke-direct {p0, p1, v2, v6}, Lcom/fimi/kernel/utils/DateUtil;->setTimeBytes([BII)V

    .line 651
    add-int/lit8 v2, v2, 0x4

    .line 652
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-direct {p0, p1, v2, v6}, Lcom/fimi/kernel/utils/DateUtil;->setTimeBytes([BII)V

    .line 653
    add-int/lit8 v2, v2, 0x4

    .line 654
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-direct {p0, p1, v2, v6}, Lcom/fimi/kernel/utils/DateUtil;->setTimeBytes([BII)V

    .line 655
    add-int/lit8 v2, v2, 0x4

    .line 658
    const/16 v6, 0xf

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 661
    .local v3, "zoneOffset":I
    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 662
    .local v1, "dstOffset":I
    invoke-direct {p0, p1, v2, v1}, Lcom/fimi/kernel/utils/DateUtil;->setTimeBytes([BII)V

    .line 663
    add-int/lit8 v2, v2, 0x4

    .line 665
    const/16 v6, 0xe

    add-int v7, v3, v1

    neg-int v7, v7

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 667
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 669
    .local v4, "utc":J
    invoke-direct {p0, p1, v2, v4, v5}, Lcom/fimi/kernel/utils/DateUtil;->setUtc([BIJ)V

    .line 670
    return-void
.end method
