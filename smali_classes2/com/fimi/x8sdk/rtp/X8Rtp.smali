.class public Lcom/fimi/x8sdk/rtp/X8Rtp;
.super Ljava/lang/Object;
.source "X8Rtp.java"


# static fields
.field public static isRtpAllShow:Z

.field public static simulationTest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    sput-boolean v0, Lcom/fimi/x8sdk/rtp/X8Rtp;->isRtpAllShow:Z

    .line 13
    sput-boolean v0, Lcom/fimi/x8sdk/rtp/X8Rtp;->simulationTest:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFcNavString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "code"    # I

    .prologue
    .line 16
    sget-boolean v1, Lcom/fimi/x8sdk/rtp/X8Rtp;->isRtpAllShow:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/fimi/x8sdk/R$string;->cmd_fail:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "error code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, "s":Ljava/lang/String;
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 143
    :goto_1
    :pswitch_0
    return-object v0

    .line 16
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 19
    .restart local v0    # "s":Ljava/lang/String;
    :pswitch_1
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp1:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 20
    goto :goto_1

    .line 22
    :pswitch_2
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp2:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 23
    goto :goto_1

    .line 25
    :pswitch_3
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp3:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 26
    goto :goto_1

    .line 28
    :pswitch_4
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp4:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 29
    goto :goto_1

    .line 31
    :pswitch_5
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp12:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 32
    goto :goto_1

    .line 34
    :pswitch_6
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp13:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 35
    goto :goto_1

    .line 37
    :pswitch_7
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp14:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 38
    goto :goto_1

    .line 40
    :pswitch_8
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp15:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    goto :goto_1

    .line 43
    :pswitch_9
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp16:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 44
    goto :goto_1

    .line 46
    :pswitch_a
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp17:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    goto :goto_1

    .line 49
    :pswitch_b
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp18:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    goto :goto_1

    .line 52
    :pswitch_c
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp19:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    goto :goto_1

    .line 55
    :pswitch_d
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp22:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    goto :goto_1

    .line 58
    :pswitch_e
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp23:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    goto :goto_1

    .line 61
    :pswitch_f
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp25:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    goto :goto_1

    .line 65
    :pswitch_10
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp26:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    goto :goto_1

    .line 68
    :pswitch_11
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp28:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    goto :goto_1

    .line 71
    :pswitch_12
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp29:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    goto/16 :goto_1

    .line 74
    :pswitch_13
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp31:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    goto/16 :goto_1

    .line 77
    :pswitch_14
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp33:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    goto/16 :goto_1

    .line 80
    :pswitch_15
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp64:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    goto/16 :goto_1

    .line 83
    :pswitch_16
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp38:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    goto/16 :goto_1

    .line 86
    :pswitch_17
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp42:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    goto/16 :goto_1

    .line 89
    :pswitch_18
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp43:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    goto/16 :goto_1

    .line 92
    :pswitch_19
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp44:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    goto/16 :goto_1

    .line 95
    :pswitch_1a
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp45:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    goto/16 :goto_1

    .line 98
    :pswitch_1b
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp46:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 99
    goto/16 :goto_1

    .line 101
    :pswitch_1c
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp47:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    goto/16 :goto_1

    .line 104
    :pswitch_1d
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp52:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    goto/16 :goto_1

    .line 107
    :pswitch_1e
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp53:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    goto/16 :goto_1

    .line 110
    :pswitch_1f
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp54:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    goto/16 :goto_1

    .line 113
    :pswitch_20
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp55:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    goto/16 :goto_1

    .line 116
    :pswitch_21
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp56:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    goto/16 :goto_1

    .line 119
    :pswitch_22
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp57:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    goto/16 :goto_1

    .line 122
    :pswitch_23
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp58:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    goto/16 :goto_1

    .line 125
    :pswitch_24
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp59:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    goto/16 :goto_1

    .line 128
    :pswitch_25
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp60:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    goto/16 :goto_1

    .line 131
    :pswitch_26
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp61:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    goto/16 :goto_1

    .line 134
    :pswitch_27
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp62:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    goto/16 :goto_1

    .line 137
    :pswitch_28
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp63:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 138
    goto/16 :goto_1

    .line 140
    :pswitch_29
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_nav_rtp64:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 17
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
    .end packed-switch
.end method

.method public static getRtpStringCamera(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "code"    # I

    .prologue
    .line 209
    const-string v0, ""

    .line 210
    .local v0, "s":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 227
    :goto_0
    :pswitch_0
    return-object v0

    .line 212
    :pswitch_1
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_camera_rtp1:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    goto :goto_0

    .line 215
    :pswitch_2
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_camera_rtp3:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 216
    goto :goto_0

    .line 218
    :pswitch_3
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_camera_rtp8:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    goto :goto_0

    .line 221
    :pswitch_4
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_camera_rtp9:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 222
    goto :goto_0

    .line 224
    :pswitch_5
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_camera_rtp10:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getRtpStringFcCtrl(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "code"    # I

    .prologue
    .line 147
    sget-boolean v1, Lcom/fimi/x8sdk/rtp/X8Rtp;->isRtpAllShow:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/fimi/x8sdk/R$string;->cmd_fail:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "error code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "s":Ljava/lang/String;
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 204
    :goto_1
    return-object v0

    .line 147
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 150
    .restart local v0    # "s":Ljava/lang/String;
    :sswitch_0
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_ctrl_rtp1:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    goto :goto_1

    .line 153
    :sswitch_1
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_ctrl_rtp2:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    goto :goto_1

    .line 156
    :sswitch_2
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_ctrl_rtp50:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    goto :goto_1

    .line 159
    :sswitch_3
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_ctrl_rtp51:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    goto :goto_1

    .line 162
    :sswitch_4
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_ctrl_rtp60:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 163
    goto :goto_1

    .line 165
    :sswitch_5
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_ctrl_rtp61:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    goto :goto_1

    .line 168
    :sswitch_6
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_ctrl_rtp62:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 169
    goto :goto_1

    .line 171
    :sswitch_7
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_ctrl_rtp71:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 172
    goto :goto_1

    .line 174
    :sswitch_8
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_ctrl_rtp72:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    goto :goto_1

    .line 177
    :sswitch_9
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_ctrl_rtp74:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    goto :goto_1

    .line 180
    :sswitch_a
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_ctrl_rtp75:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 181
    goto :goto_1

    .line 183
    :sswitch_b
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_ctrl_rtp76:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    goto :goto_1

    .line 186
    :sswitch_c
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_ctrl_rtp77:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    goto :goto_1

    .line 189
    :sswitch_d
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_ctrl_rtp79:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 190
    goto :goto_1

    .line 192
    :sswitch_e
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_ctrl_rtp7A:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 193
    goto :goto_1

    .line 195
    :sswitch_f
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_ctrl_rtp7B:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    goto :goto_1

    .line 198
    :sswitch_10
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_ctrl_rtp7C:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    goto :goto_1

    .line 201
    :sswitch_11
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_ctrl_rtp7E:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 148
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x50 -> :sswitch_2
        0x51 -> :sswitch_3
        0x60 -> :sswitch_4
        0x61 -> :sswitch_5
        0x62 -> :sswitch_6
        0x71 -> :sswitch_7
        0x72 -> :sswitch_8
        0x74 -> :sswitch_9
        0x75 -> :sswitch_a
        0x76 -> :sswitch_b
        0x77 -> :sswitch_c
        0x79 -> :sswitch_d
        0x7a -> :sswitch_e
        0x7b -> :sswitch_f
        0x7c -> :sswitch_10
        0x7e -> :sswitch_11
    .end sparse-switch
.end method
