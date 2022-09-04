.class public Lcom/fimi/kernel/GlobalConfig;
.super Ljava/lang/Object;
.source "GlobalConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/kernel/GlobalConfig$Builder;
    }
.end annotation


# static fields
.field static config:Lcom/fimi/kernel/GlobalConfig;


# instance fields
.field languageModel:Lcom/fimi/kernel/language/LanguageModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/fimi/kernel/GlobalConfig;

    invoke-direct {v0}, Lcom/fimi/kernel/GlobalConfig;-><init>()V

    sput-object v0, Lcom/fimi/kernel/GlobalConfig;->config:Lcom/fimi/kernel/GlobalConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static getInstance()Lcom/fimi/kernel/GlobalConfig;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/fimi/kernel/GlobalConfig;->config:Lcom/fimi/kernel/GlobalConfig;

    return-object v0
.end method


# virtual methods
.method public getLanguageModel()Lcom/fimi/kernel/language/LanguageModel;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fimi/kernel/GlobalConfig;->languageModel:Lcom/fimi/kernel/language/LanguageModel;

    return-object v0
.end method

.method public init(Lcom/fimi/kernel/GlobalConfig$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/fimi/kernel/GlobalConfig$Builder;

    .prologue
    .line 25
    invoke-static {p1}, Lcom/fimi/kernel/GlobalConfig$Builder;->access$000(Lcom/fimi/kernel/GlobalConfig$Builder;)Lcom/fimi/kernel/language/LanguageModel;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/kernel/GlobalConfig;->languageModel:Lcom/fimi/kernel/language/LanguageModel;

    .line 26
    return-void
.end method

.method public setLanguageModel(Lcom/fimi/kernel/language/LanguageModel;)V
    .locals 0
    .param p1, "languageModel"    # Lcom/fimi/kernel/language/LanguageModel;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/fimi/kernel/GlobalConfig;->languageModel:Lcom/fimi/kernel/language/LanguageModel;

    .line 49
    return-void
.end method
