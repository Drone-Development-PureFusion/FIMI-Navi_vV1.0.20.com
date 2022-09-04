.class final enum Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;
.super Ljava/lang/Enum;
.source "X8UpdateCheckPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UpdateCheckState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

.field public static final enum notUpgrade:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

.field public static final enum readyUpgrade:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

.field public static final enum updateInit:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

.field public static final enum updating:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

.field public static final enum upgradeEnd:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    const-string v1, "updateInit"

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;->updateInit:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    new-instance v0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    const-string v1, "readyUpgrade"

    invoke-direct {v0, v1, v3}, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;->readyUpgrade:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    new-instance v0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    const-string v1, "updating"

    invoke-direct {v0, v1, v4}, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;->updating:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    new-instance v0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    const-string v1, "upgradeEnd"

    invoke-direct {v0, v1, v5}, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;->upgradeEnd:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    new-instance v0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    const-string v1, "notUpgrade"

    invoke-direct {v0, v1, v6}, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;->notUpgrade:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    .line 43
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    sget-object v1, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;->updateInit:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;->readyUpgrade:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;->updating:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;->upgradeEnd:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;->notUpgrade:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;->$VALUES:[Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    return-object v0
.end method

.method public static values()[Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;->$VALUES:[Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    invoke-virtual {v0}, [Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    return-object v0
.end method
