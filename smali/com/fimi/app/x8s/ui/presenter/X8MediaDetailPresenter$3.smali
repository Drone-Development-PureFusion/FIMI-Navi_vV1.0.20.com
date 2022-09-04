.class Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$3;
.super Ljava/lang/Object;
.source "X8MediaDetailPresenter.java"

# interfaces
.implements Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    .prologue
    .line 320
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$3;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$3;"
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$3;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPersonalDataCallBack(IILcom/fimi/kernel/dataparser/ILinkMessage;)V
    .locals 2
    .param p1, "groupId"    # I
    .param p2, "cmdId"    # I
    .param p3, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;

    .prologue
    .line 323
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$3;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$3;"
    const-string v0, "media"

    const-string v1, "onPersonalDataCallBack: "

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public onPersonalSendTimeOut(IILcom/fimi/kernel/connect/BaseCommand;)V
    .locals 2
    .param p1, "groupId"    # I
    .param p2, "cmdId"    # I
    .param p3, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 329
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$3;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter$3;"
    const-string v0, "media"

    const-string v1, "onPersonalSendTimeOut: "

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    return-void
.end method
