.class Lcom/github/moduth/blockcanary/CpuSampler;
.super Lcom/github/moduth/blockcanary/AbstractSampler;
.source "CpuSampler.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x3e8

.field private static final MAX_ENTRY_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "CpuSampler"


# instance fields
.field private final BUSY_TIME:I

.field private mAppCpuTimeLast:J

.field private final mCpuInfoEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIdleLast:J

.field private mIoWaitLast:J

.field private mPid:I

.field private mSystemLast:J

.field private mTotalLast:J

.field private mUserLast:J


# direct methods
.method public constructor <init>(J)V
    .locals 5
    .param p1, "sampleInterval"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/github/moduth/blockcanary/AbstractSampler;-><init>(J)V

    .line 43
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/github/moduth/blockcanary/CpuSampler;->mCpuInfoEntries:Ljava/util/LinkedHashMap;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/moduth/blockcanary/CpuSampler;->mPid:I

    .line 45
    iput-wide v2, p0, Lcom/github/moduth/blockcanary/CpuSampler;->mUserLast:J

    .line 46
    iput-wide v2, p0, Lcom/github/moduth/blockcanary/CpuSampler;->mSystemLast:J

    .line 47
    iput-wide v2, p0, Lcom/github/moduth/blockcanary/CpuSampler;->mIdleLast:J

    .line 48
    iput-wide v2, p0, Lcom/github/moduth/blockcanary/CpuSampler;->mIoWaitLast:J

    .line 49
    iput-wide v2, p0, Lcom/github/moduth/blockcanary/CpuSampler;->mTotalLast:J

    .line 50
    iput-wide v2, p0, Lcom/github/moduth/blockcanary/CpuSampler;->mAppCpuTimeLast:J

    .line 54
    iget-wide v0, p0, Lcom/github/moduth/blockcanary/CpuSampler;->mSampleInterval:J

    long-to-float v0, v0

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/github/moduth/blockcanary/CpuSampler;->BUSY_TIME:I

    .line 55
    return-void
.end method

