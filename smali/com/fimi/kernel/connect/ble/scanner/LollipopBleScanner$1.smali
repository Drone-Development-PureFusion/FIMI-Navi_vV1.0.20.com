.class Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner$1;
.super Landroid/bluetooth/le/ScanCallback;
.source "LollipopBleScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;


# direct methods
.method constructor <init>(Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner$1;->this$0:Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    invoke-super {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onBatchScanResults(Ljava/util/List;)V

    .line 107
    invoke-static {}, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBatchScanResults()"

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public onScanFailed(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 113
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 114
    invoke-static {}, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScanFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner$1;->this$0:Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;

    invoke-static {v0}, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->access$100(Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;)Lcom/fimi/kernel/connect/ble/scanner/SimpleScanCallback;

    move-result-object v0

    invoke-static {p1}, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;->newInstance(I)Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fimi/kernel/connect/ble/scanner/SimpleScanCallback;->onBleScanFailed(Lcom/fimi/kernel/connect/ble/scanner/BleScanState;)V

    .line 117
    :cond_0
    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 4
    .param p1, "callbackType"    # I
    .param p2, "result"    # Landroid/bluetooth/le/ScanResult;

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Landroid/bluetooth/le/ScanCallback;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V

    .line 98
    invoke-static {}, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScanResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ScanResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner$1;->this$0:Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;

    invoke-static {v0}, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;->access$100(Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;)Lcom/fimi/kernel/connect/ble/scanner/SimpleScanCallback;

    move-result-object v0

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v2

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/fimi/kernel/connect/ble/scanner/SimpleScanCallback;->onBleScan(Landroid/bluetooth/BluetoothDevice;I[B)V

    .line 102
    :cond_0
    return-void
.end method
