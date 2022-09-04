.class Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout$4;
.super Ljava/lang/Object;
.source "X8VerticalSeekBarValueLayout.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->runRxAnroid()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observer",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout$4;->this$0:Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 182
    return-void
.end method

.method public onNext(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "cities"    # Ljava/lang/Integer;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout$4;->this$0:Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->access$200(Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout$4;->this$0:Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->access$202(Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;I)I

    .line 188
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout$4;->this$0:Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout$4;->this$0:Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;

    invoke-static {v1}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->access$200(Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->sendJsonCmdSetFocuse(I)V

    .line 190
    :cond_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 173
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout$4;->onNext(Ljava/lang/Integer;)V

    return-void
.end method
