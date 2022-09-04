.class public final enum Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;
.super Ljava/lang/Enum;
.source "X8MainFcAllSettingControler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FirstMenu"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;

.field public static final enum DRONESTATE:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;

.field public static final enum FCSETTINGMENU:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;

.field public static final enum IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;

    .line 75
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;

    const-string v1, "DRONESTATE"

    invoke-direct {v0, v1, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;->DRONESTATE:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;

    .line 76
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;

    const-string v1, "FCSETTINGMENU"

    invoke-direct {v0, v1, v4}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;->FCSETTINGMENU:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;

    .line 73
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;->DRONESTATE:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;->FCSETTINGMENU:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;->$VALUES:[Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;

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
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 73
    const-class v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;

    return-object v0
.end method

.method public static values()[Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;->$VALUES:[Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;

    invoke-virtual {v0}, [Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$FirstMenu;

    return-object v0
.end method
