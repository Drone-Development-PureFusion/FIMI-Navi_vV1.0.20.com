.class public Lcom/fimi/x8sdk/common/GlobalConfig$Builder;
.super Ljava/lang/Object;
.source "GlobalConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x8sdk/common/GlobalConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private isLowLanding:Z

.field private isLowReturn:Z

.field private isRectification:Z

.field private isShowLog:Z

.field private isShowmMtric:Z

.field lowPowerOperation:I

.field lowPowerValue:I

.field private mGridLine:I

.field private mapStyle:I

.field private mapType:Lcom/fimi/x8sdk/map/MapType;

.field seriousLowPowerOperation:I

.field seriousLowPowerValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fimi/x8sdk/common/GlobalConfig$Builder;)Lcom/fimi/x8sdk/map/MapType;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/common/GlobalConfig$Builder;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->mapType:Lcom/fimi/x8sdk/map/MapType;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/x8sdk/common/GlobalConfig$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/common/GlobalConfig$Builder;

    .prologue
    .line 220
    iget v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->mapStyle:I

    return v0
.end method

.method static synthetic access$200(Lcom/fimi/x8sdk/common/GlobalConfig$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/common/GlobalConfig$Builder;

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->isRectification:Z

    return v0
.end method

.method static synthetic access$300(Lcom/fimi/x8sdk/common/GlobalConfig$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/common/GlobalConfig$Builder;

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->isShowLog:Z

    return v0
.end method

.method static synthetic access$400(Lcom/fimi/x8sdk/common/GlobalConfig$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/common/GlobalConfig$Builder;

    .prologue
    .line 220
    iget v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->mGridLine:I

    return v0
.end method

.method static synthetic access$500(Lcom/fimi/x8sdk/common/GlobalConfig$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/common/GlobalConfig$Builder;

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->isShowmMtric:Z

    return v0
.end method

.method static synthetic access$600(Lcom/fimi/x8sdk/common/GlobalConfig$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/common/GlobalConfig$Builder;

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->isLowLanding:Z

    return v0
.end method

.method static synthetic access$700(Lcom/fimi/x8sdk/common/GlobalConfig$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/common/GlobalConfig$Builder;

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->isLowReturn:Z

    return v0
.end method


# virtual methods
.method public isLowLanding()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->isLowLanding:Z

    return v0
.end method

.method public isLowReturn()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->isLowReturn:Z

    return v0
.end method

.method public setGridLine(I)Lcom/fimi/x8sdk/common/GlobalConfig$Builder;
    .locals 0
    .param p1, "gridLine"    # I

    .prologue
    .line 256
    iput p1, p0, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->mGridLine:I

    .line 257
    return-object p0
.end method

.method public setLowLanding(Z)V
    .locals 0
    .param p1, "lowLanding"    # Z

    .prologue
    .line 245
    iput-boolean p1, p0, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->isLowLanding:Z

    .line 246
    return-void
.end method

.method public setLowPowerOpration(I)Lcom/fimi/x8sdk/common/GlobalConfig$Builder;
    .locals 0
    .param p1, "lowPowerOperation"    # I

    .prologue
    .line 287
    iput p1, p0, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->lowPowerOperation:I

    .line 288
    return-object p0
.end method

.method public setLowPowerValue(I)Lcom/fimi/x8sdk/common/GlobalConfig$Builder;
    .locals 0
    .param p1, "lowPowerValue"    # I

    .prologue
    .line 279
    iput p1, p0, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->lowPowerValue:I

    .line 280
    return-object p0
.end method

.method public setLowReturn(Z)V
    .locals 0
    .param p1, "lowReturn"    # Z

    .prologue
    .line 237
    iput-boolean p1, p0, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->isLowReturn:Z

    .line 238
    return-void
.end method

.method public setMapStyle(I)Lcom/fimi/x8sdk/common/GlobalConfig$Builder;
    .locals 0
    .param p1, "mapStyle"    # I

    .prologue
    .line 270
    iput p1, p0, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->mapStyle:I

    .line 271
    return-object p0
.end method

.method public setMapType(Lcom/fimi/x8sdk/map/MapType;)Lcom/fimi/x8sdk/common/GlobalConfig$Builder;
    .locals 0
    .param p1, "mapType"    # Lcom/fimi/x8sdk/map/MapType;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->mapType:Lcom/fimi/x8sdk/map/MapType;

    .line 267
    return-object p0
.end method

.method public setRectification(Z)Lcom/fimi/x8sdk/common/GlobalConfig$Builder;
    .locals 0
    .param p1, "isRectification"    # Z

    .prologue
    .line 275
    iput-boolean p1, p0, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->isRectification:Z

    .line 276
    return-object p0
.end method

.method public setSeriousLowPowerOperation(I)Lcom/fimi/x8sdk/common/GlobalConfig$Builder;
    .locals 0
    .param p1, "seriousLowPowerOperation"    # I

    .prologue
    .line 291
    iput p1, p0, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->seriousLowPowerOperation:I

    .line 292
    return-object p0
.end method

.method public setSeriousLowPowerValue(I)Lcom/fimi/x8sdk/common/GlobalConfig$Builder;
    .locals 0
    .param p1, "seriousLowPowerValue"    # I

    .prologue
    .line 283
    iput p1, p0, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->seriousLowPowerValue:I

    .line 284
    return-object p0
.end method

.method public setShowLog(Z)Lcom/fimi/x8sdk/common/GlobalConfig$Builder;
    .locals 0
    .param p1, "showLog"    # Z

    .prologue
    .line 261
    iput-boolean p1, p0, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->isShowLog:Z

    .line 262
    return-object p0
.end method

.method public setShowmMtric(Z)Lcom/fimi/x8sdk/common/GlobalConfig$Builder;
    .locals 0
    .param p1, "showmMtric"    # Z

    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->isShowmMtric:Z

    .line 252
    return-object p0
.end method
