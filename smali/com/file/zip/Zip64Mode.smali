.class public final enum Lcom/file/zip/Zip64Mode;
.super Ljava/lang/Enum;
.source "Zip64Mode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/file/zip/Zip64Mode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Always:Lcom/file/zip/Zip64Mode;

.field public static final enum AsNeeded:Lcom/file/zip/Zip64Mode;

.field private static final synthetic ENUM$VALUES:[Lcom/file/zip/Zip64Mode;

.field public static final enum Never:Lcom/file/zip/Zip64Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/file/zip/Zip64Mode;

    const-string v1, "Always"

    invoke-direct {v0, v1, v2}, Lcom/file/zip/Zip64Mode;-><init>(Ljava/lang/String;I)V

    .line 33
    sput-object v0, Lcom/file/zip/Zip64Mode;->Always:Lcom/file/zip/Zip64Mode;

    .line 34
    new-instance v0, Lcom/file/zip/Zip64Mode;

    const-string v1, "Never"

    invoke-direct {v0, v1, v3}, Lcom/file/zip/Zip64Mode;-><init>(Ljava/lang/String;I)V

    .line 41
    sput-object v0, Lcom/file/zip/Zip64Mode;->Never:Lcom/file/zip/Zip64Mode;

    .line 42
    new-instance v0, Lcom/file/zip/Zip64Mode;

    const-string v1, "AsNeeded"

    invoke-direct {v0, v1, v4}, Lcom/file/zip/Zip64Mode;-><init>(Ljava/lang/String;I)V

    .line 46
    sput-object v0, Lcom/file/zip/Zip64Mode;->AsNeeded:Lcom/file/zip/Zip64Mode;

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/file/zip/Zip64Mode;

    sget-object v1, Lcom/file/zip/Zip64Mode;->Always:Lcom/file/zip/Zip64Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/file/zip/Zip64Mode;->Never:Lcom/file/zip/Zip64Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/file/zip/Zip64Mode;->AsNeeded:Lcom/file/zip/Zip64Mode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/file/zip/Zip64Mode;->ENUM$VALUES:[Lcom/file/zip/Zip64Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/file/zip/Zip64Mode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/file/zip/Zip64Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/file/zip/Zip64Mode;

    return-object v0
.end method

.method public static values()[Lcom/file/zip/Zip64Mode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/file/zip/Zip64Mode;->ENUM$VALUES:[Lcom/file/zip/Zip64Mode;

    array-length v1, v0

    new-array v2, v1, [Lcom/file/zip/Zip64Mode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
