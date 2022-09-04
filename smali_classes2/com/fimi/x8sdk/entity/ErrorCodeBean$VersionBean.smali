.class public Lcom/fimi/x8sdk/entity/ErrorCodeBean$VersionBean;
.super Ljava/lang/Object;
.source "ErrorCodeBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x8sdk/entity/ErrorCodeBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VersionBean"
.end annotation


# instance fields
.field private Content:Ljava/lang/String;

.field private Format:Ljava/lang/String;

.field final synthetic this$0:Lcom/fimi/x8sdk/entity/ErrorCodeBean;


# direct methods
.method public constructor <init>(Lcom/fimi/x8sdk/entity/ErrorCodeBean;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/x8sdk/entity/ErrorCodeBean;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$VersionBean;->this$0:Lcom/fimi/x8sdk/entity/ErrorCodeBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$VersionBean;->Content:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$VersionBean;->Format:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$VersionBean;->Content:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$VersionBean;->Format:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VersionBean{Format=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$VersionBean;->Format:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Content=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean$VersionBean;->Content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
