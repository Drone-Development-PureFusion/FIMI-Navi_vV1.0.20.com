.class Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$1;
.super Ljava/lang/Object;
.source "X8UpdatingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->doTrans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$1;->this$0:Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 89
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fimi/app/x8s/manager/X8FpvManager;->isUpdateing:Z

    .line 90
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$1;->this$0:Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->finish()V

    .line 91
    return-void
.end method
