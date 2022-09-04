.class public final enum Lcom/fimi/soul/media/player/FermiMediaPlayerType;
.super Ljava/lang/Enum;
.source "FermiMediaPlayerType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/soul/media/player/FermiMediaPlayerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/soul/media/player/FermiMediaPlayerType;

.field public static final enum FimiMediaPlayer:Lcom/fimi/soul/media/player/FermiMediaPlayerType;

.field public static final enum SystemMediaPlayer:Lcom/fimi/soul/media/player/FermiMediaPlayerType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/fimi/soul/media/player/FermiMediaPlayerType;

    const-string v1, "SystemMediaPlayer"

    invoke-direct {v0, v1, v2}, Lcom/fimi/soul/media/player/FermiMediaPlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/soul/media/player/FermiMediaPlayerType;->SystemMediaPlayer:Lcom/fimi/soul/media/player/FermiMediaPlayerType;

    .line 17
    new-instance v0, Lcom/fimi/soul/media/player/FermiMediaPlayerType;

    const-string v1, "FimiMediaPlayer"

    invoke-direct {v0, v1, v3}, Lcom/fimi/soul/media/player/FermiMediaPlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/soul/media/player/FermiMediaPlayerType;->FimiMediaPlayer:Lcom/fimi/soul/media/player/FermiMediaPlayerType;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fimi/soul/media/player/FermiMediaPlayerType;

    sget-object v1, Lcom/fimi/soul/media/player/FermiMediaPlayerType;->SystemMediaPlayer:Lcom/fimi/soul/media/player/FermiMediaPlayerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/soul/media/player/FermiMediaPlayerType;->FimiMediaPlayer:Lcom/fimi/soul/media/player/FermiMediaPlayerType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fimi/soul/media/player/FermiMediaPlayerType;->$VALUES:[Lcom/fimi/soul/media/player/FermiMediaPlayerType;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/soul/media/player/FermiMediaPlayerType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/fimi/soul/media/player/FermiMediaPlayerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/soul/media/player/FermiMediaPlayerType;

    return-object v0
.end method

.method public static values()[Lcom/fimi/soul/media/player/FermiMediaPlayerType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/fimi/soul/media/player/FermiMediaPlayerType;->$VALUES:[Lcom/fimi/soul/media/player/FermiMediaPlayerType;

    invoke-virtual {v0}, [Lcom/fimi/soul/media/player/FermiMediaPlayerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/soul/media/player/FermiMediaPlayerType;

    return-object v0
.end method
