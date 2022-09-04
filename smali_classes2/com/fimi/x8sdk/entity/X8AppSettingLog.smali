.class public Lcom/fimi/x8sdk/entity/X8AppSettingLog;
.super Ljava/lang/Object;
.source "X8AppSettingLog.java"


# static fields
.field public static CC:I

.field public static FB_pitch:I

.field public static FB_roll:I

.field public static FB_thro:I

.field public static FB_yaw:I

.field public static FE_pitch:I

.field public static FE_roll:I

.field public static FE_thro:I

.field public static FE_yaw:I

.field public static FS_pitch:I

.field public static FS_roll:I

.field public static FS_thro:I

.field public static FS_yaw:I

.field public static FY_pitch:I

.field public static FY_roll:I

.field public static FY_thro:I

.field public static FY_yaw:I

.field public static RCNOTUPDATECNT:I

.field public static STARTUPTIME:I

.field public static SYSERRORCODE:I

.field public static SYSSTATE:I

.field public static TOTALCAPACITY:I

.field public static UVC:I

.field public static accurateLanding:Z

.field public static distanceLimit:F

.field public static followAB:Z

.field public static followRP:Z

.field public static heightLimit:F

.field public static lostAction:I

.field public static lowPower:I

.field public static pilotMode:Z

.field public static returnHeight:F

.field public static speedLimit:F

.field public static sportMode:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static noChangeFollowRP(Z)V
    .locals 3
    .param p0, "b"    # Z

    .prologue
    .line 179
    sget-boolean v0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->followRP:Z

    if-ne v0, p0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v0

    const-string v1, "followRP"

    sget-boolean v2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->followRP:Z

    invoke-virtual {v0, v1, v2, p0}, Lcom/fimi/x8sdk/X8FcLogManager;->appValueBoleanChange(Ljava/lang/String;ZZ)V

    .line 183
    sput-boolean p0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->followRP:Z

    goto :goto_0
.end method

.method public static onChangeAccurateLanding(Z)V
    .locals 3
    .param p0, "b"    # Z

    .prologue
    .line 171
    sget-boolean v0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->accurateLanding:Z

    if-ne v0, p0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v0

    const-string v1, "accLand"

    sget-boolean v2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->accurateLanding:Z

    invoke-virtual {v0, v1, v2, p0}, Lcom/fimi/x8sdk/X8FcLogManager;->appValueBoleanChange(Ljava/lang/String;ZZ)V

    .line 175
    sput-boolean p0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->accurateLanding:Z

    goto :goto_0
.end method

.method public static onChangeLostAciton(I)V
    .locals 4
    .param p0, "action"    # I

    .prologue
    .line 163
    sget v0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->lostAction:I

    if-ne v0, p0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v0

    const-string v1, "lostAction"

    sget v2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->lostAction:I

    int-to-float v2, v2

    int-to-float v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/fimi/x8sdk/X8FcLogManager;->appValueFloatChange(Ljava/lang/String;FF)V

    .line 167
    sput p0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->lostAction:I

    goto :goto_0
.end method

.method public static onChangePilotMode(Z)V
    .locals 3
    .param p0, "b"    # Z

    .prologue
    .line 155
    sget-boolean v0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->pilotMode:Z

    if-ne v0, p0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v0

    const-string v1, "accLand"

    sget-boolean v2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->pilotMode:Z

    invoke-virtual {v0, v1, v2, p0}, Lcom/fimi/x8sdk/X8FcLogManager;->appValueBoleanChange(Ljava/lang/String;ZZ)V

    .line 159
    sput-boolean p0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->pilotMode:Z

    goto :goto_0
.end method

.method public static onDataChange()V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method public static setCc(I)V
    .locals 4
    .param p0, "cc"    # I

    .prologue
    .line 195
    sget v0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->CC:I

    if-ne v0, p0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v0

    const-string v1, "cc"

    sget v2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->CC:I

    int-to-float v2, v2

    int-to-float v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/fimi/x8sdk/X8FcLogManager;->appValueFloatChange(Ljava/lang/String;FF)V

    .line 199
    sput p0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->CC:I

    goto :goto_0
.end method

