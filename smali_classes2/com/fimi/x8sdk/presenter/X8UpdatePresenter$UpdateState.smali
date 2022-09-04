.class final enum Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;
.super Ljava/lang/Enum;
.source "X8UpdatePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "UpdateState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

.field public static final enum fileCheckResults:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

.field public static final enum requestUpdate:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

.field public static final enum sendUploadInformation:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

.field public static final enum updateEnd:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

.field public static final enum updateFile:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

.field public static final enum updateInit:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 82
    new-instance v0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    const-string v1, "updateInit"

    invoke-direct {v0, v1, v3}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;->updateInit:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    new-instance v0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    const-string v1, "requestUpdate"

    invoke-direct {v0, v1, v4}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;->requestUpdate:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    new-instance v0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    const-string v1, "sendUploadInformation"

    invoke-direct {v0, v1, v5}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;->sendUploadInformation:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    new-instance v0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    const-string v1, "updateFile"

    invoke-direct {v0, v1, v6}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;->updateFile:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    new-instance v0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    const-string v1, "fileCheckResults"

    invoke-direct {v0, v1, v7}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;->fileCheckResults:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    new-instance v0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    const-string v1, "updateEnd"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;->updateEnd:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    .line 81
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    sget-object v1, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;->updateInit:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;->requestUpdate:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;->sendUploadInformation:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;->updateFile:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;->fileCheckResults:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;->updateEnd:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;->$VALUES:[Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

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
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    const-class v0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    return-object v0
.end method

.method public static values()[Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;->$VALUES:[Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    invoke-virtual {v0}, [Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    return-object v0
.end method
