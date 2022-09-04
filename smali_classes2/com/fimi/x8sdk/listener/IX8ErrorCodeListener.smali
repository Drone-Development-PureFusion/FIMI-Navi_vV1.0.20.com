.class public interface abstract Lcom/fimi/x8sdk/listener/IX8ErrorCodeListener;
.super Ljava/lang/Object;
.source "IX8ErrorCodeListener.java"


# virtual methods
.method public abstract cloudUnMountError(Z)V
.end method

.method public abstract onErrorCode(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;",
            ">;)V"
        }
    .end annotation
.end method
