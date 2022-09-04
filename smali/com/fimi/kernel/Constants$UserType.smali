.class public final enum Lcom/fimi/kernel/Constants$UserType;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/kernel/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/kernel/Constants$UserType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/kernel/Constants$UserType;

.field public static final enum Guest:Lcom/fimi/kernel/Constants$UserType;

.field public static final enum Ideal:Lcom/fimi/kernel/Constants$UserType;

.field public static final enum Register:Lcom/fimi/kernel/Constants$UserType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/fimi/kernel/Constants$UserType;

    const-string v1, "Ideal"

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/Constants$UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/Constants$UserType;->Ideal:Lcom/fimi/kernel/Constants$UserType;

    new-instance v0, Lcom/fimi/kernel/Constants$UserType;

    const-string v1, "Guest"

    invoke-direct {v0, v1, v3}, Lcom/fimi/kernel/Constants$UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/Constants$UserType;->Guest:Lcom/fimi/kernel/Constants$UserType;

    new-instance v0, Lcom/fimi/kernel/Constants$UserType;

    const-string v1, "Register"

    invoke-direct {v0, v1, v4}, Lcom/fimi/kernel/Constants$UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/Constants$UserType;->Register:Lcom/fimi/kernel/Constants$UserType;

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fimi/kernel/Constants$UserType;

    sget-object v1, Lcom/fimi/kernel/Constants$UserType;->Ideal:Lcom/fimi/kernel/Constants$UserType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/kernel/Constants$UserType;->Guest:Lcom/fimi/kernel/Constants$UserType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/kernel/Constants$UserType;->Register:Lcom/fimi/kernel/Constants$UserType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fimi/kernel/Constants$UserType;->$VALUES:[Lcom/fimi/kernel/Constants$UserType;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/kernel/Constants$UserType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/fimi/kernel/Constants$UserType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/Constants$UserType;

    return-object v0
.end method

.method public static values()[Lcom/fimi/kernel/Constants$UserType;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/fimi/kernel/Constants$UserType;->$VALUES:[Lcom/fimi/kernel/Constants$UserType;

    invoke-virtual {v0}, [Lcom/fimi/kernel/Constants$UserType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/kernel/Constants$UserType;

    return-object v0
.end method
