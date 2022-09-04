.class public Lcom/fimi/network/entity/UpfirewareDto;
.super Lcom/fimi/network/entity/BaseModel;
.source "UpfirewareDto.java"


# static fields
.field public static final FW_DOWN_FAILED:Ljava/lang/String; = "1"

.field public static final FW_DOWN_SUCCESS:Ljava/lang/String; = "0"

.field public static final UPDATE_RESULT_FAILED:Ljava/lang/String; = "1"

.field public static final UPDATE_RESULT_SUCCESS:Ljava/lang/String; = "0"

.field public static final UPGRADE_FORCE:Ljava/lang/String; = "2"

.field public static final UPGRADE_FORCE_IGNORE_VERSION:Ljava/lang/String; = "1"

.field public static final UPGRADE_UNFORCE:Ljava/lang/String; = "0"


# instance fields
.field private downResult:Ljava/lang/String;

.field private endVersion:I

.field private fileEncode:Ljava/lang/String;

.field private fileSize:J

.field private fileUrl:Ljava/lang/String;

.field private forceOta:Ljava/lang/String;

.field private forceSign:Ljava/lang/String;

.field private logicVersion:J

.field private model:I

.field private pushFireType:Ljava/lang/Long;

.field private startVersion:I

.field private status:Ljava/lang/String;

.field private sysNameI18N:Lcom/fimi/network/entity/FwContenti18N;

.field private type:I

.field private updateContentI18N:Lcom/fimi/network/entity/FwContenti18N;

.field private updateResult:Ljava/lang/String;

.field private userVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/fimi/network/entity/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/fimi/network/entity/UpfirewareDto;->downResult:Ljava/lang/String;

    return-object v0
.end method

.method public getEndVersion()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/fimi/network/entity/UpfirewareDto;->endVersion:I

    return v0
.end method

.method public getFileEncode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/fimi/network/entity/UpfirewareDto;->fileEncode:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/fimi/network/entity/UpfirewareDto;->fileSize:J

    return-wide v0
.end method

.method public getFileUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/fimi/network/entity/UpfirewareDto;->fileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getForceOta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/fimi/network/entity/UpfirewareDto;->forceOta:Ljava/lang/String;

    return-object v0
.end method

.method public getForceSign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/fimi/network/entity/UpfirewareDto;->forceSign:Ljava/lang/String;

    return-object v0
.end method

.method public getLogicVersion()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/fimi/network/entity/UpfirewareDto;->logicVersion:J

    return-wide v0
.end method

.method public getModel()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/fimi/network/entity/UpfirewareDto;->model:I

    return v0
.end method

.method public getPushFireType()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/fimi/network/entity/UpfirewareDto;->pushFireType:Ljava/lang/Long;

    return-object v0
.end method

