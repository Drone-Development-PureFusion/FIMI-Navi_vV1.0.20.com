.class public Lcom/fimi/album/biz/X9HandleType;
.super Ljava/lang/Object;
.source "X9HandleType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/album/biz/X9HandleType$FragmentType;
    }
.end annotation


# static fields
.field public static fragmentType:Lcom/fimi/album/biz/X9HandleType$FragmentType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/fimi/album/biz/X9HandleType$FragmentType;->CAMERA:Lcom/fimi/album/biz/X9HandleType$FragmentType;

    sput-object v0, Lcom/fimi/album/biz/X9HandleType;->fragmentType:Lcom/fimi/album/biz/X9HandleType$FragmentType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCameraView()Z
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/fimi/album/biz/X9HandleType;->fragmentType:Lcom/fimi/album/biz/X9HandleType$FragmentType;

    sget-object v1, Lcom/fimi/album/biz/X9HandleType$FragmentType;->CAMERA:Lcom/fimi/album/biz/X9HandleType$FragmentType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
