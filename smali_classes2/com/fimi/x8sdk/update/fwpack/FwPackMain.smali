.class public Lcom/fimi/x8sdk/update/fwpack/FwPackMain;
.super Ljava/lang/Object;
.source "FwPackMain.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .local v1, "fws":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/update/fwpack/FwInfo;>;"
    new-instance v0, Lcom/fimi/x8sdk/update/fwpack/FwInfo;

    invoke-direct {v0}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;-><init>()V

    .line 15
    .local v0, "f1":Lcom/fimi/x8sdk/update/fwpack/FwInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fimi/kernel/utils/DirectoryPath;->getFirmwarePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/app1540867925417X1B.bin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->setSysName(Ljava/lang/String;)V

    .line 16
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->setModelId(B)V

    .line 17
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->setTypeId(B)V

    .line 18
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->setFwType(B)V

    .line 19
    const/16 v3, 0x41

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->setStepVer(B)V

    .line 20
    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/update/fwpack/FwInfo;->setSoftwareVer(S)V

    .line 22
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v2, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;-><init>(Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack$MergFileListener;Ljava/util/List;)V

    .line 36
    .local v2, "pack":Lcom/fimi/x8sdk/update/fwpack/IBuildPackInfo;
    invoke-interface {v2}, Lcom/fimi/x8sdk/update/fwpack/IBuildPackInfo;->createUpdatePkg()V

    .line 38
    return-void
.end method
