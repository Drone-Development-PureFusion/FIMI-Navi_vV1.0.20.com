.class public Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;
.super Ljava/lang/Thread;
.source "X8FlightLogFileSeachDeleteThread.java"


# instance fields
.field private deleteAll:Z

.field private flightDurationNumber:I

.field private flightMileageNumber:F

.field private handler:Landroid/os/Handler;

.field private isSeach:Z

.field private uploadSuccessfulAll:Z

.field private x8FlightLogAdapter:Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;


# direct methods
.method public constructor <init>(Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;Landroid/os/Handler;ZZZ)V
    .locals 0
    .param p1, "x8FlightLogAdapter"    # Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "seachOrDelete"    # Z
    .param p4, "deleteAll"    # Z
    .param p5, "uploadSuccessfulAll"    # Z

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;->x8FlightLogAdapter:Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;

    .line 43
    iput-object p2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;->handler:Landroid/os/Handler;

    .line 44
    iput-boolean p3, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;->isSeach:Z

    .line 45
    iput-boolean p4, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;->deleteAll:Z

    .line 46
    iput-boolean p5, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;->uploadSuccessfulAll:Z

    .line 47
    return-void
.end method

.method private deleteFile()V
    .locals 3

    .prologue
    .line 61
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;->x8FlightLogAdapter:Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;

    if-nez v1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;->x8FlightLogAdapter:Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->getSection()Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;->getList()Ljava/util/List;

    move-result-object v0

    .line 63
    .local v0, "x8FlightLogFiles":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/entity/X8FlightLogFile;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 64
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;->deleteAll:Z

    invoke-static {v0, v1}, Lcom/fimi/x8sdk/util/X8FileHelper;->deleteFlightLogFiles(Ljava/util/List;Z)V

    .line 65
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;->handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 66
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;->seachFile()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 52
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;->isSeach:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;->seachFile()V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;->deleteFile()V

    goto :goto_0
.end method

