.class public Lcom/fimi/kernel/language/ConstantRegion;
.super Ljava/lang/Object;
.source "ConstantRegion.java"


# static fields
.field public static final CN:Ljava/lang/String; = "CN"

.field public static final EUROPE:[Ljava/lang/String;

.field public static final IN:Ljava/lang/String; = "IN"

.field public static final RU:Ljava/lang/String; = "RU"

.field public static final SELLING_COUNTRY:[Ljava/lang/String;

.field public static final SOUTHEAST_ASIA:[Ljava/lang/String;

.field public static final US:Ljava/lang/String; = "US"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    const/16 v0, 0x2a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "GB"

    aput-object v1, v0, v3

    const-string v1, "IE"

    aput-object v1, v0, v4

    const-string v1, "FR"

    aput-object v1, v0, v5

    const-string v1, "NL"

    aput-object v1, v0, v6

    const-string v1, "BE"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "LU"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "MC"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "NO"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "FI"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DK"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "IS"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "DE"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "PL"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "CZ"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "SK"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "HU"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "AT"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "LI"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "CH"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "EE"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "LV"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "LT"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "BY"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "UA"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "MD"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "RO"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "BG"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "SI"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "ME"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "RS"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "HR"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "BA"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "MK"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "AL"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "GR"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "IT"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "ES"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "PT"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "AD"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "MT"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "CY"

    aput-object v2, v0, v1

    sput-object v0, Lcom/fimi/kernel/language/ConstantRegion;->EUROPE:[Ljava/lang/String;

    .line 64
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ID"

    aput-object v1, v0, v3

    const-string v1, "MY"

    aput-object v1, v0, v4

    const-string v1, "MM"

    aput-object v1, v0, v5

    const-string v1, "TH"

    aput-object v1, v0, v6

    const-string v1, "VN"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "SG"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "PH"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "TW"

    aput-object v2, v0, v1

    sput-object v0, Lcom/fimi/kernel/language/ConstantRegion;->SOUTHEAST_ASIA:[Ljava/lang/String;

    .line 67
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CN"

    aput-object v1, v0, v3

    const-string v1, "US"

    aput-object v1, v0, v4

    const-string v1, "EUROPE"

    aput-object v1, v0, v5

    const-string v1, "ID"

    aput-object v1, v0, v6

    const-string v1, "MY"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "MM"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "TH"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "VN"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SG"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "IN"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "AE"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ES"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "SA"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "PL"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "UA"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "RU"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "SK"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "FR"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "AR"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "MX"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "TR"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "IR"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "PH"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "TW"

    aput-object v2, v0, v1

    sput-object v0, Lcom/fimi/kernel/language/ConstantRegion;->SELLING_COUNTRY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
