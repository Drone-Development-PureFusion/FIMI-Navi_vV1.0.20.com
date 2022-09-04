.class public abstract Lcom/fimi/x8sdk/command/X8BaseCmd;
.super Ljava/lang/Object;
.source "X8BaseCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;
    }
.end annotation


# static fields
.field protected static final ENCRYPRTION_YES:B = 0x1t

.field protected static final ENCRYPTION_NO:B = 0x0t

.field protected static final FM_LINK_VERSION:B = 0x4t

.field public static final MODULE_BATTERY:B = 0xft

.field public static final MODULE_CAMERA:B = 0x3t

.field public static final MODULE_CV:B = 0xat

.field public static final MODULE_ESC:B = 0x12t

.field public static final MODULE_FC:B = 0x2t

.field public static final MODULE_GCS:B = 0x7t

.field public static final MODULE_GIMBAL:B = 0x8t

.field public static final MODULE_NFZ:B = 0x11t

.field public static final MODULE_RC:B = 0xdt

.field public static final MODULE_REPEATER_VEHICLE:B = 0xet

.field public static final MODULE_REPEAT_RC:B = 0x10t

.field public static final MODULE_SERVO:B = 0x13t

.field public static final MODULE_UAV:B = 0x1t

.field protected static final TYPE_ACK:B = 0x2t

.field protected static final TYPE_AUTOSEND:B = 0x0t

.field protected static final TYPE_CMD:B = 0x1t

.field static count:I


# instance fields
.field protected seqIndex:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput v0, Lcom/fimi/x8sdk/command/X8BaseCmd;->count:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-short v2, p0, Lcom/fimi/x8sdk/command/X8BaseCmd;->seqIndex:S

    .line 83
    sget v0, Lcom/fimi/x8sdk/command/X8BaseCmd;->count:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/fimi/x8sdk/command/X8BaseCmd;->count:I

    int-to-short v0, v0

    iput-short v0, p0, Lcom/fimi/x8sdk/command/X8BaseCmd;->seqIndex:S

    .line 84
    sget v0, Lcom/fimi/x8sdk/command/X8BaseCmd;->count:I

    const/16 v1, 0x7ffe

    if-ne v0, v1, :cond_0

    .line 85
    sput v2, Lcom/fimi/x8sdk/command/X8BaseCmd;->count:I

    .line 87
    :cond_0
    return-void
.end method
