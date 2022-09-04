.class Lcom/fimi/app/x8s/widget/X8CustomSeekBar$1;
.super Lcom/fimi/app/x8s/interfaces/LongClickListener;
.source "X8CustomSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/widget/X8CustomSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/widget/X8CustomSeekBar;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/widget/X8CustomSeekBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    invoke-direct {p0}, Lcom/fimi/app/x8s/interfaces/LongClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public longClickCallback(I)V
    .locals 2
    .param p1, "viewId"    # I

    .prologue
    .line 115
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_add:I

    if-ne p1, v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->access$000(Lcom/fimi/app/x8s/widget/X8CustomSeekBar;)I

    move-result v0

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    invoke-static {v1}, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->access$100(Lcom/fimi/app/x8s/widget/X8CustomSeekBar;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->access$008(Lcom/fimi/app/x8s/widget/X8CustomSeekBar;)I

    .line 118
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    invoke-static {v1}, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->access$000(Lcom/fimi/app/x8s/widget/X8CustomSeekBar;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->setProgress(I)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_reduce:I

    if-ne p1, v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->access$000(Lcom/fimi/app/x8s/widget/X8CustomSeekBar;)I

    move-result v0

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    invoke-static {v1}, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->access$200(Lcom/fimi/app/x8s/widget/X8CustomSeekBar;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->access$010(Lcom/fimi/app/x8s/widget/X8CustomSeekBar;)I

    .line 124
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    invoke-static {v1}, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->access$000(Lcom/fimi/app/x8s/widget/X8CustomSeekBar;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method public onFingerUp(I)V
    .locals 3
    .param p1, "viewId"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->access$300(Lcom/fimi/app/x8s/widget/X8CustomSeekBar;)Lcom/fimi/app/x8s/widget/X8CustomSeekBar$onSeekValueSetListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->access$300(Lcom/fimi/app/x8s/widget/X8CustomSeekBar;)Lcom/fimi/app/x8s/widget/X8CustomSeekBar$onSeekValueSetListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8CustomSeekBar$1;->this$0:Lcom/fimi/app/x8s/widget/X8CustomSeekBar;

    invoke-static {v2}, Lcom/fimi/app/x8s/widget/X8CustomSeekBar;->access$000(Lcom/fimi/app/x8s/widget/X8CustomSeekBar;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/fimi/app/x8s/widget/X8CustomSeekBar$onSeekValueSetListener;->onSeekValueSet(II)V

    .line 135
    :cond_0
    return-void
.end method
