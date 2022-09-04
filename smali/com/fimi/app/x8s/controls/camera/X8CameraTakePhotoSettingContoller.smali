.class public Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;
.super Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;
.source "X8CameraTakePhotoSettingContoller.java"

# interfaces
.implements Lcom/fimi/app/x8s/viewHolder/CameraParamListener;
.implements Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;


# instance fields
.field private cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

.field private context:Landroid/content/Context;

.field itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

.field private mainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

.field private paramController:Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;

.field paramMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private paramView:Landroid/view/View;

.field private paramViewStub:Landroid/view/ViewStub;

.field private subParamsController:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

.field private subView:Landroid/view/View;

.field private subViewStub:Landroid/view/ViewStub;

.field private tokenEnable:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;-><init>(Landroid/view/View;)V

    .line 65
    new-instance v0, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-direct {v0}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    .line 479
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    .line 788
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->tokenEnable:Z

    .line 90
    return-void
.end method

.method private matchNickKey(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 683
    .local p1, "options":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 684
    .local v1, "optionMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getParamKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "awb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 685
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 686
    .local v0, "optionKey":Ljava/lang/String;
    const-string v3, "auto"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 687
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_awb_auto:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 688
    :cond_1
    const-string v3, "incandescent"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 689
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_awb_incandescent:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 690
    :cond_2
    const-string v3, "d4000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 691
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_awb_d4000:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 692
    :cond_3
    const-string v3, "sunny"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 693
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_awb_sunny:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 694
    :cond_4
    const-string v3, "cloudy"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 695
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_awb_cloudy:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 696
    :cond_5
    const-string v3, "shadw"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 697
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_awb_shadow:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 700
    .end local v0    # "optionKey":Ljava/lang/String;
    :cond_6
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getParamKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "metering_mode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 701
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 702
    .restart local v0    # "optionKey":Ljava/lang/String;
    const-string v3, "spot"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 703
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_meter_spot:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 704
    :cond_8
    const-string v3, "center"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 705
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_meter_center:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 706
    :cond_9
    const-string v3, "average"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 707
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_meter_average:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 710
    .end local v0    # "optionKey":Ljava/lang/String;
    :cond_a
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getParamKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "digital_effect"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 711
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 712
    .restart local v0    # "optionKey":Ljava/lang/String;
    const-string v3, "General"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 713
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_colours_general:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 714
    :cond_c
    const-string v3, "Vivid"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 715
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_colours_vivid:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 716
    :cond_d
    const-string v3, "art"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 717
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_colours_art:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 718
    :cond_e
    const-string v3, "black/white"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 719
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_colours_black_white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 720
    :cond_f
    const-string v3, "film"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 721
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_colours_film:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 722
    :cond_10
    const-string v3, "sepia"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 723
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_colours_sepia:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 724
    :cond_11
    const-string v3, "F-LOG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 725
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_colours_flog:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 726
    :cond_12
    const-string v3, "punk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 727
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_colours_punk:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 730
    .end local v0    # "optionKey":Ljava/lang/String;
    :cond_13
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getParamKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "video_quality"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 731
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 732
    .restart local v0    # "optionKey":Ljava/lang/String;
    const-string v3, "sfine"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 733
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_record_quality_sfine:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 734
    :cond_15
    const-string v3, "fine"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 735
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_record_quality_fine:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 736
    :cond_16
    const-string v3, "normal"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 737
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_record_quality_normal:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 740
    .end local v0    # "optionKey":Ljava/lang/String;
    :cond_17
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getParamKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "video_resolution"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 741
    invoke-direct {p0, p1, v1}, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->matchVideoResolution(Ljava/util/List;Ljava/util/Map;)V

    .line 745
    :cond_18
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v2, v1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setOptionMap(Ljava/util/LinkedHashMap;)V

    .line 746
    return-void
.end method

.method private matchPhotoMode(Ljava/util/List;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "options":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "optionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 749
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 750
    .local v1, "keyOptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 751
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 752
    .local v2, "optionKey":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 753
    if-nez v0, :cond_1

    .line 754
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 750
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 756
    :cond_1
    const-string v4, "\\s+"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 757
    .local v3, "values":[Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-interface {p2, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    aget-object v4, v3, v5

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 759
    aget-object v4, v3, v5

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 765
    .end local v2    # "optionKey":Ljava/lang/String;
    .end local v3    # "values":[Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v4, v1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setOptions(Ljava/util/List;)V

    .line 766
    return-void
.end method

.method private matchVideoResolution(Ljava/util/List;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "options":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "optionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 769
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 770
    .local v1, "keyOptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 771
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 772
    .local v2, "optionKey":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 773
    if-nez v0, :cond_1

    .line 774
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 776
    :cond_1
    const-string v4, "\\s+"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 777
    .local v3, "values":[Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v3, v4

    const-string v5, "P"

    const-string v6, "FPS"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    aget-object v4, v3, v7

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 779
    aget-object v4, v3, v7

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 785
    .end local v2    # "optionKey":Ljava/lang/String;
    .end local v3    # "values":[Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v4, v1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setOptions(Ljava/util/List;)V

    .line 786
    return-void
.end method

.method private reviewData()V
    .locals 4

    .prologue
    .line 810
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/CameraState;->getToken()I

    move-result v1

    if-gtz v1, :cond_1

    .line 836
    :cond_0
    :goto_0
    return-void

    .line 811
    :cond_1
    invoke-static {}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getInstance()Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v0

    .line 812
    .local v0, "paramsJson":Lcom/fimi/x8sdk/jsonResult/CurParamsJson;
    if-eqz v0, :cond_0

    .line 813
    if-eqz v0, :cond_0

    .line 814
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string/jumbo v2, "video_quality"

    invoke-virtual {v0}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getVideo_quality()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string/jumbo v2, "video_resolution"

    invoke-virtual {v0}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getVideo_resolution()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string/jumbo v2, "timelapse_capture"

    invoke-virtual {v0}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getPhoto_timelapse()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string/jumbo v2, "timelapase_record"

    invoke-virtual {v0}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getVideo_timelapse()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string v2, "capture_mode"

    invoke-virtual {v0}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getCapture_mode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string v2, "record_mode"

    invoke-virtual {v0}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getRecord_mode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string v2, "photo_format"

    invoke-virtual {v0}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getPhoto_format()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string v2, "photo_size"

    invoke-virtual {v0}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getPhoto_size()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string v2, "ae_bias"

    invoke-virtual {v0}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getAe_bias()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string v2, "iso"

    invoke-virtual {v0}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getIso()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string v2, "shutter_time"

    invoke-virtual {v0}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getShutter_time()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string v2, "awb"

    invoke-virtual {v0}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getAwb()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string v2, "metering_mode"

    invoke-virtual {v0}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getMetering_mode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string v2, "digital_effect"

    invoke-virtual {v0}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getDigital_effect()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string v2, "saturation"

    invoke-virtual {v0}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getSaturation()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string v2, "contrast"

    invoke-virtual {v0}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getContrast()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string v2, "sharpness"

    invoke-virtual {v0}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getSharpness()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string v2, "system_type"

    invoke-virtual {v0}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getSystem_type()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramController:Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;

    if-eqz v1, :cond_0

    .line 833
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramController:Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;

    sget-object v2, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    invoke-virtual {v1, v2, v3}, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->updateMode(Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;Ljava/util/Map;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public closeUi()V
    .locals 1

    .prologue
    .line 572
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->closeUi()V

    .line 573
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subParamsController:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subParamsController:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->gotoParentItem()V

    .line 576
    :cond_0
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->reviewData()V

    .line 577
    return-void
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public gotoSubItem(Ljava/lang/String;Ljava/lang/String;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 30
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subView:Landroid/view/View;

    move-object/from16 v26, v0

    if-nez v26, :cond_0

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subViewStub:Landroid/view/ViewStub;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subView:Landroid/view/View;

    .line 119
    new-instance v26, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->rootView:Landroid/view/View;

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;-><init>(Landroid/view/View;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subParamsController:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subParamsController:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->setCameraManager(Lcom/fimi/x8sdk/controller/CameraManager;)V

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subParamsController:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->setParamListener(Lcom/fimi/app/x8s/viewHolder/CameraParamListener;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subParamsController:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->mainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->setMainSetListener(Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;)V

    .line 124
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v26

    if-eqz v26, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_1

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->clear()V

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptionMap()Ljava/util/LinkedHashMap;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/LinkedHashMap;->clear()V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    const-string v27, ""

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamKey(Ljava/lang/String;)V

    .line 128
    const/16 v26, 0x1

    sput-boolean v26, Lcom/fimi/x8sdk/command/CameraJsonCollection;->isClearData:Z

    .line 131
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    move-object/from16 v26, v0

    if-eqz v26, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->tokenEnable:Z

    move/from16 v26, v0

    if-eqz v26, :cond_17

    .line 132
    const-string v26, "record_mode"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    sget v27, Lcom/fimi/app/x8s/R$array;->x8_timelapse_record_array:I

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    .line 145
    .local v16, "recordArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setOptions(Ljava/util/List;)V

    .line 146
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v27, v0

    const/16 v26, 0x0

    :goto_0
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_2

    aget-object v13, v16, v26

    .line 147
    .local v13, "mode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .line 149
    .end local v13    # "mode":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    sget v29, Lcom/fimi/app/x8s/R$string;->x8_record_mode:I

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v26 .. v28}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptionMap()Ljava/util/LinkedHashMap;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->matchPhotoMode(Ljava/util/List;Ljava/util/Map;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    const-string v27, "record_mode"

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamKey(Ljava/lang/String;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    move-object/from16 v26, v0

    const-string v28, "record_mode"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamValue(Ljava/lang/String;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    sget v28, Lcom/fimi/app/x8s/R$string;->x8_record_mode:I

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setTitleName(Ljava/lang/String;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subParamsController:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->setSubParam(Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;)V

    .line 454
    .end local v16    # "recordArray":[Ljava/lang/String;
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramController:Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->closeUi()V

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subParamsController:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->openUi()V

    .line 456
    return-void

    .line 155
    :cond_4
    const-string v26, "capture_mode"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    sget v27, Lcom/fimi/app/x8s/R$array;->x8_timelapse_capture_array:I

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v23

    .line 167
    .local v23, "timelapseCaptureArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setOptions(Ljava/util/List;)V

    .line 168
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v27, v0

    const/16 v26, 0x0

    :goto_2
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_5

    aget-object v22, v23, v26

    .line 169
    .local v22, "timelapseCapture":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    .line 171
    .end local v22    # "timelapseCapture":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    sget v29, Lcom/fimi/app/x8s/R$string;->x8_photo_mode:I

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v26 .. v28}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptionMap()Ljava/util/LinkedHashMap;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->matchPhotoMode(Ljava/util/List;Ljava/util/Map;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    const-string v27, "capture_mode"

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamKey(Ljava/lang/String;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    move-object/from16 v26, v0

    const-string v28, "capture_mode"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamValue(Ljava/lang/String;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    sget v28, Lcom/fimi/app/x8s/R$string;->x8_photo_mode:I

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setTitleName(Ljava/lang/String;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subParamsController:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->setSubParam(Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;)V

    goto/16 :goto_1

    .line 177
    .end local v23    # "timelapseCaptureArray":[Ljava/lang/String;
    :cond_6
    const-string v26, "photo_size"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_8

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    sget v28, Lcom/fimi/app/x8s/R$string;->x8_photo_size:I

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setTitleName(Ljava/lang/String;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    sget v27, Lcom/fimi/app/x8s/R$array;->x8_photo_size_array:I

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    .line 180
    .local v20, "sizeArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    const-string v27, "photo_size"

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamKey(Ljava/lang/String;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setOptions(Ljava/util/List;)V

    .line 182
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v27, v0

    const/16 v26, 0x0

    :goto_3
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_7

    aget-object v19, v20, v26

    .line 183
    .local v19, "size":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v26, v26, 0x1

    goto :goto_3

    .line 185
    .end local v19    # "size":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    sget v29, Lcom/fimi/app/x8s/R$string;->x8_photo_size:I

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v26 .. v28}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    move-object/from16 v26, v0

    const-string v28, "photo_size"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamValue(Ljava/lang/String;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subParamsController:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->setSubParam(Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    move-object/from16 v26, v0

    const-string v27, "photo_size"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/CameraManager;->getCameraKeyOptions(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    goto/16 :goto_1

    .line 191
    .end local v20    # "sizeArray":[Ljava/lang/String;
    :cond_8
    const-string v26, "photo_format"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    sget v28, Lcom/fimi/app/x8s/R$string;->x8_photo_format:I

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setTitleName(Ljava/lang/String;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    sget v27, Lcom/fimi/app/x8s/R$array;->x8_photo_format_array:I

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    .line 194
    .restart local v20    # "sizeArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    const-string v27, "photo_format"

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamKey(Ljava/lang/String;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setOptions(Ljava/util/List;)V

    .line 196
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v27, v0

    const/16 v26, 0x0

    :goto_4
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_9

    aget-object v19, v20, v26

    .line 197
    .restart local v19    # "size":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    add-int/lit8 v26, v26, 0x1

    goto :goto_4

    .line 199
    .end local v19    # "size":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    sget v29, Lcom/fimi/app/x8s/R$string;->x8_photo_format:I

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v26 .. v28}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    move-object/from16 v26, v0

    const-string v28, "photo_format"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamValue(Ljava/lang/String;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subParamsController:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->setSubParam(Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    move-object/from16 v26, v0

    const-string v27, "photo_format"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/CameraManager;->getCameraKeyOptions(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    goto/16 :goto_1

    .line 204
    .end local v20    # "sizeArray":[Ljava/lang/String;
    :cond_a
    const-string v26, "awb"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_c

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    sget v28, Lcom/fimi/app/x8s/R$string;->x8_camera_awb:I

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setTitleName(Ljava/lang/String;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    sget v27, Lcom/fimi/app/x8s/R$array;->x8_awb_array:I

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    .line 212
    .restart local v20    # "sizeArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    const-string v27, "awb"

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamKey(Ljava/lang/String;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setOptions(Ljava/util/List;)V

    .line 214
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v27, v0

    const/16 v26, 0x0

    :goto_5
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_b

    aget-object v19, v20, v26

    .line 215
    .restart local v19    # "size":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    add-int/lit8 v26, v26, 0x1

    goto :goto_5

    .line 217
    .end local v19    # "size":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    sget v29, Lcom/fimi/app/x8s/R$string;->x8_camera_awb:I

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v26 .. v28}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    move-object/from16 v26, v0

    const-string v28, "awb"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamValue(Ljava/lang/String;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subParamsController:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->setSubParam(Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    move-object/from16 v26, v0

    const-string v27, "awb"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/CameraManager;->getCameraKeyOptions(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    goto/16 :goto_1

    .line 222
    .end local v20    # "sizeArray":[Ljava/lang/String;
    :cond_c
    const-string v26, "metering_mode"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_d

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    move-object/from16 v26, v0

    const-string v27, "metering_mode"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/CameraManager;->getCameraKeyOptions(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    move-object/from16 v26, v0

    const-string v28, "metering_mode"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamValue(Ljava/lang/String;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    sget v28, Lcom/fimi/app/x8s/R$string;->x8_camera_metering:I

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setTitleName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 226
    :cond_d
    const-string v26, "digital_effect"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_f

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    sget v28, Lcom/fimi/app/x8s/R$string;->x8_camera_digita:I

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setTitleName(Ljava/lang/String;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    sget v27, Lcom/fimi/app/x8s/R$array;->x8_colours_array:I

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    .line 233
    .restart local v20    # "sizeArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    const-string v27, "digital_effect"

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamKey(Ljava/lang/String;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setOptions(Ljava/util/List;)V

    .line 238
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_6
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    if-ge v9, v0, :cond_e

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v26

    aget-object v27, v20, v9

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 241
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    sget v29, Lcom/fimi/app/x8s/R$string;->x8_camera_digita:I

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v26 .. v28}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    move-object/from16 v26, v0

    const-string v28, "digital_effect"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamValue(Ljava/lang/String;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    move-object/from16 v26, v0

    const-string v27, "digital_effect"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/CameraManager;->getCameraKeyOptions(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subParamsController:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->setSubParam(Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;)V

    goto/16 :goto_1

    .line 245
    .end local v9    # "i":I
    .end local v20    # "sizeArray":[Ljava/lang/String;
    :cond_f
    const-string v26, "camera_style"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_11

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    sget v28, Lcom/fimi/app/x8s/R$string;->x8_camera_style:I

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setTitleName(Ljava/lang/String;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    sget v27, Lcom/fimi/app/x8s/R$array;->x8_photo_style_array:I

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    .line 248
    .local v21, "styleArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    const-string v27, "camera_style"

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamKey(Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setOptions(Ljava/util/List;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getTitleName()Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v26 .. v28}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 251
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v27, v0

    const/16 v26, 0x0

    :goto_7
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_10

    aget-object v13, v21, v26

    .line 252
    .restart local v13    # "mode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    add-int/lit8 v26, v26, 0x1

    goto :goto_7

    .line 254
    .end local v13    # "mode":Ljava/lang/String;
    :cond_10
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 255
    .local v10, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v26, "saturation"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    move-object/from16 v27, v0

    const-string v28, "saturation"

    invoke-interface/range {v27 .. v28}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v10, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v26, "contrast"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    move-object/from16 v27, v0

    const-string v28, "contrast"

    invoke-interface/range {v27 .. v28}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v10, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setOptionMap(Ljava/util/LinkedHashMap;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subParamsController:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->setSubParam(Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;)V

    goto/16 :goto_1

    .line 259
    .end local v10    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "styleArray":[Ljava/lang/String;
    :cond_11
    const-string/jumbo v26, "video_quality"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_13

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    sget v28, Lcom/fimi/app/x8s/R$string;->x8_record_quality:I

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setTitleName(Ljava/lang/String;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    sget v27, Lcom/fimi/app/x8s/R$array;->x8_record_quality_array:I

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    .line 267
    .restart local v20    # "sizeArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    const-string/jumbo v27, "video_quality"

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamKey(Ljava/lang/String;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setOptions(Ljava/util/List;)V

    .line 269
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v27, v0

    const/16 v26, 0x0

    :goto_8
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_12

    aget-object v19, v20, v26

    .line 270
    .restart local v19    # "size":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    add-int/lit8 v26, v26, 0x1

    goto :goto_8

    .line 272
    .end local v19    # "size":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    sget v29, Lcom/fimi/app/x8s/R$string;->x8_record_quality:I

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v26 .. v28}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    move-object/from16 v26, v0

    const-string/jumbo v28, "video_quality"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamValue(Ljava/lang/String;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subParamsController:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->setSubParam(Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    move-object/from16 v26, v0

    const-string/jumbo v27, "video_quality"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/CameraManager;->getCameraKeyOptions(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    goto/16 :goto_1

    .line 277
    .end local v20    # "sizeArray":[Ljava/lang/String;
    :cond_13
    const-string/jumbo v26, "video_resolution"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_14

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    const-string/jumbo v27, "video_resolution"

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamKey(Ljava/lang/String;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    move-object/from16 v26, v0

    const-string/jumbo v28, "video_resolution"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamValue(Ljava/lang/String;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    sget v28, Lcom/fimi/app/x8s/R$string;->x8_video_resolution:I

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setTitleName(Ljava/lang/String;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    move-object/from16 v26, v0

    const-string/jumbo v27, "video_resolution"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/CameraManager;->getCameraKeyOptions(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    goto/16 :goto_1

    .line 292
    :cond_14
    const-string v26, "system_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_16

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    sget v28, Lcom/fimi/app/x8s/R$string;->x8_video_type:I

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setTitleName(Ljava/lang/String;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    sget v27, Lcom/fimi/app/x8s/R$array;->x8_system_type_array:I

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    .line 300
    .restart local v20    # "sizeArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    const-string v27, "system_type"

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamKey(Ljava/lang/String;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setOptions(Ljava/util/List;)V

    .line 302
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v27, v0

    const/16 v26, 0x0

    :goto_9
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_15

    aget-object v19, v20, v26

    .line 303
    .restart local v19    # "size":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    add-int/lit8 v26, v26, 0x1

    goto :goto_9

    .line 305
    .end local v19    # "size":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    sget v29, Lcom/fimi/app/x8s/R$string;->x8_video_type:I

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v26 .. v28}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    move-object/from16 v26, v0

    const-string v28, "system_type"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamValue(Ljava/lang/String;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subParamsController:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->setSubParam(Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    move-object/from16 v26, v0

    const-string v27, "system_type"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/CameraManager;->getCameraKeyOptions(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    goto/16 :goto_1

    .line 310
    .end local v20    # "sizeArray":[Ljava/lang/String;
    :cond_16
    const-string v26, "auto_low_light"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3

    goto/16 :goto_1

    .line 313
    :cond_17
    const-string v26, "record_mode"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_19

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    sget v27, Lcom/fimi/app/x8s/R$array;->x8_timelapse_record_array:I

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    .line 315
    .restart local v16    # "recordArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setOptions(Ljava/util/List;)V

    .line 316
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v27, v0

    const/16 v26, 0x0

    :goto_a
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_18

    aget-object v13, v16, v26

    .line 317
    .restart local v13    # "mode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    add-int/lit8 v26, v26, 0x1

    goto :goto_a

    .line 319
    .end local v13    # "mode":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    sget v29, Lcom/fimi/app/x8s/R$string;->x8_record_mode:I

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v26 .. v28}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptionMap()Ljava/util/LinkedHashMap;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->matchPhotoMode(Ljava/util/List;Ljava/util/Map;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    const-string v27, "record_mode"

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamKey(Ljava/lang/String;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    move-object/from16 v26, v0

    const-string v28, "record_mode"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamValue(Ljava/lang/String;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    sget v28, Lcom/fimi/app/x8s/R$string;->x8_record_mode:I

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setTitleName(Ljava/lang/String;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subParamsController:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->setSubParam(Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;)V

    goto/16 :goto_1

    .line 325
    .end local v16    # "recordArray":[Ljava/lang/String;
    :cond_19
    const-string v26, "capture_mode"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1b

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    sget v27, Lcom/fimi/app/x8s/R$array;->x8_timelapse_capture_array:I

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v23

    .line 337
    .restart local v23    # "timelapseCaptureArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setOptions(Ljava/util/List;)V

    .line 338
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v27, v0

    const/16 v26, 0x0

    :goto_b
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_1a

    aget-object v22, v23, v26

    .line 339
    .restart local v22    # "timelapseCapture":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    add-int/lit8 v26, v26, 0x1

    goto :goto_b

    .line 341
    .end local v22    # "timelapseCapture":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    sget v29, Lcom/fimi/app/x8s/R$string;->x8_photo_mode:I

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v26 .. v28}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptionMap()Ljava/util/LinkedHashMap;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->matchPhotoMode(Ljava/util/List;Ljava/util/Map;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    const-string v27, "capture_mode"

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamKey(Ljava/lang/String;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    sget v28, Lcom/fimi/app/x8s/R$string;->x8_photo_mode:I

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setTitleName(Ljava/lang/String;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subParamsController:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->setSubParam(Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;)V

    goto/16 :goto_1

    .line 346
    .end local v23    # "timelapseCaptureArray":[Ljava/lang/String;
    :cond_1b
    const-string v26, "photo_size"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1d

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    sget v27, Lcom/fimi/app/x8s/R$array;->x8_photo_size_array:I

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    .line 348
    .restart local v20    # "sizeArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setOptions(Ljava/util/List;)V

    .line 349
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v27, v0

    const/16 v26, 0x0

    :goto_c
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_1c

    aget-object v19, v20, v26

    .line 350
    .restart local v19    # "size":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    add-int/lit8 v26, v26, 0x1

    goto :goto_c

    .line 352
    .end local v19    # "size":Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    sget v29, Lcom/fimi/app/x8s/R$string;->x8_photo_size:I

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v26 .. v28}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    sget v28, Lcom/fimi/app/x8s/R$string;->x8_photo_size:I

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setTitleName(Ljava/lang/String;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subParamsController:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->setSubParam(Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;)V

    goto/16 :goto_1

    .line 355
    .end local v20    # "sizeArray":[Ljava/lang/String;
    :cond_1d
    const-string v26, "photo_format"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1f

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    sget v27, Lcom/fimi/app/x8s/R$array;->x8_photo_format_array:I

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 357
    .local v8, "formatArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setOptions(Ljava/util/List;)V

    .line 358
    array-length v0, v8

    move/from16 v27, v0

    const/16 v26, 0x0

    :goto_d
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_1e

    aget-object v7, v8, v26

    .line 359
    .local v7, "fomat":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    add-int/lit8 v26, v26, 0x1

    goto :goto_d

    .line 361
    .end local v7    # "fomat":Ljava/lang/String;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    sget v29, Lcom/fimi/app/x8s/R$string;->x8_photo_format:I

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v26 .. v28}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    sget v28, Lcom/fimi/app/x8s/R$string;->x8_photo_format:I

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setTitleName(Ljava/lang/String;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subParamsController:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->setSubParam(Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;)V

    goto/16 :goto_1

    .line 364
    .end local v8    # "formatArray":[Ljava/lang/String;
    :cond_1f
    const-string v26, "awb"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_21

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    sget v27, Lcom/fimi/app/x8s/R$array;->x8_awb_array:I

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 366
    .local v4, "awbArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setOptions(Ljava/util/List;)V

    .line 367
    array-length v0, v4

    move/from16 v27, v0

    const/16 v26, 0x0

    :goto_e
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_20

    aget-object v3, v4, v26

    .line 368
    .local v3, "awb":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    add-int/lit8 v26, v26, 0x1

    goto :goto_e

    .line 370
    .end local v3    # "awb":Ljava/lang/String;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    sget v29, Lcom/fimi/app/x8s/R$string;->x8_camera_awb:I

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v26 .. v28}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    sget v28, Lcom/fimi/app/x8s/R$string;->x8_camera_awb:I

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setTitleName(Ljava/lang/String;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subParamsController:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->setSubParam(Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;)V

    goto/16 :goto_1

    .line 373
    .end local v4    # "awbArray":[Ljava/lang/String;
    :cond_21
    const-string v26, "metering_mode"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_23

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    sget v27, Lcom/fimi/app/x8s/R$array;->x8_meter_array:I

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 375
    .local v12, "meterArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setOptions(Ljava/util/List;)V

    .line 376
    array-length v0, v12

    move/from16 v27, v0

    const/16 v26, 0x0

    :goto_f
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_22

    aget-object v11, v12, v26

    .line 377
    .local v11, "meter":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    add-int/lit8 v26, v26, 0x1

    goto :goto_f

    .line 379
    .end local v11    # "meter":Ljava/lang/String;
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    sget v29, Lcom/fimi/app/x8s/R$string;->x8_camera_metering:I

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v26 .. v28}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    sget v28, Lcom/fimi/app/x8s/R$string;->x8_camera_metering:I

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setTitleName(Ljava/lang/String;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subParamsController:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->setSubParam(Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;)V

    goto/16 :goto_1

    .line 382
    .end local v12    # "meterArray":[Ljava/lang/String;
    :cond_23
    const-string v26, "digital_effect"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_25

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    sget v27, Lcom/fimi/app/x8s/R$array;->x8_colours_array:I

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 384
    .local v6, "colorArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setOptions(Ljava/util/List;)V

    .line 385
    array-length v0, v6

    move/from16 v27, v0

    const/16 v26, 0x0

    :goto_10
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_24

    aget-object v5, v6, v26

    .line 386
    .local v5, "color":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    add-int/lit8 v26, v26, 0x1

    goto :goto_10

    .line 388
    .end local v5    # "color":Ljava/lang/String;
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    sget v29, Lcom/fimi/app/x8s/R$string;->x8_camera_digita:I

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v26 .. v28}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    sget v28, Lcom/fimi/app/x8s/R$string;->x8_camera_digita:I

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setTitleName(Ljava/lang/String;)V

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subParamsController:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->setSubParam(Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;)V

    goto/16 :goto_1

    .line 391
    .end local v6    # "colorArray":[Ljava/lang/String;
    :cond_25
    const-string v26, "camera_style"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_27

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    sget v28, Lcom/fimi/app/x8s/R$string;->x8_camera_style:I

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setTitleName(Ljava/lang/String;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    sget v27, Lcom/fimi/app/x8s/R$array;->x8_photo_style_array:I

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    .line 394
    .restart local v21    # "styleArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    const-string v27, "camera_style"

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamKey(Ljava/lang/String;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setOptions(Ljava/util/List;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getTitleName()Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v26 .. v28}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 397
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v27, v0

    const/16 v26, 0x0

    :goto_11
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_26

    aget-object v13, v21, v26

    .line 398
    .restart local v13    # "mode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    add-int/lit8 v26, v26, 0x1

    goto :goto_11

    .line 400
    .end local v13    # "mode":Ljava/lang/String;
    :cond_26
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 401
    .restart local v10    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v26, "saturation"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    move-object/from16 v27, v0

    const-string v28, "saturation"

    invoke-interface/range {v27 .. v28}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v10, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const-string v26, "contrast"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    move-object/from16 v27, v0

    const-string v28, "contrast"

    invoke-interface/range {v27 .. v28}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v10, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setOptionMap(Ljava/util/LinkedHashMap;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subParamsController:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->setSubParam(Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;)V

    goto/16 :goto_1

    .line 405
    .end local v10    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "styleArray":[Ljava/lang/String;
    :cond_27
    const-string/jumbo v26, "video_quality"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_29

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    sget v27, Lcom/fimi/app/x8s/R$array;->x8_record_quality_array:I

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    .line 407
    .local v15, "qualityArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setOptions(Ljava/util/List;)V

    .line 408
    array-length v0, v15

    move/from16 v27, v0

    const/16 v26, 0x0

    :goto_12
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_28

    aget-object v14, v15, v26

    .line 409
    .local v14, "quality":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    add-int/lit8 v26, v26, 0x1

    goto :goto_12

    .line 411
    .end local v14    # "quality":Ljava/lang/String;
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    sget v29, Lcom/fimi/app/x8s/R$string;->x8_record_quality:I

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v26 .. v28}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    const-string/jumbo v27, "video_quality"

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamKey(Ljava/lang/String;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    sget v28, Lcom/fimi/app/x8s/R$string;->x8_record_quality:I

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setTitleName(Ljava/lang/String;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subParamsController:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->setSubParam(Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;)V

    goto/16 :goto_1

    .line 415
    .end local v15    # "qualityArray":[Ljava/lang/String;
    :cond_29
    const-string/jumbo v26, "video_resolution"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2b

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    sget v27, Lcom/fimi/app/x8s/R$array;->x8_ntsc_resolution_array:I

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    .line 417
    .local v18, "resolutionArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setOptions(Ljava/util/List;)V

    .line 418
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v27, v0

    const/16 v26, 0x0

    :goto_13
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_2a

    aget-object v17, v18, v26

    .line 419
    .local v17, "resolutio":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    add-int/lit8 v26, v26, 0x1

    goto :goto_13

    .line 421
    .end local v17    # "resolutio":Ljava/lang/String;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    sget v29, Lcom/fimi/app/x8s/R$string;->x8_video_resolution:I

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v26 .. v28}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptionMap()Ljava/util/LinkedHashMap;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->matchVideoResolution(Ljava/util/List;Ljava/util/Map;)V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    const-string/jumbo v27, "video_resolution"

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamKey(Ljava/lang/String;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    sget v28, Lcom/fimi/app/x8s/R$string;->x8_video_resolution:I

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setTitleName(Ljava/lang/String;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subParamsController:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->setSubParam(Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;)V

    goto/16 :goto_1

    .line 442
    .end local v18    # "resolutionArray":[Ljava/lang/String;
    :cond_2b
    const-string v26, "system_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    sget v27, Lcom/fimi/app/x8s/R$array;->x8_system_type_array:I

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v25

    .line 444
    .local v25, "typeArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setOptions(Ljava/util/List;)V

    .line 445
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v27, v0

    const/16 v26, 0x0

    :goto_14
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_2c

    aget-object v24, v25, v26

    .line 446
    .local v24, "type":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    add-int/lit8 v26, v26, 0x1

    goto :goto_14

    .line 448
    .end local v24    # "type":Ljava/lang/String;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getOptions()Ljava/util/List;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    sget v29, Lcom/fimi/app/x8s/R$string;->x8_video_type:I

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v26 .. v28}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    const-string v27, "system_type"

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamKey(Ljava/lang/String;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    sget v28, Lcom/fimi/app/x8s/R$string;->x8_video_type:I

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setTitleName(Ljava/lang/String;)V

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subParamsController:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->setSubParam(Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;)V

    goto/16 :goto_1
.end method

.method public initActions()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public initData(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 7
    .param p1, "rtJson"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 482
    if-eqz p1, :cond_14

    const-string v4, "param"

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 484
    const-string v4, "param"

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 485
    .local v2, "paramArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-lez v4, :cond_14

    .line 486
    invoke-static {}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getInstance()Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    move-result-object v3

    .line 487
    .local v3, "paramsValue":Lcom/fimi/x8sdk/entity/X8CameraParamsValue;
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_14

    .line 488
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 489
    .local v1, "object":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v1, :cond_0

    .line 490
    const-string/jumbo v4, "video_quality"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 491
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string/jumbo v5, "video_quality"

    const-string/jumbo v6, "video_quality"

    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v4

    const-string/jumbo v5, "video_quality"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setVideo_quality(Ljava/lang/String;)V

    .line 487
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 493
    :cond_1
    const-string/jumbo v4, "video_resolution"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 494
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string/jumbo v5, "video_resolution"

    const-string/jumbo v6, "video_resolution"

    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v4

    const-string/jumbo v5, "video_resolution"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setVideo_resolution(Ljava/lang/String;)V

    goto :goto_1

    .line 496
    :cond_2
    const-string/jumbo v4, "video_timelapse"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 497
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string/jumbo v5, "video_timelapse"

    const-string/jumbo v6, "video_timelapse"

    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v4

    const-string/jumbo v5, "video_timelapse"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setVideo_timelapse(Ljava/lang/String;)V

    goto :goto_1

    .line 500
    :cond_3
    const-string v4, "photo_timelapse"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 501
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string v5, "photo_timelapse"

    const-string v6, "photo_timelapse"

    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v4

    const-string v5, "photo_timelapse"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setPhoto_timelapse(Ljava/lang/String;)V

    goto :goto_1

    .line 503
    :cond_4
    const-string v4, "record_mode"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 504
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string v5, "record_mode"

    const-string v6, "record_mode"

    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v4

    const-string v5, "record_mode"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setRecord_mode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 506
    :cond_5
    const-string v4, "capture_mode"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 507
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string v5, "capture_mode"

    const-string v6, "capture_mode"

    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v4

    const-string v5, "capture_mode"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setCapture_mode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 509
    :cond_6
    const-string v4, "photo_format"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 510
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string v5, "photo_format"

    const-string v6, "photo_format"

    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v4

    const-string v5, "photo_format"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setPhoto_format(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 512
    :cond_7
    const-string v4, "photo_size"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 513
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string v5, "photo_size"

    const-string v6, "photo_size"

    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v4

    const-string v5, "photo_size"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setPhoto_size(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 515
    :cond_8
    const-string v4, "ae_bias"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 516
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string v5, "ae_bias"

    const-string v6, "ae_bias"

    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v4

    const-string v5, "ae_bias"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setAe_bias(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 518
    :cond_9
    const-string v4, "iso"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 519
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string v5, "iso"

    const-string v6, "iso"

    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v4

    const-string v5, "iso"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setIso(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 521
    :cond_a
    const-string v4, "de_control"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 522
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string v5, "de_control"

    const-string v6, "de_control"

    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v4

    const-string v5, "de_control"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setDe_control(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 524
    :cond_b
    const-string v4, "shutter_time"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 525
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string v5, "shutter_time"

    const-string v6, "shutter_time"

    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v4

    const-string v5, "shutter_time"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setShutter_time(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 527
    :cond_c
    const-string v4, "awb"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 528
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string v5, "awb"

    const-string v6, "awb"

    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v4

    const-string v5, "awb"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setAwb(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 530
    :cond_d
    const-string v4, "metering_mode"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 531
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string v5, "metering_mode"

    const-string v6, "metering_mode"

    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v4

    const-string v5, "metering_mode"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setMetering_mode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 533
    :cond_e
    const-string v4, "digital_effect"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 534
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string v5, "digital_effect"

    const-string v6, "digital_effect"

    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v4

    const-string v5, "digital_effect"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setDigital_effect(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 536
    :cond_f
    const-string v4, "saturation"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 537
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string v5, "saturation"

    const-string v6, "saturation"

    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v4

    const-string v5, "saturation"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setSaturation(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 539
    :cond_10
    const-string v4, "contrast"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 540
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string v5, "contrast"

    const-string v6, "contrast"

    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v4

    const-string v5, "contrast"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setContrast(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 542
    :cond_11
    const-string v4, "sharpness"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 543
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string v5, "sharpness"

    const-string v6, "sharpness"

    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v4

    const-string v5, "sharpness"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setSharpness(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 545
    :cond_12
    const-string v4, "system_type"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 546
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string v5, "system_type"

    const-string v6, "system_type"

    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v4

    const-string v5, "system_type"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setSystem_type(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 548
    :cond_13
    const-string v4, "camera_style"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 549
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string v5, "camera_style"

    const-string v6, "camera_style"

    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 555
    .end local v0    # "j":I
    .end local v1    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "paramArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v3    # "paramsValue":Lcom/fimi/x8sdk/entity/X8CameraParamsValue;
    :cond_14
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramController:Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;

    if-eqz v4, :cond_15

    .line 556
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramController:Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;

    sget-object v5, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    iget-object v6, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    invoke-virtual {v4, v5, v6}, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->updateMode(Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;Ljava/util/Map;)V

    .line 558
    :cond_15
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->tokenEnable:Z

    .line 559
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    .line 95
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_mode_setting_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->handleView:Landroid/view/View;

    .line 96
    sget v0, Lcom/fimi/app/x8s/R$id;->param_default_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramViewStub:Landroid/view/ViewStub;

    .line 97
    sget v0, Lcom/fimi/app/x8s/R$id;->sub_param_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subViewStub:Landroid/view/ViewStub;

    .line 98
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramView:Landroid/view/View;

    .line 101
    :cond_0
    new-instance v0, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;

    invoke-direct {v0, p1}, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramController:Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;

    .line 102
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramController:Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;

    invoke-virtual {v0, p0}, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->setParamListener(Lcom/fimi/app/x8s/viewHolder/CameraParamListener;)V

    .line 103
    return-void
.end method

.method public varargs itemReturnBack(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "paramKey"    # Ljava/lang/String;
    .param p2, "paramValue"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 461
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramController:Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->openUi()V

    .line 462
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subParamsController:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->closeUi()V

    .line 463
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->tokenEnable:Z

    if-eqz v0, :cond_1

    .line 464
    if-eqz p1, :cond_0

    .line 465
    const-string v0, "camera_style"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 466
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string v1, "saturation"

    aget-object v2, p2, v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    const-string v1, "contrast"

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramController:Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;

    sget-object v1, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->updateMode(Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;Ljava/util/Map;)V

    .line 473
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->mainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    if-eqz v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->mainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;->initOptionsValue()V

    .line 477
    :cond_1
    return-void

    .line 469
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    aget-object v1, p2, v2

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 839
    const/4 v0, 0x0

    return v0
.end method

.method public onComplete(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;)V
    .locals 12
    .param p1, "rt"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v11, 0x0

    .line 581
    if-eqz p1, :cond_0

    .line 582
    const-class v8, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;

    invoke-static {p1, v8}, Lcom/alibaba/fastjson/JSON;->toJavaObject(Lcom/alibaba/fastjson/JSON;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;

    .line 583
    .local v5, "paramsJson":Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;
    invoke-virtual {v5}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getParam()Ljava/lang/String;

    move-result-object v4

    .line 584
    .local v4, "paramType":Ljava/lang/String;
    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    .line 585
    invoke-virtual {v5}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getMsg_id()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 675
    :goto_0
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subParamsController:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    if-eqz v8, :cond_0

    .line 676
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subParamsController:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    iget-object v9, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v8, v9}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->setSubParam(Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;)V

    .line 680
    .end local v4    # "paramType":Ljava/lang/String;
    .end local v5    # "paramsJson":Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;
    :cond_0
    return-void

    .line 587
    .restart local v4    # "paramType":Ljava/lang/String;
    .restart local v5    # "paramsJson":Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;
    :pswitch_0
    invoke-static {}, Lcom/fimi/host/HostLogBack;->getInstance()Lcom/fimi/host/HostLogBack;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Alanqiu onComplete ++++0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/fimi/host/HostLogBack;->writeLog(Ljava/lang/String;)V

    .line 588
    invoke-virtual {v5}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getOptions()Ljava/util/List;

    move-result-object v1

    .line 589
    .local v1, "mlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v8}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getTitleName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v11, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 590
    const-string v8, "shutter_time"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 591
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    const-string v9, "shutter_time"

    invoke-virtual {v8, v9}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamKey(Ljava/lang/String;)V

    .line 653
    :cond_1
    :goto_1
    invoke-virtual {v5}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getOptions()Ljava/util/List;

    move-result-object v3

    .line 654
    .local v3, "options":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "metering_mode"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 655
    if-eqz v3, :cond_13

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_13

    .line 656
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v0, v8, -0x1

    .local v0, "m":I
    :goto_2
    if-ltz v0, :cond_13

    .line 657
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 658
    .local v7, "val":Ljava/lang/String;
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/fimi/app/x8s/R$string;->x8_meter_roi:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 659
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 656
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 592
    .end local v0    # "m":I
    .end local v3    # "options":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "val":Ljava/lang/String;
    :cond_3
    const-string v8, "photo_format"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 593
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v8}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->clearOptions()V

    .line 594
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    const-string v9, "photo_format"

    invoke-virtual {v8, v9}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamKey(Ljava/lang/String;)V

    .line 595
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v8, v1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setOptions(Ljava/util/List;)V

    goto :goto_1

    .line 596
    :cond_4
    const-string v8, "photo_size"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 597
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v8}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->clearOptions()V

    .line 598
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    const-string v9, "photo_size"

    invoke-virtual {v8, v9}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamKey(Ljava/lang/String;)V

    .line 599
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v8, v1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setOptions(Ljava/util/List;)V

    .line 600
    invoke-static {}, Lcom/fimi/host/HostLogBack;->getInstance()Lcom/fimi/host/HostLogBack;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Alanqiu onComplete ++++111"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/fimi/host/HostLogBack;->writeLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 601
    :cond_5
    const-string v8, "awb"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 602
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v8}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->clearOptions()V

    .line 603
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    const-string v9, "awb"

    invoke-virtual {v8, v9}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamKey(Ljava/lang/String;)V

    .line 605
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v8, v1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setOptions(Ljava/util/List;)V

    goto/16 :goto_1

    .line 606
    :cond_6
    const-string v8, "metering_mode"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 607
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v8}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->clearOptions()V

    .line 608
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    const-string v9, "metering_mode"

    invoke-virtual {v8, v9}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamKey(Ljava/lang/String;)V

    .line 609
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v8, v1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setOptions(Ljava/util/List;)V

    goto/16 :goto_1

    .line 610
    :cond_7
    const-string v8, "digital_effect"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 611
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v8}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->clearOptions()V

    .line 612
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    const-string v9, "digital_effect"

    invoke-virtual {v8, v9}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamKey(Ljava/lang/String;)V

    .line 613
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v8, v1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setOptions(Ljava/util/List;)V

    goto/16 :goto_1

    .line 614
    :cond_8
    const-string v8, "system_type"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "system_type"

    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 615
    :cond_9
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v8}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->clearOptions()V

    .line 616
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    const-string v9, "system_type"

    invoke-virtual {v8, v9}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamKey(Ljava/lang/String;)V

    .line 617
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v8, v1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setOptions(Ljava/util/List;)V

    goto/16 :goto_1

    .line 618
    :cond_a
    const-string/jumbo v8, "video_quality"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 619
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v8}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->clearOptions()V

    .line 620
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    const-string/jumbo v9, "video_quality"

    invoke-virtual {v8, v9}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamKey(Ljava/lang/String;)V

    .line 621
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v8, v1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setOptions(Ljava/util/List;)V

    goto/16 :goto_1

    .line 622
    :cond_b
    const-string/jumbo v8, "video_resolution"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 624
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    const-string/jumbo v9, "video_resolution"

    invoke-virtual {v8, v9}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setParamKey(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 626
    :cond_c
    const-string v8, "record_mode"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 627
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/fimi/app/x8s/R$array;->x8_record_mode_array:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 628
    .local v2, "modeArray":[Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 629
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v8}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getTitleName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v11, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 630
    const/4 v0, 0x0

    .restart local v0    # "m":I
    :goto_4
    array-length v8, v2

    if-ge v0, v8, :cond_d

    .line 631
    aget-object v8, v2, v0

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 633
    :cond_d
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v8, v1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setOptions(Ljava/util/List;)V

    goto/16 :goto_1

    .line 634
    .end local v0    # "m":I
    .end local v2    # "modeArray":[Ljava/lang/String;
    :cond_e
    const-string v8, "capture_mode"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 635
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/fimi/app/x8s/R$array;->x8_photo_mode_array:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 636
    .restart local v2    # "modeArray":[Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 637
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v8}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getTitleName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v11, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 638
    const/4 v0, 0x0

    .restart local v0    # "m":I
    :goto_5
    array-length v8, v2

    if-ge v0, v8, :cond_f

    .line 639
    aget-object v8, v2, v0

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 641
    :cond_f
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v8, v1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setOptions(Ljava/util/List;)V

    goto/16 :goto_1

    .line 644
    .end local v0    # "m":I
    .end local v2    # "modeArray":[Ljava/lang/String;
    :cond_10
    const-string v8, "camera_style"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 645
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/fimi/app/x8s/R$array;->x8_photo_style_array:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 646
    .local v6, "styleArray":[Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 647
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v8}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->getTitleName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v11, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 648
    const/4 v0, 0x0

    .restart local v0    # "m":I
    :goto_6
    array-length v8, v6

    if-ge v0, v8, :cond_11

    .line 649
    aget-object v8, v6, v0

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 651
    :cond_11
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v8, v1}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setOptions(Ljava/util/List;)V

    goto/16 :goto_1

    .line 661
    .end local v6    # "styleArray":[Ljava/lang/String;
    .restart local v3    # "options":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "val":Ljava/lang/String;
    :cond_12
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/fimi/app/x8s/R$string;->x8_colours_flog:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 662
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fimi/x8sdk/modulestate/StateManager;->isIs4KResolution()Z

    move-result v8

    if-nez v8, :cond_2

    .line 663
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 671
    .end local v0    # "m":I
    .end local v7    # "val":Ljava/lang/String;
    :cond_13
    iget-object v8, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->itemEntity:Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;

    invoke-virtual {v8, v3}, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->setOptions(Ljava/util/List;)V

    .line 672
    invoke-direct {p0, v3}, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->matchNickKey(Ljava/util/List;)V

    goto/16 :goto_0

    .line 585
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public onDroneConnected(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 792
    invoke-super {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->onDroneConnected(Z)V

    .line 793
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->tokenEnable:Z

    if-eq v0, p1, :cond_0

    .line 794
    iput-boolean p1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->tokenEnable:Z

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramController:Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;

    if-eqz v0, :cond_1

    .line 796
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramController:Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->onDroneConnected(Z)V

    .line 798
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subParamsController:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    if-eqz v0, :cond_2

    .line 799
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subParamsController:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->onDroneConnected(Z)V

    .line 801
    :cond_2
    return-void
.end method

.method public openUi()V
    .locals 1

    .prologue
    .line 563
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->openUi()V

    .line 564
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramController:Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->openUi()V

    .line 565
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subParamsController:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subParamsController:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->closeUi()V

    .line 568
    :cond_0
    return-void
.end method

.method public setCameraManager(Lcom/fimi/x8sdk/controller/CameraManager;)V
    .locals 0
    .param p1, "cameraManager"    # Lcom/fimi/x8sdk/controller/CameraManager;

    .prologue
    .line 68
    if-nez p1, :cond_0

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_0
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    goto :goto_0
.end method

.method public setCurModel()V
    .locals 4

    .prologue
    .line 73
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramController:Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramController:Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;

    sget-object v2, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    invoke-virtual {v1, v2, v3}, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->updateMode(Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;Ljava/util/Map;)V

    .line 75
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 77
    .local v0, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_0

    .line 82
    .end local v0    # "iterator":Ljava/util/Iterator;
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->paramController:Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/camera/X8CameraParamsController;->openUi()V

    .line 83
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subParamsController:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->subParamsController:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->closeUi()V

    .line 86
    :cond_1
    return-void
.end method

.method public setMainSetListener(Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;)V
    .locals 0
    .param p1, "mainSetListener"    # Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    .prologue
    .line 806
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->mainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    .line 807
    return-void
.end method