.method public static setDistanceLimit(F)V
    .locals 3
    .param p0, "d"    # F

    .prologue
    .line 295
    sget v0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->distanceLimit:F

    cmpl-float v0, v0, p0

    if-nez v0, :cond_0

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_0
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v0

    const-string v1, "distanceLimit"

    sget v2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->distanceLimit:F

    invoke-virtual {v0, v1, v2, p0}, Lcom/fimi/x8sdk/X8FcLogManager;->appValueFloatChange(Ljava/lang/String;FF)V

    .line 299
    sput p0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->distanceLimit:F

    goto :goto_0
.end method

.method public static setExp(IIII)V
    .locals 6
    .param p0, "p"    # I
    .param p1, "r"    # I
    .param p2, "t"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v2, -0x1

    .line 131
    if-ne p0, v2, :cond_0

    .line 132
    sget p0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FE_pitch:I

    .line 134
    :cond_0
    if-ne p1, v2, :cond_1

    .line 135
    sget p1, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FE_roll:I

    .line 137
    :cond_1
    if-ne p2, v2, :cond_2

    .line 138
    sget p2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FE_thro:I

    .line 140
    :cond_2
    if-ne p3, v2, :cond_3

    .line 141
    sget p3, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FE_yaw:I

    .line 144
    :cond_3
    new-instance v1, Lcom/fimi/x8sdk/appsetting/ValueSensity;

    sget v2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FE_pitch:I

    int-to-float v2, v2

    sget v3, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FE_roll:I

    int-to-float v3, v3

    sget v4, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FE_thro:I

    int-to-float v4, v4

    sget v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FE_yaw:I

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueSensity;-><init>(FFFF)V

    .line 145
    .local v1, "old":Lcom/fimi/x8sdk/appsetting/ValueSensity;
    new-instance v0, Lcom/fimi/x8sdk/appsetting/ValueSensity;

    int-to-float v2, p0

    int-to-float v3, p1

    int-to-float v4, p2

    int-to-float v5, p3

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueSensity;-><init>(FFFF)V

    .line 146
    .local v0, "newV":Lcom/fimi/x8sdk/appsetting/ValueSensity;
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v2

    const-string v3, "feelExp"

    invoke-virtual {v2, v3, v1, v0}, Lcom/fimi/x8sdk/X8FcLogManager;->appValueSensityChange(Ljava/lang/String;Lcom/fimi/x8sdk/appsetting/ValueSensity;Lcom/fimi/x8sdk/appsetting/ValueSensity;)V

    .line 147
    sput p0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FE_pitch:I

    .line 149
    sput p2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FE_thro:I

    .line 150
    sput p3, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FE_yaw:I

    .line 151
    return-void
.end method

.method public static setFb(IIII)V
    .locals 6
    .param p0, "p"    # I
    .param p1, "r"    # I
    .param p2, "t"    # I
    .param p3, "y"    # I

    .prologue
    .line 89
    sget v2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FB_pitch:I

    if-ne p0, v2, :cond_0

    sget v2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FB_roll:I

    if-ne p1, v2, :cond_0

    sget v2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FB_thro:I

    if-ne v2, p2, :cond_0

    sget v2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FB_yaw:I

    if-ne v2, p3, :cond_0

    .line 90
    sput p0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FB_pitch:I

    .line 91
    sput p1, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FB_roll:I

    .line 92
    sput p2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FB_thro:I

    .line 93
    sput p3, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FB_yaw:I

    .line 103
    :goto_0
    return-void

    .line 96
    :cond_0
    new-instance v1, Lcom/fimi/x8sdk/appsetting/ValueSensity;

    sget v2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FB_pitch:I

    int-to-float v2, v2

    sget v3, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FB_roll:I

    int-to-float v3, v3

    sget v4, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FB_thro:I

    int-to-float v4, v4

    sget v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FB_yaw:I

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueSensity;-><init>(FFFF)V

    .line 97
    .local v1, "old":Lcom/fimi/x8sdk/appsetting/ValueSensity;
    new-instance v0, Lcom/fimi/x8sdk/appsetting/ValueSensity;

    int-to-float v2, p0

    int-to-float v3, p1

    int-to-float v4, p2

    int-to-float v5, p3

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueSensity;-><init>(FFFF)V

    .line 98
    .local v0, "newV":Lcom/fimi/x8sdk/appsetting/ValueSensity;
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v2

    const-string v3, "feelSensitivity"

    invoke-virtual {v2, v3, v1, v0}, Lcom/fimi/x8sdk/X8FcLogManager;->appValueSensityChange(Ljava/lang/String;Lcom/fimi/x8sdk/appsetting/ValueSensity;Lcom/fimi/x8sdk/appsetting/ValueSensity;)V

    .line 99
    sput p0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FB_pitch:I

    .line 100
    sput p1, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FB_roll:I

    .line 101
    sput p2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FB_thro:I

    .line 102
    sput p3, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FB_yaw:I

    goto :goto_0
