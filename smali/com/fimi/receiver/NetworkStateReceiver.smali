.class public abstract Lcom/fimi/receiver/NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECTIVITY_CHANGE:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field public static final ACTION_WIFISTATE_CHANGE:Ljava/lang/String; = "android.net.wifi.STATE_CHANGE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isNetworkConnected(Landroid/net/NetworkInfo$State;)Z
    .locals 1
    .param p1, "state"    # Landroid/net/NetworkInfo$State;

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 57
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, p1, :cond_0

    .line 58
    const/4 v0, 0x1

    .line 61
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract onNetworkStateChange(Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;Landroid/content/Context;)V
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 26
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 28
    :cond_0
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 29
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 30
    .local v2, "wifiState":Landroid/net/NetworkInfo$State;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    if-nez v3, :cond_2

    .line 47
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "wifiState":Landroid/net/NetworkInfo$State;
    :cond_1
    :goto_0
    return-void

    .line 33
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    .restart local v2    # "wifiState":Landroid/net/NetworkInfo$State;
    :cond_2
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 35
    .local v1, "mobileState":Landroid/net/NetworkInfo$State;
    invoke-direct {p0, v2}, Lcom/fimi/receiver/NetworkStateReceiver;->isNetworkConnected(Landroid/net/NetworkInfo$State;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 36
    sget-object v3, Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;->Wifi:Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;

    invoke-virtual {p0, v3, p1}, Lcom/fimi/receiver/NetworkStateReceiver;->onNetworkStateChange(Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;Landroid/content/Context;)V

    goto :goto_0

    .line 40
    :cond_3
    invoke-direct {p0, v1}, Lcom/fimi/receiver/NetworkStateReceiver;->isNetworkConnected(Landroid/net/NetworkInfo$State;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 41
    sget-object v3, Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;->Mobile:Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;

    invoke-virtual {p0, v3, p1}, Lcom/fimi/receiver/NetworkStateReceiver;->onNetworkStateChange(Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;Landroid/content/Context;)V

    goto :goto_0

    .line 45
    :cond_4
    sget-object v3, Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;->None:Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;

    invoke-virtual {p0, v3, p1}, Lcom/fimi/receiver/NetworkStateReceiver;->onNetworkStateChange(Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;Landroid/content/Context;)V

    goto :goto_0
.end method
