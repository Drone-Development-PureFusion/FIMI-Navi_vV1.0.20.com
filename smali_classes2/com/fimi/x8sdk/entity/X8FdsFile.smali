.class public abstract Lcom/fimi/x8sdk/entity/X8FdsFile;
.super Ljava/lang/Object;
.source "X8FdsFile.java"

# interfaces
.implements Lcom/fimi/kernel/fds/IFdsFileModel;


# instance fields
.field protected fileSuffix:Ljava/lang/String;

.field protected fileSuffixCollect:Ljava/lang/String;

.field protected filefdsUrl:Ljava/lang/String;

.field private itemPostion:I

.field protected objectName:Ljava/lang/String;

.field private sectionPostion:I

.field protected state:Lcom/fimi/kernel/fds/FdsUploadState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/fimi/x8sdk/entity/X8FdsFile;->filefdsUrl:Ljava/lang/String;

    .line 15
    sget-object v0, Lcom/fimi/kernel/fds/FdsUploadState;->IDLE:Lcom/fimi/kernel/fds/FdsUploadState;

    iput-object v0, p0, Lcom/fimi/x8sdk/entity/X8FdsFile;->state:Lcom/fimi/kernel/fds/FdsUploadState;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/fimi/x8sdk/entity/X8FdsFile;->fileSuffix:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/fimi/x8sdk/entity/X8FdsFile;->fileSuffixCollect:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItemPostion()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/fimi/x8sdk/entity/X8FdsFile;->itemPostion:I

    return v0
.end method

.method public getSectionPostion()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/fimi/x8sdk/entity/X8FdsFile;->sectionPostion:I

    return v0
.end method

.method public setItemPostion(I)V
    .locals 0
    .param p1, "itemPostion"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/fimi/x8sdk/entity/X8FdsFile;->itemPostion:I

    .line 32
    return-void
.end method

.method public setSectionPostion(I)V
    .locals 0
    .param p1, "sectionPostion"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/fimi/x8sdk/entity/X8FdsFile;->sectionPostion:I

    .line 24
    return-void
.end method
