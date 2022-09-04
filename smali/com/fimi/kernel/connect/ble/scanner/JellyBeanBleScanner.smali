.class public Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;
.super Lcom/fimi/kernel/connect/ble/scanner/BaseBleScanner;
.source "JellyBeanBleScanner.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field public mBluetooth:Landroid/bluetooth/BluetoothAdapter;

.field private mScanCallback:Lcom/fimi/kernel/connect/ble/scanner/SimpleScanCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/fimi/kernel/connect/ble/scanner/SimpleScanCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/fimi/kernel/connect/ble/scanner/SimpleScanCallback;

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Lcom/fimi/kernel/connect/ble/scanner/BaseBleScanner;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;->mBluetooth:Landroid/bluetooth/BluetoothAdapter;

    .line 22
    iput-object v1, p0, Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;->mScanCallback:Lcom/fimi/kernel/connect/ble/scanner/SimpleScanCallback;

    .line 29
    new-instance v1, Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner$1;

    invoke-direct {v1, p0}, Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner$1;-><init>(Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;)V

    iput-object v1, p0, Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 24
    iput-object p2, p0, Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;->mScanCallback:Lcom/fimi/kernel/connect/ble/scanner/SimpleScanCallback;

    .line 25
    const-string v1, "bluetooth"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 26
    .local v0, "bluetoothMgr":Landroid/bluetooth/BluetoothManager;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;->mBluetooth:Landroid/bluetooth/BluetoothAdapter;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;)Lcom/fimi/kernel/connect/ble/scanner/SimpleScanCallback;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;->mScanCallback:Lcom/fimi/kernel/connect/ble/scanner/SimpleScanCallback;

    return-object v0
.end method


# virtual methods
.method public onBleScanFailed(Lcom/fimi/kernel/connect/ble/scanner/BleScanState;)V
    .locals 1
    .param p1, "scanState"    # Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;->mScanCallback:Lcom/fimi/kernel/connect/ble/scanner/SimpleScanCallback;

    invoke-interface {v0, p1}, Lcom/fimi/kernel/connect/ble/scanner/SimpleScanCallback;->onBleScanFailed(Lcom/fimi/kernel/connect/ble/scanner/BleScanState;)V

    .line 74
    return-void
.end method

.method public onStartBleScan()V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;->mBluetooth:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;->mBluetooth:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;->isScanning:Z

    .line 56
    sget-object v0, Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBluetooth.startLeScan() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;->isScanning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;->mScanCallback:Lcom/fimi/kernel/connect/ble/scanner/SimpleScanCallback;

    sget-object v1, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;->BLUETOOTH_OFF:Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    invoke-interface {v0, v1}, Lcom/fimi/kernel/connect/ble/scanner/SimpleScanCallback;->onBleScanFailed(Lcom/fimi/kernel/connect/ble/scanner/BleScanState;)V

    goto :goto_0
.end method

.method public onStartBleScan(J)V
    .locals 5
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 41
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x2710

    .line 42
    .local v0, "delay":J
    :goto_0
    iget-object v2, p0, Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;->mBluetooth:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_1

    .line 43
    iget-object v2, p0, Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;->mBluetooth:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;->isScanning:Z

    .line 44
    iget-object v2, p0, Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;->timeoutHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    sget-object v2, Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBluetooth.startLeScan() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;->isScanning:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_1
    return-void

    .end local v0    # "delay":J
    :cond_0
    move-wide v0, p1

    .line 41
    goto :goto_0

    .line 47
    .restart local v0    # "delay":J
    :cond_1
    iget-object v2, p0, Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;->mScanCallback:Lcom/fimi/kernel/connect/ble/scanner/SimpleScanCallback;

    sget-object v3, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;->BLUETOOTH_OFF:Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    invoke-interface {v2, v3}, Lcom/fimi/kernel/connect/ble/scanner/SimpleScanCallback;->onBleScanFailed(Lcom/fimi/kernel/connect/ble/scanner/BleScanState;)V

    goto :goto_1
.end method

.method public onStopBleScan()V
    .locals 2

    .prologue
    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;->isScanning:Z

    .line 66
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;->mBluetooth:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;->mBluetooth:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 69
    :cond_0
    return-void
.end method
