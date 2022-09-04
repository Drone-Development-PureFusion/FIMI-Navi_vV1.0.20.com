.class public final Lcom/fimi/x8sdk/common/GlobalConfig;
.super Ljava/lang/Object;
.source "GlobalConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/x8sdk/common/GlobalConfig$Builder;
    }
.end annotation


# static fields
.field private static globalConfig:Lcom/fimi/x8sdk/common/GlobalConfig;


# instance fields
.field connectType:Lcom/fimi/x8sdk/connect/ConnectType;

.field private isLowLanding:Z

.field private isLowReturn:Z

.field private isMap:Z

.field private isNewHand:Z

.field isRectification:Z

.field private isShowLog:Z

.field private isShowmMtric:Z

.field lowPowerOperation:I

.field lowPowerValue:I

.field private mGridLine:I

.field mapStyle:I

.field mapType:Lcom/fimi/x8sdk/map/MapType;

.field seriousLowPowerOperation:I

.field seriousLowPowerValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/fimi/x8sdk/common/GlobalConfig;

    invoke-direct {v0}, Lcom/fimi/x8sdk/common/GlobalConfig;-><init>()V

    sput-object v0, Lcom/fimi/x8sdk/common/GlobalConfig;->globalConfig:Lcom/fimi/x8sdk/common/GlobalConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->mapType:Lcom/fimi/x8sdk/map/MapType;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->mGridLine:I

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->isShowmMtric:Z

    .line 65
    sget-object v0, Lcom/fimi/x8sdk/connect/ConnectType;->Aoa:Lcom/fimi/x8sdk/connect/ConnectType;

    iput-object v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->connectType:Lcom/fimi/x8sdk/connect/ConnectType;

    return-void
.end method

.method public static getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/fimi/x8sdk/common/GlobalConfig;->globalConfig:Lcom/fimi/x8sdk/common/GlobalConfig;

    return-object v0
.end method

.method public static setGlobalConfig(Lcom/fimi/x8sdk/common/GlobalConfig;)V
    .locals 0
    .param p0, "globalConfig"    # Lcom/fimi/x8sdk/common/GlobalConfig;

    .prologue
    .line 141
    sput-object p0, Lcom/fimi/x8sdk/common/GlobalConfig;->globalConfig:Lcom/fimi/x8sdk/common/GlobalConfig;

    .line 142
    return-void
.end method


# virtual methods
.method public getGridLine()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->mGridLine:I

    return v0
.end method

.method public getLowPowerOperation()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->lowPowerOperation:I

    return v0
.end method

.method public getLowPowerValue()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->lowPowerValue:I

    return v0
.end method

.method public getMapStyle()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->mapStyle:I

    return v0
.end method

.method public getMapType()Lcom/fimi/x8sdk/map/MapType;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->mapType:Lcom/fimi/x8sdk/map/MapType;

    return-object v0
.end method

.method public getSeriousLowPowerOperation()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->seriousLowPowerOperation:I

    return v0
.end method

.method public getSeriousLowPowerValue()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->seriousLowPowerValue:I

    return v0
.end method

