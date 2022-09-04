.class public Lcom/fimi/x8sdk/entity/X8CameraParamsValue;
.super Ljava/lang/Object;
.source "X8CameraParamsValue.java"


# static fields
.field static paramsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;


# instance fields
.field private curParamsJson:Lcom/fimi/x8sdk/jsonResult/CurParamsJson;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    invoke-direct {v0}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->curParamsJson:Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    .line 20
    return-void
.end method

.method public static getInstance()Lcom/fimi/x8sdk/entity/X8CameraParamsValue;
    .locals 2

    .prologue
    .line 10
    sget-object v0, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->paramsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    if-nez v0, :cond_0

    .line 11
    const-class v1, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    monitor-enter v1

    .line 12
    :try_start_0
    new-instance v0, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    invoke-direct {v0}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;-><init>()V

    sput-object v0, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->paramsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    .line 13
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :cond_0
    sget-object v0, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->paramsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    return-object v0

    .line 13
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->curParamsJson:Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    return-object v0
.end method
