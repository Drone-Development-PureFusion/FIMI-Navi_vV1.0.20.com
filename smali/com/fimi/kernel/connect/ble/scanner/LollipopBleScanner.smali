.class public Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;
.super Lcom/fimi/kernel/connect/ble/scanner/BaseBleScanner;
.source "LollipopBleScanner.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothScanner:Landroid/bluetooth/le/BluetoothLeScanner;

.field private mScanCallback:Lcom/fimi/kernel/connect/ble/scanner/SimpleScanCallback;

.field private scanCallback:Landroid/bluetooth/le/ScanCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/fimi/kernel/connect/ble/scanner/SimpleScanCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/fimi/kernel/connect/ble/scanner/SimpleScanCallback;

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/fimi/kernel/connect/ble/scanner/BaseBleScanner;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->mBluetoothScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 27
    iput-object v0, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 28
    iput-object v0, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->mScanCallback:Lcom/fimi/kernel/connect/ble/scanner/SimpleScanCallback;

    .line 94
    new-instance v0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner$1;

    invoke-direct {v0, p0}, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner$1;-><init>(Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;)V

    iput-object v0, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->scanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 31
    iput-object p1, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->mScanCallback:Lcom/fimi/kernel/connect/ble/scanner/SimpleScanCallback;

    .line 32
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 33
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->mBluetoothScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 36
    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;)Lcom/fimi/kernel/connect/ble/scanner/SimpleScanCallback;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->mScanCallback:Lcom/fimi/kernel/connect/ble/scanner/SimpleScanCallback;

    return-object v0
.end method


# virtual methods
.method public onBleScanFailed(Lcom/fimi/kernel/connect/ble/scanner/BleScanState;)V
    .locals 1
    .param p1, "scanState"    # Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->mScanCallback:Lcom/fimi/kernel/connect/ble/scanner/SimpleScanCallback;

    invoke-interface {v0, p1}, Lcom/fimi/kernel/connect/ble/scanner/SimpleScanCallback;->onBleScanFailed(Lcom/fimi/kernel/connect/ble/scanner/BleScanState;)V

    .line 92
    return-void
.end method

.method public onStartBleScan()V
    .locals 3

    .prologue
    .line 60
    iget-object v1, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->mBluetoothScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->mBluetoothScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v2, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->scanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v1, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 63
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->isScanning:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    sget-object v1, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->TAG:Ljava/lang/String;

    const-string v2, "mBluetoothScanner.startScan()"

    invoke-static {v1, v2}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->isScanning:Z

    .line 66
    iget-object v1, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->mScanCallback:Lcom/fimi/kernel/connect/ble/scanner/SimpleScanCallback;

    sget-object v2, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;->BLUETOOTH_OFF:Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    invoke-interface {v1, v2}, Lcom/fimi/kernel/connect/ble/scanner/SimpleScanCallback;->onBleScanFailed(Lcom/fimi/kernel/connect/ble/scanner/BleScanState;)V

    .line 67
    sget-object v1, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fimi/kernel/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->mScanCallback:Lcom/fimi/kernel/connect/ble/scanner/SimpleScanCallback;

    sget-object v2, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;->BLUETOOTH_OFF:Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    invoke-interface {v1, v2}, Lcom/fimi/kernel/connect/ble/scanner/SimpleScanCallback;->onBleScanFailed(Lcom/fimi/kernel/connect/ble/scanner/BleScanState;)V

    goto :goto_0
.end method

.method public onStartBleScan(J)V
    .locals 7
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 41
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-nez v3, :cond_0

    const-wide/16 v0, 0x2710

    .line 42
    .local v0, "delay":J
    :goto_0
    iget-object v3, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->mBluetoothScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 44
    :try_start_0
    iget-object v3, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->mBluetoothScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v4, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->scanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v3, v4}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 45
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->isScanning:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_1
    iget-object v3, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->timeoutHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    :goto_2
    sget-object v3, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->TAG:Ljava/lang/String;

    const-string v4, "mBluetoothScanner.startScan()"

    invoke-static {v3, v4}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void

    .end local v0    # "delay":J
    :cond_0
    move-wide v0, p1

    .line 41
    goto :goto_0

    .line 46
    .restart local v0    # "delay":J
    :catch_0
    move-exception v2

    .line 47
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->isScanning:Z

    .line 48
    sget-object v3, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fimi/kernel/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 52
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v3, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->mScanCallback:Lcom/fimi/kernel/connect/ble/scanner/SimpleScanCallback;

    sget-object v4, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;->BLUETOOTH_OFF:Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    invoke-interface {v3, v4}, Lcom/fimi/kernel/connect/ble/scanner/SimpleScanCallback;->onBleScanFailed(Lcom/fimi/kernel/connect/ble/scanner/BleScanState;)V

    goto :goto_2
.end method

.method public onStopBleScan()V
    .locals 3

    .prologue
    .line 78
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->isScanning:Z

    .line 79
    iget-object v1, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->mBluetoothScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->mBluetoothScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v2, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->scanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v1, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fimi/kernel/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
