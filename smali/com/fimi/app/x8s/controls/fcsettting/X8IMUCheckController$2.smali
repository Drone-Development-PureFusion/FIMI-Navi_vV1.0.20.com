.class Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$2;
.super Ljava/lang/Object;
.source "X8IMUCheckController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->startCheckIMUStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 0
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 71
    return-void
.end method