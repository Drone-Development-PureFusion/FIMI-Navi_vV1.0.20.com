.class Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler$1;
.super Ljava/lang/Thread;
.source "X8DetectionControler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->initTensortfloow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler$1;->this$0:Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 91
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler$1;->this$0:Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;

    invoke-static {v0}, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->access$000(Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;)Lcom/fimi/app/x8s/tensortfloow/Classifier;

    move-result-object v0

    if-nez v0, :cond_0

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler$1;->this$0:Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;

    iget-object v1, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler$1;->this$0:Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;

    .line 94
    invoke-static {v1}, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->access$100(Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "detect_ssd_new.mp3"

    const-string v3, "file:///android_asset/coco_labels_list.txt"

    const/16 v4, 0x12c

    iget-object v5, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler$1;->this$0:Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;

    .line 95
    invoke-static {v5}, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->access$200(Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;)Z

    move-result v5

    .line 93
    invoke-static {v1, v2, v3, v4, v5}, Lcom/fimi/app/x8s/tensortfloow/TFLiteObjectDetectionAPIModel;->create(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/fimi/app/x8s/tensortfloow/Classifier;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->access$002(Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;Lcom/fimi/app/x8s/tensortfloow/Classifier;)Lcom/fimi/app/x8s/tensortfloow/Classifier;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    goto :goto_0
.end method
