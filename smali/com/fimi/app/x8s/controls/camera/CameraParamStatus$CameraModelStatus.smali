.class public final enum Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;
.super Ljava/lang/Enum;
.source "CameraParamStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraModelStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

.field public static final enum ideal:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

.field public static final enum record:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

.field public static final enum recording:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

.field public static final enum takePhoto:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    const-string v1, "ideal"

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->ideal:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    new-instance v0, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    const-string v1, "takePhoto"

    invoke-direct {v0, v1, v3}, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->takePhoto:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    new-instance v0, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    const-string v1, "record"

    invoke-direct {v0, v1, v4}, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->record:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    new-instance v0, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    const-string v1, "recording"

    invoke-direct {v0, v1, v5}, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->recording:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->ideal:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->takePhoto:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->record:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->recording:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->$VALUES:[Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    return-object v0
.end method

.method public static values()[Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->$VALUES:[Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    invoke-virtual {v0}, [Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    return-object v0
.end method