.end method

.method public static setFollowAB(Z)V
    .locals 3
    .param p0, "b"    # Z

    .prologue
    .line 187
    sget-boolean v0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->followAB:Z

    if-ne v0, p0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v0

    const-string v1, "followAB"

    sget-boolean v2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->followAB:Z

    invoke-virtual {v0, v1, v2, p0}, Lcom/fimi/x8sdk/X8FcLogManager;->appValueBoleanChange(Ljava/lang/String;ZZ)V

    .line 191
    sput-boolean p0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->followAB:Z

    goto :goto_0
.end method

.method public static setFs(IIII)V
    .locals 6
    .param p0, "p"    # I
    .param p1, "r"    # I
    .param p2, "t"    # I
    .param p3, "y"    # I

    .prologue
    .line 72
    sget v2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FS_pitch:I

    if-ne p0, v2, :cond_0

    sget v2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FS_roll:I

    if-ne p1, v2, :cond_0

    sget v2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FS_thro:I

    if-ne v2, p2, :cond_0

    sget v2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FS_yaw:I

    if-ne v2, p3, :cond_0

    .line 73
    sput p0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FS_pitch:I

    .line 74
    sput p1, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FS_roll:I

    .line 75
    sput p2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FS_thro:I

    .line 76
    sput p3, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FS_yaw:I

    .line 86
    :goto_0
    return-void

    .line 79
    :cond_0
    new-instance v1, Lcom/fimi/x8sdk/appsetting/ValueSensity;

    sget v2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FS_pitch:I

    int-to-float v2, v2

    sget v3, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FS_roll:I

    int-to-float v3, v3

    sget v4, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FS_thro:I

    int-to-float v4, v4

    sget v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FS_yaw:I

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueSensity;-><init>(FFFF)V

    .line 80
    .local v1, "old":Lcom/fimi/x8sdk/appsetting/ValueSensity;
    new-instance v0, Lcom/fimi/x8sdk/appsetting/ValueSensity;

    int-to-float v2, p0

    int-to-float v3, p1

    int-to-float v4, p2

    int-to-float v5, p3

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueSensity;-><init>(FFFF)V

    .line 81
    .local v0, "newV":Lcom/fimi/x8sdk/appsetting/ValueSensity;
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v2

    const-string v3, "feelYawTrip"

    invoke-virtual {v2, v3, v1, v0}, Lcom/fimi/x8sdk/X8FcLogManager;->appValueSensityChange(Ljava/lang/String;Lcom/fimi/x8sdk/appsetting/ValueSensity;Lcom/fimi/x8sdk/appsetting/ValueSensity;)V

    .line 82
    sput p0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FS_pitch:I

    .line 83
    sput p1, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FS_roll:I

    .line 84
    sput p2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FS_thro:I

    .line 85
    sput p3, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FS_yaw:I

    goto :goto_0
.end method

.method public static setHeightLimit(F)V
    .locals 3
    .param p0, "h"    # F

    .prologue
    .line 287
    sget v0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->heightLimit:F

    cmpl-float v0, v0, p0

    if-nez v0, :cond_0

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_0
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v0

    const-string v1, "heightLimit"

    sget v2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->heightLimit:F

    invoke-virtual {v0, v1, v2, p0}, Lcom/fimi/x8sdk/X8FcLogManager;->appValueFloatChange(Ljava/lang/String;FF)V

    .line 291
    sput p0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->heightLimit:F

    goto :goto_0
