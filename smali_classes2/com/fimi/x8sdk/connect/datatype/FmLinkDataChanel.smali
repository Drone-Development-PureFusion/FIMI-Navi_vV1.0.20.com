.class public Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;
.super Ljava/lang/Object;
.source "FmLinkDataChanel.java"

# interfaces
.implements Lcom/fimi/x8sdk/connect/datatype/IDataChanel;


# instance fields
.field isResponse:Z

.field private mSeqCache:Lcom/fimi/kernel/connect/SeqCache;

.field private p:Lcom/fimi/kernel/dataparser/fmlink4/Parser4;

.field retransmissionHandle:Lcom/fimi/kernel/connect/interfaces/IRetransmissionHandle;

.field private statusManager:Lcom/fimi/x8sdk/connect/ConnectStatusManager;

.field timerSendQueueHandle:Lcom/fimi/kernel/connect/interfaces/ITimerSendQueueHandle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;

    invoke-direct {v0}, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->p:Lcom/fimi/kernel/dataparser/fmlink4/Parser4;

    .line 117
    new-instance v0, Lcom/fimi/x8sdk/connect/ConnectStatusManager;

    invoke-direct {v0}, Lcom/fimi/x8sdk/connect/ConnectStatusManager;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->statusManager:Lcom/fimi/x8sdk/connect/ConnectStatusManager;

    .line 121
    new-instance v0, Lcom/fimi/kernel/connect/SeqCache;

    invoke-direct {v0}, Lcom/fimi/kernel/connect/SeqCache;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->mSeqCache:Lcom/fimi/kernel/connect/SeqCache;

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->isResponse:Z

    return-void
.end method

.method private flightPlaybackLogUnPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;Z)V
    .locals 1
    .param p1, "linkPacket4"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;
    .param p2, "isFc"    # Z

    .prologue
    .line 1471
    new-instance v0, Lcom/fimi/x8sdk/dataparser/AutoBlackBox31;

    invoke-direct {v0}, Lcom/fimi/x8sdk/dataparser/AutoBlackBox31;-><init>()V

    .line 1472
    .local v0, "blackBox31":Lcom/fimi/x8sdk/dataparser/AutoBlackBox31;
    invoke-virtual {v0, p1, p2}, Lcom/fimi/x8sdk/dataparser/AutoBlackBox31;->unPacketIsFc(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;Z)V

    .line 1474
    return-void
.end method