.method public getStartVersion()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/fimi/network/entity/UpfirewareDto;->startVersion:I

    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/fimi/network/entity/UpfirewareDto;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getSysName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/fimi/network/entity/UpfirewareDto;->sysNameI18N:Lcom/fimi/network/entity/FwContenti18N;

    invoke-static {v0}, Lcom/fimi/kernel/utils/I18NUtil;->getI18NStrin(Lcom/fimi/network/entity/FwContenti18N;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSysNameI18N()Lcom/fimi/network/entity/FwContenti18N;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/fimi/network/entity/UpfirewareDto;->sysNameI18N:Lcom/fimi/network/entity/FwContenti18N;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/fimi/network/entity/UpfirewareDto;->type:I

    return v0
.end method

.method public getUpdateContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/fimi/network/entity/UpfirewareDto;->updateContentI18N:Lcom/fimi/network/entity/FwContenti18N;

    invoke-static {v0}, Lcom/fimi/kernel/utils/I18NUtil;->getI18NStrin(Lcom/fimi/network/entity/FwContenti18N;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateContentI18N()Lcom/fimi/network/entity/FwContenti18N;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fimi/network/entity/UpfirewareDto;->updateContentI18N:Lcom/fimi/network/entity/FwContenti18N;

    return-object v0
.end method

.method public getUpdateResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/fimi/network/entity/UpfirewareDto;->updateResult:Ljava/lang/String;

    return-object v0
.end method

.method public getUserVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/fimi/network/entity/UpfirewareDto;->userVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setDownResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "downResult"    # Ljava/lang/String;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/fimi/network/entity/UpfirewareDto;->downResult:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setEndVersion(I)V
    .locals 0
    .param p1, "endVersion"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/fimi/network/entity/UpfirewareDto;->endVersion:I

    .line 88
    return-void
.end method

.method public setFileEncode(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileEncode"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/fimi/network/entity/UpfirewareDto;->fileEncode:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setFileSize(J)V
    .locals 1
    .param p1, "fileSize"    # J

    .prologue
    .line 138
    iput-wide p1, p0, Lcom/fimi/network/entity/UpfirewareDto;->fileSize:J

    .line 139
    return-void
.end method

.method public setFileUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileUrl"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/fimi/network/entity/UpfirewareDto;->fileUrl:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setForceOta(Ljava/lang/String;)V
    .locals 0
    .param p1, "forceOta"    # Ljava/lang/String;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/fimi/network/entity/UpfirewareDto;->forceOta:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setForceSign(Ljava/lang/String;)V
    .locals 0
    .param p1, "forceSign"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/fimi/network/entity/UpfirewareDto;->forceSign:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setLogicVersion(J)V
    .locals 1
    .param p1, "logicVersion"    # J

    .prologue
    .line 114
    iput-wide p1, p0, Lcom/fimi/network/entity/UpfirewareDto;->logicVersion:J

    .line 115
    return-void
.end method

.method public setModel(I)V
    .locals 0
    .param p1, "model"    # I

    .prologue
    .line 163
    iput p1, p0, Lcom/fimi/network/entity/UpfirewareDto;->model:I

    .line 164
    return-void
.end method

.method public setPushFireType(Ljava/lang/Long;)V
    .locals 0
    .param p1, "pushFireType"    # Ljava/lang/Long;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/fimi/network/entity/UpfirewareDto;->pushFireType:Ljava/lang/Long;

    .line 174
    return-void
.end method

.method public setStartVersion(I)V
    .locals 0
    .param p1, "startVersion"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/fimi/network/entity/UpfirewareDto;->startVersion:I

    .line 80
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/fimi/network/entity/UpfirewareDto;->status:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setSysNameI18N(Lcom/fimi/network/entity/FwContenti18N;)V
    .locals 0
    .param p1, "sysNameI18N"    # Lcom/fimi/network/entity/FwContenti18N;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/fimi/network/entity/UpfirewareDto;->sysNameI18N:Lcom/fimi/network/entity/FwContenti18N;

    .line 20
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/fimi/network/entity/UpfirewareDto;->type:I

    .line 96
    return-void
.end method

.method public setUpdateContentI18N(Lcom/fimi/network/entity/FwContenti18N;)V
    .locals 0
    .param p1, "updateContentI18N"    # Lcom/fimi/network/entity/FwContenti18N;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/fimi/network/entity/UpfirewareDto;->updateContentI18N:Lcom/fimi/network/entity/FwContenti18N;

    .line 24
    return-void
.end method

.method public setUpdateResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateResult"    # Ljava/lang/String;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/fimi/network/entity/UpfirewareDto;->updateResult:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setUserVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "userVersion"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/fimi/network/entity/UpfirewareDto;->userVersion:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpfirewareDto{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/network/entity/UpfirewareDto;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sysNameI18N=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/network/entity/UpfirewareDto;->sysNameI18N:Lcom/fimi/network/entity/FwContenti18N;

    .line 213
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updateContentI18N=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/network/entity/UpfirewareDto;->updateContentI18N:Lcom/fimi/network/entity/FwContenti18N;

    .line 214
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logicVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/network/entity/UpfirewareDto;->logicVersion:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/network/entity/UpfirewareDto;->userVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/network/entity/UpfirewareDto;->fileUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/network/entity/UpfirewareDto;->fileSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileEncode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/network/entity/UpfirewareDto;->fileEncode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/network/entity/UpfirewareDto;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/network/entity/UpfirewareDto;->model:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pushFireType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/network/entity/UpfirewareDto;->pushFireType:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", forceSign=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/network/entity/UpfirewareDto;->forceSign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/network/entity/UpfirewareDto;->startVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/network/entity/UpfirewareDto;->endVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updateResult=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/network/entity/UpfirewareDto;->updateResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downResult=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/network/entity/UpfirewareDto;->downResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", forceOta=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/network/entity/UpfirewareDto;->forceOta:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    return-object v0
.end method
