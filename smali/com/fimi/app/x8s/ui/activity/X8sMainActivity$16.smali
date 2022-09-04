.class Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$16;
.super Ljava/lang/Object;
.source "X8sMainActivity.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .prologue
    .line 1303
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$16;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public awbSetting(Ljava/lang/String;)V
    .locals 0
    .param p1, "awbValue"    # Ljava/lang/String;

    .prologue
    .line 1341
    return-void
.end method

.method public colorSetting(Ljava/lang/String;)V
    .locals 1
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$16;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$600(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$16;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$600(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->updateColoreTextValue(Ljava/lang/String;)V

    .line 1336
    :cond_0
    return-void
.end method

.method public evSetting(Ljava/lang/String;)V
    .locals 1
    .param p1, "evValue"    # Ljava/lang/String;

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$16;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$600(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1347
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$16;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$600(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->updateEvTextValue(Ljava/lang/String;)V

    .line 1349
    :cond_0
    return-void
.end method

.method public initCameraParams(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4
    .param p1, "rt"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 1315
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$16$1;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$16$1;-><init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$16;)V

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v1, v2, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/jsonResult/CameraCurParamsJson;

    .line 1317
    .local v0, "curParamsJson":Lcom/fimi/x8sdk/jsonResult/CameraCurParamsJson;
    if-eqz v0, :cond_0

    .line 1318
    if-eqz v0, :cond_0

    .line 1319
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$16;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$600(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->initCameraParam(Lcom/fimi/x8sdk/jsonResult/CameraCurParamsJson;)V

    .line 1323
    :cond_0
    return-void
.end method

.method public initOptionsValue()V
    .locals 1

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$16;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$400(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1368
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$16;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$400(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->initCameraParams()V

    .line 1370
    :cond_0
    return-void
.end method

.method public isoSetting(Ljava/lang/String;)V
    .locals 1
    .param p1, "isoValue"    # Ljava/lang/String;

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$16;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$600(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1354
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$16;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$600(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->updateISOTextValue(Ljava/lang/String;)V

    .line 1356
    :cond_0
    return-void
.end method

.method public onGridLineSelect(I)V
    .locals 1
    .param p1, "selectIdx"    # I

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$16;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$000(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->showGridLine(I)V

    .line 1329
    return-void
.end method

.method public showTopAndBottom(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 1306
    if-eqz p1, :cond_0

    .line 1307
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$16;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$700(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainTopBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->openUi()V

    .line 1308
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$16;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$600(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->openUi()V

    .line 1310
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$16;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$200(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$16;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->setBackGround(I)V

    .line 1311
    return-void
.end method

.method public shutterSetting(Ljava/lang/String;)V
    .locals 1
    .param p1, "shutter"    # Ljava/lang/String;

    .prologue
    .line 1360
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$16;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$600(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1361
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$16;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$600(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->updateShutter(Ljava/lang/String;)V

    .line 1363
    :cond_0
    return-void
.end method

.method public updateResOrSize()V
    .locals 1

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$16;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$600(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$16;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$600(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->updateCameraModelValue()V

    .line 1377
    :cond_0
    return-void
.end method
