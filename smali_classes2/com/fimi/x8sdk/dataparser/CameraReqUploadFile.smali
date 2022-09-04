.class public Lcom/fimi/x8sdk/dataparser/CameraReqUploadFile;
.super Lcom/fimi/x8sdk/common/BaseMessage;
.source "CameraReqUploadFile.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/fimi/x8sdk/common/BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public decrypt()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 13
    invoke-super {p0}, Lcom/fimi/x8sdk/common/BaseMessage;->decrypt()V

    .line 15
    return-void
.end method
