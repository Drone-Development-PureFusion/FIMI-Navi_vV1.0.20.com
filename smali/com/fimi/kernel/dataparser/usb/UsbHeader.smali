.class public Lcom/fimi/kernel/dataparser/usb/UsbHeader;
.super Ljava/lang/Object;
.source "UsbHeader.java"


# static fields
.field public static final MAGIC_START_NUMBER:I = 0xae

.field public static final USB_HEADER_LEN:I = 0x5


# instance fields
.field checkSum:I

.field header:[B

.field len:I

.field type:I

.field ver:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/fimi/kernel/dataparser/usb/UsbHeader;->header:[B

    return-void
.end method


# virtual methods
.method public getCheckSum()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/fimi/kernel/dataparser/usb/UsbHeader;->checkSum:I

    return v0
.end method

.method public getLen()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/fimi/kernel/dataparser/usb/UsbHeader;->len:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/fimi/kernel/dataparser/usb/UsbHeader;->type:I

    return v0
.end method

.method public getVer()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/fimi/kernel/dataparser/usb/UsbHeader;->ver:I

    return v0
.end method

.method public onPacket()[B
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x0

    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "i":I
    iput v4, p0, Lcom/fimi/kernel/dataparser/usb/UsbHeader;->checkSum:I

    .line 23
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/usb/UsbHeader;->header:[B

    const/16 v3, -0x52

    aput-byte v3, v2, v4

    .line 24
    const-string v2, "moweiru"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ver:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/fimi/kernel/dataparser/usb/UsbHeader;->ver:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/fimi/kernel/dataparser/usb/UsbHeader;->len:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/usb/UsbHeader;->header:[B

    const/4 v3, 0x1

    iget v4, p0, Lcom/fimi/kernel/dataparser/usb/UsbHeader;->ver:I

    and-int/lit8 v4, v4, 0xf

    iget v5, p0, Lcom/fimi/kernel/dataparser/usb/UsbHeader;->len:I

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 29
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/usb/UsbHeader;->header:[B

    const/4 v3, 0x2

    iget v4, p0, Lcom/fimi/kernel/dataparser/usb/UsbHeader;->len:I

    shr-int/lit8 v4, v4, 0x4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 30
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/usb/UsbHeader;->header:[B

    const/4 v3, 0x3

    iget v4, p0, Lcom/fimi/kernel/dataparser/usb/UsbHeader;->type:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 32
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 33
    iget v2, p0, Lcom/fimi/kernel/dataparser/usb/UsbHeader;->checkSum:I

    iget-object v3, p0, Lcom/fimi/kernel/dataparser/usb/UsbHeader;->header:[B

    aget-byte v3, v3, v1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/fimi/kernel/dataparser/usb/UsbHeader;->checkSum:I

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    :cond_0
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/usb/UsbHeader;->header:[B

    iget v3, p0, Lcom/fimi/kernel/dataparser/usb/UsbHeader;->checkSum:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v6

    .line 37
    iget-object v2, p0, Lcom/fimi/kernel/dataparser/usb/UsbHeader;->header:[B

    return-object v2
.end method

.method public setCheckSum(I)V
    .locals 0
    .param p1, "checkSum"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/fimi/kernel/dataparser/usb/UsbHeader;->checkSum:I

    .line 73
    return-void
.end method

.method public setLen(I)V
    .locals 0
    .param p1, "len"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/fimi/kernel/dataparser/usb/UsbHeader;->len:I

    .line 57
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/fimi/kernel/dataparser/usb/UsbHeader;->type:I

    .line 65
    return-void
.end method

.method public setVer(I)V
    .locals 0
    .param p1, "ver"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/fimi/kernel/dataparser/usb/UsbHeader;->ver:I

    .line 47
    return-void
.end method
