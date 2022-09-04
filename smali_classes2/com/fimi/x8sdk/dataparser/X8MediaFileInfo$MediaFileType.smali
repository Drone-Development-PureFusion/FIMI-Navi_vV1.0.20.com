.class public final enum Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;
.super Ljava/lang/Enum;
.source "X8MediaFileInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaFileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;

.field public static final enum NormalFile:Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;

.field public static final enum RootFile:Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;

    const-string v1, "RootFile"

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;->RootFile:Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;

    new-instance v0, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;

    const-string v1, "NormalFile"

    invoke-direct {v0, v1, v3}, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;->NormalFile:Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;

    sget-object v1, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;->RootFile:Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;->NormalFile:Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;->$VALUES:[Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;

    return-object v0
.end method

.method public static values()[Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;->$VALUES:[Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;

    invoke-virtual {v0}, [Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;

    return-object v0
.end method
