.class public Lcom/fimi/album/biz/LocalHandleType;
.super Ljava/lang/Object;
.source "LocalHandleType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/album/biz/LocalHandleType$FragmentType;
    }
.end annotation


# static fields
.field public static fragmentType:Lcom/fimi/album/biz/LocalHandleType$FragmentType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/fimi/album/biz/LocalHandleType$FragmentType;->VIDEO:Lcom/fimi/album/biz/LocalHandleType$FragmentType;

    sput-object v0, Lcom/fimi/album/biz/LocalHandleType;->fragmentType:Lcom/fimi/album/biz/LocalHandleType$FragmentType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPhoto()Z
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/fimi/album/biz/LocalHandleType;->fragmentType:Lcom/fimi/album/biz/LocalHandleType$FragmentType;

    sget-object v1, Lcom/fimi/album/biz/LocalHandleType$FragmentType;->PHOTO:Lcom/fimi/album/biz/LocalHandleType$FragmentType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
