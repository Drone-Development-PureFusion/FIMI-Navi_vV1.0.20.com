.class public Lcom/fimi/x8sdk/modulestate/X8CameraSettings;
.super Ljava/lang/Object;
.source "X8CameraSettings.java"


# static fields
.field private static focusSetting:Ljava/lang/String;

.field private static focusSettingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static hasGetFocusSetting:Z

.field public static hasGetFoucusSettingValues:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "2.0"

    sput-object v0, Lcom/fimi/x8sdk/modulestate/X8CameraSettings;->focusSetting:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/fimi/x8sdk/modulestate/X8CameraSettings;->focusSettingList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 19
    sput-object p0, Lcom/fimi/x8sdk/modulestate/X8CameraSettings;->focusSetting:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Ljava/util/List;

    .prologue
    .line 19
    sput-object p0, Lcom/fimi/x8sdk/modulestate/X8CameraSettings;->focusSettingList:Ljava/util/List;

    return-object p0
.end method

.method public static getFocusSettingList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    sget-object v1, Lcom/fimi/x8sdk/modulestate/X8CameraSettings;->focusSettingList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 76
    .local v0, "i":I
    :cond_0
    sget-object v1, Lcom/fimi/x8sdk/modulestate/X8CameraSettings;->focusSettingList:Ljava/util/List;

    return-object v1

    .line 72
    .end local v0    # "i":I
    :cond_1
    const/16 v0, 0xa

    .restart local v0    # "i":I
    :goto_0
    const/16 v1, 0x1e

    if-gt v0, v1, :cond_0

    .line 73
    sget-object v1, Lcom/fimi/x8sdk/modulestate/X8CameraSettings;->focusSettingList:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-float v3, v0

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getFocuse()I
    .locals 3

    .prologue
    .line 86
    sget-object v1, Lcom/fimi/x8sdk/modulestate/X8CameraSettings;->focusSetting:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/fimi/kernel/utils/NumberUtil;->convertToFloat(Ljava/lang/String;I)F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 87
    .local v0, "x":I
    return v0
.end method

.method public static getMinMaxFocuse()[I
    .locals 7

    .prologue
    const/high16 v6, 0x41200000    # 10.0f

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 91
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/X8CameraSettings;->getFocusSettingList()Ljava/util/List;

    .line 92
    sget-object v2, Lcom/fimi/x8sdk/modulestate/X8CameraSettings;->focusSettingList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v5, :cond_0

    .line 93
    sget-object v2, Lcom/fimi/x8sdk/modulestate/X8CameraSettings;->focusSettingList:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/fimi/kernel/utils/NumberUtil;->convertToFloat(Ljava/lang/String;I)F

    move-result v2

    mul-float/2addr v2, v6

    float-to-int v1, v2

    .line 94
    .local v1, "min":I
    sget-object v2, Lcom/fimi/x8sdk/modulestate/X8CameraSettings;->focusSettingList:Ljava/util/List;

    sget-object v3, Lcom/fimi/x8sdk/modulestate/X8CameraSettings;->focusSettingList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/fimi/kernel/utils/NumberUtil;->convertToFloat(Ljava/lang/String;I)F

    move-result v2

    mul-float/2addr v2, v6

    float-to-int v0, v2

    .line 95
    .local v0, "max":I
    new-array v2, v5, [I

    aput v1, v2, v4

    const/4 v3, 0x1

    aput v0, v2, v3

    .line 98
    .end local v0    # "max":I
    .end local v1    # "min":I
    :goto_0
    return-object v2

    :cond_0
    new-array v2, v5, [I

    fill-array-data v2, :array_0

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0xa
        0x1e
    .end array-data
.end method

.method public static getSettings(Lcom/fimi/x8sdk/controller/CameraManager;)V
    .locals 1
    .param p0, "cameraManager"    # Lcom/fimi/x8sdk/controller/CameraManager;

    .prologue
    .line 30
    sget-boolean v0, Lcom/fimi/x8sdk/modulestate/X8CameraSettings;->hasGetFocusSetting:Z

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/fimi/x8sdk/modulestate/X8CameraSettings$1;

    invoke-direct {v0}, Lcom/fimi/x8sdk/modulestate/X8CameraSettings$1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/controller/CameraManager;->getCameraFocuse(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 48
    :cond_0
    sget-boolean v0, Lcom/fimi/x8sdk/modulestate/X8CameraSettings;->hasGetFoucusSettingValues:Z

    if-nez v0, :cond_1

    .line 49
    new-instance v0, Lcom/fimi/x8sdk/modulestate/X8CameraSettings$2;

    invoke-direct {v0}, Lcom/fimi/x8sdk/modulestate/X8CameraSettings$2;-><init>()V

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/controller/CameraManager;->getCameraFocuseValues(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 66
    :cond_1
    return-void
.end method

.method public static reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 80
    sput-boolean v0, Lcom/fimi/x8sdk/modulestate/X8CameraSettings;->hasGetFocusSetting:Z

    .line 81
    sput-boolean v0, Lcom/fimi/x8sdk/modulestate/X8CameraSettings;->hasGetFoucusSettingValues:Z

    .line 82
    sget-object v0, Lcom/fimi/x8sdk/modulestate/X8CameraSettings;->focusSettingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 83
    return-void
.end method

.method public static setFocusSetting(Ljava/lang/String;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 26
    sput-object p0, Lcom/fimi/x8sdk/modulestate/X8CameraSettings;->focusSetting:Ljava/lang/String;

    .line 27
    return-void
.end method
