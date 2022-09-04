.class Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner$1;
.super Ljava/lang/Object;
.source "JellyBeanBleScanner.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;


# direct methods
.method constructor <init>(Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner$1;->this$0:Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner$1;->this$0:Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;

    invoke-static {v0}, Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;->access$000(Lcom/fimi/kernel/connect/ble/scanner/JellyBeanBleScanner;)Lcom/fimi/kernel/connect/ble/scanner/SimpleScanCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/fimi/kernel/connect/ble/scanner/SimpleScanCallback;->onBleScan(Landroid/bluetooth/BluetoothDevice;I[B)V

    .line 33
    return-void
.end method