.method private fromBatteryCmd(IILcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 2
    .param p1, "msgId"    # I
    .param p2, "groupId"    # I
    .param p3, "linkPacket4"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 328
    const/16 v1, 0x10

    if-ne p2, v1, :cond_0

    .line 329
    packed-switch p1, :pswitch_data_0

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 331
    :pswitch_0
    new-instance v0, Lcom/fimi/x8sdk/dataparser/AckVersion;

    invoke-direct {v0}, Lcom/fimi/x8sdk/dataparser/AckVersion;-><init>()V

    .line 332
    .local v0, "ackVersion":Lcom/fimi/x8sdk/dataparser/AckVersion;
    invoke-virtual {v0, p3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 333
    invoke-virtual {p0, p2, p1, v0, p3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto :goto_0

    .line 329
    :pswitch_data_0
    .packed-switch 0xb1
        :pswitch_0
    .end packed-switch
.end method

.method private fromCameraCmd(IILcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 20
    .param p1, "msgId"    # I
    .param p2, "groupId"    # I
    .param p3, "linkPacket4"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 1365
    const/16 v19, 0x10

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 1366
    sparse-switch p1, :sswitch_data_0

    .line 1406
    :cond_0
    :goto_0
    const/16 v19, 0x2

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 1407
    sparse-switch p1, :sswitch_data_1

    .line 1452
    :cond_1
    :goto_1
    return-void

    .line 1368
    :sswitch_0
    new-instance v14, Lcom/fimi/x8sdk/dataparser/AckVersion;

    invoke-direct {v14}, Lcom/fimi/x8sdk/dataparser/AckVersion;-><init>()V

    .line 1369
    .local v14, "ackVersion":Lcom/fimi/x8sdk/dataparser/AckVersion;
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Lcom/fimi/x8sdk/dataparser/AckVersion;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1370
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v14, v3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto :goto_0

    .line 1373
    .end local v14    # "ackVersion":Lcom/fimi/x8sdk/dataparser/AckVersion;
    :sswitch_1
    new-instance v17, Lcom/fimi/x8sdk/dataparser/AckUpdateRequest;

    invoke-direct/range {v17 .. v17}, Lcom/fimi/x8sdk/dataparser/AckUpdateRequest;-><init>()V

    .line 1374
    .local v17, "requestUpdate":Lcom/fimi/x8sdk/dataparser/AckUpdateRequest;
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckUpdateRequest;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1375
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v17

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto :goto_0

    .line 1379
    .end local v17    # "requestUpdate":Lcom/fimi/x8sdk/dataparser/AckUpdateRequest;
    :sswitch_2
    new-instance v13, Lcom/fimi/x8sdk/dataparser/AckUpdateRequestPutFile;

    invoke-direct {v13}, Lcom/fimi/x8sdk/dataparser/AckUpdateRequestPutFile;-><init>()V

    .line 1380
    .local v13, "ackUpdateRequestPutFile":Lcom/fimi/x8sdk/dataparser/AckUpdateRequestPutFile;
    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/fimi/x8sdk/dataparser/AckUpdateRequestPutFile;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1381
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v13, v3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto :goto_0

    .line 1386
    .end local v13    # "ackUpdateRequestPutFile":Lcom/fimi/x8sdk/dataparser/AckUpdateRequestPutFile;
    :sswitch_3
    new-instance v16, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;

    invoke-direct/range {v16 .. v16}, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;-><init>()V

    .line 1387
    .local v16, "autoNotifyFwFile":Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1388
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v16

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto :goto_0

    .line 1393
    .end local v16    # "autoNotifyFwFile":Lcom/fimi/x8sdk/dataparser/AutoNotifyFwFile;
    :sswitch_4
    new-instance v18, Lcom/fimi/x8sdk/dataparser/AckUpdateSystemStatus;

    invoke-direct/range {v18 .. v18}, Lcom/fimi/x8sdk/dataparser/AckUpdateSystemStatus;-><init>()V

    .line 1394
    .local v18, "systemStatus":Lcom/fimi/x8sdk/dataparser/AckUpdateSystemStatus;
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckUpdateSystemStatus;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1395
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v18

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_0

    .line 1399
    .end local v18    # "systemStatus":Lcom/fimi/x8sdk/dataparser/AckUpdateSystemStatus;
    :sswitch_5
    new-instance v12, Lcom/fimi/x8sdk/dataparser/AckUpdateCurrentProgress;

    invoke-direct {v12}, Lcom/fimi/x8sdk/dataparser/AckUpdateCurrentProgress;-><init>()V

    .line 1400
    .local v12, "ackUpdateCurrentProgress":Lcom/fimi/x8sdk/dataparser/AckUpdateCurrentProgress;
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/fimi/x8sdk/dataparser/AckUpdateCurrentProgress;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1401
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v12, v3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_0

    .line 1409
    .end local v12    # "ackUpdateCurrentProgress":Lcom/fimi/x8sdk/dataparser/AckUpdateCurrentProgress;
    :sswitch_6
    new-instance v11, Lcom/fimi/x8sdk/dataparser/AckTakePhoto;

    invoke-direct {v11}, Lcom/fimi/x8sdk/dataparser/AckTakePhoto;-><init>()V

    .line 1410
    .local v11, "ackTakePhoto":Lcom/fimi/x8sdk/dataparser/AckTakePhoto;
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/fimi/x8sdk/dataparser/AckTakePhoto;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1411
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v11, v3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_1

    .line 1414
    .end local v11    # "ackTakePhoto":Lcom/fimi/x8sdk/dataparser/AckTakePhoto;
    :sswitch_7
    new-instance v8, Lcom/fimi/x8sdk/dataparser/AckStartRecord;

    invoke-direct {v8}, Lcom/fimi/x8sdk/dataparser/AckStartRecord;-><init>()V

    .line 1415
    .local v8, "ackStartRecord":Lcom/fimi/x8sdk/dataparser/AckStartRecord;
    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Lcom/fimi/x8sdk/dataparser/AckStartRecord;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1416
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v8, v3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_1

    .line 1419
    .end local v8    # "ackStartRecord":Lcom/fimi/x8sdk/dataparser/AckStartRecord;
    :sswitch_8
    new-instance v9, Lcom/fimi/x8sdk/dataparser/AckStopRecord;

    invoke-direct {v9}, Lcom/fimi/x8sdk/dataparser/AckStopRecord;-><init>()V

    .line 1420
    .local v9, "ackStopRecord":Lcom/fimi/x8sdk/dataparser/AckStopRecord;
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Lcom/fimi/x8sdk/dataparser/AckStopRecord;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1421
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v9, v3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_1

    .line 1424
    .end local v9    # "ackStopRecord":Lcom/fimi/x8sdk/dataparser/AckStopRecord;
    :sswitch_9
    new-instance v7, Lcom/fimi/x8sdk/dataparser/AckCameraVideoMode;

    invoke-direct {v7}, Lcom/fimi/x8sdk/dataparser/AckCameraVideoMode;-><init>()V

    .line 1425
    .local v7, "ackCameraVideoMode":Lcom/fimi/x8sdk/dataparser/AckCameraVideoMode;
    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Lcom/fimi/x8sdk/dataparser/AckCameraVideoMode;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1426
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v7, v3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_1

    .line 1429
    .end local v7    # "ackCameraVideoMode":Lcom/fimi/x8sdk/dataparser/AckCameraVideoMode;
    :sswitch_a
    new-instance v6, Lcom/fimi/x8sdk/dataparser/AckCameraPhotoMode;

    invoke-direct {v6}, Lcom/fimi/x8sdk/dataparser/AckCameraPhotoMode;-><init>()V

    .line 1430
    .local v6, "ackCameraPhotoMode":Lcom/fimi/x8sdk/dataparser/AckCameraPhotoMode;
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Lcom/fimi/x8sdk/dataparser/AckCameraPhotoMode;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1431
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v6, v3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_1

    .line 1434
    .end local v6    # "ackCameraPhotoMode":Lcom/fimi/x8sdk/dataparser/AckCameraPhotoMode;
    :sswitch_b
    new-instance v5, Lcom/fimi/x8sdk/dataparser/AckCameraInterestMetering;

    invoke-direct {v5}, Lcom/fimi/x8sdk/dataparser/AckCameraInterestMetering;-><init>()V

    .line 1435
    .local v5, "ackCameraInterestMetering":Lcom/fimi/x8sdk/dataparser/AckCameraInterestMetering;
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/fimi/x8sdk/dataparser/AckCameraInterestMetering;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1436
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_1

    .line 1439
    .end local v5    # "ackCameraInterestMetering":Lcom/fimi/x8sdk/dataparser/AckCameraInterestMetering;
    :sswitch_c
    new-instance v15, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;

    invoke-direct {v15}, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;-><init>()V

    .line 1440
    .local v15, "autoCameraStateADV":Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;
    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1441
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v15, v3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1442
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/fimi/x8sdk/modulestate/CameraState;->setAutoCameraStateADV(Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;)V

    goto/16 :goto_1

    .line 1445
    .end local v15    # "autoCameraStateADV":Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;
    :sswitch_d
    new-instance v10, Lcom/fimi/x8sdk/dataparser/AckTFCarddCap;

    invoke-direct {v10}, Lcom/fimi/x8sdk/dataparser/AckTFCarddCap;-><init>()V

    .line 1446
    .local v10, "ackTFCarddCap":Lcom/fimi/x8sdk/dataparser/AckTFCarddCap;
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Lcom/fimi/x8sdk/dataparser/AckTFCarddCap;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1447
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v10, v3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_1

    .line 1366
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0xb1 -> :sswitch_0
    .end sparse-switch

    .line 1407
    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_7
        0x3 -> :sswitch_8
        0x4 -> :sswitch_6
        0x8 -> :sswitch_d
        0xa -> :sswitch_a
        0xb -> :sswitch_9
        0xc -> :sswitch_b
        0x15 -> :sswitch_c
    .end sparse-switch
.end method

.method private fromEscCmd(IILcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 2
    .param p1, "msgId"    # I
    .param p2, "groupId"    # I
    .param p3, "linkPacket4"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 463
    const/16 v1, 0x10

    if-ne p2, v1, :cond_0

    .line 464
    packed-switch p1, :pswitch_data_0

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 466
    :pswitch_0
    new-instance v0, Lcom/fimi/x8sdk/dataparser/AckVersion;

    invoke-direct {v0}, Lcom/fimi/x8sdk/dataparser/AckVersion;-><init>()V

    .line 467
    .local v0, "ackVersion":Lcom/fimi/x8sdk/dataparser/AckVersion;
    invoke-virtual {v0, p3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 468
    invoke-virtual {p0, p2, p1, v0, p3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto :goto_0

    .line 464
    :pswitch_data_0
    .packed-switch 0xb1
        :pswitch_0
    .end packed-switch
.end method

.method private fromFcCmd(IILcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 129
    .param p1, "msgId"    # I
    .param p2, "groupId"    # I
    .param p3, "linkPacket4"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 571
    const/16 v7, 0xb

    move/from16 v0, p2

    if-ne v0, v7, :cond_0

    .line 572
    packed-switch p1, :pswitch_data_0

    .line 590
    :cond_0
    :goto_0
    const/16 v7, 0x10

    move/from16 v0, p2

    if-ne v0, v7, :cond_1

    .line 591
    packed-switch p1, :pswitch_data_1

    .line 612
    :cond_1
    :goto_1
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/DroneState;->isConnect()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1288
    :cond_2
    :goto_2
    return-void

    .line 574
    :pswitch_0
    new-instance v64, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;

    invoke-direct/range {v64 .. v64}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;-><init>()V

    .line 575
    .local v64, "autoRockerStatePlayback":Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;
    move-object/from16 v0, v64

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 576
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v64

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 577
    invoke-virtual/range {v64 .. v64}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->getRockerKeyMessage()S

    move-result v114

    .line 578
    .local v114, "rockerKeyMessage":S
    shr-int/lit8 v7, v114, 0x1

    and-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 579
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPacketData()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/fimi/x8sdk/X8FcLogManager;->setRockerLandDownData([B)V

    .line 581
    :cond_3
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPacketData()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/fimi/x8sdk/X8FcLogManager;->setRockerStateData([B)V

    goto :goto_0

    .line 593
    .end local v64    # "autoRockerStatePlayback":Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;
    .end local v114    # "rockerKeyMessage":S
    :pswitch_1
    new-instance v58, Lcom/fimi/x8sdk/dataparser/AckVersion;

    invoke-direct/range {v58 .. v58}, Lcom/fimi/x8sdk/dataparser/AckVersion;-><init>()V

    .line 594
    .local v58, "ackVersion":Lcom/fimi/x8sdk/dataparser/AckVersion;
    move-object/from16 v0, v58

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckVersion;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 595
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v58

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 596
    sget-boolean v7, Lcom/fimi/x8sdk/rtp/X8Rtp;->simulationTest:Z

    if-eqz v7, :cond_1

    .line 598
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v7

    move-object/from16 v0, v58

    invoke-virtual {v7, v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->setModuleFcAckVersion(Lcom/fimi/x8sdk/dataparser/AckVersion;)V

    .line 599
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v7

    move-object/from16 v0, v58

    invoke-virtual {v7, v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->setModuleRepeaterRcVersion(Lcom/fimi/x8sdk/dataparser/AckVersion;)V

    .line 600
    new-instance v104, Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;

    invoke-direct/range {v104 .. v104}, Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;-><init>()V

    .line 601
    .local v104, "relayHeart":Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;
    const/16 v7, 0x7fd

    move-object/from16 v0, v104

    invoke-virtual {v0, v7}, Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;->setStatus(S)V

    .line 602
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v7

    invoke-virtual/range {v104 .. v104}, Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;->getStatus()S

    move-result v8

    invoke-virtual {v7, v8}, Lcom/fimi/x8sdk/modulestate/CameraState;->setCameraStatus(I)V

    .line 603
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/StateManager;->getRelayState()Lcom/fimi/x8sdk/modulestate/RelayState;

    move-result-object v7

    move-object/from16 v0, v104

    invoke-virtual {v7, v0}, Lcom/fimi/x8sdk/modulestate/RelayState;->setRelayHeart(Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;)V

    .line 604
    invoke-static {}, Lcom/fimi/x8sdk/process/RelayProcess;->getRelayProcess()Lcom/fimi/x8sdk/process/RelayProcess;

    move-result-object v7

    move-object/from16 v0, v104

    invoke-virtual {v7, v0}, Lcom/fimi/x8sdk/process/RelayProcess;->setRelayHeart(Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;)V

    goto/16 :goto_1

    .line 618
    .end local v58    # "ackVersion":Lcom/fimi/x8sdk/dataparser/AckVersion;
    .end local v104    # "relayHeart":Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;
    :cond_4
    const/4 v7, 0x4

    move/from16 v0, p2

    if-ne v0, v7, :cond_5

    .line 619
    sparse-switch p1, :sswitch_data_0

    .line 870
    :cond_5
    :goto_3
    const/4 v7, 0x3

    move/from16 v0, p2

    if-ne v0, v7, :cond_6

    .line 871
    packed-switch p1, :pswitch_data_2

    .line 1169
    :cond_6
    :goto_4
    :pswitch_2
    const/16 v7, 0xc

    move/from16 v0, p2

    if-ne v0, v7, :cond_8

    .line 1170
    packed-switch p1, :pswitch_data_3

    goto/16 :goto_2

    .line 1172
    :pswitch_3
    new-instance v82, Lcom/fimi/x8sdk/dataparser/AutoFcHeart;

    invoke-direct/range {v82 .. v82}, Lcom/fimi/x8sdk/dataparser/AutoFcHeart;-><init>()V

    .line 1173
    .local v82, "fcHeart":Lcom/fimi/x8sdk/dataparser/AutoFcHeart;
    move-object/from16 v0, v82

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AutoFcHeart;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1174
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v82

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1175
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v7

    move-object/from16 v0, v82

    invoke-virtual {v7, v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->setFcHeart(Lcom/fimi/x8sdk/dataparser/AutoFcHeart;)V

    .line 1176
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v7

    invoke-virtual/range {v82 .. v82}, Lcom/fimi/x8sdk/dataparser/AutoFcHeart;->getCtrlType()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/fimi/x8sdk/modulestate/DroneState;->setCtrlType(I)V

    .line 1177
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v7

    invoke-virtual/range {v82 .. v82}, Lcom/fimi/x8sdk/dataparser/AutoFcHeart;->getCtrlModel()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/fimi/x8sdk/modulestate/DroneState;->setCtrlMode(I)V

    .line 1178
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/StateManager;->getErrorCodeState()Lcom/fimi/x8sdk/modulestate/ErrorCodeState;

    move-result-object v7

    invoke-virtual/range {v82 .. v82}, Lcom/fimi/x8sdk/dataparser/AutoFcHeart;->getTakeOffCap()I

    move-result v8

    invoke-virtual/range {v82 .. v82}, Lcom/fimi/x8sdk/dataparser/AutoFcHeart;->getAutoTakeOffCap()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->setErroCodeAtcAndMtc(II)V

    .line 1179
    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v7}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->flightPlaybackLogUnPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;Z)V

    goto/16 :goto_2

    .line 621
    .end local v82    # "fcHeart":Lcom/fimi/x8sdk/dataparser/AutoFcHeart;
    :sswitch_0
    new-instance v68, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v68 .. v68}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 622
    .local v68, "common":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v68

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 623
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v68

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_3

    .line 626
    .end local v68    # "common":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :sswitch_1
    new-instance v69, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v69 .. v69}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 627
    .local v69, "common1":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v69

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 628
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v69

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_3

    .line 631
    .end local v69    # "common1":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :sswitch_2
    new-instance v35, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v35 .. v35}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 632
    .local v35, "ackNormalCmds":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v35

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 633
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v35

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_3

    .line 637
    .end local v35    # "ackNormalCmds":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :sswitch_3
    new-instance v91, Lcom/fimi/x8sdk/dataparser/AckGetSportMode;

    invoke-direct/range {v91 .. v91}, Lcom/fimi/x8sdk/dataparser/AckGetSportMode;-><init>()V

    .line 638
    .local v91, "getSportMode":Lcom/fimi/x8sdk/dataparser/AckGetSportMode;
    move-object/from16 v0, v91

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckGetSportMode;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 639
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v91

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_3

    .line 642
    .end local v91    # "getSportMode":Lcom/fimi/x8sdk/dataparser/AckGetSportMode;
    :sswitch_4
    new-instance v113, Lcom/fimi/x8sdk/dataparser/AckGetRetHeight;

    invoke-direct/range {v113 .. v113}, Lcom/fimi/x8sdk/dataparser/AckGetRetHeight;-><init>()V

    .line 643
    .local v113, "retHeight":Lcom/fimi/x8sdk/dataparser/AckGetRetHeight;
    move-object/from16 v0, v113

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckGetRetHeight;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 644
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v113

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 645
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v7

    invoke-virtual/range {v113 .. v113}, Lcom/fimi/x8sdk/dataparser/AckGetRetHeight;->getHeight()F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/fimi/x8sdk/modulestate/DroneState;->setReturnHomeHight(F)V

    goto/16 :goto_3

    .line 648
    .end local v113    # "retHeight":Lcom/fimi/x8sdk/dataparser/AckGetRetHeight;
    :sswitch_5
    new-instance v121, Lcom/fimi/x8sdk/dataparser/AckSetRetHeight;

    invoke-direct/range {v121 .. v121}, Lcom/fimi/x8sdk/dataparser/AckSetRetHeight;-><init>()V

    .line 649
    .local v121, "setRetHeight":Lcom/fimi/x8sdk/dataparser/AckSetRetHeight;
    move-object/from16 v0, v121

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckSetRetHeight;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 650
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v121

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_3

    .line 653
    .end local v121    # "setRetHeight":Lcom/fimi/x8sdk/dataparser/AckSetRetHeight;
    :sswitch_6
    new-instance v120, Lcom/fimi/x8sdk/dataparser/AckSetLostAction;

    invoke-direct/range {v120 .. v120}, Lcom/fimi/x8sdk/dataparser/AckSetLostAction;-><init>()V

    .line 654
    .local v120, "setLostAction":Lcom/fimi/x8sdk/dataparser/AckSetLostAction;
    move-object/from16 v0, v120

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckSetLostAction;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 655
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v120

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_3

    .line 658
    .end local v120    # "setLostAction":Lcom/fimi/x8sdk/dataparser/AckSetLostAction;
    :sswitch_7
    new-instance v88, Lcom/fimi/x8sdk/dataparser/AckGetLostAction;

    invoke-direct/range {v88 .. v88}, Lcom/fimi/x8sdk/dataparser/AckGetLostAction;-><init>()V

    .line 659
    .local v88, "getLostAction":Lcom/fimi/x8sdk/dataparser/AckGetLostAction;
    move-object/from16 v0, v88

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckGetLostAction;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 660
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v88

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 661
    invoke-virtual/range {v88 .. v88}, Lcom/fimi/x8sdk/dataparser/AckGetLostAction;->getAction()I

    move-result v7

    sput v7, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->lostAction:I

    goto/16 :goto_3

    .line 664
    .end local v88    # "getLostAction":Lcom/fimi/x8sdk/dataparser/AckGetLostAction;
    :sswitch_8
    new-instance v103, Lcom/fimi/x8sdk/dataparser/AckSetFcParam;

    invoke-direct/range {v103 .. v103}, Lcom/fimi/x8sdk/dataparser/AckSetFcParam;-><init>()V

    .line 665
    .local v103, "param":Lcom/fimi/x8sdk/dataparser/AckSetFcParam;
    move-object/from16 v0, v103

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckSetFcParam;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 666
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v103

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_3

    .line 669
    .end local v103    # "param":Lcom/fimi/x8sdk/dataparser/AckSetFcParam;
    :sswitch_9
    new-instance v83, Lcom/fimi/x8sdk/dataparser/AckGetFcParam;

    invoke-direct/range {v83 .. v83}, Lcom/fimi/x8sdk/dataparser/AckGetFcParam;-><init>()V

    .line 670
    .local v83, "fcParam":Lcom/fimi/x8sdk/dataparser/AckGetFcParam;
    move-object/from16 v0, v83

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckGetFcParam;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 671
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v83

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_3

    .line 674
    .end local v83    # "fcParam":Lcom/fimi/x8sdk/dataparser/AckGetFcParam;
    :sswitch_a
    new-instance v70, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v70 .. v70}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 675
    .local v70, "d":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v70

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 676
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v70

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_3

    .line 679
    .end local v70    # "d":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :sswitch_b
    new-instance v61, Lcom/fimi/x8sdk/dataparser/AckGetPilotMode;

    invoke-direct/range {v61 .. v61}, Lcom/fimi/x8sdk/dataparser/AckGetPilotMode;-><init>()V

    .line 680
    .local v61, "afcParam":Lcom/fimi/x8sdk/dataparser/AckGetPilotMode;
    move-object/from16 v0, v61

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckGetPilotMode;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 681
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v61

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 682
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v7

    invoke-virtual/range {v61 .. v61}, Lcom/fimi/x8sdk/dataparser/AckGetPilotMode;->getPilotMode()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/fimi/x8sdk/modulestate/DroneState;->setPilotMode(I)V

    goto/16 :goto_3

    .line 685
    .end local v61    # "afcParam":Lcom/fimi/x8sdk/dataparser/AckGetPilotMode;
    :sswitch_c
    new-instance v63, Lcom/fimi/x8sdk/dataparser/AckGetApMode;

    invoke-direct/range {v63 .. v63}, Lcom/fimi/x8sdk/dataparser/AckGetApMode;-><init>()V

    .line 686
    .local v63, "apMode":Lcom/fimi/x8sdk/dataparser/AckGetApMode;
    move-object/from16 v0, v63

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckGetApMode;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 687
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v63

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_3

    .line 690
    .end local v63    # "apMode":Lcom/fimi/x8sdk/dataparser/AckGetApMode;
    :sswitch_d
    new-instance v116, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v116 .. v116}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 691
    .local v116, "setCmd":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v116

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 692
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v116

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_3

    .line 695
    .end local v116    # "setCmd":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :sswitch_e
    new-instance v94, Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;

    invoke-direct/range {v94 .. v94}, Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;-><init>()V

    .line 696
    .local v94, "lowPowerOpt":Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;
    move-object/from16 v0, v94

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 697
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v94

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 699
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPacketData()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/fimi/x8sdk/X8FcLogManager;->setLowPowerData([B)V

    goto/16 :goto_3

    .line 702
    .end local v94    # "lowPowerOpt":Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;
    :sswitch_f
    new-instance v117, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v117 .. v117}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 703
    .local v117, "setCmds":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v117

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 704
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v117

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_3

    .line 707
    .end local v117    # "setCmds":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :sswitch_10
    new-instance v89, Lcom/fimi/x8sdk/dataparser/AckGetOpticFlow;

    invoke-direct/range {v89 .. v89}, Lcom/fimi/x8sdk/dataparser/AckGetOpticFlow;-><init>()V

    .line 708
    .local v89, "getOpticFlow":Lcom/fimi/x8sdk/dataparser/AckGetOpticFlow;
    move-object/from16 v0, v89

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckGetOpticFlow;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 709
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v89

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_3

    .line 713
    .end local v89    # "getOpticFlow":Lcom/fimi/x8sdk/dataparser/AckGetOpticFlow;
    :sswitch_11
    new-instance v105, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v105 .. v105}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 714
    .local v105, "respCmd":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v105

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 715
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v105

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_3

    .line 719
    .end local v105    # "respCmd":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :sswitch_12
    new-instance v106, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;

    invoke-direct/range {v106 .. v106}, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;-><init>()V

    .line 720
    .local v106, "respCmd1":Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;
    move-object/from16 v0, v106

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 721
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v106

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 722
    invoke-virtual/range {v106 .. v106}, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->getPitchPercent()I

    move-result v7

    invoke-virtual/range {v106 .. v106}, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->getRollPercent()I

    move-result v8

    invoke-virtual/range {v106 .. v106}, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->getThroPercent()I

    move-result v9

    invoke-virtual/range {v106 .. v106}, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->getYawPercent()I

    move-result v10

    invoke-static {v7, v8, v9, v10}, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->setFs(IIII)V

    .line 723
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v7

    invoke-virtual/range {v106 .. v106}, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->getYawPercent()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/fimi/x8sdk/modulestate/DroneState;->setFcYAWSenssity(I)V

    goto/16 :goto_3

    .line 726
    .end local v106    # "respCmd1":Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;
    :sswitch_13
    new-instance v118, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v118 .. v118}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 727
    .local v118, "setEnableBack":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v118

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 728
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v118

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_3

    .line 731
    .end local v118    # "setEnableBack":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :sswitch_14
    new-instance v107, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v107 .. v107}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 732
    .local v107, "respCmd2":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v107

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 733
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v107

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_3

    .line 737
    .end local v107    # "respCmd2":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :sswitch_15
    new-instance v108, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;

    invoke-direct/range {v108 .. v108}, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;-><init>()V

    .line 738
    .local v108, "respCmd3":Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;
    move-object/from16 v0, v108

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 739
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v108

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 740
    invoke-virtual/range {v108 .. v108}, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->getPitchPercent()I

    move-result v7

    invoke-virtual/range {v108 .. v108}, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->getRollPercent()I

    move-result v8

    invoke-virtual/range {v108 .. v108}, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->getThroPercent()I

    move-result v9

    invoke-virtual/range {v108 .. v108}, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->getYawPercent()I

    move-result v10

    invoke-static {v7, v8, v9, v10}, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->setFb(IIII)V

    .line 741
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v7

    invoke-virtual/range {v108 .. v108}, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->getRollPercent()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/fimi/x8sdk/modulestate/DroneState;->setFcBrakeSenssity(I)V

    goto/16 :goto_3

    .line 745
    .end local v108    # "respCmd3":Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;
    :sswitch_16
    new-instance v109, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v109 .. v109}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 746
    .local v109, "respCmd4":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v109

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 747
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v109

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_3

    .line 750
    .end local v109    # "respCmd4":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :sswitch_17
    new-instance v86, Lcom/fimi/x8sdk/dataparser/AckAiFollowGetEnableBack;

    invoke-direct/range {v86 .. v86}, Lcom/fimi/x8sdk/dataparser/AckAiFollowGetEnableBack;-><init>()V

    .line 751
    .local v86, "getEnableBack":Lcom/fimi/x8sdk/dataparser/AckAiFollowGetEnableBack;
    move-object/from16 v0, v86

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckAiFollowGetEnableBack;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 752
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v86

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 753
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v7

    invoke-virtual/range {v86 .. v86}, Lcom/fimi/x8sdk/dataparser/AckAiFollowGetEnableBack;->getEnable()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/fimi/x8sdk/modulestate/DroneState;->setFollowReturn(I)V

    goto/16 :goto_3

    .line 756
    .end local v86    # "getEnableBack":Lcom/fimi/x8sdk/dataparser/AckAiFollowGetEnableBack;
    :sswitch_18
    new-instance v110, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;

    invoke-direct/range {v110 .. v110}, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;-><init>()V

    .line 757
    .local v110, "respCmd5":Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;
    move-object/from16 v0, v110

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 758
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v110

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 759
    invoke-virtual/range {v110 .. v110}, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->getPitchPercent()I

    move-result v7

    invoke-virtual/range {v110 .. v110}, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->getRollPercent()I

    move-result v8

    invoke-virtual/range {v110 .. v110}, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->getThroPercent()I

    move-result v9

    invoke-virtual/range {v110 .. v110}, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->getYawPercent()I

    move-result v10

    invoke-static {v7, v8, v9, v10}, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->setYawTrip(IIII)V

    goto/16 :goto_3

    .line 763
    .end local v110    # "respCmd5":Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;
    :sswitch_19
    new-instance v111, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v111 .. v111}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 764
    .local v111, "respCmd6":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v111

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 765
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v111

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_3

    .line 769
    .end local v111    # "respCmd6":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :sswitch_1a
    new-instance v112, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;

    invoke-direct/range {v112 .. v112}, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;-><init>()V

    .line 770
    .local v112, "respCmd7":Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;
    move-object/from16 v0, v112

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 771
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v112

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 772
    invoke-virtual/range {v112 .. v112}, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->getPitchPercent()I

    move-result v7

    invoke-virtual/range {v112 .. v112}, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->getRollPercent()I

    move-result v8

    invoke-virtual/range {v112 .. v112}, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->getThroPercent()I

    move-result v9

    invoke-virtual/range {v112 .. v112}, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->getYawPercent()I

    move-result v10

    invoke-static {v7, v8, v9, v10}, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->setExp(IIII)V

    goto/16 :goto_3

    .line 775
    .end local v112    # "respCmd7":Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;
    :sswitch_1b
    new-instance v115, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v115 .. v115}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 776
    .local v115, "setAutoHome":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v115

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 777
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v115

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_3

    .line 781
    .end local v115    # "setAutoHome":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :sswitch_1c
    new-instance v22, Lcom/fimi/x8sdk/dataparser/cmd/AckGetAutoHome;

    invoke-direct/range {v22 .. v22}, Lcom/fimi/x8sdk/dataparser/cmd/AckGetAutoHome;-><init>()V

    .line 782
    .local v22, "ackGetAutoHome":Lcom/fimi/x8sdk/dataparser/cmd/AckGetAutoHome;
    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/cmd/AckGetAutoHome;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 783
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v22

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 784
    invoke-virtual/range {v22 .. v22}, Lcom/fimi/x8sdk/dataparser/cmd/AckGetAutoHome;->getState()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    const/4 v7, 0x1

    :goto_5
    invoke-static {v7}, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->noChangeFollowRP(Z)V

    goto/16 :goto_3

    :cond_7
    const/4 v7, 0x0

    goto :goto_5

    .line 798
    .end local v22    # "ackGetAutoHome":Lcom/fimi/x8sdk/dataparser/cmd/AckGetAutoHome;
    :sswitch_1d
    new-instance v79, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v79 .. v79}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 799
    .local v79, "enableTripod":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v79

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 800
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v79

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_3

    .line 804
    .end local v79    # "enableTripod":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :sswitch_1e
    new-instance v74, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v74 .. v74}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 805
    .local v74, "disenableTripod":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v74

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 806
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v74

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_3

    .line 809
    .end local v74    # "disenableTripod":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :sswitch_1f
    new-instance v76, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v76 .. v76}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 810
    .local v76, "enableAerailShot":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v76

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 811
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v76

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_3

    .line 814
    .end local v76    # "enableAerailShot":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :sswitch_20
    new-instance v72, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v72 .. v72}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 815
    .local v72, "disenableAerailShot":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v72

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 816
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v72

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_3

    .line 819
    .end local v72    # "disenableAerailShot":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :sswitch_21
    new-instance v77, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v77 .. v77}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 820
    .local v77, "enableFixwing":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v77

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 821
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v77

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_3

    .line 824
    .end local v77    # "enableFixwing":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :sswitch_22
    new-instance v6, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct {v6}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 825
    .local v6, "DisenableFixwing":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 826
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v6, v3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_3

    .line 829
    .end local v6    # "DisenableFixwing":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :sswitch_23
    new-instance v78, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v78 .. v78}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 830
    .local v78, "enableHeadingFree":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v78

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 831
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v78

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_3

    .line 834
    .end local v78    # "enableHeadingFree":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :sswitch_24
    new-instance v73, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v73 .. v73}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 835
    .local v73, "disenableHeadingFree":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v73

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 836
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v73

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_3

    .line 839
    .end local v73    # "disenableHeadingFree":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :sswitch_25
    new-instance v101, Lcom/fimi/x8sdk/dataparser/AutoFixedwingState;

    invoke-direct/range {v101 .. v101}, Lcom/fimi/x8sdk/dataparser/AutoFixedwingState;-><init>()V

    .line 840
    .local v101, "mAutoFixedwingState":Lcom/fimi/x8sdk/dataparser/AutoFixedwingState;
    move-object/from16 v0, v101

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AutoFixedwingState;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 841
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v7

    move-object/from16 v0, v101

    invoke-virtual {v7, v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->setAutoFixedwingState(Lcom/fimi/x8sdk/dataparser/AutoFixedwingState;)V

    goto/16 :goto_3

    .line 844
    .end local v101    # "mAutoFixedwingState":Lcom/fimi/x8sdk/dataparser/AutoFixedwingState;
    :sswitch_26
    new-instance v125, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v125 .. v125}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 845
    .local v125, "updateHeadingFree":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v125

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 846
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v125

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_3

    .line 849
    .end local v125    # "updateHeadingFree":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :sswitch_27
    new-instance v75, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v75 .. v75}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 850
    .local v75, "enableAccurate":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v75

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 851
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v75

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 852
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/fimi/x8sdk/modulestate/DroneState;->setAccurateLanding(I)V

    goto/16 :goto_3

    .line 855
    .end local v75    # "enableAccurate":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :sswitch_28
    new-instance v71, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v71 .. v71}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 856
    .local v71, "disenableAccurate":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v71

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 857
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v71

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 858
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/fimi/x8sdk/modulestate/DroneState;->setAccurateLanding(I)V

    goto/16 :goto_3

    .line 861
    .end local v71    # "disenableAccurate":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :sswitch_29
    new-instance v85, Lcom/fimi/x8sdk/dataparser/AckAccurateLanding;

    invoke-direct/range {v85 .. v85}, Lcom/fimi/x8sdk/dataparser/AckAccurateLanding;-><init>()V

    .line 862
    .local v85, "getAccurateLanding":Lcom/fimi/x8sdk/dataparser/AckAccurateLanding;
    move-object/from16 v0, v85

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckAccurateLanding;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 863
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v85

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 864
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v7

    invoke-virtual/range {v85 .. v85}, Lcom/fimi/x8sdk/dataparser/AckAccurateLanding;->getState()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/fimi/x8sdk/modulestate/DroneState;->setAccurateLanding(I)V

    goto/16 :goto_3

    .line 873
    .end local v85    # "getAccurateLanding":Lcom/fimi/x8sdk/dataparser/AckAccurateLanding;
    :pswitch_4
    new-instance v56, Lcom/fimi/x8sdk/dataparser/AckTakeOffAndLand;

    invoke-direct/range {v56 .. v56}, Lcom/fimi/x8sdk/dataparser/AckTakeOffAndLand;-><init>()V

    .line 874
    .local v56, "ackTakeOffAndLand":Lcom/fimi/x8sdk/dataparser/AckTakeOffAndLand;
    move-object/from16 v0, v56

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckTakeOffAndLand;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 875
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v56

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 876
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/fimi/x8sdk/X8FcLogManager;->setPreLandDown(Z)V

    goto/16 :goto_4

    .line 879
    .end local v56    # "ackTakeOffAndLand":Lcom/fimi/x8sdk/dataparser/AckTakeOffAndLand;
    :pswitch_5
    new-instance v57, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v57 .. v57}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 880
    .local v57, "ackTakeoffExit":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v57

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 881
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v57

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 884
    .end local v57    # "ackTakeoffExit":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_6
    new-instance v124, Lcom/fimi/x8sdk/dataparser/AckTakeOffAndLand;

    invoke-direct/range {v124 .. v124}, Lcom/fimi/x8sdk/dataparser/AckTakeOffAndLand;-><init>()V

    .line 885
    .local v124, "takeOffAndLand":Lcom/fimi/x8sdk/dataparser/AckTakeOffAndLand;
    move-object/from16 v0, v124

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckTakeOffAndLand;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 886
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v124

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 889
    .end local v124    # "takeOffAndLand":Lcom/fimi/x8sdk/dataparser/AckTakeOffAndLand;
    :pswitch_7
    new-instance v31, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v31 .. v31}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 890
    .local v31, "ackLandExit":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 891
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v31

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 894
    .end local v31    # "ackLandExit":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_8
    new-instance v97, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v97 .. v97}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 895
    .local v97, "mAckAiFollowStanby":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v97

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 896
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v97

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 899
    .end local v97    # "mAckAiFollowStanby":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_9
    new-instance v128, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v128 .. v128}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 900
    .local v128, "vcOpen":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v128

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 901
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v128

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 904
    .end local v128    # "vcOpen":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_a
    new-instance v126, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v126 .. v126}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 905
    .local v126, "vcClodse":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v126

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 906
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v126

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 909
    .end local v126    # "vcClodse":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_b
    new-instance v127, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v127 .. v127}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 910
    .local v127, "vcNotityFc":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v127

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 911
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v127

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 914
    .end local v127    # "vcNotityFc":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_c
    new-instance v95, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v95 .. v95}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 915
    .local v95, "mAckAiFollowExcute":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v95

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 916
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v95

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 919
    .end local v95    # "mAckAiFollowExcute":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_d
    new-instance v96, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v96 .. v96}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 920
    .local v96, "mAckAiFollowExit":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v96

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 921
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v96

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 924
    .end local v96    # "mAckAiFollowExit":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_e
    new-instance v62, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v62 .. v62}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 925
    .local v62, "aiModle":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v62

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 926
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v62

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 929
    .end local v62    # "aiModle":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_f
    new-instance v19, Lcom/fimi/x8sdk/dataparser/AckGetAiFollowMode;

    invoke-direct/range {v19 .. v19}, Lcom/fimi/x8sdk/dataparser/AckGetAiFollowMode;-><init>()V

    .line 930
    .local v19, "ackGetAiFollowMode":Lcom/fimi/x8sdk/dataparser/AckGetAiFollowMode;
    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckGetAiFollowMode;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 931
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v19

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 934
    .end local v19    # "ackGetAiFollowMode":Lcom/fimi/x8sdk/dataparser/AckGetAiFollowMode;
    :pswitch_10
    new-instance v99, Lcom/fimi/x8sdk/dataparser/AutoAiFollowErrorCode;

    invoke-direct/range {v99 .. v99}, Lcom/fimi/x8sdk/dataparser/AutoAiFollowErrorCode;-><init>()V

    .line 935
    .local v99, "mAutoAiFollowErrorCode":Lcom/fimi/x8sdk/dataparser/AutoAiFollowErrorCode;
    move-object/from16 v0, v99

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AutoAiFollowErrorCode;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 936
    invoke-static {}, Lcom/fimi/x8sdk/process/FcErrProcess;->getFcErrProcess()Lcom/fimi/x8sdk/process/FcErrProcess;

    move-result-object v7

    invoke-virtual/range {v99 .. v99}, Lcom/fimi/x8sdk/dataparser/AutoAiFollowErrorCode;->getAiFollowErrorCode()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/fimi/x8sdk/process/FcErrProcess;->setVcErrorCode(I)V

    goto/16 :goto_4

    .line 939
    .end local v99    # "mAutoAiFollowErrorCode":Lcom/fimi/x8sdk/dataparser/AutoAiFollowErrorCode;
    :pswitch_11
    new-instance v46, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v46 .. v46}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 940
    .local v46, "ackSetFollowSpeed":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v46

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 941
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v46

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 944
    .end local v46    # "ackSetFollowSpeed":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_12
    new-instance v24, Lcom/fimi/x8sdk/dataparser/AckAiFollowGetSpeed;

    invoke-direct/range {v24 .. v24}, Lcom/fimi/x8sdk/dataparser/AckAiFollowGetSpeed;-><init>()V

    .line 945
    .local v24, "ackGetFollowSpeed":Lcom/fimi/x8sdk/dataparser/AckAiFollowGetSpeed;
    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckAiFollowGetSpeed;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 946
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v24

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 950
    .end local v24    # "ackGetFollowSpeed":Lcom/fimi/x8sdk/dataparser/AckAiFollowGetSpeed;
    :pswitch_13
    new-instance v102, Lcom/fimi/x8sdk/dataparser/AutoNavigationState;

    invoke-direct/range {v102 .. v102}, Lcom/fimi/x8sdk/dataparser/AutoNavigationState;-><init>()V

    .line 951
    .local v102, "mAutoNavigationState":Lcom/fimi/x8sdk/dataparser/AutoNavigationState;
    move-object/from16 v0, v102

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AutoNavigationState;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 952
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v7

    move-object/from16 v0, v102

    invoke-virtual {v7, v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->setANavigationState(Lcom/fimi/x8sdk/dataparser/AutoNavigationState;)V

    goto/16 :goto_4

    .line 955
    .end local v102    # "mAutoNavigationState":Lcom/fimi/x8sdk/dataparser/AutoNavigationState;
    :pswitch_14
    new-instance v38, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v38 .. v38}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 956
    .local v38, "ackPoint2Point":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v38

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 957
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v38

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 961
    .end local v38    # "ackPoint2Point":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_15
    new-instance v39, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v39 .. v39}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 962
    .local v39, "ackPoint2PointExcute":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v39

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 963
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v39

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 966
    .end local v39    # "ackPoint2PointExcute":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_16
    new-instance v98, Lcom/fimi/x8sdk/dataparser/AckGetAiPoint;

    invoke-direct/range {v98 .. v98}, Lcom/fimi/x8sdk/dataparser/AckGetAiPoint;-><init>()V

    .line 967
    .local v98, "mAckGetAiPoint":Lcom/fimi/x8sdk/dataparser/AckGetAiPoint;
    move-object/from16 v0, v98

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckGetAiPoint;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 968
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v98

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 971
    .end local v98    # "mAckGetAiPoint":Lcom/fimi/x8sdk/dataparser/AckGetAiPoint;
    :pswitch_17
    new-instance v48, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v48 .. v48}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 972
    .local v48, "ackSetP2PExite":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v48

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 973
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v48

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 976
    .end local v48    # "ackSetP2PExite":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_18
    new-instance v51, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v51 .. v51}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 977
    .local v51, "ackSurrondExcute":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v51

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 978
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v51

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 981
    .end local v51    # "ackSurrondExcute":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_19
    new-instance v60, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v60 .. v60}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 982
    .local v60, "ackkSurroundExit":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v60

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 983
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v60

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 986
    .end local v60    # "ackkSurroundExit":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_1a
    new-instance v52, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v52 .. v52}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 987
    .local v52, "ackSurroundCircleDot":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v52

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 988
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v52

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 992
    .end local v52    # "ackSurroundCircleDot":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_1b
    new-instance v54, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v54 .. v54}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 993
    .local v54, "ackSurroundSpeed":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v54

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 994
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v54

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 997
    .end local v54    # "ackSurroundSpeed":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_1c
    new-instance v14, Lcom/fimi/x8sdk/dataparser/AckAiSurrounds;

    invoke-direct {v14}, Lcom/fimi/x8sdk/dataparser/AckAiSurrounds;-><init>()V

    .line 998
    .local v14, "acGgetSurroundSpeed":Lcom/fimi/x8sdk/dataparser/AckAiSurrounds;
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Lcom/fimi/x8sdk/dataparser/AckAiSurrounds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 999
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v14, v3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 1002
    .end local v14    # "acGgetSurroundSpeed":Lcom/fimi/x8sdk/dataparser/AckAiSurrounds;
    :pswitch_1d
    new-instance v100, Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;

    invoke-direct/range {v100 .. v100}, Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;-><init>()V

    .line 1003
    .local v100, "mAutoAiSurroundState":Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;
    move-object/from16 v0, v100

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1004
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v7

    move-object/from16 v0, v100

    invoke-virtual {v7, v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->setAutoAiSurroundState(Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;)V

    goto/16 :goto_4

    .line 1007
    .end local v100    # "mAutoAiSurroundState":Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;
    :pswitch_1e
    new-instance v53, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v53 .. v53}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 1008
    .local v53, "ackSurroundOrientation":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v53

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1009
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v53

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 1012
    .end local v53    # "ackSurroundOrientation":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_1f
    new-instance v26, Lcom/fimi/x8sdk/dataparser/AckAiSurrounds;

    invoke-direct/range {v26 .. v26}, Lcom/fimi/x8sdk/dataparser/AckAiSurrounds;-><init>()V

    .line 1013
    .local v26, "ackGetSurroundOrientation":Lcom/fimi/x8sdk/dataparser/AckAiSurrounds;
    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckAiSurrounds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1014
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v26

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 1017
    .end local v26    # "ackGetSurroundOrientation":Lcom/fimi/x8sdk/dataparser/AckAiSurrounds;
    :pswitch_20
    new-instance v21, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;

    invoke-direct/range {v21 .. v21}, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;-><init>()V

    .line 1018
    .local v21, "ackGetAiSurroundPoint":Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;
    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1019
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v21

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 1022
    .end local v21    # "ackGetAiSurroundPoint":Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;
    :pswitch_21
    new-instance v40, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v40 .. v40}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 1023
    .local v40, "ackReturnHomeExcute":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v40

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1024
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v40

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 1027
    .end local v40    # "ackReturnHomeExcute":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_22
    new-instance v41, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v41 .. v41}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 1028
    .local v41, "ackReturnHomeExite":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v41

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1029
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v41

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 1032
    .end local v41    # "ackReturnHomeExite":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_23
    new-instance v34, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v34 .. v34}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 1033
    .local v34, "ackLineSetPoints":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v34

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1034
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v34

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 1037
    .end local v34    # "ackLineSetPoints":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_24
    new-instance v49, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v49 .. v49}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 1038
    .local v49, "ackSetPointsAction":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v49

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1039
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v49

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 1042
    .end local v49    # "ackSetPointsAction":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_25
    new-instance v59, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;

    invoke-direct/range {v59 .. v59}, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;-><init>()V

    .line 1043
    .local v59, "ackgetPointsAction":Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;
    move-object/from16 v0, v59

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1044
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v59

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 1047
    .end local v59    # "ackgetPointsAction":Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;
    :pswitch_26
    new-instance v32, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v32 .. v32}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 1048
    .local v32, "ackLineExcute":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v32

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1049
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v32

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 1052
    .end local v32    # "ackLineExcute":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_27
    new-instance v33, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v33 .. v33}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 1053
    .local v33, "ackLineExite":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v33

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1054
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v33

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 1057
    .end local v33    # "ackLineExite":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_28
    new-instance v20, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;

    invoke-direct/range {v20 .. v20}, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;-><init>()V

    .line 1058
    .local v20, "ackGetAiLinePoint":Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1059
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v20

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 1062
    .end local v20    # "ackGetAiLinePoint":Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;
    :pswitch_29
    new-instance v17, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v17 .. v17}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 1063
    .local v17, "ackAutoPhotoValue":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1064
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v17

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 1067
    .end local v17    # "ackAutoPhotoValue":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_2a
    new-instance v15, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct {v15}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 1068
    .local v15, "ackAutoPhotoExcute":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1069
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v15, v3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 1072
    .end local v15    # "ackAutoPhotoExcute":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_2b
    new-instance v16, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v16 .. v16}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 1073
    .local v16, "ackAutoPhotoExite":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1074
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v16

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 1077
    .end local v16    # "ackAutoPhotoExite":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_2c
    new-instance v47, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v47 .. v47}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 1078
    .local v47, "ackSetHomePoint":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1079
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v47

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 1083
    .end local v47    # "ackSetHomePoint":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_2d
    new-instance v119, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v119 .. v119}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 1084
    .local v119, "setGravitationPrameter":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v119

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1085
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v119

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 1088
    .end local v119    # "setGravitationPrameter":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_2e
    new-instance v27, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v27 .. v27}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 1089
    .local v27, "ackGravitationExite":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1090
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v27

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 1093
    .end local v27    # "ackGravitationExite":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_2f
    new-instance v29, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v29 .. v29}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 1094
    .local v29, "ackGravitationResume":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v29

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1095
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v29

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 1098
    .end local v29    # "ackGravitationResume":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_30
    new-instance v28, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v28 .. v28}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 1099
    .local v28, "ackGravitationPause":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1100
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v28

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 1103
    .end local v28    # "ackGravitationPause":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_31
    new-instance v30, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v30 .. v30}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 1104
    .local v30, "ackGravitationStart":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1105
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v30

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 1108
    .end local v30    # "ackGravitationStart":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_32
    new-instance v87, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;

    invoke-direct/range {v87 .. v87}, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;-><init>()V

    .line 1109
    .local v87, "getGravitationPrameter":Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;
    move-object/from16 v0, v87

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1110
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v87

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 1114
    .end local v87    # "getGravitationPrameter":Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;
    :pswitch_33
    new-instance v45, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v45 .. v45}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 1115
    .local v45, "ackScrewStart":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v45

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1116
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v45

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 1119
    .end local v45    # "ackScrewStart":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_34
    new-instance v43, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v43 .. v43}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 1120
    .local v43, "ackScrewPause":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v43

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1121
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v43

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 1124
    .end local v43    # "ackScrewPause":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_35
    new-instance v44, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v44 .. v44}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 1125
    .local v44, "ackScrewResume":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v44

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1126
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v44

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 1129
    .end local v44    # "ackScrewResume":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_36
    new-instance v42, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v42 .. v42}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 1130
    .local v42, "ackScrewExite":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v42

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1131
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v42

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 1134
    .end local v42    # "ackScrewExite":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_37
    new-instance v80, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v80 .. v80}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 1135
    .local v80, "etScrewPrameter":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v80

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1136
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v80

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 1139
    .end local v80    # "etScrewPrameter":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_38
    new-instance v90, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;

    invoke-direct/range {v90 .. v90}, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;-><init>()V

    .line 1140
    .local v90, "getScrewPrameter":Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;
    move-object/from16 v0, v90

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1141
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v90

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 1144
    .end local v90    # "getScrewPrameter":Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;
    :pswitch_39
    new-instance v93, Lcom/fimi/x8sdk/dataparser/AckAccurateLandingState;

    invoke-direct/range {v93 .. v93}, Lcom/fimi/x8sdk/dataparser/AckAccurateLandingState;-><init>()V

    .line 1145
    .local v93, "landingState":Lcom/fimi/x8sdk/dataparser/AckAccurateLandingState;
    move-object/from16 v0, v93

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckAccurateLandingState;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1146
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v7

    invoke-virtual/range {v93 .. v93}, Lcom/fimi/x8sdk/dataparser/AckAccurateLandingState;->getBit2()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/fimi/x8sdk/modulestate/DroneState;->setAccurateLandingCheckObj(Z)V

    goto/16 :goto_4

    .line 1149
    .end local v93    # "landingState":Lcom/fimi/x8sdk/dataparser/AckAccurateLandingState;
    :pswitch_3a
    new-instance v35, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v35 .. v35}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 1150
    .restart local v35    # "ackNormalCmds":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v35

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1151
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v35

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 1154
    .end local v35    # "ackNormalCmds":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_3b
    new-instance v36, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v36 .. v36}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 1155
    .local v36, "ackNormalCmdsStop":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v36

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1156
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v36

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_4

    .line 1159
    .end local v36    # "ackNormalCmdsStop":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_3c
    new-instance v37, Lcom/fimi/x8sdk/dataparser/AckPanoramaPhotographType;

    invoke-direct/range {v37 .. v37}, Lcom/fimi/x8sdk/dataparser/AckPanoramaPhotographType;-><init>()V

    .line 1160
    .local v37, "ackPanoramaPhotographType":Lcom/fimi/x8sdk/dataparser/AckPanoramaPhotographType;
    move-object/from16 v0, v37

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckPanoramaPhotographType;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1162
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v7

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->onPanoramicInformation(Lcom/fimi/x8sdk/dataparser/AckPanoramaPhotographType;)V

    goto/16 :goto_4

    .line 1182
    .end local v37    # "ackPanoramaPhotographType":Lcom/fimi/x8sdk/dataparser/AckPanoramaPhotographType;
    :pswitch_3d
    new-instance v122, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;

    invoke-direct/range {v122 .. v122}, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;-><init>()V

    .line 1183
    .local v122, "signalState":Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;
    move-object/from16 v0, v122

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1184
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v122

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1185
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v7

    move-object/from16 v0, v122

    invoke-virtual {v7, v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->setFcSingal(Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;)V

    .line 1186
    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v7}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->flightPlaybackLogUnPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;Z)V

    goto/16 :goto_2

    .line 1189
    .end local v122    # "signalState":Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;
    :pswitch_3e
    new-instance v65, Lcom/fimi/x8sdk/dataparser/AutoFcBattery;

    invoke-direct/range {v65 .. v65}, Lcom/fimi/x8sdk/dataparser/AutoFcBattery;-><init>()V

    .line 1190
    .local v65, "battery":Lcom/fimi/x8sdk/dataparser/AutoFcBattery;
    move-object/from16 v0, v65

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AutoFcBattery;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1191
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v65

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1192
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v7

    move-object/from16 v0, v65

    invoke-virtual {v7, v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->setFcBatterState(Lcom/fimi/x8sdk/dataparser/AutoFcBattery;)V

    .line 1193
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/StateManager;->onBatterProcess()V

    .line 1194
    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v7}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->flightPlaybackLogUnPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;Z)V

    goto/16 :goto_2

    .line 1197
    .end local v65    # "battery":Lcom/fimi/x8sdk/dataparser/AutoFcBattery;
    :pswitch_3f
    new-instance v81, Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;

    invoke-direct/range {v81 .. v81}, Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;-><init>()V

    .line 1198
    .local v81, "fcErrCode":Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;
    move-object/from16 v0, v81

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1199
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v81

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1200
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/StateManager;->getErrorCodeState()Lcom/fimi/x8sdk/modulestate/ErrorCodeState;

    move-result-object v7

    move-object/from16 v0, v81

    invoke-virtual {v7, v0}, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->setErrorCode(Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;)V

    .line 1201
    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v7}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->flightPlaybackLogUnPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;Z)V

    goto/16 :goto_2

    .line 1204
    .end local v81    # "fcErrCode":Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;
    :pswitch_40
    new-instance v123, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    invoke-direct/range {v123 .. v123}, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;-><init>()V

    .line 1205
    .local v123, "sportState":Lcom/fimi/x8sdk/dataparser/AutoFcSportState;
    move-object/from16 v0, v123

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1206
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v123

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1207
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v7

    move-object/from16 v0, v123

    invoke-virtual {v7, v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->setFcSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V

    .line 1208
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v7

    invoke-virtual/range {v123 .. v123}, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->getDeviceLongitude()D

    move-result-wide v8

    invoke-virtual/range {v123 .. v123}, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->getDeviceLatitude()D

    move-result-wide v10

    .line 1209
    invoke-virtual/range {v123 .. v123}, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->getHeight()F

    move-result v12

    invoke-virtual/range {v123 .. v123}, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->getDeviceAngle()F

    move-result v13

    .line 1208
    invoke-virtual/range {v7 .. v13}, Lcom/fimi/x8sdk/modulestate/DroneState;->setSportStateValue(DDFF)V

    .line 1210
    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v7}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->flightPlaybackLogUnPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;Z)V

    goto/16 :goto_2

    .line 1213
    .end local v123    # "sportState":Lcom/fimi/x8sdk/dataparser/AutoFcSportState;
    :pswitch_41
    new-instance v92, Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;

    invoke-direct/range {v92 .. v92}, Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;-><init>()V

    .line 1214
    .local v92, "homeInfo":Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;
    move-object/from16 v0, v92

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1215
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v92

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1216
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v7

    move-object/from16 v0, v92

    invoke-virtual {v7, v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->setHomeInfo(Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;)V

    .line 1217
    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v7}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->flightPlaybackLogUnPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;Z)V

    goto/16 :goto_2

    .line 1220
    .end local v92    # "homeInfo":Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;
    :pswitch_42
    new-instance v25, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;

    invoke-direct/range {v25 .. v25}, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;-><init>()V

    .line 1221
    .local v25, "ackGetIMUInfo":Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;
    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1222
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v25

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_2

    .line 1227
    .end local v25    # "ackGetIMUInfo":Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;
    :cond_8
    const/16 v7, 0xd

    move/from16 v0, p2

    if-ne v0, v7, :cond_9

    .line 1228
    packed-switch p1, :pswitch_data_4

    :pswitch_43
    goto/16 :goto_2

    .line 1230
    :pswitch_44
    new-instance v18, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v18 .. v18}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 1231
    .local v18, "ackCali":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1232
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v18

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_2

    .line 1235
    .end local v18    # "ackCali":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_45
    new-instance v23, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;

    invoke-direct/range {v23 .. v23}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;-><init>()V

    .line 1236
    .local v23, "ackGetCaliState":Lcom/fimi/x8sdk/dataparser/AckGetCaliState;
    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1237
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v23

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_2

    .line 1240
    .end local v23    # "ackGetCaliState":Lcom/fimi/x8sdk/dataparser/AckGetCaliState;
    :pswitch_46
    new-instance v67, Lcom/fimi/x8sdk/dataparser/AckCheckIMUException;

    invoke-direct/range {v67 .. v67}, Lcom/fimi/x8sdk/dataparser/AckCheckIMUException;-><init>()V

    .line 1241
    .local v67, "checkIMUException":Lcom/fimi/x8sdk/dataparser/AckCheckIMUException;
    move-object/from16 v0, v67

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckCheckIMUException;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1242
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v67

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_2

    .line 1247
    .end local v67    # "checkIMUException":Lcom/fimi/x8sdk/dataparser/AckCheckIMUException;
    :cond_9
    const/16 v7, 0x8

    move/from16 v0, p2

    if-ne v0, v7, :cond_a

    .line 1248
    packed-switch p1, :pswitch_data_5

    goto/16 :goto_2

    .line 1250
    :pswitch_47
    new-instance v55, Lcom/fimi/x8sdk/dataparser/AckSyncTime;

    invoke-direct/range {v55 .. v55}, Lcom/fimi/x8sdk/dataparser/AckSyncTime;-><init>()V

    .line 1251
    .local v55, "ackSyncTime":Lcom/fimi/x8sdk/dataparser/AckSyncTime;
    move-object/from16 v0, v55

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckSyncTime;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1252
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v55

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_2

    .line 1255
    .end local v55    # "ackSyncTime":Lcom/fimi/x8sdk/dataparser/AckSyncTime;
    :cond_a
    const/16 v7, 0xa

    move/from16 v0, p2

    if-ne v0, v7, :cond_b

    .line 1270
    new-instance v66, Lcom/fimi/x8sdk/dataparser/AutoBlackBox30;

    invoke-direct/range {v66 .. v66}, Lcom/fimi/x8sdk/dataparser/AutoBlackBox30;-><init>()V

    .line 1271
    .local v66, "blackBox30":Lcom/fimi/x8sdk/dataparser/AutoBlackBox30;
    move-object/from16 v0, v66

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AutoBlackBox30;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_2

    .line 1272
    .end local v66    # "blackBox30":Lcom/fimi/x8sdk/dataparser/AutoBlackBox30;
    :cond_b
    const/4 v7, 0x1

    move/from16 v0, p2

    if-ne v0, v7, :cond_2

    .line 1273
    sparse-switch p1, :sswitch_data_1

    goto/16 :goto_2

    .line 1275
    :sswitch_2a
    new-instance v50, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v50 .. v50}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 1276
    .local v50, "ackSetStorage":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v50

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1277
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v50

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_2

    .line 1280
    .end local v50    # "ackSetStorage":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :sswitch_2b
    new-instance v84, Lcom/fimi/x8sdk/dataparser/AckGetFormatStorageState;

    invoke-direct/range {v84 .. v84}, Lcom/fimi/x8sdk/dataparser/AckGetFormatStorageState;-><init>()V

    .line 1281
    .local v84, "formatStorageState":Lcom/fimi/x8sdk/dataparser/AckGetFormatStorageState;
    move-object/from16 v0, v84

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckGetFormatStorageState;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1282
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v84

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_2

    .line 572
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 591
    :pswitch_data_1
    .packed-switch 0xb1
        :pswitch_1
    .end packed-switch

    .line 619
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_a
        0x2 -> :sswitch_b
        0x3 -> :sswitch_1
        0x4 -> :sswitch_3
        0x5 -> :sswitch_8
        0x6 -> :sswitch_9
        0x8 -> :sswitch_5
        0x9 -> :sswitch_4
        0xa -> :sswitch_13
        0xb -> :sswitch_17
        0xc -> :sswitch_6
        0xd -> :sswitch_7
        0xe -> :sswitch_f
        0xf -> :sswitch_10
        0x15 -> :sswitch_c
        0x17 -> :sswitch_e
        0x18 -> :sswitch_d
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x21 -> :sswitch_16
        0x22 -> :sswitch_18
        0x23 -> :sswitch_14
        0x24 -> :sswitch_15
        0x25 -> :sswitch_11
        0x26 -> :sswitch_12
        0x27 -> :sswitch_1b
        0x28 -> :sswitch_1c
        0x29 -> :sswitch_1d
        0x2a -> :sswitch_1e
        0x2b -> :sswitch_1f
        0x2c -> :sswitch_20
        0x2d -> :sswitch_23
        0x2e -> :sswitch_24
        0x2f -> :sswitch_21
        0x30 -> :sswitch_22
        0x31 -> :sswitch_25
        0x32 -> :sswitch_26
        0x33 -> :sswitch_27
        0x34 -> :sswitch_28
        0x35 -> :sswitch_29
        0x36 -> :sswitch_2
        0x89 -> :sswitch_0
    .end sparse-switch

    .line 871
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_13
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_7
        :pswitch_2
        :pswitch_21
        :pswitch_2
        :pswitch_2
        :pswitch_22
        :pswitch_2
        :pswitch_2
        :pswitch_26
        :pswitch_2
        :pswitch_2
        :pswitch_27
        :pswitch_23
        :pswitch_24
        :pswitch_28
        :pswitch_25
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_15
        :pswitch_2
        :pswitch_2
        :pswitch_17
        :pswitch_14
        :pswitch_16
        :pswitch_2
        :pswitch_2
        :pswitch_2a
        :pswitch_2
        :pswitch_2
        :pswitch_2b
        :pswitch_29
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_18
        :pswitch_2
        :pswitch_2
        :pswitch_19
        :pswitch_1a
        :pswitch_20
        :pswitch_1b
        :pswitch_1c
        :pswitch_1e
        :pswitch_1f
        :pswitch_1d
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_c
        :pswitch_2
        :pswitch_2
        :pswitch_d
        :pswitch_8
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_2c
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_3a
        :pswitch_3c
        :pswitch_2
        :pswitch_39
        :pswitch_2
        :pswitch_2
        :pswitch_3b
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_32
    .end packed-switch

    .line 1170
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
        :pswitch_40
        :pswitch_3d
        :pswitch_3f
        :pswitch_3e
        :pswitch_41
        :pswitch_42
    .end packed-switch

    .line 1228
    :pswitch_data_4
    .packed-switch 0x5
        :pswitch_44
        :pswitch_45
        :pswitch_43
        :pswitch_46
    .end packed-switch

    .line 1248
    :pswitch_data_5
    .packed-switch 0x4
        :pswitch_47
    .end packed-switch

    .line 1273
    :sswitch_data_1
    .sparse-switch
        0xc -> :sswitch_2a
        0x15 -> :sswitch_2b
    .end sparse-switch
