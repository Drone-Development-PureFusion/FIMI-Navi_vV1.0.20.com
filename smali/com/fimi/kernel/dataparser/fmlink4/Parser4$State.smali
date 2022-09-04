.class final enum Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;
.super Ljava/lang/Enum;
.source "Parser4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/kernel/dataparser/fmlink4/Parser4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

.field public static final enum CrcFrame1:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

.field public static final enum CrcFrame2:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

.field public static final enum CrcFrame3:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

.field public static final enum CrcFrame4:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

.field public static final enum CrcHeader1:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

.field public static final enum CrcHeader2:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

.field public static final enum DestId:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

.field public static final enum Idle:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

.field public static final enum Len:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

.field public static final enum PlayLoad:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

.field public static final enum Reserve2:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

.field public static final enum Reserve3:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

.field public static final enum Seq1:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

.field public static final enum Seq2:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

.field public static final enum SrcId:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

.field public static final enum StartFlag:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

.field public static final enum TypeAndRes1Encry:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

.field public static final enum UnUnit:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

.field public static final enum Ver:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    new-instance v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    const-string v1, "UnUnit"

    invoke-direct {v0, v1, v3}, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->UnUnit:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    new-instance v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    const-string v1, "Idle"

    invoke-direct {v0, v1, v4}, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->Idle:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    new-instance v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    const-string v1, "StartFlag"

    invoke-direct {v0, v1, v5}, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->StartFlag:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    new-instance v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    const-string v1, "Ver"

    invoke-direct {v0, v1, v6}, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->Ver:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    new-instance v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    const-string v1, "Len"

    invoke-direct {v0, v1, v7}, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->Len:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    new-instance v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    const-string v1, "TypeAndRes1Encry"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->TypeAndRes1Encry:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    .line 40
    new-instance v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    const-string v1, "SrcId"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->SrcId:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    new-instance v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    const-string v1, "DestId"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->DestId:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    new-instance v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    const-string v1, "Reserve2"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->Reserve2:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    .line 41
    new-instance v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    const-string v1, "Reserve3"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->Reserve3:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    new-instance v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    const-string v1, "Seq1"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->Seq1:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    new-instance v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    const-string v1, "Seq2"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->Seq2:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    new-instance v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    const-string v1, "CrcHeader1"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->CrcHeader1:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    new-instance v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    const-string v1, "CrcHeader2"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->CrcHeader2:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    .line 42
    new-instance v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    const-string v1, "CrcFrame1"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->CrcFrame1:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    new-instance v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    const-string v1, "CrcFrame2"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->CrcFrame2:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    new-instance v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    const-string v1, "CrcFrame3"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->CrcFrame3:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    new-instance v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    const-string v1, "CrcFrame4"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->CrcFrame4:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    new-instance v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    const-string v1, "PlayLoad"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->PlayLoad:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    .line 38
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    sget-object v1, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->UnUnit:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->Idle:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->StartFlag:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->Ver:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->Len:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->TypeAndRes1Encry:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->SrcId:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->DestId:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->Reserve2:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->Reserve3:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->Seq1:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->Seq2:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->CrcHeader1:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->CrcHeader2:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->CrcFrame1:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->CrcFrame2:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->CrcFrame3:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->CrcFrame4:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->PlayLoad:Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->$VALUES:[Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    return-object v0
.end method

.method public static values()[Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->$VALUES:[Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    invoke-virtual {v0}, [Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/kernel/dataparser/fmlink4/Parser4$State;

    return-object v0
.end method