.end method

.method public static setLowPower(I)V
    .locals 4
    .param p0, "l"    # I

    .prologue
    .line 271
    sget v0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->lowPower:I

    if-ne v0, p0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v0

    const-string v1, "lowPower"

    sget v2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->lowPower:I

    int-to-float v2, v2

    int-to-float v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/fimi/x8sdk/X8FcLogManager;->appValueFloatChange(Ljava/lang/String;FF)V

    .line 275
    sput p0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->lowPower:I

    goto :goto_0
.end method

.method public static setPilotMode(Z)V
    .locals 3
    .param p0, "b"    # Z

    .prologue
    .line 263
    sget-boolean v0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->pilotMode:Z

    if-ne v0, p0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v0

    const-string v1, "pilotMode"

    sget-boolean v2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->pilotMode:Z

    invoke-virtual {v0, v1, v2, p0}, Lcom/fimi/x8sdk/X8FcLogManager;->appValueBoleanChange(Ljava/lang/String;ZZ)V

    .line 267
    sput-boolean p0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->pilotMode:Z

    goto :goto_0
.end method

.method public static setRcErrorState(I)V
    .locals 4
    .param p0, "rcErrorState"    # I

    .prologue
    .line 243
    sget v0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->SYSERRORCODE:I

    if-ne v0, p0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v0

    const-string v1, "sysErrorCode"

    sget v2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->SYSERRORCODE:I

    int-to-float v2, v2

    int-to-float v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/fimi/x8sdk/X8FcLogManager;->appValueFloatChange(Ljava/lang/String;FF)V

    .line 247
    sput p0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->SYSERRORCODE:I

    goto :goto_0
.end method

.method public static setRcNotUpdateCnt(I)V
    .locals 4
    .param p0, "rcNotUpdateCnt"    # I

    .prologue
    .line 220
    sget v0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->RCNOTUPDATECNT:I

    if-ne v0, p0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v0

    const-string v1, "rcNotUpdateCnt"

    sget v2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->RCNOTUPDATECNT:I

    int-to-float v2, v2

    int-to-float v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/fimi/x8sdk/X8FcLogManager;->appValueFloatChange(Ljava/lang/String;FF)V

    .line 224
    sput p0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->RCNOTUPDATECNT:I

    goto :goto_0
.end method

.method public static setRcState(I)V
    .locals 4
    .param p0, "rcState"    # I

    .prologue
    .line 235
    sget v0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->SYSSTATE:I

    if-ne v0, p0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v0

    const-string v1, "sysState"

    sget v2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->SYSSTATE:I

    int-to-float v2, v2

    int-to-float v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/fimi/x8sdk/X8FcLogManager;->appValueFloatChange(Ljava/lang/String;FF)V

    .line 239
    sput p0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->SYSSTATE:I

    goto :goto_0
.end method

.method public static setReturnHeight(F)V
    .locals 3
    .param p0, "h"    # F

    .prologue
    .line 279
    sget v0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->returnHeight:F

    cmpl-float v0, v0, p0

    if-nez v0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v0

    const-string v1, "returnHeight"

    sget v2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->returnHeight:F

    invoke-virtual {v0, v1, v2, p0}, Lcom/fimi/x8sdk/X8FcLogManager;->appValueFloatChange(Ljava/lang/String;FF)V

    .line 283
    sput p0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->returnHeight:F

    goto :goto_0
.end method

.method public static setSpeedLimit(F)V
    .locals 3
    .param p0, "s"    # F

    .prologue
    .line 303
    sget v0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->speedLimit:F

    cmpl-float v0, v0, p0

    if-nez v0, :cond_0

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v0

    const-string v1, "speedLimit"

    sget v2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->speedLimit:F

    invoke-virtual {v0, v1, v2, p0}, Lcom/fimi/x8sdk/X8FcLogManager;->appValueFloatChange(Ljava/lang/String;FF)V

    .line 307
    sput p0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->speedLimit:F

    goto :goto_0
.end method

