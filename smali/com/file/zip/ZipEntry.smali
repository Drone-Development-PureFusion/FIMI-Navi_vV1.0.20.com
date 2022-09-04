.class public Lcom/file/zip/ZipEntry;
.super Ljava/util/zip/ZipEntry;
.source "ZipEntry.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final EMPTY:[B

.field public static final PLATFORM_FAT:I = 0x0

.field public static final PLATFORM_UNIX:I = 0x3

.field private static final SHORT_MASK:I = 0xffff

.field private static final SHORT_SHIFT:I = 0x10


# instance fields
.field private externalAttributes:J

.field private extraFields:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/file/zip/ZipShort;",
            "Lcom/file/zip/ZipExtraField;",
            ">;"
        }
    .end annotation
.end field

.field private gpb:Lcom/file/zip/GeneralPurposeBit;

.field private internalAttributes:I

.field private method:I

.field private name:Ljava/lang/String;

.field private platform:I

.field private rawName:[B

.field private size:J

.field private unparseableExtra:Lcom/file/zip/UnparseableExtraFieldData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/file/zip/ZipEntry;->EMPTY:[B

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 145
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/file/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Lcom/file/zip/ZipEntry;)V
    .locals 2
    .param p1, "entry"    # Lcom/file/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/file/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 136
    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getInternalAttributes()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/file/zip/ZipEntry;->setInternalAttributes(I)V

    .line 137
    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getExternalAttributes()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/file/zip/ZipEntry;->setExternalAttributes(J)V

    .line 138
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/file/zip/ZipEntry;->getExtraFields(Z)[Lcom/file/zip/ZipExtraField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/file/zip/ZipEntry;->setExtraFields([Lcom/file/zip/ZipExtraField;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "inputFile"    # Ljava/io/File;
    .param p2, "entryName"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .end local p2    # "entryName":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p2}, Lcom/file/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/file/zip/ZipEntry;->setSize(J)V

    .line 163
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/file/zip/ZipEntry;->setTime(J)V

    .line 165
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 94
    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/file/zip/ZipEntry;->method:I

    .line 73
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/file/zip/ZipEntry;->size:J

    .line 75
    iput v3, p0, Lcom/file/zip/ZipEntry;->internalAttributes:I

    .line 76
    iput v3, p0, Lcom/file/zip/ZipEntry;->platform:I

    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/file/zip/ZipEntry;->externalAttributes:J

    .line 78
    iput-object v2, p0, Lcom/file/zip/ZipEntry;->extraFields:Ljava/util/LinkedHashMap;

    .line 79
    iput-object v2, p0, Lcom/file/zip/ZipEntry;->unparseableExtra:Lcom/file/zip/UnparseableExtraFieldData;

    .line 80
    iput-object v2, p0, Lcom/file/zip/ZipEntry;->name:Ljava/lang/String;

    .line 81
    iput-object v2, p0, Lcom/file/zip/ZipEntry;->rawName:[B

    .line 82
    new-instance v0, Lcom/file/zip/GeneralPurposeBit;

    invoke-direct {v0}, Lcom/file/zip/GeneralPurposeBit;-><init>()V

    iput-object v0, p0, Lcom/file/zip/ZipEntry;->gpb:Lcom/file/zip/GeneralPurposeBit;

    .line 95
    invoke-virtual {p0, p1}, Lcom/file/zip/ZipEntry;->setName(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipEntry;)V
    .locals 6
    .param p1, "entry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 109
    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 65
    const/4 v1, -0x1

    iput v1, p0, Lcom/file/zip/ZipEntry;->method:I

    .line 73
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/file/zip/ZipEntry;->size:J

    .line 75
    iput v5, p0, Lcom/file/zip/ZipEntry;->internalAttributes:I

    .line 76
    iput v5, p0, Lcom/file/zip/ZipEntry;->platform:I

    .line 77
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/file/zip/ZipEntry;->externalAttributes:J

    .line 78
    iput-object v4, p0, Lcom/file/zip/ZipEntry;->extraFields:Ljava/util/LinkedHashMap;

    .line 79
    iput-object v4, p0, Lcom/file/zip/ZipEntry;->unparseableExtra:Lcom/file/zip/UnparseableExtraFieldData;

    .line 80
    iput-object v4, p0, Lcom/file/zip/ZipEntry;->name:Ljava/lang/String;

    .line 81
    iput-object v4, p0, Lcom/file/zip/ZipEntry;->rawName:[B

    .line 82
    new-instance v1, Lcom/file/zip/GeneralPurposeBit;

    invoke-direct {v1}, Lcom/file/zip/GeneralPurposeBit;-><init>()V

    iput-object v1, p0, Lcom/file/zip/ZipEntry;->gpb:Lcom/file/zip/GeneralPurposeBit;

    .line 110
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/file/zip/ZipEntry;->setName(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v0

    .line 112
    .local v0, "extra":[B
    if-eqz v0, :cond_0

    .line 113
    const/4 v1, 0x1

    .line 115
    sget-object v2, Lcom/file/zip/ExtraFieldUtils$UnparseableExtraField;->READ:Lcom/file/zip/ExtraFieldUtils$UnparseableExtraField;

    .line 113
    invoke-static {v0, v1, v2}, Lcom/file/zip/ExtraFieldUtils;->parse([BZLcom/file/zip/ExtraFieldUtils$UnparseableExtraField;)[Lcom/file/zip/ZipExtraField;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/file/zip/ZipEntry;->setExtraFields([Lcom/file/zip/ZipExtraField;)V

    .line 120
    :goto_0
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/file/zip/ZipEntry;->setMethod(I)V

    .line 121
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/file/zip/ZipEntry;->size:J

    .line 122
    return-void

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/file/zip/ZipEntry;->setExtra()V

    goto :goto_0
.end method

.method private mergeExtraFields([Lcom/file/zip/ZipExtraField;Z)V
    .locals 7
    .param p1, "f"    # [Lcom/file/zip/ZipExtraField;
    .param p2, "local"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 636
    iget-object v3, p0, Lcom/file/zip/ZipEntry;->extraFields:Ljava/util/LinkedHashMap;

    if-nez v3, :cond_0

    .line 637
    invoke-virtual {p0, p1}, Lcom/file/zip/ZipEntry;->setExtraFields([Lcom/file/zip/ZipExtraField;)V

    .line 663
    :goto_0
    return-void

    .line 639
    :cond_0
    array-length v5, p1

    move v3, v4

    :goto_1
    if-lt v3, v5, :cond_1

    .line 661
    invoke-virtual {p0}, Lcom/file/zip/ZipEntry;->setExtra()V

    goto :goto_0

    .line 639
    :cond_1
    aget-object v1, p1, v3

    .line 641
    .local v1, "element":Lcom/file/zip/ZipExtraField;
    instance-of v6, v1, Lcom/file/zip/UnparseableExtraFieldData;

    if-eqz v6, :cond_2

    .line 642
    iget-object v2, p0, Lcom/file/zip/ZipEntry;->unparseableExtra:Lcom/file/zip/UnparseableExtraFieldData;

    .line 646
    .local v2, "existing":Lcom/file/zip/ZipExtraField;
    :goto_2
    if-nez v2, :cond_3

    .line 647
    invoke-virtual {p0, v1}, Lcom/file/zip/ZipEntry;->addExtraField(Lcom/file/zip/ZipExtraField;)V

    .line 639
    .end local v2    # "existing":Lcom/file/zip/ZipExtraField;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 644
    :cond_2
    invoke-interface {v1}, Lcom/file/zip/ZipExtraField;->getHeaderId()Lcom/file/zip/ZipShort;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/file/zip/ZipEntry;->getExtraField(Lcom/file/zip/ZipShort;)Lcom/file/zip/ZipExtraField;

    move-result-object v2

    .restart local v2    # "existing":Lcom/file/zip/ZipExtraField;
    goto :goto_2

    .line 649
    :cond_3
    if-nez p2, :cond_4

    .line 650
    instance-of v6, v2, Lcom/file/zip/CentralDirectoryParsingZipExtraField;

    .line 651
    if-nez v6, :cond_5

    .line 652
    :cond_4
    invoke-interface {v1}, Lcom/file/zip/ZipExtraField;->getLocalFileDataData()[B

    move-result-object v0

    .line 653
    .local v0, "b":[B
    array-length v6, v0

    invoke-interface {v2, v0, v4, v6}, Lcom/file/zip/ZipExtraField;->parseFromLocalFileData([BII)V

    goto :goto_3

    .line 655
    .end local v0    # "b":[B
    :cond_5
    invoke-interface {v1}, Lcom/file/zip/ZipExtraField;->getCentralDirectoryData()[B

    move-result-object v0

    .line 656
    .restart local v0    # "b":[B
    check-cast v2, Lcom/file/zip/CentralDirectoryParsingZipExtraField;

    .line 657
    .end local v2    # "existing":Lcom/file/zip/ZipExtraField;
    array-length v6, v0

    invoke-interface {v2, v0, v4, v6}, Lcom/file/zip/CentralDirectoryParsingZipExtraField;->parseFromCentralDirectoryData([BII)V

    goto :goto_3
.end method


# virtual methods
.method public addAsFirstExtraField(Lcom/file/zip/ZipExtraField;)V
    .locals 3
    .param p1, "ze"    # Lcom/file/zip/ZipExtraField;

    .prologue
    .line 370
    instance-of v1, p1, Lcom/file/zip/UnparseableExtraFieldData;

    if-eqz v1, :cond_1

    .line 371
    check-cast p1, Lcom/file/zip/UnparseableExtraFieldData;

    .end local p1    # "ze":Lcom/file/zip/ZipExtraField;
    iput-object p1, p0, Lcom/file/zip/ZipEntry;->unparseableExtra:Lcom/file/zip/UnparseableExtraFieldData;

    .line 381
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/file/zip/ZipEntry;->setExtra()V

    .line 382
    return-void

    .line 373
    .restart local p1    # "ze":Lcom/file/zip/ZipExtraField;
    :cond_1
    iget-object v0, p0, Lcom/file/zip/ZipEntry;->extraFields:Ljava/util/LinkedHashMap;

    .line 374
    .local v0, "copy":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lcom/file/zip/ZipShort;Lcom/file/zip/ZipExtraField;>;"
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/file/zip/ZipEntry;->extraFields:Ljava/util/LinkedHashMap;

    .line 375
    iget-object v1, p0, Lcom/file/zip/ZipEntry;->extraFields:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/file/zip/ZipExtraField;->getHeaderId()Lcom/file/zip/ZipShort;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    if-eqz v0, :cond_0

    .line 377
    invoke-interface {p1}, Lcom/file/zip/ZipExtraField;->getHeaderId()Lcom/file/zip/ZipShort;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object v1, p0, Lcom/file/zip/ZipEntry;->extraFields:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public addExtraField(Lcom/file/zip/ZipExtraField;)V
    .locals 2
    .param p1, "ze"    # Lcom/file/zip/ZipExtraField;

    .prologue
    .line 350
    instance-of v0, p1, Lcom/file/zip/UnparseableExtraFieldData;

    if-eqz v0, :cond_0

    .line 351
    check-cast p1, Lcom/file/zip/UnparseableExtraFieldData;

    .end local p1    # "ze":Lcom/file/zip/ZipExtraField;
    iput-object p1, p0, Lcom/file/zip/ZipEntry;->unparseableExtra:Lcom/file/zip/UnparseableExtraFieldData;

    .line 358
    :goto_0
    invoke-virtual {p0}, Lcom/file/zip/ZipEntry;->setExtra()V

    .line 359
    return-void

    .line 353
    .restart local p1    # "ze":Lcom/file/zip/ZipExtraField;
    :cond_0
    iget-object v0, p0, Lcom/file/zip/ZipEntry;->extraFields:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_1

    .line 354
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/file/zip/ZipEntry;->extraFields:Ljava/util/LinkedHashMap;

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/file/zip/ZipEntry;->extraFields:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/file/zip/ZipExtraField;->getHeaderId()Lcom/file/zip/ZipShort;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 174
    invoke-super {p0}, Ljava/util/zip/ZipEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/file/zip/ZipEntry;

    .line 176
    .local v0, "e":Lcom/file/zip/ZipEntry;
    invoke-virtual {p0}, Lcom/file/zip/ZipEntry;->getInternalAttributes()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/file/zip/ZipEntry;->setInternalAttributes(I)V

    .line 177
    invoke-virtual {p0}, Lcom/file/zip/ZipEntry;->getExternalAttributes()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/file/zip/ZipEntry;->setExternalAttributes(J)V

    .line 178
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/file/zip/ZipEntry;->getExtraFields(Z)[Lcom/file/zip/ZipExtraField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/file/zip/ZipEntry;->setExtraFields([Lcom/file/zip/ZipExtraField;)V

    .line 179
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 12
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 675
    if-ne p0, p1, :cond_1

    .line 699
    :cond_0
    :goto_0
    return v5

    .line 678
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    if-eq v7, v8, :cond_3

    :cond_2
    move v5, v6

    .line 679
    goto :goto_0

    :cond_3
    move-object v2, p1

    .line 681
    check-cast v2, Lcom/file/zip/ZipEntry;

    .line 682
    .local v2, "other":Lcom/file/zip/ZipEntry;
    invoke-virtual {p0}, Lcom/file/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 683
    .local v1, "myName":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/file/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 684
    .local v4, "otherName":Ljava/lang/String;
    if-nez v1, :cond_4

    .line 685
    if-eqz v4, :cond_5

    move v5, v6

    .line 686
    goto :goto_0

    .line 688
    :cond_4
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    move v5, v6

    .line 689
    goto :goto_0

    .line 691
    :cond_5
    invoke-virtual {p0}, Lcom/file/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v0

    .line 692
    .local v0, "myComment":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/file/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v3

    .line 693
    .local v3, "otherComment":Ljava/lang/String;
    if-nez v0, :cond_6

    .line 694
    const-string v0, ""

    .line 696
    :cond_6
    if-nez v3, :cond_7

    .line 697
    const-string v3, ""

    .line 699
    :cond_7
    invoke-virtual {p0}, Lcom/file/zip/ZipEntry;->getTime()J

    move-result-wide v8

    invoke-virtual {v2}, Lcom/file/zip/ZipEntry;->getTime()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_8

    .line 700
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 701
    invoke-virtual {p0}, Lcom/file/zip/ZipEntry;->getInternalAttributes()I

    move-result v7

    invoke-virtual {v2}, Lcom/file/zip/ZipEntry;->getInternalAttributes()I

    move-result v8

    if-ne v7, v8, :cond_8

    .line 702
    invoke-virtual {p0}, Lcom/file/zip/ZipEntry;->getPlatform()I

    move-result v7

    invoke-virtual {v2}, Lcom/file/zip/ZipEntry;->getPlatform()I

    move-result v8

    if-ne v7, v8, :cond_8

    .line 703
    invoke-virtual {p0}, Lcom/file/zip/ZipEntry;->getExternalAttributes()J

    move-result-wide v8

    invoke-virtual {v2}, Lcom/file/zip/ZipEntry;->getExternalAttributes()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_8

    .line 704
    invoke-virtual {p0}, Lcom/file/zip/ZipEntry;->getMethod()I

    move-result v7

    invoke-virtual {v2}, Lcom/file/zip/ZipEntry;->getMethod()I

    move-result v8

    if-ne v7, v8, :cond_8

    .line 705
    invoke-virtual {p0}, Lcom/file/zip/ZipEntry;->getSize()J

    move-result-wide v8

    invoke-virtual {v2}, Lcom/file/zip/ZipEntry;->getSize()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_8

    .line 706
    invoke-virtual {p0}, Lcom/file/zip/ZipEntry;->getCrc()J

    move-result-wide v8

    invoke-virtual {v2}, Lcom/file/zip/ZipEntry;->getCrc()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_8

    .line 707
    invoke-virtual {p0}, Lcom/file/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v8

    invoke-virtual {v2}, Lcom/file/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_8

    .line 708
    invoke-virtual {p0}, Lcom/file/zip/ZipEntry;->getCentralDirectoryExtra()[B

    move-result-object v7

    .line 709
    invoke-virtual {v2}, Lcom/file/zip/ZipEntry;->getCentralDirectoryExtra()[B

    move-result-object v8

    .line 708
    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    .line 709
    if-eqz v7, :cond_8

    .line 710
    invoke-virtual {p0}, Lcom/file/zip/ZipEntry;->getLocalFileDataExtra()[B

    move-result-object v7

    .line 711
    invoke-virtual {v2}, Lcom/file/zip/ZipEntry;->getLocalFileDataExtra()[B

    move-result-object v8

    .line 710
    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    .line 711
    if-eqz v7, :cond_8

    .line 712
    iget-object v7, p0, Lcom/file/zip/ZipEntry;->gpb:Lcom/file/zip/GeneralPurposeBit;

    iget-object v8, v2, Lcom/file/zip/ZipEntry;->gpb:Lcom/file/zip/GeneralPurposeBit;

    invoke-virtual {v7, v8}, Lcom/file/zip/GeneralPurposeBit;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    :cond_8
    move v5, v6

    .line 699
    goto/16 :goto_0
.end method

.method public getCentralDirectoryExtra()[B
    .locals 1

    .prologue
    .line 496
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/file/zip/ZipEntry;->getExtraFields(Z)[Lcom/file/zip/ZipExtraField;

    move-result-object v0

    invoke-static {v0}, Lcom/file/zip/ExtraFieldUtils;->mergeCentralDirectoryData([Lcom/file/zip/ZipExtraField;)[B

    move-result-object v0

    return-object v0
.end method

.method public getExternalAttributes()J
    .locals 2

    .prologue
    .line 232
    iget-wide v0, p0, Lcom/file/zip/ZipEntry;->externalAttributes:J

    return-wide v0
.end method

.method public getExtraField(Lcom/file/zip/ZipShort;)Lcom/file/zip/ZipExtraField;
    .locals 1
    .param p1, "type"    # Lcom/file/zip/ZipShort;

    .prologue
    .line 416
    iget-object v0, p0, Lcom/file/zip/ZipEntry;->extraFields:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/file/zip/ZipEntry;->extraFields:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/file/zip/ZipExtraField;

    .line 419
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExtraFields()[Lcom/file/zip/ZipExtraField;
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/file/zip/ZipEntry;->getExtraFields(Z)[Lcom/file/zip/ZipExtraField;

    move-result-object v0

    return-object v0
.end method

.method public getExtraFields(Z)[Lcom/file/zip/ZipExtraField;
    .locals 4
    .param p1, "includeUnparseable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 327
    iget-object v1, p0, Lcom/file/zip/ZipEntry;->extraFields:Ljava/util/LinkedHashMap;

    if-nez v1, :cond_2

    .line 328
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/file/zip/ZipEntry;->unparseableExtra:Lcom/file/zip/UnparseableExtraFieldData;

    if-nez v1, :cond_1

    .line 329
    :cond_0
    new-array v1, v3, [Lcom/file/zip/ZipExtraField;

    .line 337
    :goto_0
    return-object v1

    .line 330
    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/file/zip/ZipExtraField;

    iget-object v2, p0, Lcom/file/zip/ZipEntry;->unparseableExtra:Lcom/file/zip/UnparseableExtraFieldData;

    aput-object v2, v1, v3

    goto :goto_0

    .line 333
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/file/zip/ZipEntry;->extraFields:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 334
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/file/zip/ZipExtraField;>;"
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/file/zip/ZipEntry;->unparseableExtra:Lcom/file/zip/UnparseableExtraFieldData;

    if-eqz v1, :cond_3

    .line 335
    iget-object v1, p0, Lcom/file/zip/ZipEntry;->unparseableExtra:Lcom/file/zip/UnparseableExtraFieldData;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_3
    new-array v1, v3, [Lcom/file/zip/ZipExtraField;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/file/zip/ZipExtraField;

    goto :goto_0
.end method

.method public getGeneralPurposeBit()Lcom/file/zip/GeneralPurposeBit;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/file/zip/ZipEntry;->gpb:Lcom/file/zip/GeneralPurposeBit;

    return-object v0
.end method

.method public getInternalAttributes()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/file/zip/ZipEntry;->internalAttributes:I

    return v0
.end method

.method public getLastModifiedDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 667
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/file/zip/ZipEntry;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getLocalFileDataExtra()[B
    .locals 1

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/file/zip/ZipEntry;->getExtra()[B

    move-result-object v0

    .line 487
    .local v0, "extra":[B
    if-eqz v0, :cond_0

    .end local v0    # "extra":[B
    :goto_0
    return-object v0

    .restart local v0    # "extra":[B
    :cond_0
    sget-object v0, Lcom/file/zip/ZipEntry;->EMPTY:[B

    goto :goto_0
.end method

.method public getMethod()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/file/zip/ZipEntry;->method:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/file/zip/ZipEntry;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/file/zip/ZipEntry;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPlatform()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/file/zip/ZipEntry;->platform:I

    return v0
.end method

.method public getRawName()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 589
    iget-object v1, p0, Lcom/file/zip/ZipEntry;->rawName:[B

    if-eqz v1, :cond_0

    .line 590
    iget-object v1, p0, Lcom/file/zip/ZipEntry;->rawName:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 591
    .local v0, "b":[B
    iget-object v1, p0, Lcom/file/zip/ZipEntry;->rawName:[B

    iget-object v2, p0, Lcom/file/zip/ZipEntry;->rawName:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 594
    .end local v0    # "b":[B
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 551
    iget-wide v0, p0, Lcom/file/zip/ZipEntry;->size:J

    return-wide v0
.end method

.method public getUnixMode()I
    .locals 4

    .prologue
    .line 267
    iget v0, p0, Lcom/file/zip/ZipEntry;->platform:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/file/zip/ZipEntry;->getExternalAttributes()J

    move-result-wide v0

    const/16 v2, 0x10

    shr-long/2addr v0, v2

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public getUnparseableExtraFieldData()Lcom/file/zip/UnparseableExtraFieldData;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/file/zip/ZipEntry;->unparseableExtra:Lcom/file/zip/UnparseableExtraFieldData;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 609
    invoke-virtual {p0}, Lcom/file/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 2

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/file/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeExtraField(Lcom/file/zip/ZipShort;)V
    .locals 1
    .param p1, "type"    # Lcom/file/zip/ZipShort;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/file/zip/ZipEntry;->extraFields:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 391
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/file/zip/ZipEntry;->extraFields:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 394
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 396
    :cond_1
    invoke-virtual {p0}, Lcom/file/zip/ZipEntry;->setExtra()V

    .line 397
    return-void
.end method

.method public removeUnparseableExtraFieldData()V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/file/zip/ZipEntry;->unparseableExtra:Lcom/file/zip/UnparseableExtraFieldData;

    if-nez v0, :cond_0

    .line 404
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 406
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/file/zip/ZipEntry;->unparseableExtra:Lcom/file/zip/UnparseableExtraFieldData;

    .line 407
    invoke-virtual {p0}, Lcom/file/zip/ZipEntry;->setExtra()V

    .line 408
    return-void
.end method

.method public setCentralDirectoryExtra([B)V
    .locals 4
    .param p1, "b"    # [B

    .prologue
    .line 472
    const/4 v2, 0x0

    .line 473
    :try_start_0
    sget-object v3, Lcom/file/zip/ExtraFieldUtils$UnparseableExtraField;->READ:Lcom/file/zip/ExtraFieldUtils$UnparseableExtraField;

    .line 472
    invoke-static {p1, v2, v3}, Lcom/file/zip/ExtraFieldUtils;->parse([BZLcom/file/zip/ExtraFieldUtils$UnparseableExtraField;)[Lcom/file/zip/ZipExtraField;

    move-result-object v0

    .line 474
    .local v0, "central":[Lcom/file/zip/ZipExtraField;
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/file/zip/ZipEntry;->mergeExtraFields([Lcom/file/zip/ZipExtraField;Z)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    return-void

    .line 475
    .end local v0    # "central":[Lcom/file/zip/ZipExtraField;
    :catch_0
    move-exception v1

    .line 476
    .local v1, "e":Ljava/util/zip/ZipException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/util/zip/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setComprSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 510
    invoke-virtual {p0, p1, p2}, Lcom/file/zip/ZipEntry;->setCompressedSize(J)V

    .line 511
    return-void
.end method

.method public setExternalAttributes(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 241
    iput-wide p1, p0, Lcom/file/zip/ZipEntry;->externalAttributes:J

    .line 242
    return-void
.end method

.method protected setExtra()V
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/file/zip/ZipEntry;->getExtraFields(Z)[Lcom/file/zip/ZipExtraField;

    move-result-object v0

    invoke-static {v0}, Lcom/file/zip/ExtraFieldUtils;->mergeLocalFileDataData([Lcom/file/zip/ZipExtraField;)[B

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    .line 464
    return-void
.end method

.method public setExtra([B)V
    .locals 5
    .param p1, "extra"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 444
    const/4 v2, 0x1

    .line 445
    :try_start_0
    sget-object v3, Lcom/file/zip/ExtraFieldUtils$UnparseableExtraField;->READ:Lcom/file/zip/ExtraFieldUtils$UnparseableExtraField;

    .line 444
    invoke-static {p1, v2, v3}, Lcom/file/zip/ExtraFieldUtils;->parse([BZLcom/file/zip/ExtraFieldUtils$UnparseableExtraField;)[Lcom/file/zip/ZipExtraField;

    move-result-object v1

    .line 446
    .local v1, "local":[Lcom/file/zip/ZipExtraField;
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/file/zip/ZipEntry;->mergeExtraFields([Lcom/file/zip/ZipExtraField;Z)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    return-void

    .line 447
    .end local v1    # "local":[Lcom/file/zip/ZipExtraField;
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Ljava/util/zip/ZipException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error parsing extra fields for entry: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Lcom/file/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/zip/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 449
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setExtraFields([Lcom/file/zip/ZipExtraField;)V
    .locals 5
    .param p1, "fields"    # [Lcom/file/zip/ZipExtraField;

    .prologue
    .line 299
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/file/zip/ZipEntry;->extraFields:Ljava/util/LinkedHashMap;

    .line 300
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/file/zip/ZipEntry;->setExtra()V

    .line 308
    return-void

    .line 300
    :cond_0
    aget-object v0, p1, v1

    .line 301
    .local v0, "field":Lcom/file/zip/ZipExtraField;
    instance-of v3, v0, Lcom/file/zip/UnparseableExtraFieldData;

    if-eqz v3, :cond_1

    .line 302
    check-cast v0, Lcom/file/zip/UnparseableExtraFieldData;

    .end local v0    # "field":Lcom/file/zip/ZipExtraField;
    iput-object v0, p0, Lcom/file/zip/ZipEntry;->unparseableExtra:Lcom/file/zip/UnparseableExtraFieldData;

    .line 300
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    .restart local v0    # "field":Lcom/file/zip/ZipExtraField;
    :cond_1
    iget-object v3, p0, Lcom/file/zip/ZipEntry;->extraFields:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Lcom/file/zip/ZipExtraField;->getHeaderId()Lcom/file/zip/ZipShort;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public setGeneralPurposeBit(Lcom/file/zip/GeneralPurposeBit;)V
    .locals 0
    .param p1, "b"    # Lcom/file/zip/GeneralPurposeBit;

    .prologue
    .line 623
    iput-object p1, p0, Lcom/file/zip/ZipEntry;->gpb:Lcom/file/zip/GeneralPurposeBit;

    .line 624
    return-void
.end method

.method public setInternalAttributes(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 223
    iput p1, p0, Lcom/file/zip/ZipEntry;->internalAttributes:I

    .line 224
    return-void
.end method

.method public setMethod(I)V
    .locals 3
    .param p1, "method"    # I

    .prologue
    .line 200
    if-gez p1, :cond_0

    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ZIP compression method can not be negative: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    iput p1, p0, Lcom/file/zip/ZipEntry;->method:I

    .line 205
    return-void
.end method

.method protected setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 538
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/file/zip/ZipEntry;->getPlatform()I

    move-result v0

    if-nez v0, :cond_0

    .line 539
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 540
    const/16 v0, 0x5c

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 542
    :cond_0
    iput-object p1, p0, Lcom/file/zip/ZipEntry;->name:Ljava/lang/String;

    .line 543
    return-void
.end method

.method protected setName(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "rawName"    # [B

    .prologue
    .line 577
    invoke-virtual {p0, p1}, Lcom/file/zip/ZipEntry;->setName(Ljava/lang/String;)V

    .line 578
    iput-object p2, p0, Lcom/file/zip/ZipEntry;->rawName:[B

    .line 579
    return-void
.end method

.method protected setPlatform(I)V
    .locals 0
    .param p1, "platform"    # I

    .prologue
    .line 290
    iput p1, p0, Lcom/file/zip/ZipEntry;->platform:I

    .line 291
    return-void
.end method

.method public setSize(J)V
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 562
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 563
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid entry size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :cond_0
    iput-wide p1, p0, Lcom/file/zip/ZipEntry;->size:J

    .line 566
    return-void
.end method

.method public setUnixMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 252
    shl-int/lit8 v2, p1, 0x10

    .line 254
    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v2

    .line 256
    invoke-virtual {p0}, Lcom/file/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x10

    :cond_0
    or-int/2addr v0, v1

    int-to-long v0, v0

    .line 252
    invoke-virtual {p0, v0, v1}, Lcom/file/zip/ZipEntry;->setExternalAttributes(J)V

    .line 258
    const/4 v0, 0x3

    iput v0, p0, Lcom/file/zip/ZipEntry;->platform:I

    .line 259
    return-void

    :cond_1
    move v0, v1

    .line 254
    goto :goto_0
.end method
