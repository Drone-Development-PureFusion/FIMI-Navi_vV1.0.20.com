.class Lcom/fimi/kernel/connect/ble/scanner/BaseBleScanner$1;
.super Ljava/lang/Object;
.source "BaseBleScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/kernel/connect/ble/scanner/BaseBleScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/kernel/connect/ble/scanner/BaseBleScanner;


# direct methods
.method constructor <init>(Lcom/fimi/kernel/connect/ble/scanner/BaseBleScanner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/kernel/connect/ble/scanner/BaseBleScanner;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/fimi/kernel/connect/ble/scanner/BaseBleScanner$1;->this$0:Lcom/fimi/kernel/connect/ble/scanner/BaseBleScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/scanner/BaseBleScanner$1;->this$0:Lcom/fimi/kernel/connect/ble/scanner/BaseBleScanner;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/ble/scanner/BaseBleScanner;->onStopBleScan()V

    .line 25
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/scanner/BaseBleScanner$1;->this$0:Lcom/fimi/kernel/connect/ble/scanner/BaseBleScanner;

    sget-object v1, Lcom/fimi/kernel/connect/ble/scanner/BleScanState;->SCAN_TIMEOUT:Lcom/fimi/kernel/connect/ble/scanner/BleScanState;

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/connect/ble/scanner/BaseBleScanner;->onBleScanFailed(Lcom/fimi/kernel/connect/ble/scanner/BleScanState;)V

    .line 26
    return-void
.end method
