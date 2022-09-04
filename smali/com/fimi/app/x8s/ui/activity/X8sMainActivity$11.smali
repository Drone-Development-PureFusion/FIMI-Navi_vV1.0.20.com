.class Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$11;
.super Ljava/lang/Object;
.source "X8sMainActivity.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IX8MainCoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .prologue
    .line 1044
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$11;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverListener(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$11;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->rlCover:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1048
    return-void
.end method
