.class public final enum Lcom/fimi/album/biz/LocalHandleType$FragmentType;
.super Ljava/lang/Enum;
.source "LocalHandleType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/album/biz/LocalHandleType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FragmentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/album/biz/LocalHandleType$FragmentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/album/biz/LocalHandleType$FragmentType;

.field public static final enum PHOTO:Lcom/fimi/album/biz/LocalHandleType$FragmentType;

.field public static final enum VIDEO:Lcom/fimi/album/biz/LocalHandleType$FragmentType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/fimi/album/biz/LocalHandleType$FragmentType;

    const-string v1, "PHOTO"

    invoke-direct {v0, v1, v2}, Lcom/fimi/album/biz/LocalHandleType$FragmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/album/biz/LocalHandleType$FragmentType;->PHOTO:Lcom/fimi/album/biz/LocalHandleType$FragmentType;

    .line 11
    new-instance v0, Lcom/fimi/album/biz/LocalHandleType$FragmentType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v3}, Lcom/fimi/album/biz/LocalHandleType$FragmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/album/biz/LocalHandleType$FragmentType;->VIDEO:Lcom/fimi/album/biz/LocalHandleType$FragmentType;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fimi/album/biz/LocalHandleType$FragmentType;

    sget-object v1, Lcom/fimi/album/biz/LocalHandleType$FragmentType;->PHOTO:Lcom/fimi/album/biz/LocalHandleType$FragmentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/album/biz/LocalHandleType$FragmentType;->VIDEO:Lcom/fimi/album/biz/LocalHandleType$FragmentType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fimi/album/biz/LocalHandleType$FragmentType;->$VALUES:[Lcom/fimi/album/biz/LocalHandleType$FragmentType;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/album/biz/LocalHandleType$FragmentType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/fimi/album/biz/LocalHandleType$FragmentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/album/biz/LocalHandleType$FragmentType;

    return-object v0
.end method

.method public static values()[Lcom/fimi/album/biz/LocalHandleType$FragmentType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/fimi/album/biz/LocalHandleType$FragmentType;->$VALUES:[Lcom/fimi/album/biz/LocalHandleType$FragmentType;

    invoke-virtual {v0}, [Lcom/fimi/album/biz/LocalHandleType$FragmentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/album/biz/LocalHandleType$FragmentType;

    return-object v0
.end method
