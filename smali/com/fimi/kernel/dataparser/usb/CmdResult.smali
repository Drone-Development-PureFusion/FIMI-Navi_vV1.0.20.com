.class public Lcom/fimi/kernel/dataparser/usb/CmdResult;
.super Ljava/lang/Object;
.source "CmdResult.java"


# instance fields
.field private descption:I

.field private errCode:I

.field private errDes:Ljava/lang/String;

.field public isSuccess:Z

.field private mMsgRpt:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 1
    .param p1, "isSuccess"    # Z
    .param p2, "descption"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean p1, p0, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess:Z

    .line 29
    iput p2, p0, Lcom/fimi/kernel/dataparser/usb/CmdResult;->descption:I

    .line 30
    if-lez p2, :cond_0

    .line 31
    invoke-static {}, Lcom/fimi/kernel/FimiAppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/kernel/dataparser/usb/CmdResult;->errDes:Ljava/lang/String;

    .line 33
    :cond_0
    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 1
    .param p1, "isSuccess"    # Z
    .param p2, "descption"    # I
    .param p3, "mMsgRpt"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean p1, p0, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess:Z

    .line 36
    iput p2, p0, Lcom/fimi/kernel/dataparser/usb/CmdResult;->descption:I

    .line 37
    iput p3, p0, Lcom/fimi/kernel/dataparser/usb/CmdResult;->mMsgRpt:I

    .line 38
    if-lez p2, :cond_0

    .line 39
    invoke-static {}, Lcom/fimi/kernel/FimiAppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/kernel/dataparser/usb/CmdResult;->errDes:Ljava/lang/String;

    .line 41
    :cond_0
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0
    .param p1, "isSuccess"    # Z
    .param p2, "errDes"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean p1, p0, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess:Z

    .line 44
    iput-object p2, p0, Lcom/fimi/kernel/dataparser/usb/CmdResult;->errDes:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public getDescption()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/fimi/kernel/dataparser/usb/CmdResult;->descption:I

    return v0
.end method

.method public getErrCode()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/fimi/kernel/dataparser/usb/CmdResult;->errCode:I

    return v0
.end method

.method public getErrDes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/usb/CmdResult;->errDes:Ljava/lang/String;

    return-object v0
.end method

.method public getmMsgRpt()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/fimi/kernel/dataparser/usb/CmdResult;->mMsgRpt:I

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess:Z

    return v0
.end method

.method public setDescption(I)V
    .locals 0
    .param p1, "descption"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/fimi/kernel/dataparser/usb/CmdResult;->descption:I

    .line 69
    return-void
.end method

.method public setErrCode(I)V
    .locals 0
    .param p1, "errCode"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/fimi/kernel/dataparser/usb/CmdResult;->errCode:I

    .line 61
    return-void
.end method

.method public setErrDes(Ljava/lang/String;)V
    .locals 0
    .param p1, "errDes"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/fimi/kernel/dataparser/usb/CmdResult;->errDes:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess:Z

    .line 53
    return-void
.end method

.method public setmMsgRpt(I)V
    .locals 0
    .param p1, "mMsgRpt"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/fimi/kernel/dataparser/usb/CmdResult;->mMsgRpt:I

    .line 23
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CmdResult{isSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/kernel/dataparser/usb/CmdResult;->errCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", descption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/kernel/dataparser/usb/CmdResult;->descption:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errDes=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/kernel/dataparser/usb/CmdResult;->errDes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
