.class public final enum Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatType;
.super Ljava/lang/Enum;
.source "X8Format.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x8sdk/cmdsenum/X8Format;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FormatType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatType;

.field public static final enum FORMAT_LOWER:Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatType;

.field public static final enum FORMAT_SENIOR:Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatType;

    const-string v1, "FORMAT_LOWER"

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatType;->FORMAT_LOWER:Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatType;

    .line 11
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatType;

    const-string v1, "FORMAT_SENIOR"

    invoke-direct {v0, v1, v3}, Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatType;->FORMAT_SENIOR:Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatType;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatType;

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatType;->FORMAT_LOWER:Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatType;->FORMAT_SENIOR:Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatType;->$VALUES:[Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatType;

    return-object v0
.end method

.method public static values()[Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatType;->$VALUES:[Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatType;

    invoke-virtual {v0}, [Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/x8sdk/cmdsenum/X8Format$FormatType;

    return-object v0
.end method
