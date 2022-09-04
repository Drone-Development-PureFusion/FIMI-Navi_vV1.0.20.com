.class Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2$1;
.super Ljava/lang/Object;
.source "X8UpdatePresenter.java"

# interfaces
.implements Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack$MergFileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2;


# direct methods
.method constructor <init>(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2$1;->this$1:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mergResult(I)V
    .locals 2
    .param p1, "result"    # I

    .prologue
    .line 585
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2$1;->this$1:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2;

    iget-object v0, v0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    sget-object v1, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;->PKG_UPDATE_FILE:Ljava/lang/String;

    invoke-static {v1}, Lcom/fimi/kernel/utils/FileUtil;->getFileBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$802(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;[B)[B

    .line 586
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2$1;->this$1:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2;

    iget-object v0, v0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2$1;->this$1:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2;

    iget-object v1, v1, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v1}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$800(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)[B

    move-result-object v1

    array-length v1, v1

    rem-int/lit16 v1, v1, 0x400

    invoke-static {v0, v1}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$902(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;I)I

    .line 587
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2$1;->this$1:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2;

    iget-object v0, v0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2$1;->this$1:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2;

    iget-object v1, v1, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v1}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$800(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)[B

    move-result-object v1

    array-length v1, v1

    div-int/lit16 v1, v1, 0x400

    invoke-static {v0, v1}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$1002(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;I)I

    .line 588
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2$1;->this$1:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2;

    iget-object v0, v0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v0}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$900(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)I

    move-result v0

    if-nez v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2$1;->this$1:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2;

    iget-object v0, v0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2$1;->this$1:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2;

    iget-object v1, v1, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v1}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$1000(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$1102(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;I)I

    .line 594
    :goto_0
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2$1;->this$1:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2;

    iget-object v0, v0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->requestUploadFile()V

    .line 595
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2$1;->this$1:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2;

    iget-object v0, v0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    sget-object v1, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;->requestUpdate:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    iput-object v1, v0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateState:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    .line 596
    return-void

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2$1;->this$1:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2;

    iget-object v0, v0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2$1;->this$1:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2;

    iget-object v1, v1, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v1}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$1000(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$1102(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;I)I

    goto :goto_0
.end method
