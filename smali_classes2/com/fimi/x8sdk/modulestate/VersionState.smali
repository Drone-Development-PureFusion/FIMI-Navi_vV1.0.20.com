.class public Lcom/fimi/x8sdk/modulestate/VersionState;
.super Ljava/lang/Object;
.source "VersionState.java"


# instance fields
.field private moduleBatteryVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

.field private moduleCameraVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

.field private moduleCvVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

.field private moduleEscVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

.field private moduleFcAckVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

.field private moduleGimbalVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

.field private moduleNfzVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

.field private moduleRcVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

.field private moduleRepeaterRcVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

.field private moduleRepeaterVehicleVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

.field private moduleUltrasonic:Lcom/fimi/x8sdk/dataparser/AckVersion;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearFcVersion()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleFcAckVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    .line 129
    iput-object v0, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleCvVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    .line 130
    iput-object v0, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleRepeaterVehicleVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    .line 131
    iput-object v0, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleEscVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    .line 132
    iput-object v0, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleGimbalVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    .line 133
    iput-object v0, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleBatteryVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    .line 134
    iput-object v0, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleNfzVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    .line 135
    iput-object v0, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleCameraVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    .line 136
    iput-object v0, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleUltrasonic:Lcom/fimi/x8sdk/dataparser/AckVersion;

    .line 137
    return-void
.end method

.method public clearVersion()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleFcAckVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    .line 115
    iput-object v0, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleCvVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    .line 116
    iput-object v0, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleRepeaterVehicleVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    .line 117
    iput-object v0, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleEscVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    .line 118
    iput-object v0, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleGimbalVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    .line 119
    iput-object v0, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleBatteryVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    .line 120
    iput-object v0, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleNfzVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    .line 121
    iput-object v0, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleCameraVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    .line 122
    iput-object v0, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleUltrasonic:Lcom/fimi/x8sdk/dataparser/AckVersion;

    .line 123
    iput-object v0, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleRcVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    .line 124
    iput-object v0, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleRepeaterRcVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    .line 125
    return-void
.end method

.method public getModuleBatteryVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleBatteryVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    return-object v0
.end method

.method public getModuleCameraVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleCameraVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    return-object v0
.end method

.method public getModuleCvVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleCvVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    return-object v0
.end method

.method public getModuleEscVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleEscVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    return-object v0
.end method

.method public getModuleFcAckVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleFcAckVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    return-object v0
.end method

.method public getModuleGimbalVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleGimbalVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    return-object v0
.end method

.method public getModuleNfzVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleNfzVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    return-object v0
.end method

.method public getModuleRcVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleRcVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    return-object v0
.end method

.method public getModuleRepeaterRcVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleRepeaterRcVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    return-object v0
.end method

.method public getModuleRepeaterVehicleVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleRepeaterVehicleVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    return-object v0
.end method

.method public getModuleUltrasonic()Lcom/fimi/x8sdk/dataparser/AckVersion;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleUltrasonic:Lcom/fimi/x8sdk/dataparser/AckVersion;

    return-object v0
.end method

.method public setModuleBatteryVersion(Lcom/fimi/x8sdk/dataparser/AckVersion;)V
    .locals 0
    .param p1, "moduleBatteryVersion"    # Lcom/fimi/x8sdk/dataparser/AckVersion;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleBatteryVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    .line 53
    return-void
.end method

.method public setModuleCameraVersion(Lcom/fimi/x8sdk/dataparser/AckVersion;)V
    .locals 0
    .param p1, "moduleCameraVersion"    # Lcom/fimi/x8sdk/dataparser/AckVersion;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleCameraVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    .line 37
    return-void
.end method

.method public setModuleCvVersion(Lcom/fimi/x8sdk/dataparser/AckVersion;)V
    .locals 0
    .param p1, "moduleCvVersion"    # Lcom/fimi/x8sdk/dataparser/AckVersion;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleCvVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    .line 93
    return-void
.end method

.method public setModuleEscVersion(Lcom/fimi/x8sdk/dataparser/AckVersion;)V
    .locals 0
    .param p1, "moduleEscVersion"    # Lcom/fimi/x8sdk/dataparser/AckVersion;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleEscVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    .line 69
    return-void
.end method

