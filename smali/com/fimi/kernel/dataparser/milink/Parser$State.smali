.class final enum Lcom/fimi/kernel/dataparser/milink/Parser$State;
.super Ljava/lang/Enum;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/kernel/dataparser/milink/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/kernel/dataparser/milink/Parser$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/kernel/dataparser/milink/Parser$State;

.field public static final enum CRC_FRAME1:Lcom/fimi/kernel/dataparser/milink/Parser$State;

.field public static final enum CRC_FRAME2:Lcom/fimi/kernel/dataparser/milink/Parser$State;

.field public static final enum CRC_FRAME3:Lcom/fimi/kernel/dataparser/milink/Parser$State;

.field public static final enum CRC_FRAME4:Lcom/fimi/kernel/dataparser/milink/Parser$State;

.field public static final enum CRC_HEADER1:Lcom/fimi/kernel/dataparser/milink/Parser$State;

.field public static final enum CRC_HEADER2:Lcom/fimi/kernel/dataparser/milink/Parser$State;

.field public static final enum DEST_ID:Lcom/fimi/kernel/dataparser/milink/Parser$State;

.field public static final enum ENCRYPT_TYPE:Lcom/fimi/kernel/dataparser/milink/Parser$State;

.field public static final enum IDLE:Lcom/fimi/kernel/dataparser/milink/Parser$State;

.field public static final enum LENT_TYPE_CFG1:Lcom/fimi/kernel/dataparser/milink/Parser$State;

.field public static final enum LENT_TYPE_CFG2:Lcom/fimi/kernel/dataparser/milink/Parser$State;

.field public static final enum PAYLOAD:Lcom/fimi/kernel/dataparser/milink/Parser$State;

.field public static final enum RESERVE1:Lcom/fimi/kernel/dataparser/milink/Parser$State;

.field public static final enum RESERVE2:Lcom/fimi/kernel/dataparser/milink/Parser$State;

.field public static final enum RESERVE3:Lcom/fimi/kernel/dataparser/milink/Parser$State;

.field public static final enum SEQ1:Lcom/fimi/kernel/dataparser/milink/Parser$State;

.field public static final enum SEQ2:Lcom/fimi/kernel/dataparser/milink/Parser$State;

.field public static final enum SRC_ID:Lcom/fimi/kernel/dataparser/milink/Parser$State;

.field public static final enum STX:Lcom/fimi/kernel/dataparser/milink/Parser$State;

.field public static final enum SUB_DEST_ID:Lcom/fimi/kernel/dataparser/milink/Parser$State;

.field public static final enum SUB_SRC_ID:Lcom/fimi/kernel/dataparser/milink/Parser$State;

.field public static final enum UNINIT:Lcom/fimi/kernel/dataparser/milink/Parser$State;

