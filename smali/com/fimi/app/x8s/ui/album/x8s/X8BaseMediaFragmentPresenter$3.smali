.class Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$3;
.super Ljava/lang/Object;
.source "X8BaseMediaFragmentPresenter.java"

# interfaces
.implements Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    .prologue
    .line 678
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$3;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$3;"
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$3;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPersonalDataCallBack(IILcom/fimi/kernel/dataparser/ILinkMessage;)V
    .locals 0
    .param p1, "groupId"    # I
    .param p2, "cmdId"    # I
    .param p3, "message"    # Lcom/fimi/kernel/dataparser/ILinkMessage;

    .prologue
    .line 716
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$3;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$3;"
    return-void
.end method

.method public onPersonalSendTimeOut(IILcom/fimi/kernel/connect/BaseCommand;)V
    .locals 0
    .param p1, "groupId"    # I
    .param p2, "cmdId"    # I
    .param p3, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 724
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$3;, "Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter$3;"
    return-void
.end method
