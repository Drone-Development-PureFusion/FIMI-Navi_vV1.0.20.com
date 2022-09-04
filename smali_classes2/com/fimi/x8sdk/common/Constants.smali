.class public Lcom/fimi/x8sdk/common/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/x8sdk/common/Constants$X8S_Fw_Type;
    }
.end annotation


# static fields
.field public static final A12_MSGID_CMD_UPLOAD:I = 0x3

.field public static final A12_TCP_CMD_HOST:Ljava/lang/String; = "192.168.42.1"

.field public static final A12_TCP_CMD_PORT:I = 0x271a

.field public static final A12_TCP_File_PORT:I = 0x271b

.field public static FIVE_KEY_CENTRE_KEY:Ljava/lang/String; = null

.field public static FIVE_KEY_DOWN_KEY:Ljava/lang/String; = null

.field public static FIVE_KEY_LEFT_KEY:Ljava/lang/String; = null

.field public static FIVE_KEY_RIGHT_KEY:Ljava/lang/String; = null

.field public static FIVE_KEY_UP_KEY:Ljava/lang/String; = null

.field public static final X8_GENERAL_GRID_LINE_CENTER_POINT:I = 0x1

.field public static final X8_GENERAL_GRID_LINE_NINE_DIAGONAL:I = 0x3

.field public static final X8_GENERAL_GRID_LINE_NINE_LINES:I = 0x2

.field public static final X8_GENERAL_GRID_LINE_NOTHING:I

.field public static X8_GENERAL_MAP_STYLE_NORMAL:I

.field public static X8_GENERAL_MAP_STYLE_SATELLITE:I

.field public static X8_GLINE_LINE_OPTION:Ljava/lang/String;

.field public static X8_INDEX_OPTION_LAND:I

.field public static X8_INDEX_OPTION_NONE:I

.field public static X8_INDEX_OPTION_RETURN:I

.field public static X8_LOW_POWER_LANDING:Ljava/lang/String;

.field public static X8_LOW_POWER_RETURN:Ljava/lang/String;

.field public static X8_MAP_OPTION:Ljava/lang/String;

.field public static X8_MAP_RECTIFYIN_OPTION:Ljava/lang/String;

.field public static X8_MAP_STYLE:Ljava/lang/String;

.field public static X8_SHOW_LOG_OPTION:Ljava/lang/String;

.field public static X8_UNITY_OPTION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 33
    const-string v0, "x8_unity_option"

    sput-object v0, Lcom/fimi/x8sdk/common/Constants;->X8_UNITY_OPTION:Ljava/lang/String;

    .line 34
    const-string v0, "x8_map_option"

    sput-object v0, Lcom/fimi/x8sdk/common/Constants;->X8_MAP_OPTION:Ljava/lang/String;

    .line 35
    const-string v0, "x8_map_rectifyin_option"

    sput-object v0, Lcom/fimi/x8sdk/common/Constants;->X8_MAP_RECTIFYIN_OPTION:Ljava/lang/String;

    .line 36
    const-string v0, "x8_show_log_option"

    sput-object v0, Lcom/fimi/x8sdk/common/Constants;->X8_SHOW_LOG_OPTION:Ljava/lang/String;

    .line 37
    const-string v0, "x8_map_style_option"

    sput-object v0, Lcom/fimi/x8sdk/common/Constants;->X8_MAP_STYLE:Ljava/lang/String;

    .line 38
    const-string v0, "x8_gline_line_option"

    sput-object v0, Lcom/fimi/x8sdk/common/Constants;->X8_GLINE_LINE_OPTION:Ljava/lang/String;

    .line 39
    const-string v0, "x8_low_power_return"

    sput-object v0, Lcom/fimi/x8sdk/common/Constants;->X8_LOW_POWER_RETURN:Ljava/lang/String;

    .line 40
    const-string v0, "x8_low_power_landing"

    sput-object v0, Lcom/fimi/x8sdk/common/Constants;->X8_LOW_POWER_LANDING:Ljava/lang/String;

    .line 57
    sput v1, Lcom/fimi/x8sdk/common/Constants;->X8_GENERAL_MAP_STYLE_NORMAL:I

    .line 61
    sput v2, Lcom/fimi/x8sdk/common/Constants;->X8_GENERAL_MAP_STYLE_SATELLITE:I

    .line 71
    sput v1, Lcom/fimi/x8sdk/common/Constants;->X8_INDEX_OPTION_NONE:I

    .line 72
    sput v2, Lcom/fimi/x8sdk/common/Constants;->X8_INDEX_OPTION_LAND:I

    .line 73
    const/4 v0, 0x2

    sput v0, Lcom/fimi/x8sdk/common/Constants;->X8_INDEX_OPTION_RETURN:I

    .line 75
    const-string v0, "five_key_up_key"

    sput-object v0, Lcom/fimi/x8sdk/common/Constants;->FIVE_KEY_UP_KEY:Ljava/lang/String;

    .line 76
    const-string v0, "five_key_down_key"

    sput-object v0, Lcom/fimi/x8sdk/common/Constants;->FIVE_KEY_DOWN_KEY:Ljava/lang/String;

    .line 77
    const-string v0, "five_key_left_key"

    sput-object v0, Lcom/fimi/x8sdk/common/Constants;->FIVE_KEY_LEFT_KEY:Ljava/lang/String;

    .line 78
    const-string v0, "five_key_right_key"

    sput-object v0, Lcom/fimi/x8sdk/common/Constants;->FIVE_KEY_RIGHT_KEY:Ljava/lang/String;

    .line 79
    const-string v0, "five_key_centre_key"

    sput-object v0, Lcom/fimi/x8sdk/common/Constants;->FIVE_KEY_CENTRE_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