.field public static final enum VERSION:Lcom/fimi/kernel/dataparser/milink/Parser$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;

    const-string v1, "UNINIT"

    invoke-direct {v0, v1, v3}, Lcom/fimi/kernel/dataparser/milink/Parser$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;->UNINIT:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    new-instance v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v4}, Lcom/fimi/kernel/dataparser/milink/Parser$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;->IDLE:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    .line 27
    new-instance v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;

    const-string v1, "STX"

    invoke-direct {v0, v1, v5}, Lcom/fimi/kernel/dataparser/milink/Parser$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;->STX:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    new-instance v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;

    const-string v1, "VERSION"

    invoke-direct {v0, v1, v6}, Lcom/fimi/kernel/dataparser/milink/Parser$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;->VERSION:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    new-instance v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;

    const-string v1, "LENT_TYPE_CFG1"

    invoke-direct {v0, v1, v7}, Lcom/fimi/kernel/dataparser/milink/Parser$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;->LENT_TYPE_CFG1:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    new-instance v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;

    const-string v1, "LENT_TYPE_CFG2"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/dataparser/milink/Parser$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;->LENT_TYPE_CFG2:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    .line 29
    new-instance v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;

    const-string v1, "SRC_ID"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/dataparser/milink/Parser$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;->SRC_ID:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    new-instance v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;

    const-string v1, "SUB_SRC_ID"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/dataparser/milink/Parser$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;->SUB_SRC_ID:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    new-instance v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;

    const-string v1, "DEST_ID"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/dataparser/milink/Parser$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;->DEST_ID:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    new-instance v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;

    const-string v1, "SUB_DEST_ID"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/dataparser/milink/Parser$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;->SUB_DEST_ID:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    .line 31
    new-instance v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;

    const-string v1, "ENCRYPT_TYPE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/dataparser/milink/Parser$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;->ENCRYPT_TYPE:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    new-instance v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;

    const-string v1, "RESERVE1"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/dataparser/milink/Parser$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;->RESERVE1:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    new-instance v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;

    const-string v1, "RESERVE2"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/dataparser/milink/Parser$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;->RESERVE2:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    new-instance v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;

    const-string v1, "RESERVE3"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/dataparser/milink/Parser$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;->RESERVE3:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    .line 33
    new-instance v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;

    const-string v1, "SEQ1"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/dataparser/milink/Parser$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;->SEQ1:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    new-instance v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;

    const-string v1, "SEQ2"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/dataparser/milink/Parser$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;->SEQ2:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    new-instance v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;

    const-string v1, "CRC_HEADER1"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/dataparser/milink/Parser$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;->CRC_HEADER1:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    new-instance v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;

    const-string v1, "CRC_HEADER2"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/dataparser/milink/Parser$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;->CRC_HEADER2:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    .line 35
    new-instance v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;

    const-string v1, "CRC_FRAME1"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/dataparser/milink/Parser$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;->CRC_FRAME1:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    new-instance v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;

    const-string v1, "CRC_FRAME2"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/dataparser/milink/Parser$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;->CRC_FRAME2:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    new-instance v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;

    const-string v1, "CRC_FRAME3"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/dataparser/milink/Parser$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;->CRC_FRAME3:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    new-instance v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;

    const-string v1, "CRC_FRAME4"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/dataparser/milink/Parser$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;->CRC_FRAME4:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    .line 37
    new-instance v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;

    const-string v1, "PAYLOAD"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/dataparser/milink/Parser$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;->PAYLOAD:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    .line 24
    const/16 v0, 0x17

    new-array v0, v0, [Lcom/fimi/kernel/dataparser/milink/Parser$State;

    sget-object v1, Lcom/fimi/kernel/dataparser/milink/Parser$State;->UNINIT:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/kernel/dataparser/milink/Parser$State;->IDLE:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fimi/kernel/dataparser/milink/Parser$State;->STX:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fimi/kernel/dataparser/milink/Parser$State;->VERSION:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fimi/kernel/dataparser/milink/Parser$State;->LENT_TYPE_CFG1:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fimi/kernel/dataparser/milink/Parser$State;->LENT_TYPE_CFG2:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fimi/kernel/dataparser/milink/Parser$State;->SRC_ID:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fimi/kernel/dataparser/milink/Parser$State;->SUB_SRC_ID:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fimi/kernel/dataparser/milink/Parser$State;->DEST_ID:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/fimi/kernel/dataparser/milink/Parser$State;->SUB_DEST_ID:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/fimi/kernel/dataparser/milink/Parser$State;->ENCRYPT_TYPE:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/fimi/kernel/dataparser/milink/Parser$State;->RESERVE1:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/fimi/kernel/dataparser/milink/Parser$State;->RESERVE2:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/fimi/kernel/dataparser/milink/Parser$State;->RESERVE3:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/fimi/kernel/dataparser/milink/Parser$State;->SEQ1:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/fimi/kernel/dataparser/milink/Parser$State;->SEQ2:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/fimi/kernel/dataparser/milink/Parser$State;->CRC_HEADER1:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/fimi/kernel/dataparser/milink/Parser$State;->CRC_HEADER2:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/fimi/kernel/dataparser/milink/Parser$State;->CRC_FRAME1:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/fimi/kernel/dataparser/milink/Parser$State;->CRC_FRAME2:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/fimi/kernel/dataparser/milink/Parser$State;->CRC_FRAME3:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/fimi/kernel/dataparser/milink/Parser$State;->CRC_FRAME4:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/fimi/kernel/dataparser/milink/Parser$State;->PAYLOAD:Lcom/fimi/kernel/dataparser/milink/Parser$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;->$VALUES:[Lcom/fimi/kernel/dataparser/milink/Parser$State;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/kernel/dataparser/milink/Parser$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;

    return-object v0
.end method

.method public static values()[Lcom/fimi/kernel/dataparser/milink/Parser$State;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/fimi/kernel/dataparser/milink/Parser$State;->$VALUES:[Lcom/fimi/kernel/dataparser/milink/Parser$State;

    invoke-virtual {v0}, [Lcom/fimi/kernel/dataparser/milink/Parser$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/kernel/dataparser/milink/Parser$State;

    return-object v0
.end method
