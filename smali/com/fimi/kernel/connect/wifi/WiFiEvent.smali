.class public Lcom/fimi/kernel/connect/wifi/WiFiEvent;
.super Ljava/lang/Object;
.source "WiFiEvent.java"


# static fields
.field public static CONNECT_OKAY_MSG:I

.field public static PASSWORD_ERROR_MSG:I

.field public static WIFI_SCAN_OUTTIME:I


# instance fields
.field private msg_id:I

.field private slist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private wifiInfo:Landroid/net/wifi/WifiInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x1

    sput v0, Lcom/fimi/kernel/connect/wifi/WiFiEvent;->CONNECT_OKAY_MSG:I

    .line 15
    const/4 v0, 0x0

    sput v0, Lcom/fimi/kernel/connect/wifi/WiFiEvent;->PASSWORD_ERROR_MSG:I

    .line 16
    const/4 v0, 0x2

    sput v0, Lcom/fimi/kernel/connect/wifi/WiFiEvent;->WIFI_SCAN_OUTTIME:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMsg_id()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/fimi/kernel/connect/wifi/WiFiEvent;->msg_id:I

    return v0
.end method

.method public getSlist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fimi/kernel/connect/wifi/WiFiEvent;->slist:Ljava/util/List;

    return-object v0
.end method

.method public getWifiInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fimi/kernel/connect/wifi/WiFiEvent;->wifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public setMsg_id(I)V
    .locals 0
    .param p1, "msg_id"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/fimi/kernel/connect/wifi/WiFiEvent;->msg_id:I

    .line 42
    return-void
.end method

.method public setSlist(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "slist":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iput-object p1, p0, Lcom/fimi/kernel/connect/wifi/WiFiEvent;->slist:Ljava/util/List;

    .line 34
    return-void
.end method

.method public setWifiInfo(Landroid/net/wifi/WifiInfo;)V
    .locals 0
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/fimi/kernel/connect/wifi/WiFiEvent;->wifiInfo:Landroid/net/wifi/WifiInfo;

    .line 26
    return-void
.end method
