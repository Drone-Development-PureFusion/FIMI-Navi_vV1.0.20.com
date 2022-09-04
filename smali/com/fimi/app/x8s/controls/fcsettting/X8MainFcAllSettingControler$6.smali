.class Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$6;
.super Ljava/lang/Object;
.source "X8MainFcAllSettingControler.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IX8FiveKeyDefineListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBack()V
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->closeSecondUi()V

    .line 570
    return-void
.end method

.method public onSelected(II)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "position"    # I

    .prologue
    .line 575
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->access$1000(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSettingMenuController;->setFiveKeyValue(II)V

    .line 576
    return-void
.end method
