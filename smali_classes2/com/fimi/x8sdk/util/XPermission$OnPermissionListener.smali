.class public interface abstract Lcom/fimi/x8sdk/util/XPermission$OnPermissionListener;
.super Ljava/lang/Object;
.source "XPermission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x8sdk/util/XPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPermissionListener"
.end annotation


# virtual methods
.method public abstract onPermissionDenied()V
.end method

.method public abstract onPermissionGranted()V
.end method
