.class public final enum Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;
.super Ljava/lang/Enum;
.source "HttpConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/kernel/network/okhttp/HttpConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Params"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

.field public static final enum ad_analize:Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

.field public static final enum ad_load:Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

.field public static final enum appid:Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

.field public static final enum bt_pad:Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

.field public static final enum bt_phone:Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

.field public static final enum lvs:Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

.field public static final enum os:Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

.field public static final enum p:Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

.field public static final enum st:Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;


# instance fields
.field private key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 33
    new-instance v0, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

    const-string v1, "lvs"

    const-string v2, "lvs"

    const-string v3, "4"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;->lvs:Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

    new-instance v0, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

    const-string v1, "st"

    const-string v2, "st"

    const-string v3, "12"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;->st:Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

    new-instance v0, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

    const-string v1, "bt_phone"

    const-string v2, "bt"

    const-string v3, "1"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;->bt_phone:Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

    new-instance v0, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

    const-string v1, "bt_pad"

    const-string v2, "bt"

    const-string v3, "0"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;->bt_pad:Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

    .line 34
    new-instance v0, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

    const-string v1, "os"

    const-string v2, "os"

    const-string v3, "1"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;->os:Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

    new-instance v0, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

    const-string v1, "p"

    const/4 v2, 0x5

    const-string v3, "p"

    const-string v4, "2"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;->p:Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

    new-instance v0, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

    const-string v1, "appid"

    const/4 v2, 0x6

    const-string v3, "appid"

    const-string/jumbo v4, "xya"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;->appid:Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

    .line 35
    new-instance v0, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

    const-string v1, "ad_analize"

    const/4 v2, 0x7

    const-string v3, "sp"

    const-string v4, "2"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;->ad_analize:Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

    .line 36
    new-instance v0, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

    const-string v1, "ad_load"

    const/16 v2, 0x8

    const-string v3, "sp"

    const-string v4, "3"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;->ad_load:Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

    .line 31
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

    sget-object v1, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;->lvs:Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;->st:Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;->bt_phone:Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

    aput-object v1, v0, v7

    sget-object v1, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;->bt_pad:Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

    aput-object v1, v0, v8

    sget-object v1, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;->os:Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;->p:Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;->appid:Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;->ad_analize:Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;->ad_load:Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;->$VALUES:[Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-object p3, p0, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;->key:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;->value:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

    return-object v0
.end method

.method public static values()[Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;->$VALUES:[Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

    invoke-virtual {v0}, [Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/HttpConstant$Params;->value:Ljava/lang/String;

    return-object v0
.end method