.end method

.method private fromFcRelayCmd(IILcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 2
    .param p1, "msgId"    # I
    .param p2, "groupId"    # I
    .param p3, "linkPacket4"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 232
    const/16 v1, 0x10

    if-ne p2, v1, :cond_0

    .line 233
    packed-switch p1, :pswitch_data_0

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 235
    :pswitch_0
    new-instance v0, Lcom/fimi/x8sdk/dataparser/AckVersion;

    invoke-direct {v0}, Lcom/fimi/x8sdk/dataparser/AckVersion;-><init>()V

    .line 236
    .local v0, "ackVersion":Lcom/fimi/x8sdk/dataparser/AckVersion;
    invoke-virtual {v0, p3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 237
    invoke-virtual {p0, p2, p1, v0, p3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0xb1
        :pswitch_0
    .end packed-switch
.end method

.method private fromGimbalCmd(IILcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 23
    .param p1, "msgId"    # I
    .param p2, "groupId"    # I
    .param p3, "linkPacket4"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 360
    const/16 v22, 0x10

    move/from16 v0, p2

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 361
    packed-switch p1, :pswitch_data_0

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 363
    :pswitch_0
    new-instance v14, Lcom/fimi/x8sdk/dataparser/AckVersion;

    invoke-direct {v14}, Lcom/fimi/x8sdk/dataparser/AckVersion;-><init>()V

    .line 364
    .local v14, "ackVersion":Lcom/fimi/x8sdk/dataparser/AckVersion;
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Lcom/fimi/x8sdk/dataparser/AckVersion;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 365
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v14, v3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto :goto_0

    .line 370
    .end local v14    # "ackVersion":Lcom/fimi/x8sdk/dataparser/AckVersion;
    :cond_1
    const/16 v22, 0x9

    move/from16 v0, p2

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 371
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 378
    :sswitch_0
    new-instance v15, Lcom/fimi/x8sdk/dataparser/AutoGimbalState;

    invoke-direct {v15}, Lcom/fimi/x8sdk/dataparser/AutoGimbalState;-><init>()V

    .line 379
    .local v15, "autoGimbalState":Lcom/fimi/x8sdk/dataparser/AutoGimbalState;
    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Lcom/fimi/x8sdk/dataparser/AutoGimbalState;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 380
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/fimi/x8sdk/modulestate/StateManager;->getGimbalState()Lcom/fimi/x8sdk/modulestate/GimbalState;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/fimi/x8sdk/modulestate/GimbalState;->setAutoGimbalState(Lcom/fimi/x8sdk/dataparser/AutoGimbalState;)V

    goto :goto_0

    .line 373
    .end local v15    # "autoGimbalState":Lcom/fimi/x8sdk/dataparser/AutoGimbalState;
    :sswitch_1
    new-instance v12, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct {v12}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 374
    .local v12, "ackPosrate":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 375
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v12, v3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto :goto_0

    .line 383
    .end local v12    # "ackPosrate":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :sswitch_2
    new-instance v5, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct {v5}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 384
    .local v5, "ac":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 385
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto :goto_0

    .line 388
    .end local v5    # "ac":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :sswitch_3
    new-instance v19, Lcom/fimi/x8sdk/dataparser/AckGetHorizontalAdjust;

    invoke-direct/range {v19 .. v19}, Lcom/fimi/x8sdk/dataparser/AckGetHorizontalAdjust;-><init>()V

    .line 389
    .local v19, "horizontalAdjust":Lcom/fimi/x8sdk/dataparser/AckGetHorizontalAdjust;
    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckGetHorizontalAdjust;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 390
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v19

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto :goto_0

    .line 393
    .end local v19    # "horizontalAdjust":Lcom/fimi/x8sdk/dataparser/AckGetHorizontalAdjust;
    :sswitch_4
    new-instance v20, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct/range {v20 .. v20}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 394
    .local v20, "normalCmds":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 395
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v20

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_0

    .line 398
    .end local v20    # "normalCmds":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :sswitch_5
    new-instance v21, Lcom/fimi/x8sdk/dataparser/AckGetPitchSpeed;

    invoke-direct/range {v21 .. v21}, Lcom/fimi/x8sdk/dataparser/AckGetPitchSpeed;-><init>()V

    .line 399
    .local v21, "pitchSpeed":Lcom/fimi/x8sdk/dataparser/AckGetPitchSpeed;
    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckGetPitchSpeed;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 400
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v21

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_0

    .line 403
    .end local v21    # "pitchSpeed":Lcom/fimi/x8sdk/dataparser/AckGetPitchSpeed;
    :sswitch_6
    new-instance v9, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct {v9}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 404
    .local v9, "ackNormalCmds":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 405
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v9, v3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_0

    .line 408
    .end local v9    # "ackNormalCmds":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :sswitch_7
    new-instance v17, Lcom/fimi/x8sdk/dataparser/AckGetGimbalGain;

    invoke-direct/range {v17 .. v17}, Lcom/fimi/x8sdk/dataparser/AckGetGimbalGain;-><init>()V

    .line 409
    .local v17, "getGimbalGain":Lcom/fimi/x8sdk/dataparser/AckGetGimbalGain;
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckGetGimbalGain;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 410
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v17

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_0

    .line 413
    .end local v17    # "getGimbalGain":Lcom/fimi/x8sdk/dataparser/AckGetGimbalGain;
    :sswitch_8
    new-instance v10, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct {v10}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 414
    .local v10, "ackNormalCmds1":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 415
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v10, v3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_0

    .line 418
    .end local v10    # "ackNormalCmds1":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :sswitch_9
    new-instance v7, Lcom/fimi/x8sdk/dataparser/AckCloudParams;

    invoke-direct {v7}, Lcom/fimi/x8sdk/dataparser/AckCloudParams;-><init>()V

    .line 419
    .local v7, "ackCloudParams":Lcom/fimi/x8sdk/dataparser/AckCloudParams;
    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Lcom/fimi/x8sdk/dataparser/AckCloudParams;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 420
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v7, v3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_0

    .line 423
    .end local v7    # "ackCloudParams":Lcom/fimi/x8sdk/dataparser/AckCloudParams;
    :sswitch_a
    new-instance v8, Lcom/fimi/x8sdk/dataparser/AckCloudParamsNew;

    invoke-direct {v8}, Lcom/fimi/x8sdk/dataparser/AckCloudParamsNew;-><init>()V

    .line 424
    .local v8, "ackCloudParamsNew":Lcom/fimi/x8sdk/dataparser/AckCloudParamsNew;
    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Lcom/fimi/x8sdk/dataparser/AckCloudParamsNew;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 425
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v8, v3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_0

    .line 428
    .end local v8    # "ackCloudParamsNew":Lcom/fimi/x8sdk/dataparser/AckCloudParamsNew;
    :sswitch_b
    new-instance v13, Lcom/fimi/x8sdk/dataparser/AckSetCloudParams;

    invoke-direct {v13}, Lcom/fimi/x8sdk/dataparser/AckSetCloudParams;-><init>()V

    .line 429
    .local v13, "ackSetCloudParams":Lcom/fimi/x8sdk/dataparser/AckSetCloudParams;
    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/fimi/x8sdk/dataparser/AckSetCloudParams;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 430
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v13, v3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_0

    .line 433
    .end local v13    # "ackSetCloudParams":Lcom/fimi/x8sdk/dataparser/AckSetCloudParams;
    :sswitch_c
    new-instance v11, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct {v11}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 434
    .local v11, "ackNormalCmds2":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 435
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v11, v3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_0

    .line 439
    .end local v11    # "ackNormalCmds2":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :sswitch_d
    new-instance v16, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;

    invoke-direct/range {v16 .. v16}, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;-><init>()V

    .line 440
    .local v16, "cloudCaliState":Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 441
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v16

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_0

    .line 444
    .end local v16    # "cloudCaliState":Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;
    :sswitch_e
    new-instance v6, Lcom/fimi/x8sdk/dataparser/AckCloudCali;

    invoke-direct {v6}, Lcom/fimi/x8sdk/dataparser/AckCloudCali;-><init>()V

    .line 445
    .local v6, "ackCloudCali":Lcom/fimi/x8sdk/dataparser/AckCloudCali;
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Lcom/fimi/x8sdk/dataparser/AckCloudCali;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 446
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v6, v3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_0

    .line 449
    .end local v6    # "ackCloudCali":Lcom/fimi/x8sdk/dataparser/AckCloudCali;
    :sswitch_f
    new-instance v18, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;

    invoke-direct/range {v18 .. v18}, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;-><init>()V

    .line 450
    .local v18, "getGimbalSensorInfo":Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 451
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v18

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_0

    .line 361
    :pswitch_data_0
    .packed-switch 0xb1
        :pswitch_0
    .end packed-switch

    .line 371
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_1
        0x1c -> :sswitch_c
        0x1d -> :sswitch_a
        0x1e -> :sswitch_8
        0x1f -> :sswitch_7
        0x28 -> :sswitch_4
        0x29 -> :sswitch_5
        0x2a -> :sswitch_2
        0x2b -> :sswitch_3
        0x2c -> :sswitch_e
        0x2d -> :sswitch_d
        0x2f -> :sswitch_6
        0x60 -> :sswitch_f
        0x69 -> :sswitch_b
        0x6a -> :sswitch_9
    .end sparse-switch
.end method

.method private fromNFZCmd(IILcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 6
    .param p1, "msgId"    # I
    .param p2, "groupId"    # I
    .param p3, "linkPacket4"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 526
    const/16 v4, 0x11

    if-ne p2, v4, :cond_0

    .line 527
    packed-switch p1, :pswitch_data_0

    .line 550
    :cond_0
    :goto_0
    const/16 v4, 0x10

    if-ne p2, v4, :cond_1

    .line 551
    packed-switch p1, :pswitch_data_1

    .line 559
    :cond_1
    :goto_1
    return-void

    .line 529
    :pswitch_0
    new-instance v1, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;

    invoke-direct {v1}, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;-><init>()V

    .line 530
    .local v1, "flyNormal":Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;
    invoke-virtual {v1, p3}, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 531
    invoke-virtual {p0, p2, p1, v1, p3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 532
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getNfzState()Lcom/fimi/x8sdk/modulestate/NfzState;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/fimi/x8sdk/modulestate/NfzState;->setAckNoFlyNormal(Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;)V

    goto :goto_0

    .line 535
    .end local v1    # "flyNormal":Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;
    :pswitch_1
    new-instance v2, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;

    invoke-direct {v2}, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;-><init>()V

    .line 536
    .local v2, "flyNormal2":Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;
    invoke-virtual {v2, p3}, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 537
    invoke-virtual {p0, p2, p1, v2, p3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto :goto_0

    .line 540
    .end local v2    # "flyNormal2":Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;
    :pswitch_2
    new-instance v3, Lcom/fimi/x8sdk/dataparser/AutoNfzState;

    invoke-direct {v3}, Lcom/fimi/x8sdk/dataparser/AutoNfzState;-><init>()V

    .line 541
    .local v3, "nfzs":Lcom/fimi/x8sdk/dataparser/AutoNfzState;
    invoke-virtual {v3, p3}, Lcom/fimi/x8sdk/dataparser/AutoNfzState;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 542
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getErrorCodeState()Lcom/fimi/x8sdk/modulestate/ErrorCodeState;

    move-result-object v4

    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AutoNfzState;->getState()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->setNfzErrorCode(I)V

    goto :goto_0

    .line 553
    .end local v3    # "nfzs":Lcom/fimi/x8sdk/dataparser/AutoNfzState;
    :pswitch_3
    new-instance v0, Lcom/fimi/x8sdk/dataparser/AckVersion;

    invoke-direct {v0}, Lcom/fimi/x8sdk/dataparser/AckVersion;-><init>()V

    .line 554
    .local v0, "ackVersion":Lcom/fimi/x8sdk/dataparser/AckVersion;
    invoke-virtual {v0, p3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 555
    invoke-virtual {p0, p2, p1, v0, p3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto :goto_1

    .line 527
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 551
    :pswitch_data_1
    .packed-switch 0xb1
        :pswitch_3
    .end packed-switch
.end method

.method private fromRcCmd(IILcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 12
    .param p1, "msgId"    # I
    .param p2, "groupId"    # I
    .param p3, "linkPacket4"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 249
    const/16 v10, 0x10

    if-ne p2, v10, :cond_2

    .line 250
    packed-switch p1, :pswitch_data_0

    .line 272
    :cond_0
    :goto_0
    const/16 v10, 0xb

    if-ne p2, v10, :cond_1

    .line 273
    packed-switch p1, :pswitch_data_1

    .line 322
    :cond_1
    :goto_1
    :pswitch_0
    return-void

    .line 252
    :pswitch_1
    new-instance v2, Lcom/fimi/x8sdk/dataparser/AckVersion;

    invoke-direct {v2}, Lcom/fimi/x8sdk/dataparser/AckVersion;-><init>()V

    .line 253
    .local v2, "ackVersion":Lcom/fimi/x8sdk/dataparser/AckVersion;
    invoke-virtual {v2, p3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 255
    invoke-virtual {p0, p2, p1, v2, p3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto :goto_0

    .line 259
    .end local v2    # "ackVersion":Lcom/fimi/x8sdk/dataparser/AckVersion;
    :cond_2
    const/16 v10, 0xe

    if-ne p2, v10, :cond_0

    .line 260
    packed-switch p1, :pswitch_data_2

    goto :goto_0

    .line 262
    :pswitch_2
    new-instance v3, Lcom/fimi/x8sdk/dataparser/AutoRCMatchRt;

    invoke-direct {v3}, Lcom/fimi/x8sdk/dataparser/AutoRCMatchRt;-><init>()V

    .line 263
    .local v3, "autoRCMatchRt":Lcom/fimi/x8sdk/dataparser/AutoRCMatchRt;
    invoke-virtual {v3, p3}, Lcom/fimi/x8sdk/dataparser/AutoRCMatchRt;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 264
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/fimi/x8sdk/modulestate/StateManager;->getRcMatchState()Lcom/fimi/x8sdk/modulestate/RCMatchState;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/fimi/x8sdk/modulestate/RCMatchState;->setMatchRt(Lcom/fimi/x8sdk/dataparser/AutoRCMatchRt;)V

    goto :goto_0

    .line 275
    .end local v3    # "autoRCMatchRt":Lcom/fimi/x8sdk/dataparser/AutoRCMatchRt;
    :pswitch_3
    new-instance v5, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct {v5}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 276
    .local v5, "normalCmd":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    invoke-virtual {v5, p3}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 277
    invoke-virtual {p0, p2, p1, v5, p3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto :goto_1

    .line 281
    .end local v5    # "normalCmd":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_4
    new-instance v6, Lcom/fimi/x8sdk/dataparser/AckGetRcMode;

    invoke-direct {v6}, Lcom/fimi/x8sdk/dataparser/AckGetRcMode;-><init>()V

    .line 282
    .local v6, "rcMode":Lcom/fimi/x8sdk/dataparser/AckGetRcMode;
    invoke-virtual {v6, p3}, Lcom/fimi/x8sdk/dataparser/AckGetRcMode;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 283
    invoke-virtual {p0, p2, p1, v6, p3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 284
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v10

    invoke-virtual {p3}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPacketData()[B

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/fimi/x8sdk/X8FcLogManager;->setRockerModeData([B)V

    goto :goto_1

    .line 288
    .end local v6    # "rcMode":Lcom/fimi/x8sdk/dataparser/AckGetRcMode;
    :pswitch_5
    new-instance v0, Lcom/fimi/x8sdk/dataparser/AckFiveKeyDefine;

    invoke-direct {v0}, Lcom/fimi/x8sdk/dataparser/AckFiveKeyDefine;-><init>()V

    .line 289
    .local v0, "ackFiveKeyDefine":Lcom/fimi/x8sdk/dataparser/AckFiveKeyDefine;
    invoke-virtual {v0, p3}, Lcom/fimi/x8sdk/dataparser/AckFiveKeyDefine;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 290
    invoke-virtual {p0, p2, p1, v0, p3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto :goto_1

    .line 294
    .end local v0    # "ackFiveKeyDefine":Lcom/fimi/x8sdk/dataparser/AckFiveKeyDefine;
    :pswitch_6
    new-instance v1, Lcom/fimi/x8sdk/dataparser/AckRcCalibrationState;

    invoke-direct {v1}, Lcom/fimi/x8sdk/dataparser/AckRcCalibrationState;-><init>()V

    .line 295
    .local v1, "ackRcCibartionState":Lcom/fimi/x8sdk/dataparser/AckRcCalibrationState;
    invoke-virtual {v1, p3}, Lcom/fimi/x8sdk/dataparser/AckRcCalibrationState;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 296
    invoke-virtual {p0, p2, p1, v1, p3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto :goto_1

    .line 299
    .end local v1    # "ackRcCibartionState":Lcom/fimi/x8sdk/dataparser/AckRcCalibrationState;
    :pswitch_7
    new-instance v7, Lcom/fimi/x8sdk/dataparser/AutoRcState;

    invoke-direct {v7}, Lcom/fimi/x8sdk/dataparser/AutoRcState;-><init>()V

    .line 300
    .local v7, "rcs":Lcom/fimi/x8sdk/dataparser/AutoRcState;
    invoke-virtual {v7, p3}, Lcom/fimi/x8sdk/dataparser/AutoRcState;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 301
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/fimi/x8sdk/modulestate/StateManager;->getErrorCodeState()Lcom/fimi/x8sdk/modulestate/ErrorCodeState;

    move-result-object v10

    invoke-virtual {v7}, Lcom/fimi/x8sdk/dataparser/AutoRcState;->getErroCode()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->setErrorCodeRcs(I)V

    goto :goto_1

    .line 305
    .end local v7    # "rcs":Lcom/fimi/x8sdk/dataparser/AutoRcState;
    :pswitch_8
    new-instance v8, Lcom/fimi/x8sdk/dataparser/AckRightRoller;

    invoke-direct {v8}, Lcom/fimi/x8sdk/dataparser/AckRightRoller;-><init>()V

    .line 306
    .local v8, "rightRoller":Lcom/fimi/x8sdk/dataparser/AckRightRoller;
    invoke-virtual {v8, p3}, Lcom/fimi/x8sdk/dataparser/AckRightRoller;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 307
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/fimi/x8sdk/modulestate/StateManager;->setAckRightRoller(Lcom/fimi/x8sdk/dataparser/AckRightRoller;)V

    goto/16 :goto_1

    .line 310
    .end local v8    # "rightRoller":Lcom/fimi/x8sdk/dataparser/AckRightRoller;
    :pswitch_9
    new-instance v4, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;

    invoke-direct {v4}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;-><init>()V

    .line 311
    .local v4, "autoRockerStatePlayback":Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;
    invoke-virtual {v4, p3}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 312
    invoke-virtual {p0, p2, p1, v4, p3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 313
    invoke-virtual {v4}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->getRockerKeyMessage()S

    move-result v9

    .line 314
    .local v9, "rockerKeyMessage":S
    shr-int/lit8 v10, v9, 0x1

    and-int/lit8 v10, v10, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 315
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v10

    invoke-virtual {p3}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPacketData()[B

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/fimi/x8sdk/X8FcLogManager;->setRockerLandDownData([B)V

    .line 317
    :cond_3
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v10

    invoke-virtual {p3}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPacketData()[B

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/fimi/x8sdk/X8FcLogManager;->setRockerStateData([B)V

    goto/16 :goto_1

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0xb1
        :pswitch_1
    .end packed-switch

    .line 273
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_9
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_8
    .end packed-switch

    .line 260
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_2
    .end packed-switch
.end method

.method private fromRelayCmd(IILcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 7
    .param p1, "msgId"    # I
    .param p2, "groupId"    # I
    .param p3, "linkPacket4"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    const/16 v6, 0xe

    .line 1308
    if-ne p2, v6, :cond_0

    .line 1310
    packed-switch p1, :pswitch_data_0

    .line 1324
    :cond_0
    :goto_0
    const/16 v4, 0x10

    if-ne p2, v4, :cond_1

    .line 1325
    packed-switch p1, :pswitch_data_1

    .line 1335
    :cond_1
    :goto_1
    if-ne p2, v6, :cond_2

    .line 1336
    sparse-switch p1, :sswitch_data_0

    .line 1350
    :cond_2
    :goto_2
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getRelayState()Lcom/fimi/x8sdk/modulestate/RelayState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/RelayState;->isConnect()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1353
    :cond_3
    return-void

    .line 1312
    :pswitch_0
    new-instance v3, Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;

    invoke-direct {v3}, Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;-><init>()V

    .line 1313
    .local v3, "relayHeart":Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;
    invoke-virtual {v3, p3}, Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1314
    invoke-virtual {p0, p2, p1, v3, p3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1315
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v4

    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;->getStatus()S

    move-result v5

    invoke-virtual {v4, v5}, Lcom/fimi/x8sdk/modulestate/CameraState;->setCameraStatus(I)V

    .line 1316
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getRelayState()Lcom/fimi/x8sdk/modulestate/RelayState;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/fimi/x8sdk/modulestate/RelayState;->setRelayHeart(Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;)V

    .line 1317
    invoke-static {}, Lcom/fimi/x8sdk/process/RelayProcess;->getRelayProcess()Lcom/fimi/x8sdk/process/RelayProcess;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/fimi/x8sdk/process/RelayProcess;->setRelayHeart(Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;)V

    .line 1318
    const/4 v4, 0x0

    invoke-direct {p0, p3, v4}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->flightPlaybackLogUnPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;Z)V

    goto :goto_0

    .line 1327
    .end local v3    # "relayHeart":Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;
    :pswitch_1
    new-instance v0, Lcom/fimi/x8sdk/dataparser/AckVersion;

    invoke-direct {v0}, Lcom/fimi/x8sdk/dataparser/AckVersion;-><init>()V

    .line 1328
    .local v0, "ackVersion":Lcom/fimi/x8sdk/dataparser/AckVersion;
    invoke-virtual {v0, p3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1329
    invoke-virtual {p0, p2, p1, v0, p3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto :goto_1

    .line 1338
    .end local v0    # "ackVersion":Lcom/fimi/x8sdk/dataparser/AckVersion;
    :sswitch_0
    new-instance v1, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct {v1}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 1339
    .local v1, "normalCmd":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    invoke-virtual {v1, p3}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1340
    invoke-virtual {p0, p2, p1, v1, p3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto :goto_2

    .line 1343
    .end local v1    # "normalCmd":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :sswitch_1
    new-instance v2, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct {v2}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 1344
    .local v2, "normalCmdRestart":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    invoke-virtual {v2, p3}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 1345
    invoke-virtual {p0, p2, p1, v2, p3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto :goto_2

    .line 1310
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch

    .line 1325
    :pswitch_data_1
    .packed-switch 0xb1
        :pswitch_1
    .end packed-switch

    .line 1336
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xf -> :sswitch_1
    .end sparse-switch
.end method

.method private fromUltrasonicCmd(IILcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 2
    .param p1, "msgId"    # I
    .param p2, "groupId"    # I
    .param p3, "linkPacket4"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 344
    const/16 v1, 0x10

    if-ne p2, v1, :cond_0

    .line 345
    packed-switch p1, :pswitch_data_0

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 347
    :pswitch_0
    new-instance v0, Lcom/fimi/x8sdk/dataparser/AckVersion;

    invoke-direct {v0}, Lcom/fimi/x8sdk/dataparser/AckVersion;-><init>()V

    .line 348
    .local v0, "ackVersion":Lcom/fimi/x8sdk/dataparser/AckVersion;
    invoke-virtual {v0, p3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 349
    invoke-virtual {p0, p2, p1, v0, p3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto :goto_0

    .line 345
    :pswitch_data_0
    .packed-switch 0xb1
        :pswitch_0
    .end packed-switch
.end method

.method private fromVcCmd(IILcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 5
    .param p1, "msgId"    # I
    .param p2, "groupId"    # I
    .param p3, "linkPacket4"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 483
    const/16 v4, 0xf

    if-ne p2, v4, :cond_0

    .line 484
    sparse-switch p1, :sswitch_data_0

    .line 508
    :cond_0
    :goto_0
    const/16 v4, 0x10

    if-ne p2, v4, :cond_1

    .line 509
    packed-switch p1, :pswitch_data_0

    .line 517
    :cond_1
    :goto_1
    return-void

    .line 486
    :sswitch_0
    new-instance v0, Lcom/fimi/x8sdk/dataparser/AckVcSetRectF;

    invoke-direct {v0}, Lcom/fimi/x8sdk/dataparser/AckVcSetRectF;-><init>()V

    .line 487
    .local v0, "ackVcSetRectF":Lcom/fimi/x8sdk/dataparser/AckVcSetRectF;
    invoke-virtual {v0, p3}, Lcom/fimi/x8sdk/dataparser/AckVcSetRectF;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 488
    invoke-virtual {p0, p2, p1, v0, p3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto :goto_0

    .line 491
    .end local v0    # "ackVcSetRectF":Lcom/fimi/x8sdk/dataparser/AckVcSetRectF;
    :sswitch_1
    new-instance v3, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;

    invoke-direct {v3}, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;-><init>()V

    .line 492
    .local v3, "vcTracking":Lcom/fimi/x8sdk/dataparser/AutoVcTracking;
    invoke-virtual {v3, p3}, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 493
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/fimi/x8sdk/modulestate/StateManager;->onTracking(Lcom/fimi/x8sdk/dataparser/AutoVcTracking;)V

    goto :goto_0

    .line 496
    .end local v3    # "vcTracking":Lcom/fimi/x8sdk/dataparser/AutoVcTracking;
    :sswitch_2
    new-instance v2, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-direct {v2}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;-><init>()V

    .line 497
    .local v2, "setFpvMode":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    invoke-virtual {v2, p3}, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 498
    invoke-virtual {p0, p2, p1, v2, p3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto :goto_0

    .line 511
    .end local v2    # "setFpvMode":Lcom/fimi/x8sdk/dataparser/AckNormalCmds;
    :pswitch_0
    new-instance v1, Lcom/fimi/x8sdk/dataparser/AckVersion;

    invoke-direct {v1}, Lcom/fimi/x8sdk/dataparser/AckVersion;-><init>()V

    .line 512
    .local v1, "ackVersion":Lcom/fimi/x8sdk/dataparser/AckVersion;
    invoke-virtual {v1, p3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 513
    invoke-virtual {p0, p2, p1, v1, p3}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto :goto_1

    .line 484
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 509
    :pswitch_data_0
    .packed-switch 0xb1
        :pswitch_0
    .end packed-switch
.end method

.method private onRequestCmd(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 9
    .param p1, "linkPacket4"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 152
    iget-object v7, p0, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->retransmissionHandle:Lcom/fimi/kernel/connect/interfaces/IRetransmissionHandle;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->timerSendQueueHandle:Lcom/fimi/kernel/connect/interfaces/ITimerSendQueueHandle;

    if-nez v7, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/StateManager;->getRelayState()Lcom/fimi/x8sdk/modulestate/RelayState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/RelayState;->updateLastRlHeartTime()V

    .line 155
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getMsgId()I

    move-result v7

    and-int/lit16 v4, v7, 0xff

    .line 156
    .local v4, "msgId":I
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getGroupId()I

    move-result v7

    and-int/lit16 v0, v7, 0xff

    .line 163
    .local v0, "groupId":I
    const/4 v7, 0x3

    if-ne v0, v7, :cond_2

    .line 164
    const/16 v7, 0x57

    if-eq v7, v4, :cond_2

    if-ne v5, v4, :cond_2

    .line 176
    :cond_2
    iput-boolean v6, p0, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->isResponse:Z

    .line 178
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->getSrcId()B

    move-result v7

    sget-object v8, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_CAMERA:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v8}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v8

    if-eq v7, v8, :cond_5

    iget-object v7, p0, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->mSeqCache:Lcom/fimi/kernel/connect/SeqCache;

    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->getSeq()S

    move-result v8

    invoke-virtual {v7, v8}, Lcom/fimi/kernel/connect/SeqCache;->isExist(I)Z

    move-result v7

    if-eqz v7, :cond_5

    move v1, v5

    .line 179
    .local v1, "isModuleCamera":Z
    :goto_1
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->getSrcId()B

    move-result v7

    sget-object v8, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_CV:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v8}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v8

    if-eq v7, v8, :cond_6

    iget-object v7, p0, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->mSeqCache:Lcom/fimi/kernel/connect/SeqCache;

    .line 180
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->getSeq()S

    move-result v8

    invoke-virtual {v7, v8}, Lcom/fimi/kernel/connect/SeqCache;->isExist(I)Z

    move-result v7

    if-eqz v7, :cond_6

    move v2, v5

    .line 181
    .local v2, "isModuleCv":Z
    :goto_2
    if-eqz v2, :cond_3

    if-nez v1, :cond_0

    .line 184
    :cond_3
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->getSrcId()B

    move-result v6

    sget-object v7, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_CV:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v7}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v7

    if-eq v6, v7, :cond_7

    .line 185
    iget-object v6, p0, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->retransmissionHandle:Lcom/fimi/kernel/connect/interfaces/IRetransmissionHandle;

    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->getSeq()S

    move-result v7

    invoke-interface {v6, v0, v4, v7, p1}, Lcom/fimi/kernel/connect/interfaces/IRetransmissionHandle;->removeFromListByCmdIDLinkPacket4(IIILcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)Z

    move-result v3

    .line 186
    .local v3, "isRemove":Z
    if-eqz v3, :cond_4

    .line 188
    iget-object v6, p0, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->mSeqCache:Lcom/fimi/kernel/connect/SeqCache;

    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->getSeq()S

    move-result v7

    invoke-virtual {v6, v7}, Lcom/fimi/kernel/connect/SeqCache;->add2SeqCache(I)V

    .line 190
    :cond_4
    iput-boolean v5, p0, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->isResponse:Z

    .line 200
    .end local v3    # "isRemove":Z
    :goto_3
    iget-boolean v5, p0, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->isResponse:Z

    if-eqz v5, :cond_0

    .line 203
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->getSrcId()B

    move-result v5

    sget-object v6, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_CAMERA:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v6}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_9

    .line 204
    invoke-direct {p0, v4, v0, p1}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->fromCameraCmd(IILcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_0

    .end local v1    # "isModuleCamera":Z
    .end local v2    # "isModuleCv":Z
    :cond_5
    move v1, v6

    .line 178
    goto :goto_1

    .restart local v1    # "isModuleCamera":Z
    :cond_6
    move v2, v6

    .line 180
    goto :goto_2

    .line 192
    .restart local v2    # "isModuleCv":Z
    :cond_7
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->getSeq()S

    move-result v6

    if-nez v6, :cond_8

    .line 193
    iput-boolean v5, p0, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->isResponse:Z

    goto :goto_3

    .line 195
    :cond_8
    iget-object v5, p0, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->retransmissionHandle:Lcom/fimi/kernel/connect/interfaces/IRetransmissionHandle;

    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->getSeq()S

    move-result v6

    invoke-interface {v5, v0, v4, v6, p1}, Lcom/fimi/kernel/connect/interfaces/IRetransmissionHandle;->removeFromListByCmdIDLinkPacket4(IIILcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->isResponse:Z

    goto :goto_3

    .line 205
    :cond_9
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->getSrcId()B

    move-result v5

    sget-object v6, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_REPEATER_RC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v6}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_a

    .line 206
    invoke-direct {p0, v4, v0, p1}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->fromRelayCmd(IILcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_0

    .line 207
    :cond_a
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->getSrcId()B

    move-result v5

    sget-object v6, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_REPEATER_VEHICLE:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v6}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_b

    .line 208
    invoke-direct {p0, v4, v0, p1}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->fromFcRelayCmd(IILcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_0

    .line 209
    :cond_b
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->getSrcId()B

    move-result v5

    sget-object v6, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v6}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_c

    .line 210
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/x8sdk/modulestate/DroneState;->updateLastFcHeartTime()V

    .line 211
    invoke-direct {p0, v4, v0, p1}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->fromFcCmd(IILcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_0

    .line 212
    :cond_c
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->getSrcId()B

    move-result v5

    sget-object v6, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_NFZ:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v6}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_d

    .line 213
    invoke-direct {p0, v4, v0, p1}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->fromNFZCmd(IILcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_0

    .line 214
    :cond_d
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->getSrcId()B

    move-result v5

    sget-object v6, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_CV:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v6}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_e

    .line 215
    invoke-direct {p0, v4, v0, p1}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->fromVcCmd(IILcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_0

    .line 216
    :cond_e
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->getSrcId()B

    move-result v5

    sget-object v6, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_ESC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v6}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_f

    .line 217
    invoke-direct {p0, v4, v0, p1}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->fromEscCmd(IILcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_0

    .line 218
    :cond_f
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->getSrcId()B

    move-result v5

    sget-object v6, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_GIMBAL:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v6}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_10

    .line 219
    invoke-direct {p0, v4, v0, p1}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->fromGimbalCmd(IILcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_0

    .line 220
    :cond_10
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->getSrcId()B

    move-result v5

    sget-object v6, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_BATTERY:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v6}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_11

    .line 221
    invoke-direct {p0, v4, v0, p1}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->fromBatteryCmd(IILcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_0

    .line 222
    :cond_11
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->getSrcId()B

    move-result v5

    sget-object v6, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_RC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v6}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_12

    .line 223
    invoke-direct {p0, v4, v0, p1}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->fromRcCmd(IILcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_0

    .line 224
    :cond_12
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->getSrcId()B

    move-result v5

    sget-object v6, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_ULTRASONIC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v6}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 225
    invoke-direct {p0, v4, v0, p1}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->fromUltrasonicCmd(IILcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public forwardData([B)V
    .locals 4
    .param p1, "buffer"    # [B

    .prologue
    .line 127
    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    .line 128
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 129
    iget-object v2, p0, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->p:Lcom/fimi/kernel/dataparser/fmlink4/Parser4;

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;->unPacket(I)Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    move-result-object v1

    .line 131
    .local v1, "packet":Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;
    if-eqz v1, :cond_0

    .line 133
    invoke-direct {p0, v1}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->onRequestCmd(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 135
    iget-object v2, p0, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->statusManager:Lcom/fimi/x8sdk/connect/ConnectStatusManager;

    invoke-virtual {v2, v1}, Lcom/fimi/x8sdk/connect/ConnectStatusManager;->onDataRecieved(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 128
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    .end local v0    # "i":I
    .end local v1    # "packet":Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;
    :cond_1
    return-void
.end method

.method public notityX8Message(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 2
    .param p1, "groupId"    # I
    .param p2, "msgId"    # I
    .param p3, "msg"    # Lcom/fimi/kernel/dataparser/ILinkMessage;
    .param p4, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 1459
    invoke-virtual {p4}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/fimi/kernel/dataparser/ILinkMessage;->setUiCallBack(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 1460
    invoke-virtual {p4}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPersonalDataCallBack()Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1461
    invoke-static {}, Lcom/fimi/kernel/connect/session/NoticeManager;->getInstance()Lcom/fimi/kernel/connect/session/NoticeManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/fimi/kernel/connect/session/NoticeManager;->onDataCallBack(IILcom/fimi/kernel/dataparser/ILinkMessage;)V

    .line 1467
    :goto_0
    return-void

    .line 1464
    :cond_0
    invoke-static {}, Lcom/fimi/kernel/connect/session/NoticeManager;->getInstance()Lcom/fimi/kernel/connect/session/NoticeManager;

    move-result-object v0

    invoke-virtual {p4}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPersonalDataCallBack()Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/fimi/kernel/connect/session/NoticeManager;->onPersonalDataCallBack(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;)V

    goto :goto_0
.end method

.method public setRetransmissionHandle(Lcom/fimi/kernel/connect/interfaces/IRetransmissionHandle;)V
    .locals 0
    .param p1, "retransmissionHandle"    # Lcom/fimi/kernel/connect/interfaces/IRetransmissionHandle;

    .prologue
    .line 1292
    iput-object p1, p0, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->retransmissionHandle:Lcom/fimi/kernel/connect/interfaces/IRetransmissionHandle;

    .line 1293
    return-void
.end method

.method public setTimerSendQueueHandle(Lcom/fimi/kernel/connect/interfaces/ITimerSendQueueHandle;)V
    .locals 0
    .param p1, "timerSendQueueHandle"    # Lcom/fimi/kernel/connect/interfaces/ITimerSendQueueHandle;

    .prologue
    .line 1296
    iput-object p1, p0, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->timerSendQueueHandle:Lcom/fimi/kernel/connect/interfaces/ITimerSendQueueHandle;

    .line 1297
    return-void
.end method
