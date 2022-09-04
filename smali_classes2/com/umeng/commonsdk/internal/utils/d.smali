.class public Lcom/umeng/commonsdk/internal/utils/d;
.super Ljava/lang/Object;
.source "CpuUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/internal/utils/d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static a()Lcom/umeng/commonsdk/internal/utils/d$a;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 34
    const/4 v3, 0x0

    .line 37
    :try_start_0
    new-instance v1, Lcom/umeng/commonsdk/internal/utils/d$a;

    invoke-direct {v1}, Lcom/umeng/commonsdk/internal/utils/d$a;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :try_start_1
    new-instance v0, Ljava/io/FileReader;

    const-string v3, "/proc/cpuinfo"

    invoke-direct {v0, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 39
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 40
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    move v3, v4

    move v0, v2

    .line 43
    :goto_0
    if-nez v5, :cond_0

    :try_start_2
    const-string v7, ""

    if-eq v5, v7, :cond_d

    .line 44
    :cond_0
    const-string v7, ":\\s+"

    const/4 v8, 0x2

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 45
    if-eqz v3, :cond_1

    if-eqz v5, :cond_1

    array-length v7, v5

    if-le v7, v4, :cond_1

    .line 46
    const/4 v3, 0x1

    aget-object v3, v5, v3

    iput-object v3, v1, Lcom/umeng/commonsdk/internal/utils/d$a;->a:Ljava/lang/String;

    move v3, v2

    .line 49
    :cond_1
    if-eqz v5, :cond_2

    array-length v7, v5

    if-le v7, v4, :cond_2

    const/4 v7, 0x0

    aget-object v7, v5, v7

    const-string v8, "processor"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 50
    add-int/lit8 v0, v0, 0x1

    .line 52
    :cond_2
    if-eqz v5, :cond_3

    array-length v7, v5

    if-le v7, v4, :cond_3

    const/4 v7, 0x0

    aget-object v7, v5, v7

    const-string v8, "Features"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 53
    const/4 v7, 0x1

    aget-object v7, v5, v7

    iput-object v7, v1, Lcom/umeng/commonsdk/internal/utils/d$a;->d:Ljava/lang/String;

    .line 55
    :cond_3
    if-eqz v5, :cond_4

    array-length v7, v5

    if-le v7, v4, :cond_4

    const/4 v7, 0x0

    aget-object v7, v5, v7

    const-string v8, "implementer"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 56
    const/4 v7, 0x1

    aget-object v7, v5, v7

    iput-object v7, v1, Lcom/umeng/commonsdk/internal/utils/d$a;->e:Ljava/lang/String;

    .line 59
    :cond_4
    if-eqz v5, :cond_5

    array-length v7, v5

    if-le v7, v4, :cond_5

    const/4 v7, 0x0

    aget-object v7, v5, v7

    const-string v8, "architecture"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 60
    const/4 v7, 0x1

    aget-object v7, v5, v7

    iput-object v7, v1, Lcom/umeng/commonsdk/internal/utils/d$a;->f:Ljava/lang/String;

    .line 62
    :cond_5
    if-eqz v5, :cond_6

    array-length v7, v5

    if-le v7, v4, :cond_6

    const/4 v7, 0x0

    aget-object v7, v5, v7

    const-string v8, "variant"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 63
    const/4 v7, 0x1

    aget-object v7, v5, v7

    iput-object v7, v1, Lcom/umeng/commonsdk/internal/utils/d$a;->g:Ljava/lang/String;

    .line 65
    :cond_6
    if-eqz v5, :cond_7

    array-length v7, v5

    if-le v7, v4, :cond_7

    const/4 v7, 0x0

    aget-object v7, v5, v7

    const-string v8, "part"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 66
    const/4 v7, 0x1

    aget-object v7, v5, v7

    iput-object v7, v1, Lcom/umeng/commonsdk/internal/utils/d$a;->h:Ljava/lang/String;

    .line 68
    :cond_7
    if-eqz v5, :cond_8

    array-length v7, v5

    if-le v7, v4, :cond_8

    const/4 v7, 0x0

    aget-object v7, v5, v7

    const-string v8, "revision"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 69
    const/4 v7, 0x1

    aget-object v7, v5, v7

    iput-object v7, v1, Lcom/umeng/commonsdk/internal/utils/d$a;->i:Ljava/lang/String;

    .line 71
    :cond_8
    if-eqz v5, :cond_9

    array-length v7, v5

    if-le v7, v4, :cond_9

    const/4 v7, 0x0

    aget-object v7, v5, v7

    const-string v8, "Hardware"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 72
    const/4 v7, 0x1

    aget-object v7, v5, v7

    iput-object v7, v1, Lcom/umeng/commonsdk/internal/utils/d$a;->j:Ljava/lang/String;

    .line 74
    :cond_9
    if-eqz v5, :cond_a

    array-length v7, v5

    if-le v7, v4, :cond_a

    const/4 v7, 0x0

    aget-object v7, v5, v7

    const-string v8, "Revision"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 75
    const/4 v7, 0x1

    aget-object v7, v5, v7

    iput-object v7, v1, Lcom/umeng/commonsdk/internal/utils/d$a;->k:Ljava/lang/String;

    .line 77
    :cond_a
    if-eqz v5, :cond_b

    array-length v7, v5

    if-le v7, v4, :cond_b

    const/4 v7, 0x0

    aget-object v7, v5, v7

    const-string v8, "Serial"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 78
    const/4 v7, 0x1

    aget-object v7, v5, v7

    iput-object v7, v1, Lcom/umeng/commonsdk/internal/utils/d$a;->l:Ljava/lang/String;

    .line 80
    :cond_b
    if-eqz v5, :cond_c

    array-length v7, v5

    if-le v7, v4, :cond_c

    const/4 v7, 0x0

    aget-object v7, v5, v7

    const-string v8, "implementer"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 81
    const/4 v7, 0x1

    aget-object v5, v5, v7

    iput-object v5, v1, Lcom/umeng/commonsdk/internal/utils/d$a;->e:Ljava/lang/String;

    .line 83
    :cond_c
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    goto/16 :goto_0

    .line 85
    :catch_0
    move-exception v0

    move v0, v2

    move-object v1, v3

    .line 88
    :cond_d
    :goto_1
    iput v0, v1, Lcom/umeng/commonsdk/internal/utils/d$a;->c:I

    .line 89
    return-object v1

    .line 85
    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method public static b()Ljava/lang/String;
    .locals 5

    .prologue
    .line 96
    const-string v0, ""

    .line 99
    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "/system/bin/cat"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    aput-object v3, v1, v2

    .line 101
    new-instance v2, Ljava/lang/ProcessBuilder;

    invoke-direct {v2, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 102
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    .line 103
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 104
    const/16 v2, 0x18

    new-array v2, v2, [B

    .line 105
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 109
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static c()Ljava/lang/String;
    .locals 5

    .prologue
    .line 117
    const-string v0, ""

    .line 120
    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "/system/bin/cat"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"

    aput-object v3, v1, v2

    .line 122
    new-instance v2, Ljava/lang/ProcessBuilder;

    invoke-direct {v2, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 123
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 125
    const/16 v2, 0x18

    new-array v2, v2, [B

    .line 126
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 130
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 138
    const-string v0, ""

    .line 140
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 142
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 143
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    .line 145
    :catch_0
    move-exception v1

    goto :goto_0
.end method
