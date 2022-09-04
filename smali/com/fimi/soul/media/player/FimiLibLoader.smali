.class public interface abstract Lcom/fimi/soul/media/player/FimiLibLoader;
.super Ljava/lang/Object;
.source "FimiLibLoader.java"


# virtual methods
.method public abstract loadLibrary(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method
