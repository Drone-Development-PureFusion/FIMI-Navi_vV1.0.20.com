.class Lcom/fimi/app/ui/main/HostNewMainActivity$3;
.super Ljava/lang/Object;
.source "HostNewMainActivity.java"

# interfaces
.implements Lcom/fimi/apk/presenter/ApkVersionPrenster$onShowDialogListerner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/ui/main/HostNewMainActivity;->doTrans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/ui/main/HostNewMainActivity;


# direct methods
.method constructor <init>(Lcom/fimi/app/ui/main/HostNewMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/ui/main/HostNewMainActivity;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity$3;->this$0:Lcom/fimi/app/ui/main/HostNewMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showDialog(Lcom/fimi/network/entity/ApkVersionDto;Ljava/lang/String;)V
    .locals 1
    .param p1, "dto"    # Lcom/fimi/network/entity/ApkVersionDto;
    .param p2, "savePath"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity$3;->this$0:Lcom/fimi/app/ui/main/HostNewMainActivity;

    invoke-static {v0}, Lcom/fimi/app/ui/main/HostNewMainActivity;->access$100(Lcom/fimi/app/ui/main/HostNewMainActivity;)Lcom/fimi/apk/presenter/ApkVersionPrenster;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fimi/apk/presenter/ApkVersionPrenster;->showDialog(Lcom/fimi/network/entity/ApkVersionDto;Ljava/lang/String;)V

    .line 139
    return-void
.end method
