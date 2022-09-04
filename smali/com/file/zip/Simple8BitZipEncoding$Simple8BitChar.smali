.class final Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;
.super Ljava/lang/Object;
.source "Simple8BitZipEncoding.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/file/zip/Simple8BitZipEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Simple8BitChar"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;",
        ">;"
    }
.end annotation


# instance fields
.field public final code:B

.field public final unicode:C


# direct methods
.method constructor <init>(BC)V
    .locals 0
    .param p1, "code"    # B
    .param p2, "unicode"    # C

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-byte p1, p0, Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;->code:B

    .line 58
    iput-char p2, p0, Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    .line 59
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;)I
    .locals 2
    .param p1, "a"    # Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;

    .prologue
    .line 62
    iget-char v0, p0, Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    iget-char v1, p1, Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;

    invoke-virtual {p0, p1}, Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;->compareTo(Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 73
    instance-of v2, p1, Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 74
    check-cast v0, Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;

    .line 75
    .local v0, "other":Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;
    iget-char v2, p0, Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    iget-char v3, v0, Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    if-ne v2, v3, :cond_0

    iget-byte v2, p0, Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;->code:B

    iget-byte v3, v0, Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;->code:B

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 77
    .end local v0    # "other":Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 82
    iget-char v0, p0, Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0xffff

    iget-char v2, p0, Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    and-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 68
    const-string v1, "->0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;->code:B

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