.method public init(Lcom/fimi/x8sdk/common/GlobalConfig$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/fimi/x8sdk/common/GlobalConfig$Builder;

    .prologue
    .line 100
    invoke-static {p1}, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->access$000(Lcom/fimi/x8sdk/common/GlobalConfig$Builder;)Lcom/fimi/x8sdk/map/MapType;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->mapType:Lcom/fimi/x8sdk/map/MapType;

    .line 101
    invoke-static {p1}, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->access$100(Lcom/fimi/x8sdk/common/GlobalConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->mapStyle:I

    .line 102
    iget v0, p1, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->lowPowerValue:I

    iput v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->lowPowerValue:I

    .line 103
    iget v0, p1, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->seriousLowPowerValue:I

    iput v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->seriousLowPowerValue:I

    .line 104
    iget v0, p1, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->lowPowerOperation:I

    iput v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->lowPowerOperation:I

    .line 105
    iget v0, p1, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->seriousLowPowerOperation:I

    iput v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->seriousLowPowerOperation:I

    .line 106
    invoke-static {p1}, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->access$200(Lcom/fimi/x8sdk/common/GlobalConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->isRectification:Z

    .line 107
    invoke-static {p1}, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->access$300(Lcom/fimi/x8sdk/common/GlobalConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->isShowLog:Z

    .line 108
    invoke-static {p1}, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->access$400(Lcom/fimi/x8sdk/common/GlobalConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->mGridLine:I

    .line 109
    invoke-static {p1}, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->access$500(Lcom/fimi/x8sdk/common/GlobalConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->isShowmMtric:Z

    .line 110
    invoke-static {p1}, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->access$600(Lcom/fimi/x8sdk/common/GlobalConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->isLowLanding:Z

    .line 111
    invoke-static {p1}, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->access$700(Lcom/fimi/x8sdk/common/GlobalConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->isLowReturn:Z

    .line 116
    invoke-static {}, Lcom/fimi/kernel/connect/session/SessionManager;->initInstance()V

    .line 117
    invoke-static {}, Lcom/fimi/kernel/connect/session/NoticeManager;->initInstance()V

    .line 118
    return-void
.end method

.method public isAOAConnect()Z
    .locals 2

    .prologue
    .line 68
    sget-object v0, Lcom/fimi/x8sdk/connect/ConnectType;->Aoa:Lcom/fimi/x8sdk/connect/ConnectType;

    iget-object v1, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->connectType:Lcom/fimi/x8sdk/connect/ConnectType;

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/connect/ConnectType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isLowLanding()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->isLowLanding:Z

    return v0
.end method

.method public isLowReturn()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->isLowReturn:Z

    return v0
.end method

.method public isNewHand()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->isNewHand:Z

    return v0
.end method

.method public isRectification()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->isRectification:Z

    return v0
.end method

.method public isShowLog()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->isShowLog:Z

    return v0
.end method

.method public isShowmMtric()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->isShowmMtric:Z

    return v0
.end method

.method public setGridLine(I)V
    .locals 3
    .param p1, "gridLine"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->mGridLine:I

    .line 171
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    sget-object v1, Lcom/fimi/x8sdk/common/Constants;->X8_GLINE_LINE_OPTION:Ljava/lang/String;

    iget v2, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->mGridLine:I

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveInt(Ljava/lang/String;I)V

    .line 172
    return-void
.end method

.method public setLowLanding(Z)V
    .locals 3
    .param p1, "lowLanding"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->isLowLanding:Z

    .line 92
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    sget-object v1, Lcom/fimi/x8sdk/common/Constants;->X8_LOW_POWER_LANDING:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->isLowLanding:Z

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveBoolean(Ljava/lang/String;Z)V

    .line 93
    return-void
.end method

.method public setLowPowerOperation(I)V
    .locals 0
    .param p1, "lowPowerOperation"    # I

    .prologue
    .line 199
    iput p1, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->lowPowerOperation:I

    .line 200
    return-void
.end method

.method public setLowPowerValue(I)V
    .locals 0
    .param p1, "lowPowerValue"    # I

    .prologue
    .line 183
    iput p1, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->lowPowerValue:I

    .line 184
    return-void
.end method

.method public setLowReturn(Z)V
    .locals 3
    .param p1, "lowReturn"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->isLowReturn:Z

    .line 83
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    sget-object v1, Lcom/fimi/x8sdk/common/Constants;->X8_LOW_POWER_RETURN:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->isLowReturn:Z

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveBoolean(Ljava/lang/String;Z)V

    .line 84
    return-void
.end method

.method public setMap(Z)V
    .locals 0
    .param p1, "map"    # Z

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->isMap:Z

    .line 167
    return-void
.end method

.method public setMapStyle(I)V
    .locals 0
    .param p1, "mapStyle"    # I

    .prologue
    .line 149
    iput p1, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->mapStyle:I

    .line 150
    return-void
.end method

.method public setMapType(Lcom/fimi/x8sdk/map/MapType;)V
    .locals 0
    .param p1, "mapType"    # Lcom/fimi/x8sdk/map/MapType;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->mapType:Lcom/fimi/x8sdk/map/MapType;

    .line 155
    return-void
.end method

.method public setNewHand(Z)V
    .locals 0
    .param p1, "newHand"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->isNewHand:Z

    .line 217
    return-void
.end method

.method public setRectification(Z)V
    .locals 0
    .param p1, "rectification"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->isRectification:Z

    .line 159
    return-void
.end method

.method public setSeriousLowPowerOperation(I)V
    .locals 0
    .param p1, "seriousLowPowerOperation"    # I

    .prologue
    .line 207
    iput p1, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->seriousLowPowerOperation:I

    .line 208
    return-void
.end method

.method public setSeriousLowPowerValue(I)V
    .locals 0
    .param p1, "seriousLowPowerValue"    # I

    .prologue
    .line 191
    iput p1, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->seriousLowPowerValue:I

    .line 192
    return-void
.end method

.method public setShowLog(Z)V
    .locals 0
    .param p1, "showLog"    # Z

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->isShowLog:Z

    .line 163
    return-void
.end method

.method public setShowmMtric(Z)V
    .locals 0
    .param p1, "showmMtric"    # Z

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/fimi/x8sdk/common/GlobalConfig;->isShowmMtric:Z

    .line 176
    return-void
.end method
