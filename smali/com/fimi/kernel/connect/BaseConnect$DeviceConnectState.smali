.class public final enum Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;
.super Ljava/lang/Enum;
.source "BaseConnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/kernel/connect/BaseConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceConnectState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;

.field public static final enum CONNECTED:Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;

.field public static final enum DISCONNECT:Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;

.field public static final enum IDEL:Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;

    const-string v1, "IDEL"

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;->IDEL:Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;

    new-instance v0, Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;->CONNECTED:Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;

    new-instance v0, Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;

    const-string v1, "DISCONNECT"

    invoke-direct {v0, v1, v4}, Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;->DISCONNECT:Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;

    sget-object v1, Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;->IDEL:Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;->CONNECTED:Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;->DISCONNECT:Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;->$VALUES:[Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;

    return-object v0
.end method

.method public static values()[Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;->$VALUES:[Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;

    invoke-virtual {v0}, [Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;

    return-object v0
.end method
