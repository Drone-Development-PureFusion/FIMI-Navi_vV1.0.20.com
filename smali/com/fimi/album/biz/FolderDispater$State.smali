.class final enum Lcom/fimi/album/biz/FolderDispater$State;
.super Ljava/lang/Enum;
.source "FolderDispater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/album/biz/FolderDispater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/album/biz/FolderDispater$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/album/biz/FolderDispater$State;

.field public static final enum ALL:Lcom/fimi/album/biz/FolderDispater$State;

.field public static final enum PHOTO:Lcom/fimi/album/biz/FolderDispater$State;

.field public static final enum VIDEO:Lcom/fimi/album/biz/FolderDispater$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v0, Lcom/fimi/album/biz/FolderDispater$State;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v2}, Lcom/fimi/album/biz/FolderDispater$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/album/biz/FolderDispater$State;->ALL:Lcom/fimi/album/biz/FolderDispater$State;

    new-instance v0, Lcom/fimi/album/biz/FolderDispater$State;

    const-string v1, "PHOTO"

    invoke-direct {v0, v1, v3}, Lcom/fimi/album/biz/FolderDispater$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/album/biz/FolderDispater$State;->PHOTO:Lcom/fimi/album/biz/FolderDispater$State;

    new-instance v0, Lcom/fimi/album/biz/FolderDispater$State;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/fimi/album/biz/FolderDispater$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/album/biz/FolderDispater$State;->VIDEO:Lcom/fimi/album/biz/FolderDispater$State;

    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fimi/album/biz/FolderDispater$State;

    sget-object v1, Lcom/fimi/album/biz/FolderDispater$State;->ALL:Lcom/fimi/album/biz/FolderDispater$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/album/biz/FolderDispater$State;->PHOTO:Lcom/fimi/album/biz/FolderDispater$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/album/biz/FolderDispater$State;->VIDEO:Lcom/fimi/album/biz/FolderDispater$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fimi/album/biz/FolderDispater$State;->$VALUES:[Lcom/fimi/album/biz/FolderDispater$State;

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
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/album/biz/FolderDispater$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 70
    const-class v0, Lcom/fimi/album/biz/FolderDispater$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/album/biz/FolderDispater$State;

    return-object v0
.end method

.method public static values()[Lcom/fimi/album/biz/FolderDispater$State;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/fimi/album/biz/FolderDispater$State;->$VALUES:[Lcom/fimi/album/biz/FolderDispater$State;

    invoke-virtual {v0}, [Lcom/fimi/album/biz/FolderDispater$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/album/biz/FolderDispater$State;

    return-object v0
.end method
