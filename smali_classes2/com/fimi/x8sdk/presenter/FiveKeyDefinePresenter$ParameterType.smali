.class public final enum Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;
.super Ljava/lang/Enum;
.source "FiveKeyDefinePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParameterType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;

.field public static final enum ADD_VALUE:Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;

.field public static final enum DECREASE_VALUE:Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;

.field public static final enum ORIGINAL_VALUE:Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;

    const-string v1, "ORIGINAL_VALUE"

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;->ORIGINAL_VALUE:Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;

    .line 32
    new-instance v0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;

    const-string v1, "ADD_VALUE"

    invoke-direct {v0, v1, v3}, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;->ADD_VALUE:Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;

    .line 33
    new-instance v0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;

    const-string v1, "DECREASE_VALUE"

    invoke-direct {v0, v1, v4}, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;->DECREASE_VALUE:Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;

    sget-object v1, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;->ORIGINAL_VALUE:Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;->ADD_VALUE:Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;->DECREASE_VALUE:Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;->$VALUES:[Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;

    return-object v0
.end method

.method public static values()[Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;->$VALUES:[Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;

    invoke-virtual {v0}, [Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;

    return-object v0
.end method
