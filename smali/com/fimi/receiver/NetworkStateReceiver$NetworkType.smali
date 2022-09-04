.class public final enum Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;
.super Ljava/lang/Enum;
.source "NetworkStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/receiver/NetworkStateReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;

.field public static final enum Mobile:Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;

.field public static final enum None:Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;

.field public static final enum Wifi:Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;

    const-string v1, "Wifi"

    invoke-direct {v0, v1, v2}, Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;->Wifi:Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;

    new-instance v0, Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;

    const-string v1, "Mobile"

    invoke-direct {v0, v1, v3}, Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;->Mobile:Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;

    new-instance v0, Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;

    const-string v1, "None"

    invoke-direct {v0, v1, v4}, Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;->None:Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;

    sget-object v1, Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;->Wifi:Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;->Mobile:Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;->None:Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;->$VALUES:[Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;

    return-object v0
.end method

.method public static values()[Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;->$VALUES:[Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;

    invoke-virtual {v0}, [Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;

    return-object v0
.end method