.method public static setSportMode(Z)V
    .locals 3
    .param p0, "b"    # Z

    .prologue
    .line 255
    sget-boolean v0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->sportMode:Z

    if-ne v0, p0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v0

    const-string v1, "sportMode"

    sget-boolean v2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->sportMode:Z

    invoke-virtual {v0, v1, v2, p0}, Lcom/fimi/x8sdk/X8FcLogManager;->appValueBoleanChange(Ljava/lang/String;ZZ)V

    .line 259
    sput-boolean p0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->sportMode:Z

    goto :goto_0
.end method

.method public static setStartUpTime(I)V
    .locals 1
    .param p0, "startUpTime"    # I

    .prologue
    .line 228
    sget v0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->STARTUPTIME:I

    if-ne v0, p0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 231
    :cond_0
    sput p0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->STARTUPTIME:I

    goto :goto_0
.end method

.method public static setTotalCapacity(I)V
    .locals 4
    .param p0, "totalCapacity"    # I

    .prologue
    .line 211
    sget v0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->TOTALCAPACITY:I

    if-ne v0, p0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v0

    const-string v1, "totalCapacity"

    sget v2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->TOTALCAPACITY:I

    int-to-float v2, v2

    int-to-float v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/fimi/x8sdk/X8FcLogManager;->appValueFloatChange(Ljava/lang/String;FF)V

    .line 216
    sput p0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->TOTALCAPACITY:I

    goto :goto_0
.end method

.method public static setUvc(I)V
    .locals 4
    .param p0, "uvc"    # I

    .prologue
    .line 203
    sget v0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->UVC:I

    if-ne v0, p0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v0

    const-string v1, "uvc"

    sget v2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->UVC:I

    int-to-float v2, v2

    int-to-float v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/fimi/x8sdk/X8FcLogManager;->appValueFloatChange(Ljava/lang/String;FF)V

    .line 207
    sput p0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->UVC:I

    goto :goto_0
.end method

.method public static setYawTrip(IIII)V
    .locals 6
    .param p0, "p"    # I
    .param p1, "r"    # I
    .param p2, "t"    # I
    .param p3, "y"    # I

    .prologue
    .line 106
    sget v2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FY_pitch:I

    if-ne p0, v2, :cond_0

    sget v2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FY_roll:I

    if-ne p1, v2, :cond_0

    sget v2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FY_thro:I

    if-ne v2, p2, :cond_0

    sget v2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FY_yaw:I

    if-ne v2, p3, :cond_0

    .line 107
    sput p0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FY_pitch:I

    .line 108
    sput p1, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FY_roll:I

    .line 109
    sput p2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FY_thro:I

    .line 110
    sput p3, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FY_yaw:I

    .line 120
    :goto_0
    return-void

    .line 113
    :cond_0
    new-instance v1, Lcom/fimi/x8sdk/appsetting/ValueSensity;

    sget v2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FY_pitch:I

    int-to-float v2, v2

    sget v3, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FY_roll:I

    int-to-float v3, v3

    sget v4, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FY_thro:I

    int-to-float v4, v4

    sget v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FY_yaw:I

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueSensity;-><init>(FFFF)V

    .line 114
    .local v1, "old":Lcom/fimi/x8sdk/appsetting/ValueSensity;
    new-instance v0, Lcom/fimi/x8sdk/appsetting/ValueSensity;

    int-to-float v2, p0

    int-to-float v3, p1

    int-to-float v4, p2

    int-to-float v5, p3

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueSensity;-><init>(FFFF)V

    .line 115
    .local v0, "newV":Lcom/fimi/x8sdk/appsetting/ValueSensity;
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v2

    const-string v3, "feelYawTrip"

    invoke-virtual {v2, v3, v1, v0}, Lcom/fimi/x8sdk/X8FcLogManager;->appValueSensityChange(Ljava/lang/String;Lcom/fimi/x8sdk/appsetting/ValueSensity;Lcom/fimi/x8sdk/appsetting/ValueSensity;)V

    .line 116
    sput p0, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FY_pitch:I

    .line 117
    sput p1, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FY_roll:I

    .line 118
    sput p2, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FY_thro:I

    .line 119
    sput p3, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FY_yaw:I

    goto :goto_0
.end method
