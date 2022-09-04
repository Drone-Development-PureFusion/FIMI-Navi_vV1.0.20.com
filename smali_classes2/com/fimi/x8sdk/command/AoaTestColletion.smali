.class public Lcom/fimi/x8sdk/command/AoaTestColletion;
.super Ljava/lang/Object;
.source "AoaTestColletion.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTestContent(Ljava/lang/String;)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTestContent([B)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 2
    .param p1, "content"    # [B

    .prologue
    .line 19
    new-instance v0, Lcom/fimi/x8sdk/command/X8SendCmd;

    new-instance v1, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    invoke-direct {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;-><init>()V

    invoke-direct {v0, v1}, Lcom/fimi/x8sdk/command/X8SendCmd;-><init>(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 20
    .local v0, "x8SendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/command/X8SendCmd;->setCmdData([B)V

    .line 21
    return-object v0
.end method
