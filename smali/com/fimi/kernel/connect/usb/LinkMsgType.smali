.class public final enum Lcom/fimi/kernel/connect/usb/LinkMsgType;
.super Ljava/lang/Enum;
.source "LinkMsgType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/kernel/connect/usb/LinkMsgType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/kernel/connect/usb/LinkMsgType;

.field public static final enum FmLink4:Lcom/fimi/kernel/connect/usb/LinkMsgType;

.field public static final enum FwUploadData:Lcom/fimi/kernel/connect/usb/LinkMsgType;

.field public static final enum JsonData:Lcom/fimi/kernel/connect/usb/LinkMsgType;

.field public static final enum MediaDownData:Lcom/fimi/kernel/connect/usb/LinkMsgType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/fimi/kernel/connect/usb/LinkMsgType;

    const-string v1, "FmLink4"

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/connect/usb/LinkMsgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/connect/usb/LinkMsgType;->FmLink4:Lcom/fimi/kernel/connect/usb/LinkMsgType;

    new-instance v0, Lcom/fimi/kernel/connect/usb/LinkMsgType;

    const-string v1, "JsonData"

    invoke-direct {v0, v1, v3}, Lcom/fimi/kernel/connect/usb/LinkMsgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/connect/usb/LinkMsgType;->JsonData:Lcom/fimi/kernel/connect/usb/LinkMsgType;

    new-instance v0, Lcom/fimi/kernel/connect/usb/LinkMsgType;

    const-string v1, "FwUploadData"

    invoke-direct {v0, v1, v4}, Lcom/fimi/kernel/connect/usb/LinkMsgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/connect/usb/LinkMsgType;->FwUploadData:Lcom/fimi/kernel/connect/usb/LinkMsgType;

    new-instance v0, Lcom/fimi/kernel/connect/usb/LinkMsgType;

    const-string v1, "MediaDownData"

    invoke-direct {v0, v1, v5}, Lcom/fimi/kernel/connect/usb/LinkMsgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/connect/usb/LinkMsgType;->MediaDownData:Lcom/fimi/kernel/connect/usb/LinkMsgType;

    .line 7
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fimi/kernel/connect/usb/LinkMsgType;

    sget-object v1, Lcom/fimi/kernel/connect/usb/LinkMsgType;->FmLink4:Lcom/fimi/kernel/connect/usb/LinkMsgType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/kernel/connect/usb/LinkMsgType;->JsonData:Lcom/fimi/kernel/connect/usb/LinkMsgType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/kernel/connect/usb/LinkMsgType;->FwUploadData:Lcom/fimi/kernel/connect/usb/LinkMsgType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fimi/kernel/connect/usb/LinkMsgType;->MediaDownData:Lcom/fimi/kernel/connect/usb/LinkMsgType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fimi/kernel/connect/usb/LinkMsgType;->$VALUES:[Lcom/fimi/kernel/connect/usb/LinkMsgType;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/kernel/connect/usb/LinkMsgType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/fimi/kernel/connect/usb/LinkMsgType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/connect/usb/LinkMsgType;

    return-object v0
.end method

.method public static values()[Lcom/fimi/kernel/connect/usb/LinkMsgType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/fimi/kernel/connect/usb/LinkMsgType;->$VALUES:[Lcom/fimi/kernel/connect/usb/LinkMsgType;

    invoke-virtual {v0}, [Lcom/fimi/kernel/connect/usb/LinkMsgType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/kernel/connect/usb/LinkMsgType;

    return-object v0
.end method