.method public seachFile()V
    .locals 32

    .prologue
    .line 70
    const/4 v10, 0x0

    .line 71
    .local v10, "fileInputStream":Ljava/io/FileInputStream;
    const-string v27, ""

    invoke-static/range {v27 .. v27}, Lcom/fimi/x8sdk/util/X8FileHelper;->flightLogListDirs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 72
    .local v16, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    if-eqz v16, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_b

    .line 74
    const-string v22, "\\d{4}-\\d{2}-\\d{2}"

    .line 75
    .local v22, "regex":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v21

    .line 77
    .local v21, "p":Ljava/util/regex/Pattern;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v18, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/entity/X8FlightLogFile;>;"
    const/16 v24, 0x0

    .line 79
    .local v24, "total":I
    const/4 v5, 0x0

    .line 80
    .local v5, "complete":I
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_0
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_8

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 81
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/fimi/x8sdk/util/X8FileHelper;->flightLogListDirs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    .line 82
    .local v17, "list2":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    if-eqz v17, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v28

    if-lez v28, :cond_0

    .line 83
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_1
    :goto_0
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_0

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    .line 84
    .local v9, "file2":Ljava/io/File;
    new-instance v26, Lcom/fimi/x8sdk/entity/X8FlightLogFile;

    invoke-direct/range {v26 .. v26}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;-><init>()V

    .line 85
    .local v26, "x8FlightLogFile":Lcom/fimi/x8sdk/entity/X8FlightLogFile;
    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->setFile(Ljava/io/File;)V

    .line 86
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->setFileName(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v19

    .line 90
    .local v19, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/fimi/x8sdk/X8FcLogManager;->getCurrentWriteFile()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_1

    .line 94
    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->find()Z

    move-result v29

    if-eqz v29, :cond_3

    .line 96
    const/16 v29, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, "date":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;->uploadSuccessfulAll:Z

    move/from16 v29, v0

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v9, v1}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->setPlaybackFile(Ljava/io/File;Z)Z

    move-result v23

    .line 102
    .local v23, "ret":Z
    if-eqz v23, :cond_2

    .line 103
    add-int/lit8 v5, v5, 0x1

    .line 105
    :cond_2
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v24, v24, 0x1

    .line 109
    .end local v6    # "date":Ljava/lang/String;
    .end local v23    # "ret":Z
    :cond_3
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .end local v10    # "fileInputStream":Ljava/io/FileInputStream;
    .local v11, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v11}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v12

    .line 111
    .local v12, "fileSize":J
    const-wide/16 v30, 0xc

    sub-long v30, v12, v30

    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v20, v0

    .line 112
    .local v20, "offset":I
    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    invoke-virtual {v11, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    .line 113
    const-wide/16 v30, 0x0

    cmp-long v29, v12, v30

    if-eqz v29, :cond_4

    .line 114
    const/16 v29, 0xc

    move/from16 v0, v29

    new-array v4, v0, [B

    .line 115
    .local v4, "bytes":[B
    const/16 v29, 0x0

    array-length v0, v4

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v11, v4, v0, v1}, Ljava/io/FileInputStream;->read([BII)I

    .line 116
    const/16 v29, 0x0

    aget-byte v29, v4, v29

    const/16 v30, -0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    const/16 v29, 0x1

    aget-byte v29, v4, v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    .line 117
    const/16 v29, 0x4

    move/from16 v0, v29

    invoke-static {v4, v0}, Lcom/fimi/kernel/utils/ByteUtil;->bytesToInt([BI)I

    move-result v14

    .line 119
    .local v14, "flightDuration":I
    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->setFlightDuration(I)V

    .line 120
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;->flightDurationNumber:I

    move/from16 v29, v0

    add-int v29, v29, v14

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;->flightDurationNumber:I

    .line 121
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-static {v4, v0}, Lcom/fimi/kernel/utils/ByteUtil;->byte2float([BI)F

    move-result v15

    .line 122
    .local v15, "flightMileage":F
    const/high16 v29, 0x447a0000    # 1000.0f

    cmpg-float v29, v15, v29

    if-gez v29, :cond_6

    .line 123
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Float;->intValue()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->setFlightMileage(Ljava/lang/String;)V

    .line 127
    :goto_1
    const/16 v29, 0x0

    cmpl-float v29, v15, v29

    if-lez v29, :cond_4

    .line 128
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;->flightMileageNumber:F

    move/from16 v29, v0

    add-float v29, v29, v15

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;->flightMileageNumber:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 148
    .end local v4    # "bytes":[B
    .end local v14    # "flightDuration":I
    .end local v15    # "flightMileage":F
    :cond_4
    if-eqz v11, :cond_5

    .line 149
    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_5
    move-object v10, v11

    .line 152
    .end local v11    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v10    # "fileInputStream":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 125
    .end local v10    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "bytes":[B
    .restart local v11    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v14    # "flightDuration":I
    .restart local v15    # "flightMileage":F
    :cond_6
    const/16 v29, 0x1

    :try_start_3
    move/from16 v0, v29

    invoke-static {v15, v0}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberNoPrexString(FI)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->setFlightMileage(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 144
    .end local v4    # "bytes":[B
    .end local v12    # "fileSize":J
    .end local v14    # "flightDuration":I
    .end local v15    # "flightMileage":F
    .end local v20    # "offset":I
    :catch_0
    move-exception v7

    move-object v10, v11

    .line 145
    .end local v11    # "fileInputStream":Ljava/io/FileInputStream;
    .local v7, "e":Ljava/lang/Exception;
    .restart local v10    # "fileInputStream":Ljava/io/FileInputStream;
    :goto_2
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 148
    if-eqz v10, :cond_1

    .line 149
    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 150
    :catch_1
    move-exception v7

    .line 151
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 150
    .end local v7    # "e":Ljava/io/IOException;
    .end local v10    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v11    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v12    # "fileSize":J
    .restart local v20    # "offset":I
    :catch_2
    move-exception v7

    .line 151
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    move-object v10, v11

    .line 154
    .end local v11    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v10    # "fileInputStream":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 147
    .end local v7    # "e":Ljava/io/IOException;
    .end local v12    # "fileSize":J
    .end local v20    # "offset":I
    :catchall_0
    move-exception v27

    .line 148
    :goto_3
    if-eqz v10, :cond_7

    .line 149
    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 154
    :cond_7
    :goto_4
    throw v27

    .line 150
    :catch_3
    move-exception v7

    .line 151
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 159
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "file2":Ljava/io/File;
    .end local v17    # "list2":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v19    # "matcher":Ljava/util/regex/Matcher;
    .end local v26    # "x8FlightLogFile":Lcom/fimi/x8sdk/entity/X8FlightLogFile;
    :cond_8
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_a

    .line 160
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;->sort(Ljava/util/List;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;->x8FlightLogAdapter:Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;

    move-object/from16 v27, v0

    const-string v28, ""

    new-instance v29, Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;

    const/16 v30, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;-><init>(Ljava/util/List;Z)V

    invoke-virtual/range {v27 .. v29}, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->addSection(Ljava/lang/String;Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;)V

    .line 162
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;->flightMileageNumber:F

    move/from16 v27, v0

    const/high16 v28, 0x447a0000    # 1000.0f

    cmpl-float v27, v27, v28

    if-ltz v27, :cond_9

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;->x8FlightLogAdapter:Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;->flightMileageNumber:F

    move/from16 v29, v0

    const/high16 v30, 0x447a0000    # 1000.0f

    div-float v29, v29, v30

    const/16 v30, 0x1

    invoke-static/range {v29 .. v30}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberNoPrexString(FI)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "km"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->setPlaybackDistance(Ljava/lang/String;)V

    .line 168
    :goto_5
    invoke-static {}, Lcom/fimi/kernel/utils/TimerUtil;->getInstance()Lcom/fimi/kernel/utils/TimerUtil;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;->flightDurationNumber:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/fimi/kernel/utils/TimerUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object v25

    .line 169
    .local v25, "totalTime":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;->x8FlightLogAdapter:Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->setPlaybackTotalTime(Ljava/lang/String;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;->handler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v24

    invoke-virtual {v0, v1, v5, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/os/Message;->sendToTarget()V

    .line 191
    .end local v5    # "complete":I
    .end local v18    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/entity/X8FlightLogFile;>;"
    .end local v21    # "p":Ljava/util/regex/Pattern;
    .end local v22    # "regex":Ljava/lang/String;
    .end local v24    # "total":I
    .end local v25    # "totalTime":Ljava/lang/String;
    :goto_6
    return-void

    .line 165
    .restart local v5    # "complete":I
    .restart local v18    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/entity/X8FlightLogFile;>;"
    .restart local v21    # "p":Ljava/util/regex/Pattern;
    .restart local v22    # "regex":Ljava/lang/String;
    .restart local v24    # "total":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;->x8FlightLogAdapter:Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;->flightMileageNumber:F

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Float;->intValue()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "m"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->setPlaybackDistance(Ljava/lang/String;)V

    goto :goto_5

    .line 172
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;->handler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_6

    .line 189
    .end local v5    # "complete":I
    .end local v18    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/entity/X8FlightLogFile;>;"
    .end local v21    # "p":Ljava/util/regex/Pattern;
    .end local v22    # "regex":Ljava/lang/String;
    .end local v24    # "total":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;->handler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_6

    .line 147
    .end local v10    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "complete":I
    .restart local v8    # "file":Ljava/io/File;
    .restart local v9    # "file2":Ljava/io/File;
    .restart local v11    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v17    # "list2":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v18    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/entity/X8FlightLogFile;>;"
    .restart local v19    # "matcher":Ljava/util/regex/Matcher;
    .restart local v21    # "p":Ljava/util/regex/Pattern;
    .restart local v22    # "regex":Ljava/lang/String;
    .restart local v24    # "total":I
    .restart local v26    # "x8FlightLogFile":Lcom/fimi/x8sdk/entity/X8FlightLogFile;
    :catchall_1
    move-exception v27

    move-object v10, v11

    .end local v11    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v10    # "fileInputStream":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 144
    :catch_4
    move-exception v7

    goto/16 :goto_2
.end method

.method public sort(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/X8FlightLogFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/entity/X8FlightLogFile;>;"
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread$1;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 220
    return-void
.end method

.method public sortGroup(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread$2;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread$2;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogFileSeachDeleteThread;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 231
    return-void
.end method
