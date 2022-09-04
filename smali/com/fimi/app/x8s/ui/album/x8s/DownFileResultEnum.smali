.class public final enum Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;
.super Ljava/lang/Enum;
.source "DownFileResultEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;

.field public static final enum Fail:Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;

.field public static final enum Stop:Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;

.field public static final enum Success:Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;

    const-string v1, "Stop"

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;->Stop:Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;

    new-instance v0, Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;

    const-string v1, "Success"

    invoke-direct {v0, v1, v3}, Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;->Success:Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;

    new-instance v0, Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;

    const-string v1, "Fail"

    invoke-direct {v0, v1, v4}, Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;->Fail:Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;

    sget-object v1, Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;->Stop:Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;->Success:Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;->Fail:Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;->$VALUES:[Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;

    return-object v0
.end method

.method public static values()[Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;->$VALUES:[Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;

    invoke-virtual {v0}, [Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;

    return-object v0
.end method
