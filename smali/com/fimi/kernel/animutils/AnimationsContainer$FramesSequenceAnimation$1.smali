.class Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation$1;
.super Ljava/lang/Object;
.source "AnimationsContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;


# direct methods
.method constructor <init>(Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation$1;->this$1:Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 123
    iget-object v4, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation$1;->this$1:Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;

    invoke-static {v4}, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->access$000(Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;)Ljava/lang/ref/SoftReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 124
    .local v3, "imageView":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation$1;->this$1:Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;

    invoke-static {v4}, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->access$100(Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v3, :cond_2

    .line 125
    :cond_0
    iget-object v4, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation$1;->this$1:Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->access$202(Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;Z)Z

    .line 126
    iget-object v4, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation$1;->this$1:Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;

    invoke-static {v4}, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->access$300(Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;)Lcom/fimi/kernel/animutils/AnimationsContainer$OnAnimationStoppedListener;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 127
    iget-object v4, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation$1;->this$1:Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;

    invoke-static {v4}, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->access$300(Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;)Lcom/fimi/kernel/animutils/AnimationsContainer$OnAnimationStoppedListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/fimi/kernel/animutils/AnimationsContainer$OnAnimationStoppedListener;->AnimationStopped()V

    .line 157
    :cond_1
    :goto_0
    return-void

    .line 132
    :cond_2
    iget-object v4, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation$1;->this$1:Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->access$202(Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;Z)Z

    .line 134
    iget-object v4, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation$1;->this$1:Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;

    invoke-static {v4}, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->access$500(Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation$1;->this$1:Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;

    invoke-static {v5}, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->access$400(Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    invoke-virtual {v3}, Landroid/widget/ImageView;->isShown()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 137
    iget-object v4, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation$1;->this$1:Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;

    invoke-static {v4}, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->access$600(Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;)I

    move-result v2

    .line 138
    .local v2, "imageRes":I
    iget-object v4, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation$1;->this$1:Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;

    invoke-static {v4}, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->access$700(Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 139
    const/4 v0, 0x0

    .line 141
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {v3}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation$1;->this$1:Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;

    invoke-static {v5}, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->access$800(Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    invoke-static {v4, v2, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 145
    :goto_1
    if-eqz v0, :cond_3

    .line 146
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 148
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 149
    iget-object v4, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation$1;->this$1:Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;

    invoke-static {v4}, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->access$700(Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 150
    iget-object v4, p0, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation$1;->this$1:Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;->access$702(Lcom/fimi/kernel/animutils/AnimationsContainer$FramesSequenceAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_0

    .line 153
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
