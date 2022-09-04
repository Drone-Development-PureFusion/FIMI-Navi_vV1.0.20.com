.class Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity$2;
.super Ljava/lang/Object;
.source "X8UpdateDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->doTrans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->finish()V

    .line 88
    return-void
.end method
