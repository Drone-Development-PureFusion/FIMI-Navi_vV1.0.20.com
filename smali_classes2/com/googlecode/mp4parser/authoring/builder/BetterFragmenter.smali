.class public Lcom/googlecode/mp4parser/authoring/builder/BetterFragmenter;
.super Ljava/lang/Object;
.source "BetterFragmenter.java"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/builder/Fragmenter;


# instance fields
.field private targetDuration:D


# direct methods
.method public constructor <init>(D)V
    .locals 1
    .param p1, "targetDuration"    # D

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lcom/googlecode/mp4parser/authoring/builder/BetterFragmenter;->targetDuration:D

    .line 16
    return-void
.end method


# virtual methods
.method public sampleNumbers(Lcom/googlecode/mp4parser/authoring/Track;)[J
    .locals 32
    .param p1, "track"    # Lcom/googlecode/mp4parser/authoring/Track;

    .prologue
    .line 19
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v15

    invoke-virtual {v15}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v26

    .line 20
    .local v26, "ts":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/googlecode/mp4parser/authoring/builder/BetterFragmenter;->targetDuration:D

    move-wide/from16 v28, v0

    move-wide/from16 v0, v26

    long-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-long v0, v0

    move-wide/from16 v16, v0

    .line 21
    .local v16, "targetTicks":J
    const/4 v15, 0x0

    new-array v6, v15, [J

    .line 22
    .local v6, "fragments":[J
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v14

    .line 23
    .local v14, "syncSamples":[J
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDurations()[J

    move-result-object v3

    .line 24
    .local v3, "durations":[J
    if-eqz v14, :cond_5

    .line 25
    array-length v15, v14

    new-array v13, v15, [J

    .line 26
    .local v13, "syncSampleTicks":[J
    const-wide/16 v22, 0x0

    .line 27
    .local v22, "ticks":J
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getDuration()J

    move-result-wide v4

    .line 29
    .local v4, "duration":J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v15, v3

    if-lt v7, v15, :cond_1

    .line 36
    const-wide/16 v8, 0x0

    .line 38
    .local v8, "nextTargetTick":J
    const/4 v2, 0x0

    .local v2, "currentSyncSampleIndex":I
    :goto_1
    array-length v15, v13

    add-int/lit8 v15, v15, -0x1

    if-lt v2, v15, :cond_3

    .line 48
    array-length v15, v13

    add-int/lit8 v15, v15, -0x1

    aget-wide v28, v13, v15

    sub-long v28, v4, v28

    const-wide/16 v30, 0x2

    div-long v30, v16, v30

    cmp-long v15, v28, v30

    if-lez v15, :cond_0

    .line 49
    const/4 v15, 0x1

    new-array v15, v15, [J

    const/16 v28, 0x0

    array-length v0, v13

    move/from16 v29, v0

    add-int/lit8 v29, v29, -0x1

    aget-wide v30, v14, v29

    aput-wide v30, v15, v28

    invoke-static {v6, v15}, Lcom/googlecode/mp4parser/util/Mp4Arrays;->copyOfAndAppend([J[J)[J

    move-result-object v6

    .line 72
    .end local v2    # "currentSyncSampleIndex":I
    .end local v4    # "duration":J
    .end local v8    # "nextTargetTick":J
    .end local v13    # "syncSampleTicks":[J
    .end local v22    # "ticks":J
    :cond_0
    :goto_2
    return-object v6

    .line 30
    .restart local v4    # "duration":J
    .restart local v13    # "syncSampleTicks":[J
    .restart local v22    # "ticks":J
    :cond_1
    int-to-long v0, v7

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x1

    add-long v28, v28, v30

    move-wide/from16 v0, v28

    invoke-static {v14, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v12

    .line 31
    .local v12, "pos":I
    if-ltz v12, :cond_2

    .line 32
    aput-wide v22, v13, v12

    .line 34
    :cond_2
    aget-wide v28, v3, v7

    add-long v22, v22, v28

    .line 29
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 39
    .end local v12    # "pos":I
    .restart local v2    # "currentSyncSampleIndex":I
    .restart local v8    # "nextTargetTick":J
    :cond_3
    aget-wide v18, v13, v2

    .line 40
    .local v18, "tickN1":J
    add-int/lit8 v15, v2, 0x1

    aget-wide v20, v13, v15

    .line 41
    .local v20, "tickN2":J
    cmp-long v15, v8, v20

    if-gtz v15, :cond_4

    .line 42
    sub-long v28, v18, v8

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->abs(J)J

    move-result-wide v28

    sub-long v30, v20, v8

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->abs(J)J

    move-result-wide v30

    cmp-long v15, v28, v30

    if-gez v15, :cond_4

    .line 43
    const/4 v15, 0x1

    new-array v15, v15, [J

    const/16 v28, 0x0

    aget-wide v30, v14, v2

    aput-wide v30, v15, v28

    invoke-static {v6, v15}, Lcom/googlecode/mp4parser/util/Mp4Arrays;->copyOfAndAppend([J[J)[J

    move-result-object v6

    .line 44
    aget-wide v28, v13, v2

    add-long v8, v28, v16

    .line 38
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 53
    .end local v2    # "currentSyncSampleIndex":I
    .end local v4    # "duration":J
    .end local v7    # "i":I
    .end local v8    # "nextTargetTick":J
    .end local v13    # "syncSampleTicks":[J
    .end local v18    # "tickN1":J
    .end local v20    # "tickN2":J
    .end local v22    # "ticks":J
    :cond_5
    const-wide/16 v24, 0x0

    .line 54
    .local v24, "time":D
    const/4 v15, 0x1

    new-array v6, v15, [J

    .end local v6    # "fragments":[J
    const/4 v15, 0x0

    const-wide/16 v28, 0x1

    aput-wide v28, v6, v15

    .line 55
    .restart local v6    # "fragments":[J
    const/4 v7, 0x1

    .restart local v7    # "i":I
    :goto_3
    array-length v15, v3

    if-lt v7, v15, :cond_6

    .line 66
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/googlecode/mp4parser/authoring/builder/BetterFragmenter;->targetDuration:D

    move-wide/from16 v28, v0

    cmpg-double v15, v24, v28

    if-gez v15, :cond_0

    array-length v15, v6

    const/16 v28, 0x1

    move/from16 v0, v28

    if-le v15, v0, :cond_0

    .line 67
    array-length v15, v3

    add-int/lit8 v15, v15, 0x1

    int-to-long v0, v15

    move-wide/from16 v28, v0

    array-length v15, v6

    add-int/lit8 v15, v15, -0x2

    aget-wide v30, v6, v15

    sub-long v10, v28, v30

    .line 68
    .local v10, "numberSamplesLastTwoSegments":J
    array-length v15, v6

    add-int/lit8 v15, v15, -0x1

    array-length v0, v6

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x2

    aget-wide v28, v6, v28

    const-wide/16 v30, 0x2

    div-long v30, v10, v30

    add-long v28, v28, v30

    aput-wide v28, v6, v15

    goto/16 :goto_2

    .line 56
    .end local v10    # "numberSamplesLastTwoSegments":J
    :cond_6
    aget-wide v28, v3, v7

    move-wide/from16 v0, v28

    long-to-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v0, v26

    long-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v28, v28, v30

    add-double v24, v24, v28

    .line 57
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/googlecode/mp4parser/authoring/builder/BetterFragmenter;->targetDuration:D

    move-wide/from16 v28, v0

    cmpl-double v15, v24, v28

    if-ltz v15, :cond_8

    .line 58
    if-lez v7, :cond_7

    .line 59
    const/4 v15, 0x1

    new-array v15, v15, [J

    const/16 v28, 0x0

    add-int/lit8 v29, v7, 0x1

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v30, v0

    aput-wide v30, v15, v28

    invoke-static {v6, v15}, Lcom/googlecode/mp4parser/util/Mp4Arrays;->copyOfAndAppend([J[J)[J

    move-result-object v6

    .line 62
    :cond_7
    const-wide/16 v24, 0x0

    .line 55
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3
.end method
