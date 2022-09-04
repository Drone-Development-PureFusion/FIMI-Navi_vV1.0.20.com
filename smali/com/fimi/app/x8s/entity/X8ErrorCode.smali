.class public Lcom/fimi/app/x8s/entity/X8ErrorCode;
.super Ljava/lang/Object;
.source "X8ErrorCode.java"


# instance fields
.field private bgId:I

.field private detail:Ljava/lang/String;

.field private isShow:Z

.field private isSpeak:Z

.field private level:Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;

.field private speakStr:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private titleImgId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBgId()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/fimi/app/x8s/entity/X8ErrorCode;->bgId:I

    return v0
.end method

.method public getDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8ErrorCode;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8ErrorCode;->level:Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;

    return-object v0
.end method

.method public getSpeakStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8ErrorCode;->speakStr:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8ErrorCode;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleImgId()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/fimi/app/x8s/entity/X8ErrorCode;->titleImgId:I

    return v0
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/fimi/app/x8s/entity/X8ErrorCode;->isShow:Z

    return v0
.end method

.method public isSpeak()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/fimi/app/x8s/entity/X8ErrorCode;->isSpeak:Z

    return v0
.end method

.method public setBgId(I)V
    .locals 0
    .param p1, "bgId"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/fimi/app/x8s/entity/X8ErrorCode;->bgId:I

    .line 42
    return-void
.end method

.method public setDetail(Ljava/lang/String;)V
    .locals 0
    .param p1, "detail"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/fimi/app/x8s/entity/X8ErrorCode;->detail:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setLevel(Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;)V
    .locals 0
    .param p1, "level"    # Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/fimi/app/x8s/entity/X8ErrorCode;->level:Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;

    .line 58
    return-void
.end method

.method public setShow(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/fimi/app/x8s/entity/X8ErrorCode;->isShow:Z

    .line 23
    return-void
.end method

.method public setSpeak(Z)V
    .locals 0
    .param p1, "speak"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/fimi/app/x8s/entity/X8ErrorCode;->isSpeak:Z

    .line 33
    return-void
.end method

.method public setSpeakStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "speakStr"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/fimi/app/x8s/entity/X8ErrorCode;->speakStr:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/fimi/app/x8s/entity/X8ErrorCode;->title:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setTitleImgId(I)V
    .locals 0
    .param p1, "titleImgId"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/fimi/app/x8s/entity/X8ErrorCode;->titleImgId:I

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "X8ErrorCode{level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/entity/X8ErrorCode;->level:Lcom/fimi/app/x8s/enums/X8ErrorCodeEnum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/entity/X8ErrorCode;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", detail=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/entity/X8ErrorCode;->detail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bgId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/app/x8s/entity/X8ErrorCode;->bgId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", titleImgId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/app/x8s/entity/X8ErrorCode;->titleImgId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", speakStr=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/entity/X8ErrorCode;->speakStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isShow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fimi/app/x8s/entity/X8ErrorCode;->isShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
