.class public final enum Lcom/fimi/album/entity/MediaModel$recordType;
.super Ljava/lang/Enum;
.source "MediaModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/album/entity/MediaModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "recordType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/album/entity/MediaModel$recordType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/album/entity/MediaModel$recordType;

.field public static final enum delay_record:Lcom/fimi/album/entity/MediaModel$recordType;

.field public static final enum dynamic_delay_record:Lcom/fimi/album/entity/MediaModel$recordType;

.field public static final enum normal_record:Lcom/fimi/album/entity/MediaModel$recordType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    new-instance v0, Lcom/fimi/album/entity/MediaModel$recordType;

    const-string v1, "normal_record"

    invoke-direct {v0, v1, v2}, Lcom/fimi/album/entity/MediaModel$recordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/album/entity/MediaModel$recordType;->normal_record:Lcom/fimi/album/entity/MediaModel$recordType;

    new-instance v0, Lcom/fimi/album/entity/MediaModel$recordType;

    const-string v1, "delay_record"

    invoke-direct {v0, v1, v3}, Lcom/fimi/album/entity/MediaModel$recordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/album/entity/MediaModel$recordType;->delay_record:Lcom/fimi/album/entity/MediaModel$recordType;

    new-instance v0, Lcom/fimi/album/entity/MediaModel$recordType;

    const-string v1, "dynamic_delay_record"

    invoke-direct {v0, v1, v4}, Lcom/fimi/album/entity/MediaModel$recordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/album/entity/MediaModel$recordType;->dynamic_delay_record:Lcom/fimi/album/entity/MediaModel$recordType;

    .line 97
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fimi/album/entity/MediaModel$recordType;

    sget-object v1, Lcom/fimi/album/entity/MediaModel$recordType;->normal_record:Lcom/fimi/album/entity/MediaModel$recordType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/album/entity/MediaModel$recordType;->delay_record:Lcom/fimi/album/entity/MediaModel$recordType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/album/entity/MediaModel$recordType;->dynamic_delay_record:Lcom/fimi/album/entity/MediaModel$recordType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fimi/album/entity/MediaModel$recordType;->$VALUES:[Lcom/fimi/album/entity/MediaModel$recordType;

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
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/album/entity/MediaModel$recordType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 97
    const-class v0, Lcom/fimi/album/entity/MediaModel$recordType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/album/entity/MediaModel$recordType;

    return-object v0
.end method

.method public static values()[Lcom/fimi/album/entity/MediaModel$recordType;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/fimi/album/entity/MediaModel$recordType;->$VALUES:[Lcom/fimi/album/entity/MediaModel$recordType;

    invoke-virtual {v0}, [Lcom/fimi/album/entity/MediaModel$recordType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/album/entity/MediaModel$recordType;

    return-object v0
.end method
