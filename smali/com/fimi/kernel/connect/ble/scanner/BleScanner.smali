.class public Lcom/fimi/kernel/connect/ble/scanner/BleScanner;
.super Ljava/lang/Object;
.source "BleScanner.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public bleScanner:Lcom/fimi/kernel/connect/ble/scanner/BaseBleScanner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/fimi/kernel/connect/ble/scanner/BleScanner;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fimi/kernel/connect/ble/scanner/BleScanner;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/fimi/kernel/connect/ble/scanner/SimpleScanCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/fimi/kernel/connect/ble/scanner/SimpleScanCallback;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 17
    new-instance v0, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;

    invoke-direct {v0, p2}, Lcom/fimi/kernel/connect/ble/scanner/LollipopBleScanner;-><init>(Lcom/fimi/kernel/connect/ble/scanner/SimpleScanCallback;)V

    iput-object v0, p0, Lcom/fimi/kernel/connect/ble/scanner/BleScanner;->bleScanner:Lcom/fimi/kernel/connect/ble/scanner/BaseBleScanner;

    .line 21
    :goto_0
    return-void

    .line 19
    :cond_0
    new-instance v0, Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;

    invoke-direct {v0, p1, p2}, Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;-><init>(Landroid/content/Context;Lcom/fimi/kernel/connect/ble/scanner/SimpleScanCallback;)V

    iput-object v0, p0, Lcom/fimi/kernel/connect/ble/scanner/BleScanner;->bleScanner:Lcom/fimi/kernel/connect/ble/scanner/BaseBleScanner;

    goto :goto_0
.end method


# virtual methods
.method public isScanning()Z
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/scanner/BleScanner;->bleScanner:Lcom/fimi/kernel/connect/ble/scanner/BaseBleScanner;

    iget-boolean v0, v0, Lcom/fimi/kernel/connect/ble/scanner/BaseBleScanner;->isScanning:Z

    return v0
.end method

.method public startBleScan()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/scanner/BleScanner;->bleScanner:Lcom/fimi/kernel/connect/ble/scanner/BaseBleScanner;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/ble/scanner/BaseBleScanner;->onStartBleScan()V

    .line 30
    return-void
.end method

.method public startBleScan(J)V
    .locals 1
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/scanner/BleScanner;->bleScanner:Lcom/fimi/kernel/connect/ble/scanner/BaseBleScanner;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/kernel/connect/ble/scanner/BaseBleScanner;->onStartBleScan(J)V

    .line 34
    return-void
.end method

.method public stopBleScan()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/scanner/BleScanner;->bleScanner:Lcom/fimi/kernel/connect/ble/scanner/BaseBleScanner;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/ble/scanner/BaseBleScanner;->onStopBleScan()V

    .line 37
    return-void
.end method
