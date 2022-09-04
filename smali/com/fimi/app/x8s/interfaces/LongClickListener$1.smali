.class Lcom/fimi/app/x8s/interfaces/LongClickListener$1;
.super Ljava/lang/Object;
.source "LongClickListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/interfaces/LongClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/interfaces/LongClickListener;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/interfaces/LongClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/interfaces/LongClickListener;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/fimi/app/x8s/interfaces/LongClickListener$1;->this$0:Lcom/fimi/app/x8s/interfaces/LongClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fimi/app/x8s/interfaces/LongClickListener$1;->this$0:Lcom/fimi/app/x8s/interfaces/LongClickListener;

    invoke-static {v0}, Lcom/fimi/app/x8s/interfaces/LongClickListener;->access$000(Lcom/fimi/app/x8s/interfaces/LongClickListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/fimi/app/x8s/interfaces/LongClickListener$1;->this$0:Lcom/fimi/app/x8s/interfaces/LongClickListener;

    invoke-static {v0}, Lcom/fimi/app/x8s/interfaces/LongClickListener;->access$100(Lcom/fimi/app/x8s/interfaces/LongClickListener;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    iget-object v0, p0, Lcom/fimi/app/x8s/interfaces/LongClickListener$1;->this$0:Lcom/fimi/app/x8s/interfaces/LongClickListener;

    iget-object v1, p0, Lcom/fimi/app/x8s/interfaces/LongClickListener$1;->this$0:Lcom/fimi/app/x8s/interfaces/LongClickListener;

    invoke-static {v1}, Lcom/fimi/app/x8s/interfaces/LongClickListener;->access$200(Lcom/fimi/app/x8s/interfaces/LongClickListener;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/interfaces/LongClickListener;->longClickCallback(I)V

    .line 40
    :cond_0
    return-void
.end method
