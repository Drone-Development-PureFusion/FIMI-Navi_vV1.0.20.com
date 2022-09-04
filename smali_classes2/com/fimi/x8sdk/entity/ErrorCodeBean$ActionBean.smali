.class public Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
.super Ljava/lang/Object;
.source "ErrorCodeBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x8sdk/entity/ErrorCodeBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionBean"
.end annotation


# instance fields
.field private ConditionValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConditionValuesBean;",
            ">;"
        }
    .end annotation
.end field

.field private ConstraintBits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConstraintBitBean;",
            ">;"
        }
    .end annotation
.end field

.field private CtrlMode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/ErrorCodeBean$CtrlModeBean;",
            ">;"
        }
    .end annotation
.end field

.field private Display:I

.field private FlightPhase:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/ErrorCodeBean$FlightPhase;",
            ">;"
        }
    .end annotation
.end field

.field private GroupID:Ljava/lang/String;

.field private Inhibition:I

.field private IsInFlight:Z

.field private Label:Ljava/lang/String;

.field private OffsetBit:I

.field private Severity:I

.field private Speak:I

.field private Text:I

.field private Value:I

.field private Vibrate:Z

.field private isShow:Z

.field private speaking:Z

.field final synthetic this$0:Lcom/fimi/x8sdk/entity/ErrorCodeBean;

.field private vibrating:Z


# direct methods
.method public constructor <init>(Lcom/fimi/x8sdk/entity/ErrorCodeBean;)V
    .locals 1
    .param p1, "this$0"    # Lcom/fimi/x8sdk/entity/ErrorCodeBean;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->this$0:Lcom/fimi/x8sdk/entity/ErrorCodeBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->ConstraintBits:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->FlightPhase:Ljava/util/List;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->CtrlMode:Ljava/util/List;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->ConditionValues:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 19
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 236
    move-object/from16 v3, p1

    check-cast v3, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;

    .line 237
    .local v3, "b":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    move-object/from16 v2, p0

    .line 238
    .local v2, "a":Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;
    const/16 v16, 0x0

    .line 239
    .local v16, "ret":Z
    iget-object v0, v2, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->GroupID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getGroupID()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 240
    .local v8, "isGroup":Z
    invoke-virtual {v2}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getOffsetBit()I

    move-result v17

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getOffsetBit()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    const/4 v10, 0x1

    .line 241
    .local v10, "isOffSetBit":Z
    :goto_0
    invoke-virtual {v2}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getSeverity()I

    move-result v17

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getSeverity()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    const/4 v11, 0x1

    .line 242
    .local v11, "isSeverity":Z
    :goto_1
    invoke-virtual {v2}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getText()I

    move-result v17

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getText()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    const/4 v13, 0x1

    .line 243
    .local v13, "isText":Z
    :goto_2
    invoke-virtual {v2}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getSpeak()I

    move-result v17

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getSpeak()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    const/4 v12, 0x1

    .line 244
    .local v12, "isSpeak":Z
    :goto_3
    invoke-virtual {v2}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->isVibrate()Z

    move-result v17

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->isVibrate()Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    const/4 v15, 0x1

    .line 245
    .local v15, "isVibrate":Z
    :goto_4
    invoke-virtual {v2}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->isInFlight()Z

    move-result v17

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->isInFlight()Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    const/4 v9, 0x1

    .line 246
    .local v9, "isInSky":Z
    :goto_5
    invoke-virtual {v2}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getValue()I

    move-result v17

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getValue()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    const/4 v14, 0x1

    .line 247
    .local v14, "isValue":Z
    :goto_6
    invoke-virtual {v2}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getConstraintBits()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getConstraintBits()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    const/4 v4, 0x1

    .line 248
    .local v4, "isCheckBits":Z
    :goto_7
    if-eqz v4, :cond_0

    .line 249
    invoke-virtual {v2}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getConstraintBits()Ljava/util/List;

    move-result-object v17

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getConstraintBits()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    .line 251
    :cond_0
    invoke-virtual {v2}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getFlightPhase()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getFlightPhase()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    const/4 v7, 0x1

    .line 252
    .local v7, "isCheckFligthPhas":Z
    :goto_8
    if-eqz v7, :cond_1

    .line 253
    invoke-virtual {v2}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getFlightPhase()Ljava/util/List;

    move-result-object v17

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getFlightPhase()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v7

    .line 255
    :cond_1
    invoke-virtual {v2}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getCtrlMode()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getCtrlMode()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    const/4 v6, 0x1

    .line 256
    .local v6, "isCheckCtrlMode":Z
    :goto_9
    if-eqz v6, :cond_2

    .line 257
    invoke-virtual {v2}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getCtrlMode()Ljava/util/List;

    move-result-object v17

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getCtrlMode()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    .line 259
    :cond_2
    invoke-virtual {v2}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getConditionValues()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getConditionValues()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    const/4 v5, 0x1

    .line 260
    .local v5, "isCheckConditionValuesBean":Z
    :goto_a
    if-eqz v5, :cond_3

    .line 261
    invoke-virtual {v2}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getConditionValues()Ljava/util/List;

    move-result-object v17

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->getConditionValues()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    .line 265
    :cond_3
    if-eqz v8, :cond_4

    if-eqz v10, :cond_4

    if-eqz v11, :cond_4

    if-eqz v13, :cond_4

    if-eqz v12, :cond_4

    if-eqz v15, :cond_4

    if-eqz v9, :cond_4

    if-eqz v15, :cond_4

    if-eqz v14, :cond_4

    if-eqz v4, :cond_4

    if-eqz v7, :cond_4

    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    .line 267
    const/16 v16, 0x1

    .line 269
    :cond_4
    return v16

    .line 240
    .end local v4    # "isCheckBits":Z
    .end local v5    # "isCheckConditionValuesBean":Z
    .end local v6    # "isCheckCtrlMode":Z
    .end local v7    # "isCheckFligthPhas":Z
    .end local v9    # "isInSky":Z
    .end local v10    # "isOffSetBit":Z
    .end local v11    # "isSeverity":Z
    .end local v12    # "isSpeak":Z
    .end local v13    # "isText":Z
    .end local v14    # "isValue":Z
    .end local v15    # "isVibrate":Z
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 241
    .restart local v10    # "isOffSetBit":Z
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 242
    .restart local v11    # "isSeverity":Z
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 243
    .restart local v13    # "isText":Z
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 244
    .restart local v12    # "isSpeak":Z
    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 245
    .restart local v15    # "isVibrate":Z
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 246
    .restart local v9    # "isInSky":Z
    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_6

    .line 247
    .restart local v14    # "isValue":Z
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 251
    .restart local v4    # "isCheckBits":Z
    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_8

    .line 255
    .restart local v7    # "isCheckFligthPhas":Z
    :cond_e
    const/4 v6, 0x0

    goto :goto_9

    .line 259
    .restart local v6    # "isCheckCtrlMode":Z
    :cond_f
    const/4 v5, 0x0

    goto :goto_a
