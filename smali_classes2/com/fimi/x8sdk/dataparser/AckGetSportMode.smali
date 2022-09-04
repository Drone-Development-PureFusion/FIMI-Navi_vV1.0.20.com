.class public Lcom/fimi/x8sdk/dataparser/AckGetSportMode;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AckGetSportMode.java"


# instance fields
.field vehicleControlType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getVehicleControlType()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetSportMode;->vehicleControlType:I

    shr-int/lit8 v0, v0, 0x7

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public setVehicleControlType(B)V
    .locals 0
    .param p1, "vehicleControlType"    # B

    .prologue
    .line 19
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetSportMode;->vehicleControlType:I

    .line 20
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "AckGetFcParam{}"

    return-object v0
.end method

.method public unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 1
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 11
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getInt()I

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetSportMode;->vehicleControlType:I

    .line 12
    return-void
.end method
