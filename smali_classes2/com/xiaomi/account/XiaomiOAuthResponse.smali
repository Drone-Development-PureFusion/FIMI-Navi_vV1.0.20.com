.class public Lcom/xiaomi/account/XiaomiOAuthResponse;
.super Ljava/lang/Object;
.source "XiaomiOAuthResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/account/XiaomiOAuthResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mResponse:Lcom/xiaomi/account/IXiaomiAuthResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/xiaomi/account/XiaomiOAuthResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/account/XiaomiOAuthResponse;->TAG:Ljava/lang/String;

    .line 49
    new-instance v0, Lcom/xiaomi/account/XiaomiOAuthResponse$1;

    invoke-direct {v0}, Lcom/xiaomi/account/XiaomiOAuthResponse$1;-><init>()V

    sput-object v0, Lcom/xiaomi/account/XiaomiOAuthResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/account/IXiaomiAuthResponse$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/account/IXiaomiAuthResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/XiaomiOAuthResponse;->mResponse:Lcom/xiaomi/account/IXiaomiAuthResponse;

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/account/IXiaomiAuthResponse;)V
    .locals 0
    .param p1, "response"    # Lcom/xiaomi/account/IXiaomiAuthResponse;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/xiaomi/account/XiaomiOAuthResponse;->mResponse:Lcom/xiaomi/account/IXiaomiAuthResponse;

    .line 18
    return-void
.end method

.method public static setIXiaomiAuthResponseCancel(Lcom/xiaomi/account/IXiaomiAuthResponse;)V
    .locals 3
    .param p0, "response"    # Lcom/xiaomi/account/IXiaomiAuthResponse;

    .prologue
    .line 91
    if-nez p0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 96
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/xiaomi/account/IXiaomiAuthResponse;->onCancel()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/xiaomi/account/XiaomiOAuthResponse;->TAG:Ljava/lang/String;

    const-string v2, "RuntimeException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 100
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 101
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/xiaomi/account/XiaomiOAuthResponse;->TAG:Ljava/lang/String;

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setIXiaomiAuthResponseResult(Lcom/xiaomi/account/IXiaomiAuthResponse;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "response"    # Lcom/xiaomi/account/IXiaomiAuthResponse;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 62
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    :try_start_0
    invoke-interface {p0, p1}, Lcom/xiaomi/account/IXiaomiAuthResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 68
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/RuntimeException;
    sget-object v3, Lcom/xiaomi/account/XiaomiOAuthResponse;->TAG:Ljava/lang/String;

    const-string v4, "RemoteException"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v0, "bundle1":Landroid/os/Bundle;
    const-string v3, "extra_error_code"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    const-string v3, "extra_error_description"

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :try_start_1
    invoke-interface {p0, v0}, Lcom/xiaomi/account/IXiaomiAuthResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 78
    :catch_1
    move-exception v2

    .line 80
    .local v2, "e1":Ljava/lang/RuntimeException;
    sget-object v3, Lcom/xiaomi/account/XiaomiOAuthResponse;->TAG:Ljava/lang/String;

    const-string v4, "RuntimeException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 81
    .end local v2    # "e1":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v2

    .line 82
    .local v2, "e1":Landroid/os/RemoteException;
    sget-object v3, Lcom/xiaomi/account/XiaomiOAuthResponse;->TAG:Ljava/lang/String;

    const-string v4, "RemoteException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 84
    .end local v0    # "bundle1":Landroid/os/Bundle;
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "e1":Landroid/os/RemoteException;
    :catch_3
    move-exception v1

    .line 85
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/xiaomi/account/XiaomiOAuthResponse;->TAG:Ljava/lang/String;

    const-string v4, "RemoteException"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/xiaomi/account/XiaomiOAuthResponse;->mResponse:Lcom/xiaomi/account/IXiaomiAuthResponse;

    invoke-static {v0}, Lcom/xiaomi/account/XiaomiOAuthResponse;->setIXiaomiAuthResponseCancel(Lcom/xiaomi/account/IXiaomiAuthResponse;)V

    .line 47
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "extra_error_code"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    const-string v1, "extra_error_description"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/xiaomi/account/XiaomiOAuthResponse;->mResponse:Lcom/xiaomi/account/IXiaomiAuthResponse;

    invoke-static {v1, v0}, Lcom/xiaomi/account/XiaomiOAuthResponse;->setIXiaomiAuthResponseResult(Lcom/xiaomi/account/IXiaomiAuthResponse;Landroid/os/Bundle;)V

    .line 43
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/xiaomi/account/XiaomiOAuthResponse;->mResponse:Lcom/xiaomi/account/IXiaomiAuthResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/account/XiaomiOAuthResponse;->setIXiaomiAuthResponseResult(Lcom/xiaomi/account/IXiaomiAuthResponse;Landroid/os/Bundle;)V

    .line 36
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lcom/xiaomi/account/XiaomiOAuthResponse;->mResponse:Lcom/xiaomi/account/IXiaomiAuthResponse;

    invoke-interface {v0}, Lcom/xiaomi/account/IXiaomiAuthResponse;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 32
    return-void
.end method
