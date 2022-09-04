.class public Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;
.super Ljava/lang/Object;
.source "CameraParamStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;
    }
.end annotation


# static fields
.field public static modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->ideal:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sput-object v0, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
