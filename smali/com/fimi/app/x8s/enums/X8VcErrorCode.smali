.class public final enum Lcom/fimi/app/x8s/enums/X8VcErrorCode;
.super Ljava/lang/Enum;
.source "X8VcErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/app/x8s/enums/X8VcErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/app/x8s/enums/X8VcErrorCode;

.field public static final enum IMAGE_TOO_DARK:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

.field public static final enum IMAGE_TOO_LIGHT:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

.field public static final enum LOW_CONFIDENCE:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

.field public static final enum OBJ_RECOVERY:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

.field public static final enum TARGET_IS_PERSON:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

.field public static final enum TARGET_MISSED:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

.field public static final enum TARGET_NOT_OBVIOUS:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

.field public static final enum TARGET_TOO_BIG:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

.field public static final enum TARGET_TOO_SMALL:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

.field public static final enum TRACKER_BUSY:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

.field public static final enum TRACKER_INVALID_ARGUMET:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

.field public static final enum TRACKER_NO_ERROR:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

.field public static final enum TRACK_FAILED:Lcom/fimi/app/x8s/enums/X8VcErrorCode;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 4
    new-instance v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    const-string v1, "TRACKER_NO_ERROR"

    invoke-direct {v0, v1, v8, v4}, Lcom/fimi/app/x8s/enums/X8VcErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->TRACKER_NO_ERROR:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    .line 5
    new-instance v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    const-string v1, "TRACKER_INVALID_ARGUMET"

    invoke-direct {v0, v1, v4, v5}, Lcom/fimi/app/x8s/enums/X8VcErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->TRACKER_INVALID_ARGUMET:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    .line 6
    new-instance v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    const-string v1, "TARGET_TOO_BIG"

    invoke-direct {v0, v1, v5, v6}, Lcom/fimi/app/x8s/enums/X8VcErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->TARGET_TOO_BIG:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    .line 7
    new-instance v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    const-string v1, "TARGET_TOO_SMALL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v7}, Lcom/fimi/app/x8s/enums/X8VcErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->TARGET_TOO_SMALL:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    .line 8
    new-instance v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    const-string v1, "TARGET_NOT_OBVIOUS"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v6, v2}, Lcom/fimi/app/x8s/enums/X8VcErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->TARGET_NOT_OBVIOUS:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    .line 9
    new-instance v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    const-string v1, "IMAGE_TOO_DARK"

    const/4 v2, 0x5

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/fimi/app/x8s/enums/X8VcErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->IMAGE_TOO_DARK:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    .line 10
    new-instance v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    const-string v1, "IMAGE_TOO_LIGHT"

    const/4 v2, 0x6

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3}, Lcom/fimi/app/x8s/enums/X8VcErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->IMAGE_TOO_LIGHT:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    .line 11
    new-instance v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    const-string v1, "LOW_CONFIDENCE"

    const/4 v2, 0x7

    const/16 v3, 0x80

    invoke-direct {v0, v1, v2, v3}, Lcom/fimi/app/x8s/enums/X8VcErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->LOW_CONFIDENCE:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    .line 12
    new-instance v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    const-string v1, "TARGET_MISSED"

    const/16 v2, 0x100

    invoke-direct {v0, v1, v7, v2}, Lcom/fimi/app/x8s/enums/X8VcErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->TARGET_MISSED:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    .line 13
    new-instance v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    const-string v1, "OBJ_RECOVERY"

    const/16 v2, 0x9

    const/16 v3, 0x200

    invoke-direct {v0, v1, v2, v3}, Lcom/fimi/app/x8s/enums/X8VcErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->OBJ_RECOVERY:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    .line 14
    new-instance v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    const-string v1, "TRACK_FAILED"

    const/16 v2, 0xa

    const/16 v3, 0x400

    invoke-direct {v0, v1, v2, v3}, Lcom/fimi/app/x8s/enums/X8VcErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->TRACK_FAILED:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    .line 15
    new-instance v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    const-string v1, "TARGET_IS_PERSON"

    const/16 v2, 0xb

    const/16 v3, 0x1000

    invoke-direct {v0, v1, v2, v3}, Lcom/fimi/app/x8s/enums/X8VcErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->TARGET_IS_PERSON:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    .line 16
    new-instance v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    const-string v1, "TRACKER_BUSY"

    const/16 v2, 0xc

    const/high16 v3, -0x80000000

    invoke-direct {v0, v1, v2, v3}, Lcom/fimi/app/x8s/enums/X8VcErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->TRACKER_BUSY:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    .line 3
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->TRACKER_NO_ERROR:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->TRACKER_INVALID_ARGUMET:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->TARGET_TOO_BIG:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    aput-object v1, v0, v5

    const/4 v1, 0x3

    sget-object v2, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->TARGET_TOO_SMALL:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    aput-object v2, v0, v1

    sget-object v1, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->TARGET_NOT_OBVIOUS:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    sget-object v2, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->IMAGE_TOO_DARK:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->IMAGE_TOO_LIGHT:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->LOW_CONFIDENCE:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    aput-object v2, v0, v1

    sget-object v1, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->TARGET_MISSED:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    aput-object v1, v0, v7

    const/16 v1, 0x9

    sget-object v2, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->OBJ_RECOVERY:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->TRACK_FAILED:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->TARGET_IS_PERSON:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->TRACKER_BUSY:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->$VALUES:[Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->value:I

    .line 21
    return-void
.end method

.method public static valueOf(I)Lcom/fimi/app/x8s/enums/X8VcErrorCode;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 24
    sparse-switch p0, :sswitch_data_0

    .line 52
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 26
    :sswitch_0
    sget-object v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->TRACKER_NO_ERROR:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    goto :goto_0

    .line 28
    :sswitch_1
    sget-object v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->TRACKER_INVALID_ARGUMET:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    goto :goto_0

    .line 30
    :sswitch_2
    sget-object v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->TARGET_TOO_BIG:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    goto :goto_0

    .line 32
    :sswitch_3
    sget-object v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->TARGET_TOO_SMALL:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    goto :goto_0

    .line 34
    :sswitch_4
    sget-object v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->TARGET_NOT_OBVIOUS:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    goto :goto_0

    .line 36
    :sswitch_5
    sget-object v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->IMAGE_TOO_DARK:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    goto :goto_0

    .line 38
    :sswitch_6
    sget-object v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->IMAGE_TOO_LIGHT:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    goto :goto_0

    .line 40
    :sswitch_7
    sget-object v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->LOW_CONFIDENCE:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    goto :goto_0

    .line 42
    :sswitch_8
    sget-object v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->TARGET_MISSED:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    goto :goto_0

    .line 44
    :sswitch_9
    sget-object v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->OBJ_RECOVERY:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    goto :goto_0

    .line 46
    :sswitch_a
    sget-object v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->TRACK_FAILED:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    goto :goto_0

    .line 48
    :sswitch_b
    sget-object v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->TARGET_IS_PERSON:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    goto :goto_0

    .line 50
    :sswitch_c
    sget-object v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->TRACKER_BUSY:Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    goto :goto_0

    .line 24
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_c
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x1000 -> :sswitch_b
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/app/x8s/enums/X8VcErrorCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/fimi/app/x8s/enums/X8VcErrorCode;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->$VALUES:[Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    invoke-virtual {v0}, [Lcom/fimi/app/x8s/enums/X8VcErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    return-object v0
.end method
