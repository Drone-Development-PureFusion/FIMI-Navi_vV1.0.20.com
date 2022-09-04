.class public final enum Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;
.super Ljava/lang/Enum;
.source "PersettingFourAdapt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/libperson/adapter/PersettingFourAdapt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;

.field public static final enum ABOUT:Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;

    const-string v1, "ABOUT"

    invoke-direct {v0, v1, v2}, Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;->ABOUT:Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;

    sget-object v1, Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;->ABOUT:Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;

    aput-object v1, v0, v2

    sput-object v0, Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;->$VALUES:[Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;

    return-object v0
.end method

.method public static values()[Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;->$VALUES:[Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;

    invoke-virtual {v0}, [Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;

    return-object v0
.end method
