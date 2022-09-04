.class public Lcom/fimi/kernel/upgrade/version/FirmwareBean;
.super Ljava/lang/Object;
.source "FirmwareBean.java"

# interfaces
.implements Lcom/fimi/kernel/upgrade/interfaces/IReqFimwareBean;


# instance fields
.field private hardwareVersion:I

.field private idA:[B

.field private idB:[B

.field private idC:[B

.field private idD:[B

.field private model:I

.field private softwareVersion:I

.field private sysId:I

.field private type:I

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public constructor <init>(IIII[B[B[B[B)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "model"    # I
    .param p3, "hardwareVersion"    # I
    .param p4, "softwareVersion"    # I
    .param p5, "idA"    # [B
    .param p6, "idB"    # [B
    .param p7, "idC"    # [B
    .param p8, "idD"    # [B

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/fimi/kernel/upgrade/version/FirmwareBean;->type:I

    .line 73
    iput p2, p0, Lcom/fimi/kernel/upgrade/version/FirmwareBean;->model:I

    .line 74
    iput p3, p0, Lcom/fimi/kernel/upgrade/version/FirmwareBean;->hardwareVersion:I

    .line 75
    iput p4, p0, Lcom/fimi/kernel/upgrade/version/FirmwareBean;->softwareVersion:I

    .line 76
    iput-object p5, p0, Lcom/fimi/kernel/upgrade/version/FirmwareBean;->idA:[B

    .line 77
    iput-object p6, p0, Lcom/fimi/kernel/upgrade/version/FirmwareBean;->idB:[B

    .line 78
    iput-object p7, p0, Lcom/fimi/kernel/upgrade/version/FirmwareBean;->idC:[B

    .line 79
    if-nez p8, :cond_0

    .line 80
    const/4 v0, 0x4

    new-array p8, v0, [B

    .line 82
    :cond_0
    iput-object p8, p0, Lcom/fimi/kernel/upgrade/version/FirmwareBean;->idD:[B

    .line 83
    return-void
.end method


# virtual methods
.method public device2SysId()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public getHardwareVersion()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/fimi/kernel/upgrade/version/FirmwareBean;->hardwareVersion:I

    return v0
.end method

.method public getIdA()[B
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fimi/kernel/upgrade/version/FirmwareBean;->idA:[B

    return-object v0
.end method

.method public getIdB()[B
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fimi/kernel/upgrade/version/FirmwareBean;->idB:[B

    return-object v0
.end method

.method public getIdC()[B
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fimi/kernel/upgrade/version/FirmwareBean;->idC:[B

    return-object v0
.end method

.method public getIdD()[B
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/fimi/kernel/upgrade/version/FirmwareBean;->idD:[B

    return-object v0
.end method

.method public getModel()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/fimi/kernel/upgrade/version/FirmwareBean;->model:I

    return v0
.end method

.method public getSoftwareVersion()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/fimi/kernel/upgrade/version/FirmwareBean;->softwareVersion:I

    return v0
.end method

.method public getSysId()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/fimi/kernel/upgrade/version/FirmwareBean;->sysId:I

    return v0
.end method

.method public getType()B
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/fimi/kernel/upgrade/version/FirmwareBean;->type:I

    int-to-byte v0, v0

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fimi/kernel/upgrade/version/FirmwareBean;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setSysId(I)V
    .locals 0
    .param p1, "sysId"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/fimi/kernel/upgrade/version/FirmwareBean;->sysId:I

    .line 34
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/fimi/kernel/upgrade/version/FirmwareBean;->version:Ljava/lang/String;

    .line 26
    return-void
.end method
