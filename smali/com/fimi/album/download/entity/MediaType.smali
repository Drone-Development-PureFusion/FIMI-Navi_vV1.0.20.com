.class public final enum Lcom/fimi/album/download/entity/MediaType;
.super Ljava/lang/Enum;
.source "MediaType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/album/download/entity/MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/album/download/entity/MediaType;

.field public static final enum ORIGINAL:Lcom/fimi/album/download/entity/MediaType;

.field public static final enum THUM:Lcom/fimi/album/download/entity/MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/fimi/album/download/entity/MediaType;

    const-string v1, "ORIGINAL"

    invoke-direct {v0, v1, v2}, Lcom/fimi/album/download/entity/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/album/download/entity/MediaType;->ORIGINAL:Lcom/fimi/album/download/entity/MediaType;

    new-instance v0, Lcom/fimi/album/download/entity/MediaType;

    const-string v1, "THUM"

    invoke-direct {v0, v1, v3}, Lcom/fimi/album/download/entity/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/album/download/entity/MediaType;->THUM:Lcom/fimi/album/download/entity/MediaType;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fimi/album/download/entity/MediaType;

    sget-object v1, Lcom/fimi/album/download/entity/MediaType;->ORIGINAL:Lcom/fimi/album/download/entity/MediaType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/album/download/entity/MediaType;->THUM:Lcom/fimi/album/download/entity/MediaType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fimi/album/download/entity/MediaType;->$VALUES:[Lcom/fimi/album/download/entity/MediaType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/album/download/entity/MediaType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/fimi/album/download/entity/MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/album/download/entity/MediaType;

    return-object v0
.end method

.method public static values()[Lcom/fimi/album/download/entity/MediaType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/fimi/album/download/entity/MediaType;->$VALUES:[Lcom/fimi/album/download/entity/MediaType;

    invoke-virtual {v0}, [Lcom/fimi/album/download/entity/MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/album/download/entity/MediaType;

    return-object v0
.end method
