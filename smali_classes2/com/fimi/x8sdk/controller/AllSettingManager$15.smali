.class Lcom/fimi/x8sdk/controller/AllSettingManager$15;
.super Ljava/lang/Object;
.source "AllSettingManager.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/x8sdk/controller/AllSettingManager;->getAllSetting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fimi/kernel/dataparser/usb/UiCallBackListener",
        "<",
        "Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/x8sdk/controller/AllSettingManager;


# direct methods
.method constructor <init>(Lcom/fimi/x8sdk/controller/AllSettingManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/x8sdk/controller/AllSettingManager;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/fimi/x8sdk/controller/AllSettingManager$15;->this$0:Lcom/fimi/x8sdk/controller/AllSettingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;)V
    .locals 0
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "sensitivity"    # Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;

    .prologue
    .line 170
    return-void
.end method

.method public bridge synthetic onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 166
    check-cast p2, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/x8sdk/controller/AllSettingManager$15;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;)V

    return-void
.end method
