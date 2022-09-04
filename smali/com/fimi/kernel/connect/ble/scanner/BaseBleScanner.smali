.class public abstract Lcom/fimi/kernel/connect/ble/scanner/BaseBleScanner;
.super Ljava/lang/Object;
.source "BaseBleScanner.java"


# static fields
.field public static final defaultTimeout:J = 0x2710L


# instance fields
.field protected isScanning:Z

.field protected timeoutHandler:Landroid/os/Handler;

.field protected timeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fimi/kernel/connect/ble/scanner/BaseBleScanner;->timeoutHandler:Landroid/os/Handler;

    .line 21
    new-instance v0, Lcom/fimi/kernel/connect/ble/scanner/BaseBleScanner$1;

    invoke-direct {v0, p0}, Lcom/fimi/kernel/connect/ble/scanner/BaseBleScanner$1;-><init>(Lcom/fimi/kernel/connect/ble/scanner/BaseBleScanner;)V

    iput-object v0, p0, Lcom/fimi/kernel/connect/ble/scanner/BaseBleScanner;->timeoutRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public abstract onBleScanFailed(Lcom/fimi/kernel/connect/ble/scanner/BleScanState;)V
.end method

.method public abstract onStartBleScan()V
.end method

.method public abstract onStartBleScan(J)V
.end method

.method public abstract onStopBleScan()V
.end method
