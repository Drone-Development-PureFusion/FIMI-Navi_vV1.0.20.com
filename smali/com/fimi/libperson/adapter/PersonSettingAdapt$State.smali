.class public final enum Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;
.super Ljava/lang/Enum;
.source "PersonSettingAdapt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/libperson/adapter/PersonSettingAdapt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

.field public static final enum BLACK1:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

.field public static final enum BLACK2:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

.field public static final enum CLEAN_CACHE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

.field public static final enum GO_TO_APP_STORE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

.field public static final enum LANGUAGE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

.field public static final enum MESSAGE_NOTICE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

.field public static final enum SERVICE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

.field public static final enum UAV_INSURANCE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

.field public static final enum USER_AGREEMENT:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

.field public static final enum USER_PRIVACY:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

.field public static final enum VERSION_UPDATE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    new-instance v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    const-string v1, "UAV_INSURANCE"

    invoke-direct {v0, v1, v3}, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->UAV_INSURANCE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    .line 38
    new-instance v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    const-string v1, "MESSAGE_NOTICE"

    invoke-direct {v0, v1, v4}, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->MESSAGE_NOTICE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    .line 39
    new-instance v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    const-string v1, "VERSION_UPDATE"

    invoke-direct {v0, v1, v5}, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->VERSION_UPDATE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    .line 40
    new-instance v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    const-string v1, "CLEAN_CACHE"

    invoke-direct {v0, v1, v6}, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->CLEAN_CACHE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    .line 41
    new-instance v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    const-string v1, "GO_TO_APP_STORE"

    invoke-direct {v0, v1, v7}, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->GO_TO_APP_STORE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    .line 42
    new-instance v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    const-string v1, "BLACK1"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->BLACK1:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    .line 43
    new-instance v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    const-string v1, "SERVICE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->SERVICE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    .line 44
    new-instance v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    const-string v1, "LANGUAGE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->LANGUAGE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    .line 45
    new-instance v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    const-string v1, "BLACK2"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->BLACK2:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    .line 46
    new-instance v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    const-string v1, "USER_AGREEMENT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->USER_AGREEMENT:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    .line 47
    new-instance v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    const-string v1, "USER_PRIVACY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->USER_PRIVACY:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    .line 36
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    sget-object v1, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->UAV_INSURANCE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->MESSAGE_NOTICE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->VERSION_UPDATE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->CLEAN_CACHE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->GO_TO_APP_STORE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->BLACK1:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->SERVICE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->LANGUAGE:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->BLACK2:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->USER_AGREEMENT:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->USER_PRIVACY:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->$VALUES:[Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    return-object v0
.end method

.method public static values()[Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->$VALUES:[Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    invoke-virtual {v0}, [Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    return-object v0
.end method
