.class Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2;
.super Ljava/lang/Object;
.source "X8UpdatePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->firmwareBuildPack(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

.field final synthetic val$fwInfoList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    .prologue
    .line 579
    iput-object p1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    iput-object p2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2;->val$fwInfoList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 582
    new-instance v0, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;

    new-instance v1, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2$1;

    invoke-direct {v1, p0}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2$1;-><init>(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2;)V

    iget-object v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$2;->val$fwInfoList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;-><init>(Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack$MergFileListener;Ljava/util/List;)V

    .line 598
    .local v0, "pack":Lcom/fimi/x8sdk/update/fwpack/IBuildPackInfo;
    invoke-interface {v0}, Lcom/fimi/x8sdk/update/fwpack/IBuildPackInfo;->createUpdatePkg()V

    .line 599
    return-void
.end method