.method public setModuleFcAckVersion(Lcom/fimi/x8sdk/dataparser/AckVersion;)V
    .locals 0
    .param p1, "moduleFcAckVersion"    # Lcom/fimi/x8sdk/dataparser/AckVersion;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleFcAckVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    .line 111
    return-void
.end method

.method public setModuleGimbalVersion(Lcom/fimi/x8sdk/dataparser/AckVersion;)V
    .locals 0
    .param p1, "moduleGimbalVersion"    # Lcom/fimi/x8sdk/dataparser/AckVersion;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleGimbalVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    .line 61
    return-void
.end method

.method public setModuleNfzVersion(Lcom/fimi/x8sdk/dataparser/AckVersion;)V
    .locals 0
    .param p1, "moduleNfzVersion"    # Lcom/fimi/x8sdk/dataparser/AckVersion;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleNfzVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    .line 45
    return-void
.end method

.method public setModuleRcVersion(Lcom/fimi/x8sdk/dataparser/AckVersion;)V
    .locals 0
    .param p1, "moduleRcVersion"    # Lcom/fimi/x8sdk/dataparser/AckVersion;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleRcVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    .line 85
    return-void
.end method

.method public setModuleRepeaterRcVersion(Lcom/fimi/x8sdk/dataparser/AckVersion;)V
    .locals 0
    .param p1, "moduleRepeaterRcVersion"    # Lcom/fimi/x8sdk/dataparser/AckVersion;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleRepeaterRcVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    .line 102
    return-void
.end method

.method public setModuleRepeaterVehicleVersion(Lcom/fimi/x8sdk/dataparser/AckVersion;)V
    .locals 0
    .param p1, "moduleRepeaterVehicleVersion"    # Lcom/fimi/x8sdk/dataparser/AckVersion;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleRepeaterVehicleVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    .line 77
    return-void
.end method

.method public setModuleUltrasonic(Lcom/fimi/x8sdk/dataparser/AckVersion;)V
    .locals 0
    .param p1, "moduleUltrasonic"    # Lcom/fimi/x8sdk/dataparser/AckVersion;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleUltrasonic:Lcom/fimi/x8sdk/dataparser/AckVersion;

    .line 28
    return-void
.end method

.method public showAllVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 141
    .local v0, "b":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleFcAckVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FC="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleFcAckVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "v":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    iget-object v2, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleRcVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RC="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleRcVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    iget-object v2, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleCvVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CV="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleCvVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    iget-object v2, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleRepeaterRcVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "R_RC="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleRepeaterRcVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    iget-object v2, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleRepeaterVehicleVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RV="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleRepeaterVehicleVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 150
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    iget-object v2, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleEscVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ESC="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleEscVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    iget-object v2, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleGimbalVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GB="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleGimbalVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    iget-object v2, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleBatteryVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Battry="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleBatteryVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    iget-object v2, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleNfzVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NFZ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleNfzVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 158
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    iget-object v2, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleCameraVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/x8sdk/modulestate/VersionState;->moduleCameraVersion:Lcom/fimi/x8sdk/dataparser/AckVersion;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 141
    .end local v1    # "v":Ljava/lang/String;
    :cond_0
    const-string v1, "FC=N/A"

    goto/16 :goto_0

    .line 143
    .restart local v1    # "v":Ljava/lang/String;
    :cond_1
    const-string v1, "RC=N/A"

    goto/16 :goto_1

    .line 145
    :cond_2
    const-string v1, "CV=N/A"

    goto/16 :goto_2

    .line 147
    :cond_3
    const-string v1, "R_RC=N/A"

    goto/16 :goto_3

    .line 149
    :cond_4
    const-string v1, "RV=N/A"

    goto/16 :goto_4

    .line 151
    :cond_5
    const-string v1, "N/A"

    goto/16 :goto_5

    .line 153
    :cond_6
    const-string v1, "GB=N/A"

    goto/16 :goto_6

    .line 155
    :cond_7
    const-string v1, "Battry=N/A"

    goto/16 :goto_7

    .line 157
    :cond_8
    const-string v1, "NFZ=N/A"

    goto :goto_8

    .line 159
    :cond_9
    const-string v1, "Camera=N/A"

    goto :goto_9
.end method
