.class public Lcom/fimi/kernel/connect/DataUiHanler;
.super Landroid/os/Handler;
.source "DataUiHanler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 18
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 19
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

    .line 20
    .local v2, "callBack":Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 30
    :goto_0
    return-void

    .line 22
    :pswitch_0
    const-string v4, "target"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/fimi/kernel/dataparser/ILinkMessage;

    .line 23
    .local v3, "lk":Lcom/fimi/kernel/dataparser/ILinkMessage;
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v4, v5, v3}, Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;->onPersonalDataCallBack(IILcom/fimi/kernel/dataparser/ILinkMessage;)V

    goto :goto_0

    .line 26
    .end local v3    # "lk":Lcom/fimi/kernel/dataparser/ILinkMessage;
    :pswitch_1
    const-string v4, "target"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/connect/BaseCommand;

    .line 27
    .local v0, "bcd":Lcom/fimi/kernel/connect/BaseCommand;
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v4, v5, v0}, Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;->onPersonalSendTimeOut(IILcom/fimi/kernel/connect/BaseCommand;)V

    goto :goto_0

    .line 20
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