.method private parse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 32
    .param p1, "cpuRate"    # Ljava/lang/String;
    .param p2, "pidCpuRate"    # Ljava/lang/String;

    .prologue
    .line 152
    const-string v19, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 153
    .local v6, "cpuInfoArray":[Ljava/lang/String;
    array-length v0, v6

    move/from16 v19, v0

    const/16 v28, 0x9

    move/from16 v0, v19

    move/from16 v1, v28

    if-ge v0, v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    const/16 v19, 0x2

    aget-object v19, v6, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    .line 158
    .local v26, "user":J
    const/16 v19, 0x3

    aget-object v19, v6, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 159
    .local v16, "nice":J
    const/16 v19, 0x4

    aget-object v19, v6, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 160
    .local v20, "system":J
    const/16 v19, 0x5

    aget-object v19, v6, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 161
    .local v8, "idle":J
    const/16 v19, 0x6

    aget-object v19, v6, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 162
    .local v12, "ioWait":J
    add-long v28, v26, v16

    add-long v28, v28, v20

    add-long v28, v28, v8

    add-long v28, v28, v12

    const/16 v19, 0x7

    aget-object v19, v6, v19

    .line 163
    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v30

    add-long v28, v28, v30

    const/16 v19, 0x8

    aget-object v19, v6, v19

    .line 164
    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v30

    add-long v22, v28, v30

    .line 166
    .local v22, "total":J
    const-string v19, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 167
    .local v15, "pidCpuInfoList":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v19, v0

    const/16 v28, 0x11

    move/from16 v0, v19

    move/from16 v1, v28

    if-lt v0, v1, :cond_0

    .line 171
    const/16 v19, 0xd

    aget-object v19, v15, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    const/16 v19, 0xe

    aget-object v19, v15, v19

    .line 172
    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v30

    add-long v28, v28, v30

    const/16 v19, 0xf

    aget-object v19, v15, v19

    .line 173
    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v30

    add-long v28, v28, v30

    const/16 v19, 0x10

    aget-object v19, v15, v19

    .line 174
    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v30

    add-long v4, v28, v30

    .line 176
    .local v4, "appCpuTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/github/moduth/blockcanary/CpuSampler;->mTotalLast:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v19, v28, v30

    if-eqz v19, :cond_3

    .line 177
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .local v18, "stringBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/github/moduth/blockcanary/CpuSampler;->mIdleLast:J

    move-wide/from16 v28, v0

    sub-long v10, v8, v28

    .line 179
    .local v10, "idleTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/github/moduth/blockcanary/CpuSampler;->mTotalLast:J

    move-wide/from16 v28, v0

    sub-long v24, v22, v28

    .line 181
    .local v24, "totalTime":J
    const-string v19, "cpu:"

    .line 182
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sub-long v28, v24, v10

    const-wide/16 v30, 0x64

    mul-long v28, v28, v30

    div-long v28, v28, v24

    .line 183
    move-object/from16 v0, v19

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v28, "% "

    .line 184
    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v28, "app:"

    .line 185
    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/github/moduth/blockcanary/CpuSampler;->mAppCpuTimeLast:J

    move-wide/from16 v28, v0

    sub-long v28, v4, v28

    const-wide/16 v30, 0x64

    mul-long v28, v28, v30

    div-long v28, v28, v24

    .line 186
    move-object/from16 v0, v19

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v28, "% "

    .line 187
    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v28, "["

    .line 188
    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v28, "user:"

    .line 189
    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/github/moduth/blockcanary/CpuSampler;->mUserLast:J

    move-wide/from16 v28, v0

    sub-long v28, v26, v28

    const-wide/16 v30, 0x64

    mul-long v28, v28, v30

    div-long v28, v28, v24

    move-object/from16 v0, v19

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v28, "% "

    .line 190
    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v28, "system:"

    .line 191
    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/github/moduth/blockcanary/CpuSampler;->mSystemLast:J

    move-wide/from16 v28, v0

    sub-long v28, v20, v28

    const-wide/16 v30, 0x64

    mul-long v28, v28, v30

    div-long v28, v28, v24

    move-object/from16 v0, v19

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v28, "% "

    .line 192
    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v28, "ioWait:"

    .line 193
    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/github/moduth/blockcanary/CpuSampler;->mIoWaitLast:J

    move-wide/from16 v28, v0

    sub-long v28, v12, v28

    const-wide/16 v30, 0x64

    mul-long v28, v28, v30

    div-long v28, v28, v24

    move-object/from16 v0, v19

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v28, "% ]"

    .line 194
    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/moduth/blockcanary/CpuSampler;->mCpuInfoEntries:Ljava/util/LinkedHashMap;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 197
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/moduth/blockcanary/CpuSampler;->mCpuInfoEntries:Ljava/util/LinkedHashMap;

    move-object/from16 v19, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/moduth/blockcanary/CpuSampler;->mCpuInfoEntries:Ljava/util/LinkedHashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedHashMap;->size()I

    move-result v19

    const/16 v29, 0xa

    move/from16 v0, v19

    move/from16 v1, v29

    if-le v0, v1, :cond_2

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/moduth/blockcanary/CpuSampler;->mCpuInfoEntries:Ljava/util/LinkedHashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_2

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 200
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 201
    .local v14, "key":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/moduth/blockcanary/CpuSampler;->mCpuInfoEntries:Ljava/util/LinkedHashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v14    # "key":Ljava/lang/Long;
    :cond_2
    monitor-exit v28
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    .end local v10    # "idleTime":J
    .end local v18    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v24    # "totalTime":J
    :cond_3
    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/github/moduth/blockcanary/CpuSampler;->mUserLast:J

    .line 208
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/github/moduth/blockcanary/CpuSampler;->mSystemLast:J

    .line 209
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/github/moduth/blockcanary/CpuSampler;->mIdleLast:J

    .line 210
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/github/moduth/blockcanary/CpuSampler;->mIoWaitLast:J

    .line 211
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/github/moduth/blockcanary/CpuSampler;->mTotalLast:J

    .line 213
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/github/moduth/blockcanary/CpuSampler;->mAppCpuTimeLast:J

    goto/16 :goto_0

    .line 205
    .restart local v10    # "idleTime":J
    .restart local v18    # "stringBuilder":Ljava/lang/StringBuilder;
    .restart local v24    # "totalTime":J
    :catchall_0
    move-exception v19

    :try_start_1
    monitor-exit v28
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v19
.end method

.method private reset()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 143
    iput-wide v0, p0, Lcom/github/moduth/blockcanary/CpuSampler;->mUserLast:J

    .line 144
    iput-wide v0, p0, Lcom/github/moduth/blockcanary/CpuSampler;->mSystemLast:J

    .line 145
    iput-wide v0, p0, Lcom/github/moduth/blockcanary/CpuSampler;->mIdleLast:J

    .line 146
    iput-wide v0, p0, Lcom/github/moduth/blockcanary/CpuSampler;->mIoWaitLast:J

    .line 147
    iput-wide v0, p0, Lcom/github/moduth/blockcanary/CpuSampler;->mTotalLast:J

    .line 148
    iput-wide v0, p0, Lcom/github/moduth/blockcanary/CpuSampler;->mAppCpuTimeLast:J

    .line 149
    return-void
.end method


# virtual methods
.method protected doSample()V
    .locals 12

    .prologue
    .line 104
    const/4 v1, 0x0

    .line 105
    .local v1, "cpuReader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 108
    .local v5, "pidReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    new-instance v9, Ljava/io/FileInputStream;

    const-string v10, "/proc/stat"

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v9, 0x3e8

    invoke-direct {v2, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .end local v1    # "cpuReader":Ljava/io/BufferedReader;
    .local v2, "cpuReader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "cpuRate":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 112
    const-string v0, ""

    .line 115
    :cond_0
    iget v8, p0, Lcom/github/moduth/blockcanary/CpuSampler;->mPid:I

    if-nez v8, :cond_1

    .line 116
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    iput v8, p0, Lcom/github/moduth/blockcanary/CpuSampler;->mPid:I

    .line 118
    :cond_1
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    new-instance v9, Ljava/io/FileInputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/proc/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/github/moduth/blockcanary/CpuSampler;->mPid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/stat"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v9, 0x3e8

    invoke-direct {v6, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 120
    .end local v5    # "pidReader":Ljava/io/BufferedReader;
    .local v6, "pidReader":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, "pidCpuRate":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 122
    const-string v4, ""

    .line 125
    :cond_2
    invoke-direct {p0, v0, v4}, Lcom/github/moduth/blockcanary/CpuSampler;->parse(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 130
    if-eqz v2, :cond_3

    .line 131
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 133
    :cond_3
    if-eqz v6, :cond_4

    .line 134
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_4
    move-object v5, v6

    .end local v6    # "pidReader":Ljava/io/BufferedReader;
    .restart local v5    # "pidReader":Ljava/io/BufferedReader;
    move-object v1, v2

    .line 140
    .end local v0    # "cpuRate":Ljava/lang/String;
    .end local v2    # "cpuReader":Ljava/io/BufferedReader;
    .end local v4    # "pidCpuRate":Ljava/lang/String;
    .restart local v1    # "cpuReader":Ljava/io/BufferedReader;
    :cond_5
    :goto_0
    return-void

    .line 136
    .end local v1    # "cpuReader":Ljava/io/BufferedReader;
    .end local v5    # "pidReader":Ljava/io/BufferedReader;
    .restart local v0    # "cpuRate":Ljava/lang/String;
    .restart local v2    # "cpuReader":Ljava/io/BufferedReader;
    .restart local v4    # "pidCpuRate":Ljava/lang/String;
    .restart local v6    # "pidReader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v3

    .line 137
    .local v3, "exception":Ljava/io/IOException;
    const-string v8, "CpuSampler"

    const-string v9, "doSample: "

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v6

    .end local v6    # "pidReader":Ljava/io/BufferedReader;
    .restart local v5    # "pidReader":Ljava/io/BufferedReader;
    move-object v1, v2

    .line 139
    .end local v2    # "cpuReader":Ljava/io/BufferedReader;
    .restart local v1    # "cpuReader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 126
    .end local v0    # "cpuRate":Ljava/lang/String;
    .end local v3    # "exception":Ljava/io/IOException;
    .end local v4    # "pidCpuRate":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 127
    .local v7, "throwable":Ljava/lang/Throwable;
    :goto_1
    :try_start_4
    const-string v8, "CpuSampler"

    const-string v9, "doSample: "

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 130
    if-eqz v1, :cond_6

    .line 131
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 133
    :cond_6
    if-eqz v5, :cond_5

    .line 134
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 136
    :catch_2
    move-exception v3

    .line 137
    .restart local v3    # "exception":Ljava/io/IOException;
    const-string v8, "CpuSampler"

    const-string v9, "doSample: "

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 129
    .end local v3    # "exception":Ljava/io/IOException;
    .end local v7    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception v8

    .line 130
    :goto_2
    if-eqz v1, :cond_7

    .line 131
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 133
    :cond_7
    if-eqz v5, :cond_8

    .line 134
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 138
    :cond_8
    :goto_3
    throw v8

    .line 136
    :catch_3
    move-exception v3

    .line 137
    .restart local v3    # "exception":Ljava/io/IOException;
    const-string v9, "CpuSampler"

    const-string v10, "doSample: "

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 129
    .end local v1    # "cpuReader":Ljava/io/BufferedReader;
    .end local v3    # "exception":Ljava/io/IOException;
    .restart local v2    # "cpuReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2    # "cpuReader":Ljava/io/BufferedReader;
    .restart local v1    # "cpuReader":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v1    # "cpuReader":Ljava/io/BufferedReader;
    .end local v5    # "pidReader":Ljava/io/BufferedReader;
    .restart local v0    # "cpuRate":Ljava/lang/String;
    .restart local v2    # "cpuReader":Ljava/io/BufferedReader;
    .restart local v6    # "pidReader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v8

    move-object v5, v6

    .end local v6    # "pidReader":Ljava/io/BufferedReader;
    .restart local v5    # "pidReader":Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2    # "cpuReader":Ljava/io/BufferedReader;
    .restart local v1    # "cpuReader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 126
    .end local v0    # "cpuRate":Ljava/lang/String;
    .end local v1    # "cpuReader":Ljava/io/BufferedReader;
    .restart local v2    # "cpuReader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v7

    move-object v1, v2

    .end local v2    # "cpuReader":Ljava/io/BufferedReader;
    .restart local v1    # "cpuReader":Ljava/io/BufferedReader;
    goto :goto_1

    .end local v1    # "cpuReader":Ljava/io/BufferedReader;
    .end local v5    # "pidReader":Ljava/io/BufferedReader;
    .restart local v0    # "cpuRate":Ljava/lang/String;
    .restart local v2    # "cpuReader":Ljava/io/BufferedReader;
    .restart local v6    # "pidReader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v7

    move-object v5, v6

    .end local v6    # "pidReader":Ljava/io/BufferedReader;
    .restart local v5    # "pidReader":Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2    # "cpuReader":Ljava/io/BufferedReader;
    .restart local v1    # "cpuReader":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public getCpuRateInfo()Ljava/lang/String;
    .locals 8

    .prologue
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/github/moduth/blockcanary/CpuSampler;->mCpuInfoEntries:Ljava/util/LinkedHashMap;

    monitor-enter v5

    .line 71
    :try_start_0
    iget-object v4, p0, Lcom/github/moduth/blockcanary/CpuSampler;->mCpuInfoEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 72
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 73
    .local v2, "time":J
    sget-object v4, Lcom/github/moduth/blockcanary/internal/BlockInfo;->TIME_FORMATTER:Ljava/text/SimpleDateFormat;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v7, 0x20

    .line 74
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 75
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\r\n"

    .line 76
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 78
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v2    # "time":J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public isCpuBusy(JJ)Z
    .locals 19
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 83
    sub-long v12, p3, p1

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/github/moduth/blockcanary/CpuSampler;->mSampleInterval:J

    cmp-long v5, v12, v14

    if-lez v5, :cond_3

    .line 84
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/github/moduth/blockcanary/CpuSampler;->mSampleInterval:J

    sub-long v8, p1, v12

    .line 85
    .local v8, "s":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/github/moduth/blockcanary/CpuSampler;->mSampleInterval:J

    add-long v2, p1, v12

    .line 86
    .local v2, "e":J
    const-wide/16 v6, 0x0

    .line 87
    .local v6, "last":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/github/moduth/blockcanary/CpuSampler;->mCpuInfoEntries:Ljava/util/LinkedHashMap;

    monitor-enter v12

    .line 88
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/moduth/blockcanary/CpuSampler;->mCpuInfoEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 89
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 90
    .local v10, "time":J
    cmp-long v5, v8, v10

    if-gez v5, :cond_0

    cmp-long v5, v10, v2

    if-gez v5, :cond_0

    .line 91
    const-wide/16 v14, 0x0

    cmp-long v5, v6, v14

    if-eqz v5, :cond_1

    sub-long v14, v10, v6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/github/moduth/blockcanary/CpuSampler;->BUSY_TIME:I

    int-to-long v0, v5

    move-wide/from16 v16, v0

    cmp-long v5, v14, v16

    if-lez v5, :cond_1

    .line 92
    const/4 v5, 0x1

    monitor-exit v12

    .line 99
    .end local v2    # "e":J
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v6    # "last":J
    .end local v8    # "s":J
    .end local v10    # "time":J
    :goto_1
    return v5

    .line 94
    .restart local v2    # "e":J
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v6    # "last":J
    .restart local v8    # "s":J
    .restart local v10    # "time":J
    :cond_1
    move-wide v6, v10

    goto :goto_0

    .line 97
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v10    # "time":J
    :cond_2
    monitor-exit v12

    .line 99
    .end local v2    # "e":J
    .end local v6    # "last":J
    .end local v8    # "s":J
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 97
    .restart local v2    # "e":J
    .restart local v6    # "last":J
    .restart local v8    # "s":J
    :catchall_0
    move-exception v5

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public start()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Lcom/github/moduth/blockcanary/AbstractSampler;->start()V

    .line 60
    invoke-direct {p0}, Lcom/github/moduth/blockcanary/CpuSampler;->reset()V

    .line 61
    return-void
.end method
