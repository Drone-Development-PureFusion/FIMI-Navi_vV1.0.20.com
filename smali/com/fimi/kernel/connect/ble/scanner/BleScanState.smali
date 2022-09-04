.class public final enum Lcom/fimi/kernel/connect/ble/scanner/BleScanState;
.super Ljava/lang/Enum;
.source "BleScanState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/kernel/connect/ble/scanner/BleScanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

.field public static final enum BLUETOOTH_OFF:Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

.field public static final enum SCAN_FAILED_ALREADY_STARTED:Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

.field public static final enum SCAN_FAILED_APPLICATION_REGISTRATION_FAILED:Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

.field public static final enum SCAN_FAILED_FEATURE_UNSUPPORTED:Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

.field public static final enum SCAN_FAILED_INTERNAL_ERROR:Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

.field public static final enum SCAN_FAILED_OUT_OF_HARDWARE_RESOURCES:Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

.field public static final enum SCAN_SUCCESS:Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

.field public static final enum SCAN_TIMEOUT:Lcom/fimi/kernel/connect/ble/scanner/BleScanState;


# instance fields
.field private code:I

.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 10
    new-instance v0, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    const-string v1, "SCAN_TIMEOUT"

    const/4 v2, -0x2

    const-string v3, "SCAN_SUCCESS_TIME_OUT"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;->SCAN_TIMEOUT:Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    .line 11
    new-instance v0, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    const-string v1, "BLUETOOTH_OFF"

    const/4 v2, -0x1

    const-string v3, "BLUETOOTH_OFF"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;->BLUETOOTH_OFF:Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    .line 12
    new-instance v0, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    const-string v1, "SCAN_SUCCESS"

    const-string v2, "SCAN_SUCCESS"

    invoke-direct {v0, v1, v7, v5, v2}, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;->SCAN_SUCCESS:Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    .line 13
    new-instance v0, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    const-string v1, "SCAN_FAILED_ALREADY_STARTED"

    const-string v2, "SCAN_FAILED_ALREADY_STARTED"

    invoke-direct {v0, v1, v8, v6, v2}, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;->SCAN_FAILED_ALREADY_STARTED:Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    .line 14
    new-instance v0, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    const-string v1, "SCAN_FAILED_APPLICATION_REGISTRATION_FAILED"

    const-string v2, "SCAN_FAILED_APPLICATION_REGISTRATION_FAILED"

    invoke-direct {v0, v1, v9, v7, v2}, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;->SCAN_FAILED_APPLICATION_REGISTRATION_FAILED:Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    .line 15
    new-instance v0, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    const-string v1, "SCAN_FAILED_INTERNAL_ERROR"

    const/4 v2, 0x5

    const-string v3, "SCAN_FAILED_INTERNAL_ERROR"

    invoke-direct {v0, v1, v2, v8, v3}, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;->SCAN_FAILED_INTERNAL_ERROR:Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    .line 16
    new-instance v0, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    const-string v1, "SCAN_FAILED_FEATURE_UNSUPPORTED"

    const/4 v2, 0x6

    const-string v3, "SCAN_FAILED_FEATURE_UNSUPPORTED"

    invoke-direct {v0, v1, v2, v9, v3}, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;->SCAN_FAILED_FEATURE_UNSUPPORTED:Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    .line 17
    new-instance v0, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    const-string v1, "SCAN_FAILED_OUT_OF_HARDWARE_RESOURCES"

    const/4 v2, 0x7

    const/4 v3, 0x5

    const-string v4, "SCAN_FAILED_OUT_OF_HARDWARE_RESOURCES"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;->SCAN_FAILED_OUT_OF_HARDWARE_RESOURCES:Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    .line 8
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    sget-object v1, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;->SCAN_TIMEOUT:Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;->BLUETOOTH_OFF:Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;->SCAN_SUCCESS:Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;->SCAN_FAILED_ALREADY_STARTED:Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;->SCAN_FAILED_APPLICATION_REGISTRATION_FAILED:Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;->SCAN_FAILED_INTERNAL_ERROR:Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;->SCAN_FAILED_FEATURE_UNSUPPORTED:Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;->SCAN_FAILED_OUT_OF_HARDWARE_RESOURCES:Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;->$VALUES:[Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "code"    # I
    .param p4, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;->code:I

    .line 22
    iput-object p4, p0, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;->message:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static newInstance(I)Lcom/fimi/kernel/connect/ble/scanner/BleScanState;
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 38
    packed-switch p0, :pswitch_data_0

    .line 55
    :pswitch_0
    sget-object v0, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;->SCAN_SUCCESS:Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    :goto_0
    return-object v0

    .line 40
    :pswitch_1
    sget-object v0, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;->SCAN_TIMEOUT:Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    goto :goto_0

    .line 42
    :pswitch_2
    sget-object v0, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;->BLUETOOTH_OFF:Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    goto :goto_0

    .line 45
    :pswitch_3
    sget-object v0, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;->SCAN_FAILED_ALREADY_STARTED:Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    goto :goto_0

    .line 47
    :pswitch_4
    sget-object v0, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;->SCAN_FAILED_APPLICATION_REGISTRATION_FAILED:Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    goto :goto_0

    .line 49
    :pswitch_5
    sget-object v0, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;->SCAN_FAILED_INTERNAL_ERROR:Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    goto :goto_0

    .line 51
    :pswitch_6
    sget-object v0, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;->SCAN_FAILED_FEATURE_UNSUPPORTED:Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    goto :goto_0

    .line 53
    :pswitch_7
    sget-object v0, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;->SCAN_FAILED_OUT_OF_HARDWARE_RESOURCES:Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/kernel/connect/ble/scanner/BleScanState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    return-object v0
.end method

.method public static values()[Lcom/fimi/kernel/connect/ble/scanner/BleScanState;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;->$VALUES:[Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    invoke-virtual {v0}, [Lcom/fimi/kernel/connect/ble/scanner/BleScanState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;->message:Ljava/lang/String;

    return-object v0
.end method