.end method

.method public getConditionValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConditionValuesBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->ConditionValues:Ljava/util/List;

    return-object v0
.end method

.method public getConstraintBits()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConstraintBitBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->ConstraintBits:Ljava/util/List;

    return-object v0
.end method

.method public getCtrlMode()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/ErrorCodeBean$CtrlModeBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->CtrlMode:Ljava/util/List;

    return-object v0
.end method

.method public getDisplay()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->Display:I

    return v0
.end method

.method public getFlightPhase()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/ErrorCodeBean$FlightPhase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->FlightPhase:Ljava/util/List;

    return-object v0
.end method

.method public getGroupID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->GroupID:Ljava/lang/String;

    return-object v0
.end method

.method public getInhibition()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->Inhibition:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->Label:Ljava/lang/String;

    return-object v0
.end method

.method public getOffsetBit()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->OffsetBit:I

    return v0
.end method

.method public getSeverity()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->Severity:I

    return v0
.end method

.method public getSpeak()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->Speak:I

    return v0
.end method

.method public getText()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->Text:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->Value:I

    return v0
.end method

.method public isInFlight()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->IsInFlight:Z

    return v0
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->isShow:Z

    return v0
.end method

.method public isVibrate()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->Vibrate:Z

    return v0
.end method

.method public isVibrating()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->vibrating:Z

    return v0
.end method

.method public setConditionValues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConditionValuesBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "conditionValues":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConditionValuesBean;>;"
    iput-object p1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->ConditionValues:Ljava/util/List;

    .line 135
    return-void
.end method

.method public setConstraintBits(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConstraintBitBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "constraintBits":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConstraintBitBean;>;"
    iput-object p1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->ConstraintBits:Ljava/util/List;

    .line 143
    return-void
.end method

.method public setCtrlMode(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/ErrorCodeBean$CtrlModeBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "ctrlMode":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/entity/ErrorCodeBean$CtrlModeBean;>;"
    iput-object p1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->CtrlMode:Ljava/util/List;

    .line 159
    return-void
.end method

.method public setDisplay(I)V
    .locals 0
    .param p1, "display"    # I

    .prologue
    .line 231
    iput p1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->Display:I

    .line 232
    return-void
.end method

.method public setFlightPhase(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/ErrorCodeBean$FlightPhase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "flightPhase":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/entity/ErrorCodeBean$FlightPhase;>;"
    iput-object p1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->FlightPhase:Ljava/util/List;

    .line 151
    return-void
.end method

.method public setGroupID(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupID"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->GroupID:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setInhibition(I)V
    .locals 0
    .param p1, "inhibition"    # I

    .prologue
    .line 223
    iput p1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->Inhibition:I

    .line 224
    return-void
.end method

.method public setIsInFlight(Z)V
    .locals 0
    .param p1, "inFlight"    # Z

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->IsInFlight:Z

    .line 208
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->Label:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setOffsetBit(I)V
    .locals 0
    .param p1, "offsetBit"    # I

    .prologue
    .line 174
    iput p1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->OffsetBit:I

    .line 175
    return-void
.end method

.method public setSeverity(I)V
    .locals 0
    .param p1, "severity"    # I

    .prologue
    .line 182
    iput p1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->Severity:I

    .line 183
    return-void
.end method

.method public setShow(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->isShow:Z

    .line 75
    return-void
.end method

.method public setSpeak(I)V
    .locals 0
    .param p1, "speak"    # I

    .prologue
    .line 215
    iput p1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->Speak:I

    .line 216
    return-void
.end method

.method public setSpeaking(Z)V
    .locals 0
    .param p1, "isSpeak"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->speaking:Z

    .line 82
    return-void
.end method

.method public setText(I)V
    .locals 0
    .param p1, "text"    # I

    .prologue
    .line 190
    iput p1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->Text:I

    .line 191
    return-void
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->Value:I

    .line 127
    return-void
.end method

.method public setVibrate(Z)V
    .locals 0
    .param p1, "vibrate"    # Z

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->Vibrate:Z

    .line 200
    return-void
.end method

.method public setVibrating(Z)V
    .locals 0
    .param p1, "vibrating"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->vibrating:Z

    .line 92
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionBean{speaking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->speaking:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vibrating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->vibrating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", GroupID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->GroupID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Label=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->Label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", OffsetBit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->OffsetBit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Severity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->Severity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->Text:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Speak="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->Speak:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Vibrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->Vibrate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", IsInFlight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->IsInFlight:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;->Value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
