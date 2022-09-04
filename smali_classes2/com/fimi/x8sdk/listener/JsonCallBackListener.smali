.class public interface abstract Lcom/fimi/x8sdk/listener/JsonCallBackListener;
.super Ljava/lang/Object;
.source "JsonCallBackListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onFail(IILjava/lang/String;)V
.end method

.method public abstract onJSONSuccess(Lcom/alibaba/fastjson/JSONObject;)V
.end method

.method public abstract onSuccess(Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract outTime()V
.end method
