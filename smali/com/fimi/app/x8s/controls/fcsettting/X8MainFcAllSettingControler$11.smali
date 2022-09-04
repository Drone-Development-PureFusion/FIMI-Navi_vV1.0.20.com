.class Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$11;
.super Ljava/lang/Object;
.source "X8MainFcAllSettingControler.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IX8FrequencyPointListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->showFrequencyPoint()V
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
    .line 776
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$11;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBack()V
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$11;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->closeSecondUi()V

    .line 781
    return-void
.end method
