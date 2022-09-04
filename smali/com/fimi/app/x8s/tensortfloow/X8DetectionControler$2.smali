.class Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler$2;
.super Ljava/lang/Thread;
.source "X8DetectionControler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->runThread()V
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
    .line 164
    iput-object p1, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler$2;->this$0:Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler$2;->this$0:Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->runTf()V

    .line 167
    return-void
.end method
