.class Lcom/fimi/app/x8s/controls/X8MapVideoController$1;
.super Ljava/lang/Object;
.source "X8MapVideoController.java"

# interfaces
.implements Lcom/fimi/app/x8s/media/IFrameDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/X8MapVideoController;->initViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/X8MapVideoController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/X8MapVideoController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/X8MapVideoController;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController$1;->this$0:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountFrame(III)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "remainder"    # I
    .param p3, "fpvSize"    # I

    .prologue
    .line 180
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MapVideoController$1;->this$0:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->access$000(Lcom/fimi/app/x8s/controls/X8MapVideoController;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fimi/x8sdk/connect/datatype/JsonDataChanel;->testString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    return-void
.end method
