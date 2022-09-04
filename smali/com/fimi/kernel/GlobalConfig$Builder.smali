.class public Lcom/fimi/kernel/GlobalConfig$Builder;
.super Ljava/lang/Object;
.source "GlobalConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/kernel/GlobalConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private languageModel:Lcom/fimi/kernel/language/LanguageModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fimi/kernel/GlobalConfig$Builder;)Lcom/fimi/kernel/language/LanguageModel;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/GlobalConfig$Builder;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fimi/kernel/GlobalConfig$Builder;->languageModel:Lcom/fimi/kernel/language/LanguageModel;

    return-object v0
.end method


# virtual methods
.method public setLanguageModel(Lcom/fimi/kernel/language/LanguageModel;)Lcom/fimi/kernel/GlobalConfig$Builder;
    .locals 2
    .param p1, "languageModel"    # Lcom/fimi/kernel/language/LanguageModel;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/fimi/kernel/GlobalConfig$Builder;->languageModel:Lcom/fimi/kernel/language/LanguageModel;

    .line 38
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "select_languagetype"

    invoke-virtual {v0, v1, p1}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    return-object p0
.end method
