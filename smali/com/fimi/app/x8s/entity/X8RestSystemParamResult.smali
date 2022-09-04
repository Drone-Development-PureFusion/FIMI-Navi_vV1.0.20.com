.class public Lcom/fimi/app/x8s/entity/X8RestSystemParamResult;
.super Ljava/lang/Object;
.source "X8RestSystemParamResult.java"


# instance fields
.field private appResult:Z

.field private fcResult:Z

.field private gcResult:Z

.field private rcResult:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/fimi/app/x8s/entity/X8RestSystemParamResult;->appResult:Z

    .line 53
    iput-boolean v0, p0, Lcom/fimi/app/x8s/entity/X8RestSystemParamResult;->fcResult:Z

    .line 54
    iput-boolean v0, p0, Lcom/fimi/app/x8s/entity/X8RestSystemParamResult;->rcResult:Z

    .line 55
    iput-boolean v0, p0, Lcom/fimi/app/x8s/entity/X8RestSystemParamResult;->gcResult:Z

    .line 56
    return-void
.end method

.method public isAppResult()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/fimi/app/x8s/entity/X8RestSystemParamResult;->appResult:Z

    return v0
.end method

.method public isFcResult()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/fimi/app/x8s/entity/X8RestSystemParamResult;->fcResult:Z

    return v0
.end method

.method public isGcResult()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/fimi/app/x8s/entity/X8RestSystemParamResult;->gcResult:Z

    return v0
.end method

.method public isRcResult()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/fimi/app/x8s/entity/X8RestSystemParamResult;->rcResult:Z

    return v0
.end method

.method public setAppResult(Z)V
    .locals 0
    .param p1, "appResult"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/fimi/app/x8s/entity/X8RestSystemParamResult;->appResult:Z

    .line 24
    return-void
.end method

.method public setFcResult(Z)V
    .locals 0
    .param p1, "fcResult"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/fimi/app/x8s/entity/X8RestSystemParamResult;->fcResult:Z

    .line 32
    return-void
.end method

.method public setGcResult(Z)V
    .locals 0
    .param p1, "gcResult"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/fimi/app/x8s/entity/X8RestSystemParamResult;->gcResult:Z

    .line 48
    return-void
.end method

.method public setRcResult(Z)V
    .locals 0
    .param p1, "rcResult"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/fimi/app/x8s/entity/X8RestSystemParamResult;->rcResult:Z

    .line 40
    return-void
.end method
