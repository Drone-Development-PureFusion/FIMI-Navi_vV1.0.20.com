.class Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2;
.super Ljava/lang/Object;
.source "X8UpdatingActivity.java"

# interfaces
.implements Lcom/fimi/x8sdk/ivew/IX8UpdateProgressView;


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
    .line 94
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showUpdateProgress(ZILjava/util/List;Ljava/lang/String;)V
    .locals 6
    .param p1, "isSuccess"    # Z
    .param p2, "progress"    # I
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/update/fwpack/FwInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "dtos":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/update/fwpack/FwInfo;>;"
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 97
    if-eqz p1, :cond_3

    .line 99
    const/16 v1, 0x64

    if-ne v1, p2, :cond_1

    if-eqz p3, :cond_1

    .line 100
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->access$000(Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2$1;

    invoke-direct {v2, p0, p3}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2$1;-><init>(Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2;Ljava/util/List;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/Button;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->access$500(Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;)Lcom/fimi/widget/DownRoundProgress;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/fimi/widget/DownRoundProgress;->setProgress(I)V

    .line 116
    const-string v0, ""

    .line 117
    .local v0, "tempString":Ljava/lang/String;
    if-nez p4, :cond_2

    .line 118
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_update_hint_one:I

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    :goto_1
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->access$600(Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->access$200(Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->access$000(Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->access$000(Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 127
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->access$100(Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_update_warning:I

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 120
    :cond_2
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_updating:I

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 132
    .end local v0    # "tempString":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->access$000(Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 133
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->access$000(Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;)Landroid/widget/Button;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_update_connect:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 134
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->access$400(Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->access$100(Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->access$600(Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->access$200(Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method
