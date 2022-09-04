.class public Lcom/fimi/kernel/region/ServiceItem;
.super Ljava/lang/Object;
.source "ServiceItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final SERVICECODE:[I

.field private static final SERVICENAME:[I

.field private static final SERVICENAME_GH2:[I

.field private static final SERVICENAME_X8:[I

.field public static final THE_EUROPE_SERVICE:[I

.field public static final THE_SINGAPORE_SERVICE:[I

.field public static final THE_US_SERVICE:[I

.field public static final chinaService:Ljava/lang/String; = "https://paas-beijing6.fimi.com/"

.field public static final frankfurtService:Ljava/lang/String; = "https://paas-frankfurt.fimi.com/fimi-cms-web-interface/"

.field public static final moscowService:Ljava/lang/String; = "https://paas-moscow.fimi.com/fimi-cms-web-interface/"

.field public static final newusService:Ljava/lang/String; = "https://fimiservice-newus.mi-ae.com/"

.field public static final singaporeService:Ljava/lang/String; = "https://paas-singapore.fimi.com/fimi-cms-web-interface/"


# instance fields
.field private code:I

.field private countryCode:Ljava/lang/String;

.field private info:I

.field private isSelect:Z

.field private serviceUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    const/16 v0, 0x18

    new-array v0, v0, [I

    sget v1, Lcom/fimi/kernel/R$string;->region_Argentina:I

    aput v1, v0, v3

    sget v1, Lcom/fimi/kernel/R$string;->region_United_Arab_Emirates:I

    aput v1, v0, v4

    sget v1, Lcom/fimi/kernel/R$string;->region_Poland:I

    aput v1, v0, v5

    sget v1, Lcom/fimi/kernel/R$string;->region_germany:I

    aput v1, v0, v6

    sget v1, Lcom/fimi/kernel/R$string;->region_Russia:I

    aput v1, v0, v7

    const/4 v1, 0x5

    sget v2, Lcom/fimi/kernel/R$string;->region_France:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/fimi/kernel/R$string;->region_Philippines:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/fimi/kernel/R$string;->region_Malaysia:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/fimi/kernel/R$string;->region_The_US:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/fimi/kernel/R$string;->region_Burma:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lcom/fimi/kernel/R$string;->region_Mexico:I

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lcom/fimi/kernel/R$string;->region_Saudi_Arabia:I

    aput v2, v0, v1

    const/16 v1, 0xc

    sget v2, Lcom/fimi/kernel/R$string;->region_Slovakia:I

    aput v2, v0, v1

    const/16 v1, 0xd

    sget v2, Lcom/fimi/kernel/R$string;->region_Thailand:I

    aput v2, v0, v1

    const/16 v1, 0xe

    sget v2, Lcom/fimi/kernel/R$string;->region_Turkey:I

    aput v2, v0, v1

    const/16 v1, 0xf

    sget v2, Lcom/fimi/kernel/R$string;->region_Ukraine:I

    aput v2, v0, v1

    const/16 v1, 0x10

    sget v2, Lcom/fimi/kernel/R$string;->region_Spain:I

    aput v2, v0, v1

    const/16 v1, 0x11

    sget v2, Lcom/fimi/kernel/R$string;->region_hk:I

    aput v2, v0, v1

    const/16 v1, 0x12

    sget v2, Lcom/fimi/kernel/R$string;->region_Singapore:I

    aput v2, v0, v1

    const/16 v1, 0x13

    sget v2, Lcom/fimi/kernel/R$string;->region_Iran:I

    aput v2, v0, v1

    const/16 v1, 0x14

    sget v2, Lcom/fimi/kernel/R$string;->region_italy:I

    aput v2, v0, v1

    const/16 v1, 0x15

    sget v2, Lcom/fimi/kernel/R$string;->region_Indonesia:I

    aput v2, v0, v1

    const/16 v1, 0x16

    sget v2, Lcom/fimi/kernel/R$string;->region_Vietnam:I

    aput v2, v0, v1

    const/16 v1, 0x17

    sget v2, Lcom/fimi/kernel/R$string;->region_Mainland_China:I

    aput v2, v0, v1

    sput-object v0, Lcom/fimi/kernel/region/ServiceItem;->SERVICENAME:[I

    .line 56
    const/16 v0, 0x25

    new-array v0, v0, [I

    sget v1, Lcom/fimi/kernel/R$string;->region_Argentina:I

    aput v1, v0, v3

    sget v1, Lcom/fimi/kernel/R$string;->region_United_Arab_Emirates:I

    aput v1, v0, v4

    sget v1, Lcom/fimi/kernel/R$string;->region_egpyt:I

    aput v1, v0, v5

    sget v1, Lcom/fimi/kernel/R$string;->region_pakistan:I

    aput v1, v0, v6

    sget v1, Lcom/fimi/kernel/R$string;->region_belarus:I

    aput v1, v0, v7

    const/4 v1, 0x5

    sget v2, Lcom/fimi/kernel/R$string;->region_Poland:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/fimi/kernel/R$string;->region_germany:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/fimi/kernel/R$string;->region_Russia:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/fimi/kernel/R$string;->region_France:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/fimi/kernel/R$string;->region_Philippines:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lcom/fimi/kernel/R$string;->region_colombia:I

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lcom/fimi/kernel/R$string;->region_korea:I

    aput v2, v0, v1

    const/16 v1, 0xc

    sget v2, Lcom/fimi/kernel/R$string;->region_Malaysia:I

    aput v2, v0, v1

    const/16 v1, 0xd

    sget v2, Lcom/fimi/kernel/R$string;->region_The_US:I

    aput v2, v0, v1

    const/16 v1, 0xe

    sget v2, Lcom/fimi/kernel/R$string;->region_maroc:I

    aput v2, v0, v1

    const/16 v1, 0xf

    sget v2, Lcom/fimi/kernel/R$string;->region_Burma:I

    aput v2, v0, v1

    const/16 v1, 0x10

    sget v2, Lcom/fimi/kernel/R$string;->region_Mexico:I

    aput v2, v0, v1

    const/16 v1, 0x11

    sget v2, Lcom/fimi/kernel/R$string;->region_portugal:I

    aput v2, v0, v1

    const/16 v1, 0x12

    sget v2, Lcom/fimi/kernel/R$string;->region_japan:I

    aput v2, v0, v1

    const/16 v1, 0x13

    sget v2, Lcom/fimi/kernel/R$string;->region_Saudi_Arabia:I

    aput v2, v0, v1

    const/16 v1, 0x14

    sget v2, Lcom/fimi/kernel/R$string;->region_Slovakia:I

    aput v2, v0, v1

    const/16 v1, 0x15

    sget v2, Lcom/fimi/kernel/R$string;->region_tw:I

    aput v2, v0, v1

    const/16 v1, 0x16

    sget v2, Lcom/fimi/kernel/R$string;->region_Thailand:I

    aput v2, v0, v1

    const/16 v1, 0x17

    sget v2, Lcom/fimi/kernel/R$string;->region_Turkey:I

    aput v2, v0, v1

    const/16 v1, 0x18

    sget v2, Lcom/fimi/kernel/R$string;->region_Ukraine:I

    aput v2, v0, v1

    const/16 v1, 0x19

    sget v2, Lcom/fimi/kernel/R$string;->region_Spain:I

    aput v2, v0, v1

    const/16 v1, 0x1a

    sget v2, Lcom/fimi/kernel/R$string;->region_greco:I

    aput v2, v0, v1

    const/16 v1, 0x1b

    sget v2, Lcom/fimi/kernel/R$string;->region_hk:I

    aput v2, v0, v1

    const/16 v1, 0x1c

    sget v2, Lcom/fimi/kernel/R$string;->region_Singapore:I

    aput v2, v0, v1

    const/16 v1, 0x1d

    sget v2, Lcom/fimi/kernel/R$string;->region_Iran:I

    aput v2, v0, v1

    const/16 v1, 0x1e

    sget v2, Lcom/fimi/kernel/R$string;->region_israel:I

    aput v2, v0, v1

    const/16 v1, 0x1f

    sget v2, Lcom/fimi/kernel/R$string;->region_italy:I

    aput v2, v0, v1

    const/16 v1, 0x20

    sget v2, Lcom/fimi/kernel/R$string;->region_Indonesia:I

    aput v2, v0, v1

    const/16 v1, 0x21

    sget v2, Lcom/fimi/kernel/R$string;->region_uk:I

    aput v2, v0, v1

    const/16 v1, 0x22

    sget v2, Lcom/fimi/kernel/R$string;->region_Vietnam:I

    aput v2, v0, v1

    const/16 v1, 0x23

    sget v2, Lcom/fimi/kernel/R$string;->region_Mainland_China:I

    aput v2, v0, v1

    const/16 v1, 0x24

    sget v2, Lcom/fimi/kernel/R$string;->region_other:I

    aput v2, v0, v1

    sput-object v0, Lcom/fimi/kernel/region/ServiceItem;->SERVICENAME_X8:[I

    .line 97
    const/16 v0, 0x21

    new-array v0, v0, [I

    sget v1, Lcom/fimi/kernel/R$string;->region_Argentina:I

    aput v1, v0, v3

    sget v1, Lcom/fimi/kernel/R$string;->region_United_Arab_Emirates:I

    aput v1, v0, v4

    sget v1, Lcom/fimi/kernel/R$string;->region_egpyt:I

    aput v1, v0, v5

    sget v1, Lcom/fimi/kernel/R$string;->region_pakistan:I

    aput v1, v0, v6

    sget v1, Lcom/fimi/kernel/R$string;->region_belarus:I

    aput v1, v0, v7

    const/4 v1, 0x5

    sget v2, Lcom/fimi/kernel/R$string;->region_Poland:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/fimi/kernel/R$string;->region_germany:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/fimi/kernel/R$string;->region_Russia:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/fimi/kernel/R$string;->region_France:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/fimi/kernel/R$string;->region_Philippines:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lcom/fimi/kernel/R$string;->region_colombia:I

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lcom/fimi/kernel/R$string;->region_korea:I

    aput v2, v0, v1

    const/16 v1, 0xc

    sget v2, Lcom/fimi/kernel/R$string;->region_Malaysia:I

    aput v2, v0, v1

    const/16 v1, 0xd

    sget v2, Lcom/fimi/kernel/R$string;->region_The_US:I

    aput v2, v0, v1

    const/16 v1, 0xe

    sget v2, Lcom/fimi/kernel/R$string;->region_maroc:I

    aput v2, v0, v1

    const/16 v1, 0xf

    sget v2, Lcom/fimi/kernel/R$string;->region_Mexico:I

    aput v2, v0, v1

    const/16 v1, 0x10

    sget v2, Lcom/fimi/kernel/R$string;->region_portugal:I

    aput v2, v0, v1

    const/16 v1, 0x11

    sget v2, Lcom/fimi/kernel/R$string;->region_japan:I

    aput v2, v0, v1

    const/16 v1, 0x12

    sget v2, Lcom/fimi/kernel/R$string;->region_Saudi_Arabia:I

    aput v2, v0, v1

    const/16 v1, 0x13

    sget v2, Lcom/fimi/kernel/R$string;->region_Thailand:I

    aput v2, v0, v1

    const/16 v1, 0x14

    sget v2, Lcom/fimi/kernel/R$string;->region_Turkey:I

    aput v2, v0, v1

    const/16 v1, 0x15

    sget v2, Lcom/fimi/kernel/R$string;->region_Ukraine:I

    aput v2, v0, v1

    const/16 v1, 0x16

    sget v2, Lcom/fimi/kernel/R$string;->region_Spain:I

    aput v2, v0, v1

    const/16 v1, 0x17

    sget v2, Lcom/fimi/kernel/R$string;->region_greco:I

    aput v2, v0, v1

    const/16 v1, 0x18

    sget v2, Lcom/fimi/kernel/R$string;->region_hk:I

    aput v2, v0, v1

    const/16 v1, 0x19

    sget v2, Lcom/fimi/kernel/R$string;->region_Singapore:I

    aput v2, v0, v1

    const/16 v1, 0x1a

    sget v2, Lcom/fimi/kernel/R$string;->region_Iran:I

    aput v2, v0, v1

    const/16 v1, 0x1b

    sget v2, Lcom/fimi/kernel/R$string;->region_israel:I

    aput v2, v0, v1

    const/16 v1, 0x1c

    sget v2, Lcom/fimi/kernel/R$string;->region_italy:I

    aput v2, v0, v1

    const/16 v1, 0x1d

    sget v2, Lcom/fimi/kernel/R$string;->region_Indonesia:I

    aput v2, v0, v1

    const/16 v1, 0x1e

    sget v2, Lcom/fimi/kernel/R$string;->region_uk:I

    aput v2, v0, v1

    const/16 v1, 0x1f

    sget v2, Lcom/fimi/kernel/R$string;->region_Vietnam:I

    aput v2, v0, v1

    const/16 v1, 0x20

    sget v2, Lcom/fimi/kernel/R$string;->region_Mainland_China:I

    aput v2, v0, v1

    sput-object v0, Lcom/fimi/kernel/region/ServiceItem;->SERVICENAME_GH2:[I

    .line 143
    const/4 v0, 0x6

    new-array v0, v0, [I

    sget v1, Lcom/fimi/kernel/R$string;->region_United_Arab_Emirates:I

    aput v1, v0, v3

    sget v1, Lcom/fimi/kernel/R$string;->region_Saudi_Arabia:I

    aput v1, v0, v4

    sget v1, Lcom/fimi/kernel/R$string;->region_Iran:I

    aput v1, v0, v5

    sget v1, Lcom/fimi/kernel/R$string;->region_Argentina:I

    aput v1, v0, v6

    sget v1, Lcom/fimi/kernel/R$string;->region_Mexico:I

    aput v1, v0, v7

    const/4 v1, 0x5

    sget v2, Lcom/fimi/kernel/R$string;->region_The_US:I

    aput v2, v0, v1

    sput-object v0, Lcom/fimi/kernel/region/ServiceItem;->THE_US_SERVICE:[I

    .line 152
    const/4 v0, 0x7

    new-array v0, v0, [I

    sget v1, Lcom/fimi/kernel/R$string;->region_Spain:I

    aput v1, v0, v3

    sget v1, Lcom/fimi/kernel/R$string;->region_Poland:I

    aput v1, v0, v4

    sget v1, Lcom/fimi/kernel/R$string;->region_Ukraine:I

    aput v1, v0, v5

    sget v1, Lcom/fimi/kernel/R$string;->region_Slovakia:I

    aput v1, v0, v6

    sget v1, Lcom/fimi/kernel/R$string;->region_France:I

    aput v1, v0, v7

    const/4 v1, 0x5

    sget v2, Lcom/fimi/kernel/R$string;->region_Turkey:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/fimi/kernel/R$string;->region_Europe:I

    aput v2, v0, v1

    sput-object v0, Lcom/fimi/kernel/region/ServiceItem;->THE_EUROPE_SERVICE:[I

    .line 162
    const/16 v0, 0x8

    new-array v0, v0, [I

    sget v1, Lcom/fimi/kernel/R$string;->region_Indonesia:I

    aput v1, v0, v3

    sget v1, Lcom/fimi/kernel/R$string;->region_Malaysia:I

    aput v1, v0, v4

    sget v1, Lcom/fimi/kernel/R$string;->region_Burma:I

    aput v1, v0, v5

    sget v1, Lcom/fimi/kernel/R$string;->region_Thailand:I

    aput v1, v0, v6

    sget v1, Lcom/fimi/kernel/R$string;->region_Vietnam:I

    aput v1, v0, v7

    const/4 v1, 0x5

    sget v2, Lcom/fimi/kernel/R$string;->region_Singapore:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/fimi/kernel/R$string;->region_Philippines:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/fimi/kernel/R$string;->region_taiwan:I

    aput v2, v0, v1

    sput-object v0, Lcom/fimi/kernel/region/ServiceItem;->THE_SINGAPORE_SERVICE:[I

    .line 173
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/fimi/kernel/region/ServiceItem;->SERVICECODE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getServicename()[I
    .locals 2

    .prologue
    .line 134
    sget-object v0, Lcom/fimi/kernel/Constants;->productType:Lcom/fimi/host/common/ProductEnum;

    sget-object v1, Lcom/fimi/host/common/ProductEnum;->GH2:Lcom/fimi/host/common/ProductEnum;

    if-ne v0, v1, :cond_0

    .line 135
    sget-object v0, Lcom/fimi/kernel/region/ServiceItem;->SERVICENAME_GH2:[I

    .line 139
    :goto_0
    return-object v0

    .line 136
    :cond_0
    sget-object v0, Lcom/fimi/kernel/Constants;->productType:Lcom/fimi/host/common/ProductEnum;

    sget-object v1, Lcom/fimi/host/common/ProductEnum;->X9:Lcom/fimi/host/common/ProductEnum;

    if-ne v0, v1, :cond_1

    .line 137
    sget-object v0, Lcom/fimi/kernel/region/ServiceItem;->SERVICENAME:[I

    goto :goto_0

    .line 139
    :cond_1
    sget-object v0, Lcom/fimi/kernel/region/ServiceItem;->SERVICENAME_X8:[I

    goto :goto_0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/fimi/kernel/region/ServiceItem;->code:I

    return v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/fimi/kernel/region/ServiceItem;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/fimi/kernel/region/ServiceItem;->info:I

    return v0
.end method

.method public getServiceUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/fimi/kernel/region/ServiceItem;->serviceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isSelect()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/fimi/kernel/region/ServiceItem;->isSelect:Z

    return v0
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 216
    iput p1, p0, Lcom/fimi/kernel/region/ServiceItem;->code:I

    .line 217
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/fimi/kernel/region/ServiceItem;->countryCode:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setInfo(I)V
    .locals 0
    .param p1, "info"    # I

    .prologue
    .line 208
    iput p1, p0, Lcom/fimi/kernel/region/ServiceItem;->info:I

    .line 209
    return-void
.end method

.method public setSelect(Z)V
    .locals 0
    .param p1, "select"    # Z

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/fimi/kernel/region/ServiceItem;->isSelect:Z

    .line 225
    return-void
.end method

.method public setServiceUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceUrl"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/fimi/kernel/region/ServiceItem;->serviceUrl:Ljava/lang/String;

    .line 201
    return-void
.end method
