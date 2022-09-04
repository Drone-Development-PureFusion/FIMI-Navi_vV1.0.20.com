.class public final enum Lcom/fimi/kernel/Constants$APPType;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/kernel/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "APPType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/kernel/Constants$APPType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/kernel/Constants$APPType;

.field public static final enum Factory:Lcom/fimi/kernel/Constants$APPType;

.field public static final enum Online:Lcom/fimi/kernel/Constants$APPType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/fimi/kernel/Constants$APPType;

    const-string v1, "Online"

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/Constants$APPType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/Constants$APPType;->Online:Lcom/fimi/kernel/Constants$APPType;

    new-instance v0, Lcom/fimi/kernel/Constants$APPType;

    const-string v1, "Factory"

    invoke-direct {v0, v1, v3}, Lcom/fimi/kernel/Constants$APPType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/Constants$APPType;->Factory:Lcom/fimi/kernel/Constants$APPType;

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fimi/kernel/Constants$APPType;

    sget-object v1, Lcom/fimi/kernel/Constants$APPType;->Online:Lcom/fimi/kernel/Constants$APPType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/kernel/Constants$APPType;->Factory:Lcom/fimi/kernel/Constants$APPType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fimi/kernel/Constants$APPType;->$VALUES:[Lcom/fimi/kernel/Constants$APPType;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/kernel/Constants$APPType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/fimi/kernel/Constants$APPType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/Constants$APPType;

    return-object v0
.end method

.method public static values()[Lcom/fimi/kernel/Constants$APPType;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/fimi/kernel/Constants$APPType;->$VALUES:[Lcom/fimi/kernel/Constants$APPType;

    invoke-virtual {v0}, [Lcom/fimi/kernel/Constants$APPType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/kernel/Constants$APPType;

    return-object v0
.end method
