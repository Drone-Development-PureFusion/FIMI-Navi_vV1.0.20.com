.class Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$6;
.super Ljava/lang/Object;
.source "X8MediaActivity.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->showDialogTip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$6;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeft()V
    .locals 0

    .prologue
    .line 413
    return-void
.end method

.method public onRight()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$6;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->finish()V

    .line 418
    return-void
.end method
