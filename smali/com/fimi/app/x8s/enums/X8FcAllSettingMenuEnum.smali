.class public final enum Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;
.super Ljava/lang/Enum;
.source "X8FcAllSettingMenuEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

.field public static final enum BATTERY_ITEM:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

.field public static final enum DRONE_STATE:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

.field public static final enum FC_ITEM:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

.field public static final enum GENERAL_ITEM:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

.field public static final enum GIMBAL_ITEM:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

.field public static final enum RC_ITEM:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    const-string v1, "FC_ITEM"

    invoke-direct {v0, v1, v3}, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;->FC_ITEM:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    .line 7
    new-instance v0, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    const-string v1, "RC_ITEM"

    invoke-direct {v0, v1, v4}, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;->RC_ITEM:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    .line 9
    new-instance v0, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    const-string v1, "GIMBAL_ITEM"

    invoke-direct {v0, v1, v5}, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;->GIMBAL_ITEM:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    .line 11
    new-instance v0, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    const-string v1, "BATTERY_ITEM"

    invoke-direct {v0, v1, v6}, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;->BATTERY_ITEM:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    .line 13
    new-instance v0, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    const-string v1, "GENERAL_ITEM"

    invoke-direct {v0, v1, v7}, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;->GENERAL_ITEM:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    .line 15
    new-instance v0, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    const-string v1, "DRONE_STATE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;->DRONE_STATE:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;->FC_ITEM:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;->RC_ITEM:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;->GIMBAL_ITEM:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;->BATTERY_ITEM:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;->GENERAL_ITEM:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;->DRONE_STATE:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;->$VALUES:[Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    return-object v0
.end method

.method public static values()[Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;->$VALUES:[Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    invoke-virtual {v0}, [Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    return-object v0
.end method
