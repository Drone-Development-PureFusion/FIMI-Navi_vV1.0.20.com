.class final enum Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;
.super Ljava/lang/Enum;
.source "X8MainCameraSettingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MenuMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;

.field public static final enum camera:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;

.field public static final enum normal:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;

.field public static final enum other:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 85
    new-instance v0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;

    const-string v1, "normal"

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;->normal:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;

    new-instance v0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;

    const-string v1, "camera"

    invoke-direct {v0, v1, v3}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;->camera:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;

    new-instance v0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;

    const-string v1, "other"

    invoke-direct {v0, v1, v4}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;->other:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;

    .line 84
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;

    sget-object v1, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;->normal:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;->camera:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;->other:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;->$VALUES:[Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;

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
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 84
    const-class v0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;

    return-object v0
.end method

.method public static values()[Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;->$VALUES:[Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;

    invoke-virtual {v0}, [Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;

    return-object v0
.end method
