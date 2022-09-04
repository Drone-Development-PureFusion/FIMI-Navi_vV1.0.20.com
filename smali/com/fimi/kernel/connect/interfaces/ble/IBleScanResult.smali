.class public interface abstract Lcom/fimi/kernel/connect/interfaces/ble/IBleScanResult;
.super Ljava/lang/Object;
.source "IBleScanResult.java"


# virtual methods
.method public abstract autoConnect(Landroid/bluetooth/BluetoothDevice;)V
.end method

.method public abstract onBleScanResults(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onConnectErro()V
.end method

.method public abstract onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
.end method
