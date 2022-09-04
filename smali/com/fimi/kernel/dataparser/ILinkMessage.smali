.class public abstract Lcom/fimi/kernel/dataparser/ILinkMessage;
.super Ljava/lang/Object;
.source "ILinkMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMsgRpt()I
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
.end method

.method public abstract setUiCallBack(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method
