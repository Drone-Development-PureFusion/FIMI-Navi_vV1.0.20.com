.class public Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;
.source "X8MainCameraSettingController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;
    }
.end annotation


# instance fields
.field private camerSetting:Landroid/widget/ImageView;

.field private cameraMainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

.field private cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

.field private cameraOtherController:Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;

.field private cameraSettingblank:Landroid/view/View;

.field private context:Landroid/content/Context;

.field private curMenu:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;

.field private curMode:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

.field curParam:Ljava/lang/String;

.field private evShutterISOController:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

.field private fiveKeyDefineManager:Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;

.field public jsonUiCallBackListener:Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

.field private metermingModeOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private modeSettingView:Landroid/view/View;

.field private modleStub:Landroid/view/ViewStub;

.field private otherSetting:Landroid/widget/ImageView;

.field private otherSettingStub:Landroid/view/ViewStub;

.field private otherSettingView:Landroid/view/View;

.field private paramView:Landroid/view/View;

.field private paramsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

.field private photoModeOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private recordModeOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private recordSetting:Landroid/widget/ImageView;

.field private rlCameraSetting:Landroid/view/View;

.field strings:[Ljava/lang/String;

.field private takePhotoSettingContoller:Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;

.field private x8ISOViewStub:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;-><init>(Landroid/view/View;)V

    .line 88
    sget-object v0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;->normal:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->curMenu:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;

    .line 91
    sget-object v0, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->takePhoto:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->curMode:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    .line 475
    new-instance v0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$5;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$5;-><init>(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->jsonUiCallBackListener:Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->context:Landroid/content/Context;

    .line 105
    invoke-static {}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getInstance()Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->paramsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->contentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->cameraMainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->MAX_WIDTH:I

    return p1
.end method

.method static synthetic access$1100(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->metermingModeOptions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->metermingModeOptions:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Lcom/fimi/x8sdk/controller/CameraManager;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->recordModeOptions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->recordModeOptions:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->photoModeOptions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->photoModeOptions:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Lcom/fimi/x8sdk/entity/X8CameraParamsValue;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->paramsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->rlCameraSetting:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$302(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->width:I

    return p1
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->contentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->contentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->contentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    .prologue
    .line 38
    iget v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->width:I

    return v0
.end method

.method static synthetic access$802(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;)Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;
    .param p1, "x1"    # Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->curMenu:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;

    return-object p1
.end method

.method static synthetic access$900(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->evShutterISOController:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    return-object v0
.end method

.method private menuSelect(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;)V
    .locals 3
    .param p1, "mode"    # Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 166
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->curMenu:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;

    .line 167
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->camerSetting:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 168
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->otherSetting:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 169
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->recordSetting:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 170
    sget-object v0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;->normal:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;

    if-ne p1, v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->cameraOtherController:Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->closeUi()V

    .line 172
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->evShutterISOController:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->openUi()V

    .line 173
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->takePhotoSettingContoller:Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->closeUi()V

    .line 174
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->camerSetting:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    sget-object v0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;->camera:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;

    if-ne p1, v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->cameraOtherController:Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->closeUi()V

    .line 177
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->evShutterISOController:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->closeUi()V

    .line 178
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->takePhotoSettingContoller:Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->openUi()V

    .line 179
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->recordSetting:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 180
    :cond_2
    sget-object v0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;->other:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;

    if-ne p1, v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->cameraOtherController:Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->openUi()V

    .line 182
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->evShutterISOController:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->closeUi()V

    .line 183
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->takePhotoSettingContoller:Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->closeUi()V

    .line 184
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->otherSetting:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0
.end method


# virtual methods
.method public closeAiUi(Z)V
    .locals 7
    .param p1, "b"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 222
    invoke-virtual {p0, v6}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->enableGesture(Z)V

    .line 223
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->isShow:Z

    if-eqz v1, :cond_0

    .line 224
    iput-boolean v5, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->isShow:Z

    .line 225
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->contentView:Landroid/view/View;

    const-string/jumbo v2, "translationX"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    iget v4, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->width:I

    int-to-float v4, v4

    aput v4, v3, v6

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 226
    .local v0, "translationRight":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 227
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 228
    new-instance v1, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$2;-><init>(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 239
    .end local v0    # "translationRight":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->cameraMainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    if-eqz v1, :cond_1

    .line 240
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->cameraMainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    invoke-interface {v1, p1}, Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;->showTopAndBottom(Z)V

    .line 242
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->takePhotoSettingContoller:Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;

    if-eqz v1, :cond_2

    .line 243
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->takePhotoSettingContoller:Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->closeUi()V

    .line 245
    :cond_2
    return-void
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->initCameraParams()V

    .line 293
    return-void
.end method

.method public enableGesture(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 516
    sput-boolean p1, Lcom/fimi/app/x8s/X8Application;->enableGesture:Z

    .line 518
    return-void
.end method

.method public fiveKeySetContrast(Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;I)Ljava/lang/String;
    .locals 4
    .param p1, "parameterType"    # Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;
    .param p2, "param"    # I

    .prologue
    .line 432
    const-string v0, ""

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->curParam:Ljava/lang/String;

    .line 433
    sget-object v0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;->ORIGINAL_VALUE:Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;

    if-ne p1, v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->fiveKeyDefineManager:Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;

    const-string v1, "contrast"

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->jsonUiCallBackListener:Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    invoke-virtual {v0, v1, p2, p1, v2}, Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;->setCameraContrast(Ljava/lang/String;ILcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->curParam:Ljava/lang/String;

    .line 438
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->curParam:Ljava/lang/String;

    return-object v0

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->fiveKeyDefineManager:Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;

    const-string v1, "contrast"

    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->getCurrentContrast()I

    move-result v2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->jsonUiCallBackListener:Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;->setCameraContrast(Ljava/lang/String;ILcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->curParam:Ljava/lang/String;

    goto :goto_0
.end method

.method public fiveKeySetMetering()V
    .locals 5

    .prologue
    .line 452
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/CameraState;->getToken()I

    move-result v0

    if-gtz v0, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->metermingModeOptions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->metermingModeOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->fiveKeyDefineManager:Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;

    const-string v1, "metering_mode"

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->metermingModeOptions:Ljava/util/List;

    const-string v3, "metering_mode"

    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->getCurrentParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->jsonUiCallBackListener:Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;->setFiveKeyCameraKeyParams(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->curParam:Ljava/lang/String;

    goto :goto_0
.end method

.method public fiveKeySetSaturation(Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;I)Ljava/lang/String;
    .locals 4
    .param p1, "parameterType"    # Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;
    .param p2, "param"    # I

    .prologue
    .line 442
    const-string v0, ""

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->curParam:Ljava/lang/String;

    .line 443
    sget-object v0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;->ORIGINAL_VALUE:Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;

    if-ne p1, v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->fiveKeyDefineManager:Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;

    const-string v1, "saturation"

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->jsonUiCallBackListener:Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    invoke-virtual {v0, v1, p2, p1, v2}, Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;->setCameraSaturation(Ljava/lang/String;ILcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->curParam:Ljava/lang/String;

    .line 448
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->curParam:Ljava/lang/String;

    return-object v0

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->fiveKeyDefineManager:Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;

    const-string v1, "saturation"

    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->getCurrentSaturation()I

    move-result v2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->jsonUiCallBackListener:Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;->setCameraSaturation(Ljava/lang/String;ILcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->curParam:Ljava/lang/String;

    goto :goto_0
.end method

.method public fiveKeyShootModeSwitch()V
    .locals 5

    .prologue
    .line 458
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/CameraState;->getToken()I

    move-result v0

    if-gtz v0, :cond_1

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    sget-object v0, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->takePhoto:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    if-ne v0, v1, :cond_2

    .line 460
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->photoModeOptions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->photoModeOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->fiveKeyDefineManager:Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;

    const-string v1, "capture_mode"

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->photoModeOptions:Ljava/util/List;

    const-string v3, "capture_mode"

    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->getCurrentParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->jsonUiCallBackListener:Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;->setFiveKeyCameraKeyParams(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->curParam:Ljava/lang/String;

    goto :goto_0

    .line 463
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->recordModeOptions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->recordModeOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->fiveKeyDefineManager:Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;

    const-string v1, "record_mode"

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->recordModeOptions:Ljava/util/List;

    const-string v3, "record_mode"

    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->getCurrentParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->jsonUiCallBackListener:Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;->setFiveKeyCameraKeyParams(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->curParam:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCurrentContrast()I
    .locals 3

    .prologue
    .line 399
    const/4 v1, 0x0

    .line 400
    .local v1, "currentContrast":I
    invoke-static {}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getInstance()Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v0

    .line 401
    .local v0, "curParamsJson":Lcom/fimi/x8sdk/jsonResult/CurParamsJson;
    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v0}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getContrast()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "0"

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 404
    :cond_0
    return v1

    .line 402
    :cond_1
    invoke-virtual {v0}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getContrast()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getCurrentParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 417
    const-string v1, ""

    .line 418
    .local v1, "currentParams":Ljava/lang/String;
    invoke-static {}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getInstance()Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v0

    .line 419
    .local v0, "curParamsJson":Lcom/fimi/x8sdk/jsonResult/CurParamsJson;
    if-eqz v0, :cond_0

    .line 420
    const-string v2, "capture_mode"

    if-ne p1, v2, :cond_1

    .line 421
    invoke-virtual {v0}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getCapture_mode()Ljava/lang/String;

    move-result-object v1

    .line 428
    :cond_0
    :goto_0
    return-object v1

    .line 422
    :cond_1
    const-string v2, "record_mode"

    if-ne p1, v2, :cond_2

    .line 423
    invoke-virtual {v0}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getRecord_mode()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 425
    :cond_2
    invoke-virtual {v0}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getMetering_mode()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentSaturation()I
    .locals 3

    .prologue
    .line 408
    const/4 v1, 0x0

    .line 409
    .local v1, "currentSaturation":I
    invoke-static {}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getInstance()Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v0

    .line 410
    .local v0, "curParamsJson":Lcom/fimi/x8sdk/jsonResult/CurParamsJson;
    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getSaturation()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "0"

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 413
    :cond_0
    return v1

    .line 411
    :cond_1
    invoke-virtual {v0}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getSaturation()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public initActions()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->cameraSettingblank:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->camerSetting:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->recordSetting:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->otherSetting:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    new-instance v0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->otherSettingView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->cameraOtherController:Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;

    .line 144
    new-instance v0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->paramView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->evShutterISOController:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    .line 145
    new-instance v0, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->modeSettingView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->takePhotoSettingContoller:Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;

    .line 146
    sget-object v0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;->normal:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->curMenu:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;

    .line 147
    sget-object v0, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->takePhoto:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->curMode:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    .line 149
    return-void
.end method

.method public initCameraParams()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4;-><init>(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/CameraManager;->getCameraCurParams(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 381
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 5
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 110
    sget v3, Lcom/fimi/app/x8s/R$id;->x8_camera_setting_layout:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->handleView:Landroid/view/View;

    .line 111
    sget v3, Lcom/fimi/app/x8s/R$id;->x8_rl_main_camera_setting:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->rlCameraSetting:Landroid/view/View;

    .line 112
    sget v3, Lcom/fimi/app/x8s/R$id;->x8_rl_main_camera_setting_blank:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->cameraSettingblank:Landroid/view/View;

    .line 113
    sget v3, Lcom/fimi/app/x8s/R$id;->rl_main_camera_setting_content:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->contentView:Landroid/view/View;

    .line 114
    sget v3, Lcom/fimi/app/x8s/R$id;->stub_camera_other_setting:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->otherSettingStub:Landroid/view/ViewStub;

    .line 115
    sget v3, Lcom/fimi/app/x8s/R$id;->stub_camera_iso_setting:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->x8ISOViewStub:Landroid/view/ViewStub;

    .line 116
    sget v3, Lcom/fimi/app/x8s/R$id;->stub_camera_mode_setting:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->modleStub:Landroid/view/ViewStub;

    .line 117
    sget v3, Lcom/fimi/app/x8s/R$id;->camera_setting_btn:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->camerSetting:Landroid/widget/ImageView;

    .line 118
    sget v3, Lcom/fimi/app/x8s/R$id;->record_setting_btn:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->recordSetting:Landroid/widget/ImageView;

    .line 119
    sget v3, Lcom/fimi/app/x8s/R$id;->other_setting_btn:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->otherSetting:Landroid/widget/ImageView;

    .line 120
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->cameraSettingblank:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->otherSettingStub:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    .line 123
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->x8ISOViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 124
    .local v0, "isoView":Landroid/view/View;
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->modleStub:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 125
    .local v1, "modeView":Landroid/view/View;
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->otherSettingView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 126
    sget v3, Lcom/fimi/app/x8s/R$id;->rl_main_camera_otherSetting_layout:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->otherSettingView:Landroid/view/View;

    .line 127
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->otherSettingView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :cond_0
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->paramView:Landroid/view/View;

    if-nez v3, :cond_1

    .line 130
    sget v3, Lcom/fimi/app/x8s/R$id;->camera_params_setting:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->paramView:Landroid/view/View;

    .line 132
    :cond_1
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->modeSettingView:Landroid/view/View;

    if-nez v3, :cond_2

    .line 133
    sget v3, Lcom/fimi/app/x8s/R$id;->x8_mode_setting_layout:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->modeSettingView:Landroid/view/View;

    .line 135
    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 154
    .local v0, "id":I
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_rl_main_camera_setting_blank:I

    if-ne v0, v1, :cond_1

    .line 155
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->closeAiUi(Z)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    sget v1, Lcom/fimi/app/x8s/R$id;->camera_setting_btn:I

    if-ne v0, v1, :cond_2

    .line 157
    sget-object v1, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;->normal:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->menuSelect(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;)V

    goto :goto_0

    .line 158
    :cond_2
    sget v1, Lcom/fimi/app/x8s/R$id;->other_setting_btn:I

    if-ne v0, v1, :cond_3

    .line 159
    sget-object v1, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;->other:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->menuSelect(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;)V

    goto :goto_0

    .line 160
    :cond_3
    sget v1, Lcom/fimi/app/x8s/R$id;->record_setting_btn:I

    if-ne v0, v1, :cond_0

    .line 161
    sget-object v1, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;->camera:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->menuSelect(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;)V

    goto :goto_0
.end method

.method public onDroneConnected(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 385
    invoke-super {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;->onDroneConnected(Z)V

    .line 386
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->evShutterISOController:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->evShutterISOController:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->onDroneConnected(Z)V

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->takePhotoSettingContoller:Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->takePhotoSettingContoller:Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->onDroneConnected(Z)V

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->cameraOtherController:Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;

    if-eqz v0, :cond_2

    .line 393
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->cameraOtherController:Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->onDroneConnected(Z)V

    .line 395
    :cond_2
    return-void
.end method

.method public onISOSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->evShutterISOController:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->evShutterISOController:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->setIOSParamValue(Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void
.end method

.method public parseParamsValue(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4
    .param p1, "rt"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 296
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->evShutterISOController:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    if-eqz v1, :cond_0

    .line 297
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$3;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$3;-><init>(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)V

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v1, v2, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/jsonResult/CameraCurParamsJson;

    .line 299
    .local v0, "curParamsJson":Lcom/fimi/x8sdk/jsonResult/CameraCurParamsJson;
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->evShutterISOController:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    invoke-virtual {v1, v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->initData(Lcom/fimi/x8sdk/jsonResult/CameraCurParamsJson;)V

    .line 301
    .end local v0    # "curParamsJson":Lcom/fimi/x8sdk/jsonResult/CameraCurParamsJson;
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->takePhotoSettingContoller:Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;

    if-eqz v1, :cond_1

    .line 302
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->takePhotoSettingContoller:Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;

    invoke-virtual {v1, p1}, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->initData(Lcom/alibaba/fastjson/JSONObject;)V

    .line 304
    :cond_1
    return-void
.end method

.method public setCameraMainSetListener(Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;)V
    .locals 2
    .param p1, "cameraMainSetListener"    # Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->cameraMainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    .line 60
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->cameraOtherController:Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->cameraOtherController:Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->cameraMainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->setListener(Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->evShutterISOController:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->evShutterISOController:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->cameraMainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->setMainSetListener(Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;)V

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->takePhotoSettingContoller:Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->takePhotoSettingContoller:Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->cameraMainSetListener:Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->setMainSetListener(Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;)V

    .line 69
    :cond_2
    return-void
.end method

.method public setCameraManager(Lcom/fimi/x8sdk/controller/CameraManager;)V
    .locals 1
    .param p1, "cameraManager"    # Lcom/fimi/x8sdk/controller/CameraManager;

    .prologue
    .line 94
    if-nez p1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 95
    :cond_0
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    .line 96
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->evShutterISOController:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->setCameraManager(Lcom/fimi/x8sdk/controller/CameraManager;)V

    .line 97
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->takePhotoSettingContoller:Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->setCameraManager(Lcom/fimi/x8sdk/controller/CameraManager;)V

    .line 98
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->cameraOtherController:Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->setCameraManager(Lcom/fimi/x8sdk/controller/CameraManager;)V

    goto :goto_0
.end method

.method public setEvParamValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->evShutterISOController:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->evShutterISOController:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->setEvParamValue(Ljava/lang/String;)V

    .line 76
    :cond_0
    return-void
.end method

.method public setFiveKeyManager(Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;)V
    .locals 0
    .param p1, "fiveKeyDefineManager"    # Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->fiveKeyDefineManager:Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;

    .line 470
    return-void
.end method

.method public showCameraSettingUI()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 190
    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->enableGesture(Z)V

    .line 191
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->rlCameraSetting:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->curMenu:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->menuSelect(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;)V

    .line 193
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->isShow:Z

    if-nez v1, :cond_0

    .line 194
    iput-boolean v7, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->isShow:Z

    .line 195
    iget v1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->width:I

    if-nez v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->contentView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 197
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->contentView:Landroid/view/View;

    new-instance v2, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$1;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$1;-><init>(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 218
    :cond_0
    :goto_0
    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->enableGesture(Z)V

    .line 219
    return-void

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->contentView:Landroid/view/View;

    const-string/jumbo v2, "translationX"

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget v4, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->width:I

    int-to-float v4, v4

    aput v4, v3, v5

    aput v6, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 214
    .local v0, "animatorY":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 215
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public showCameraStatus(Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;)V
    .locals 2
    .param p1, "cameraStateADV"    # Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;

    .prologue
    .line 252
    sget-object v0, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->takePhoto:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    if-ne v0, v1, :cond_4

    .line 253
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->recordSetting:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_btn_photo_set_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 257
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->cameraOtherController:Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->upSdcardStatus(Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;)V

    .line 258
    sget-object v0, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->curMode:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    if-eq v0, v1, :cond_3

    .line 259
    sget-object v0, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->curMode:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    .line 260
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->evShutterISOController:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->evShutterISOController:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->setCurModle()V

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->takePhotoSettingContoller:Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;

    if-eqz v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->takePhotoSettingContoller:Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraTakePhotoSettingContoller;->setCurModel()V

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->cameraOtherController:Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;

    if-eqz v0, :cond_3

    .line 267
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->cameraOtherController:Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->setCurModle()V

    .line 277
    :cond_3
    return-void

    .line 254
    :cond_4
    sget-object v0, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus;->modelStatus:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;->record:Lcom/fimi/app/x8s/controls/camera/CameraParamStatus$CameraModelStatus;

    if-ne v0, v1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->recordSetting:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_btn_record_set_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
