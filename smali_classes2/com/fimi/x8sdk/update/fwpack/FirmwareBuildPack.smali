.class public Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;
.super Ljava/lang/Object;
.source "FirmwareBuildPack.java"

# interfaces
.implements Lcom/fimi/x8sdk/update/fwpack/IBuildPackInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack$MergFileListener;
    }
.end annotation


# static fields
.field public static final BUFSIZE:I = 0x2000

.field public static final ERROR:I = 0x1

.field public static final PKG_CRC:Ljava/lang/String;

.field public static final PKG_HEADER_FILE:Ljava/lang/String;

.field public static final PKG_NOCRC:Ljava/lang/String;

.field public static final PKG_UPDATE_FILE:Ljava/lang/String;

.field public static final PKG_UPDATE_OUTFILE:Ljava/lang/String;

.field public static final SUCCESS:I


# instance fields
.field private fws:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/update/fwpack/FwInfo;",
            ">;"
        }
    .end annotation
.end field

.field listener:Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack$MergFileListener;

.field mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fimi/kernel/utils/DirectoryPath;->getFwTempFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/update_fileData"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;->PKG_UPDATE_OUTFILE:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fimi/kernel/utils/DirectoryPath;->getFwTempFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/update_file_header"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;->PKG_HEADER_FILE:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fimi/kernel/utils/DirectoryPath;->getFwTempFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/pgk_no_crc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;->PKG_NOCRC:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fimi/kernel/utils/DirectoryPath;->getFirmwarePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/all_chips.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;->PKG_UPDATE_FILE:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fimi/kernel/utils/DirectoryPath;->getFwTempFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/pgk_crc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;->PKG_CRC:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack$MergFileListener;Ljava/util/List;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack$MergFileListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack$MergFileListener;",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/update/fwpack/FwInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p2, "fws":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/update/fwpack/FwInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack$1;-><init>(Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;->mHandler:Landroid/os/Handler;

    .line 90
    iput-object p1, p0, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;->listener:Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack$MergFileListener;

    .line 91
    iput-object p2, p0, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;->fws:Ljava/util/List;

    .line 92
    invoke-static {}, Lcom/fimi/kernel/utils/DirectoryPath;->getFwTempFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fimi/kernel/utils/FileUtil;->createFileAndPaperFile(Ljava/lang/String;)V

    .line 101
    return-void
.end method


