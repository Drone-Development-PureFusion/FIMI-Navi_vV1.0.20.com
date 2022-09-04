.class public Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;
.super Ljava/lang/Object;
.source "XiaomiOAuthResults.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/account/openauth/XiaomiOAuthResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Error"
.end annotation


# instance fields
.field public final errorCode:I

.field public final errorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput p1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;->errorCode:I

    .line 127
    iput-object p2, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;->errorMessage:Ljava/lang/String;

    .line 128
    return-void
.end method

.method static synthetic access$300(Landroid/os/Bundle;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;
    .locals 1
    .param p0, "x0"    # Landroid/os/Bundle;

    .prologue
    .line 120
    invoke-static {p0}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;->parseBundle(Landroid/os/Bundle;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;

    move-result-object v0

    return-object v0
.end method

.method private static parseBundle(Landroid/os/Bundle;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 136
    const-string v2, "extra_error_code"

    const-string v3, "error"

    invoke-static {p0, v2, v3}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->access$200(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 137
    .local v0, "errorCode":I
    const-string v2, "extra_error_description"

    const-string v3, "error_description"

    invoke-static {p0, v2, v3}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->access$000(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "errorMessage":Ljava/lang/String;
    new-instance v2, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;

    invoke-direct {v2, v0, v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;-><init>(ILjava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",errorMessage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "text":Ljava/lang/String;
    return-object v0
.end method
