.class public final enum Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;
.super Ljava/lang/Enum;
.source "PanoramaPhotographType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;

.field public static final enum PANORAMA_TYPE_LEVEL:Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;

.field public static final enum PANORAMA_TYPE_RIGHT_ANGLE:Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;

.field public static final enum PANORAMA_TYPE_WIDE:Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;

    const-string v1, "PANORAMA_TYPE_LEVEL"

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;->PANORAMA_TYPE_LEVEL:Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;

    .line 10
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;

    const-string v1, "PANORAMA_TYPE_RIGHT_ANGLE"

    invoke-direct {v0, v1, v3}, Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;->PANORAMA_TYPE_RIGHT_ANGLE:Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;

    .line 11
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;

    const-string v1, "PANORAMA_TYPE_WIDE"

    invoke-direct {v0, v1, v4}, Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;->PANORAMA_TYPE_WIDE:Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;->PANORAMA_TYPE_LEVEL:Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;->PANORAMA_TYPE_RIGHT_ANGLE:Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;->PANORAMA_TYPE_WIDE:Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;->$VALUES:[Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;

    return-object v0
.end method

.method public static values()[Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;->$VALUES:[Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;

    invoke-virtual {v0}, [Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/x8sdk/cmdsenum/PanoramaPhotographType;

    return-object v0
.end method