# virtual methods
.method public createUpdatePkg()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 43
    sget-object v3, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;->PKG_UPDATE_OUTFILE:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;->mergFwDataFile(Ljava/lang/String;)V

    .line 44
    sget-object v3, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;->PKG_HEADER_FILE:Ljava/lang/String;

    invoke-static {v3}, Lcom/fimi/kernel/utils/FileUtil;->createFile(Ljava/lang/String;)V

    .line 45
    sget-object v3, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;->PKG_HEADER_FILE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;->getfwPackInfo()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fimi/kernel/utils/FileUtil;->addFileContent(Ljava/lang/String;[B)V

    .line 46
    sget-object v3, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;->PKG_HEADER_FILE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;->getFwInfo()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fimi/kernel/utils/FileUtil;->addFileContent(Ljava/lang/String;[B)V

    .line 47
    new-array v2, v7, [Ljava/lang/String;

    sget-object v3, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;->PKG_HEADER_FILE:Ljava/lang/String;

    aput-object v3, v2, v5

    sget-object v3, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;->PKG_UPDATE_OUTFILE:Ljava/lang/String;

    aput-object v3, v2, v6

    .line 48
    .local v2, "merfwFile":[Ljava/lang/String;
    sget-object v3, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;->PKG_NOCRC:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/fimi/kernel/utils/FileUtil;->meragerFiles(Ljava/lang/String;[Ljava/lang/String;)V

    .line 50
    sget-object v3, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;->PKG_NOCRC:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;->getPackCRC(Ljava/lang/String;)[B

    move-result-object v0

    .line 51
    .local v0, "crc":[B
    sget-object v3, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;->PKG_CRC:Ljava/lang/String;

    invoke-static {v3}, Lcom/fimi/kernel/utils/FileUtil;->createFile(Ljava/lang/String;)V

    .line 52
    sget-object v3, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;->PKG_CRC:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/fimi/kernel/utils/FileUtil;->addFileContent(Ljava/lang/String;[B)V

    .line 54
    new-array v1, v7, [Ljava/lang/String;

    sget-object v3, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;->PKG_CRC:Ljava/lang/String;

    aput-object v3, v1, v5

    sget-object v3, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;->PKG_NOCRC:Ljava/lang/String;

    aput-object v3, v1, v6

    .line 55
    .local v1, "files":[Ljava/lang/String;
    sget-object v3, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;->PKG_UPDATE_FILE:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/fimi/kernel/utils/FileUtil;->meragerFiles(Ljava/lang/String;[Ljava/lang/String;)V

    .line 56
    iget-object v3, p0, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 58
    return-void
.end method

.method public getFwInfo()[B
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 121
    iget-object v8, p0, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;->fws:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    .line 122
    .local v1, "count":I
    mul-int/lit8 v8, v1, 0x40

    new-array v2, v8, [B

    .line 124
    .local v2, "fwInfos":[B
    const/4 v7, 0x0

    .line 125
    .local v7, "sartAddr":I
    array-length v8, v2

    add-int/lit16 v4, v8, 0x80

    .line 126
    .local v4, "header":I
    const/4 v3, 0x0

    .line 127
    .local v3, "fwLen":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 128
    iget-object v8, p0, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;->fws:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fimi/x8sdk/update/fwpack/FwInfo;

    invoke-virtual {p0, v8}, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;->getOneFwInfo(Lcom/fimi/x8sdk/update/fwpack/FwInfo;)[B

    move-result-object v6

    .line 129
    .local v6, "oneFw":[B
    if-lez v5, :cond_0

    .line 130
    int-to-long v10, v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fimi/kernel/utils/DirectoryPath;->getFirmwarePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v8, p0, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;->fws:Ljava/util/List;

    add-int/lit8 v12, v5, -0x1

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fimi/x8sdk/update/fwpack/FwInfo;

    invoke-virtual {v8}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getSysName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/fimi/kernel/utils/FileUtil;->getFileLenght(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v8, v10

    long-to-int v3, v8

    .line 133
    :cond_0
    add-int v7, v3, v4

    .line 134
    invoke-static {v7}, Lcom/fimi/x8sdk/update/fwpack/ByteHexHelper;->intToFourHexBytes(I)[B

    move-result-object v0

    .line 135
    .local v0, "addr":[B
    const/4 v8, 0x4

    invoke-static {v0, v13, v6, v13, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    mul-int/lit8 v8, v5, 0x40

    const/16 v9, 0x40

    invoke-static {v6, v13, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "after:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Lcom/fimi/x8sdk/update/fwpack/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 127
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 139
    .end local v0    # "addr":[B
    .end local v6    # "oneFw":[B
    :cond_1
    return-object v2
.end method

.method public getOneFwInfo(Lcom/fimi/x8sdk/update/fwpack/FwInfo;)[B
    .locals 8
    .param p1, "fw"    # Lcom/fimi/x8sdk/update/fwpack/FwInfo;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 150
    const/16 v3, 0x40

    new-array v0, v3, [B

    .line 151
    .local v0, "iByte":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    invoke-static {}, Lcom/fimi/kernel/utils/DirectoryPath;->getFirmwarePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getSysName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fimi/kernel/utils/FileUtil;->getFileLenght(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-static {v3}, Lcom/fimi/x8sdk/update/fwpack/ByteHexHelper;->intToFourHexBytes(I)[B

    move-result-object v1

    .line 153
    .local v1, "size":[B
    invoke-static {v1, v6, v0, v7, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    const/16 v3, 0x8

    invoke-virtual {p1}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getModelId()B

    move-result v4

    aput-byte v4, v0, v3

    .line 155
    const/16 v3, 0x9

    invoke-virtual {p1}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getTypeId()B

    move-result v4

    aput-byte v4, v0, v3

    .line 156
    const/16 v3, 0xa

    invoke-virtual {p1}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getFwType()B

    move-result v4

    aput-byte v4, v0, v3

    .line 157
    invoke-virtual {p1}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getSoftwareVer()S

    move-result v3

    invoke-static {v3}, Lcom/fimi/x8sdk/update/fwpack/ByteHexHelper;->shortToBytes(S)[B

    move-result-object v2

    .line 158
    .local v2, "softver":[B
    const/16 v3, 0xb

    const/4 v4, 0x2

    invoke-static {v2, v6, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    const/16 v3, 0xd

    invoke-virtual {p1}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getStepVer()B

    move-result v4

    aput-byte v4, v0, v3

    .line 160
    return-object v0
.end method

.method public getPackCRC(Ljava/lang/String;)[B
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-static {p1}, Lcom/fimi/kernel/utils/FileUtil;->getFileBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 110
    .local v2, "fileBytes":[B
    array-length v3, v2

    invoke-static {v2, v3}, Lcom/fimi/kernel/dataparser/milink/ByteArrayToIntArray;->CRC32Software([BI)I

    move-result v1

    .line 111
    .local v1, "crc":I
    invoke-static {v1}, Lcom/fimi/x8sdk/update/fwpack/ByteHexHelper;->intToFourHexBytes(I)[B

    move-result-object v0

    .line 112
    .local v0, "byteCrc":[B
    return-object v0
.end method

.method public getfwPackInfo()[B
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 76
    const/16 v4, 0x7c

    new-array v2, v4, [B

    .line 77
    .local v2, "packInfo":[B
    invoke-static {v5}, Lcom/fimi/x8sdk/update/fwpack/ByteHexHelper;->shortToBytes(S)[B

    move-result-object v1

    .line 78
    .local v1, "mainver":[B
    invoke-static {v1, v5, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    invoke-static {v5}, Lcom/fimi/x8sdk/update/fwpack/ByteHexHelper;->shortToBytes(S)[B

    move-result-object v3

    .line 80
    .local v3, "subver":[B
    invoke-static {v3, v5, v2, v6, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    iget-object v4, p0, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;->fws:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v7

    .line 82
    invoke-static {v5}, Lcom/fimi/x8sdk/update/fwpack/ByteHexHelper;->intToFourHexBytes(I)[B

    move-result-object v0

    .line 83
    .local v0, "id1":[B
    const/4 v4, 0x5

    invoke-static {v0, v5, v2, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    return-object v2
.end method

.method public mergFwDataFile(Ljava/lang/String;)V
    .locals 9
    .param p1, "outFile"    # Ljava/lang/String;

    .prologue
    .line 168
    const/4 v4, 0x0

    .line 170
    .local v4, "outChannel":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 171
    iget-object v5, p0, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;->fws:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/x8sdk/update/fwpack/FwInfo;

    .line 172
    .local v2, "fw":Lcom/fimi/x8sdk/update/fwpack/FwInfo;
    new-instance v6, Ljava/io/FileInputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fimi/kernel/utils/DirectoryPath;->getFirmwarePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->getSysName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 173
    .local v1, "fc":Ljava/nio/channels/FileChannel;
    const/16 v6, 0x2000

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 174
    .local v0, "bb":Ljava/nio/ByteBuffer;
    :goto_1
    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 175
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 176
    invoke-virtual {v4, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 177
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 181
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "fc":Ljava/nio/channels/FileChannel;
    .end local v2    # "fw":Lcom/fimi/x8sdk/update/fwpack/FwInfo;
    :catch_0
    move-exception v3

    .line 182
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    if-eqz v4, :cond_0

    .line 186
    :try_start_2
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 191
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_0
    :goto_2
    return-void

    .line 179
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    .restart local v1    # "fc":Ljava/nio/channels/FileChannel;
    .restart local v2    # "fw":Lcom/fimi/x8sdk/update/fwpack/FwInfo;
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 184
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "fc":Ljava/nio/channels/FileChannel;
    .end local v2    # "fw":Lcom/fimi/x8sdk/update/fwpack/FwInfo;
    :catchall_0
    move-exception v5

    .line 185
    if-eqz v4, :cond_2

    .line 186
    :try_start_4
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 190
    :cond_2
    :goto_3
    throw v5

    .line 185
    :cond_3
    if-eqz v4, :cond_0

    .line 186
    :try_start_5
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 188
    :catch_1
    move-exception v5

    goto :goto_2

    .restart local v3    # "ioe":Ljava/io/IOException;
    :catch_2
    move-exception v5

    goto :goto_2

    .end local v3    # "ioe":Ljava/io/IOException;
    :catch_3
    move-exception v6

    goto :goto_3
.end method
