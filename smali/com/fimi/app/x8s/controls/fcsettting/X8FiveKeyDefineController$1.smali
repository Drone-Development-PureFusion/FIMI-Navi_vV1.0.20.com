.class Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController$1;
.super Ljava/lang/Object;
.source "X8FiveKeyDefineController.java"

# interfaces
.implements Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->initViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;)Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;->setItemSelect(I)V

    .line 58
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;)Lcom/fimi/app/x8s/interfaces/IX8FiveKeyDefineListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;)I

    move-result v0

    if-nez v0, :cond_2

    .line 60
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    sget-object v1, Lcom/fimi/x8sdk/common/Constants;->FIVE_KEY_UP_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveInt(Ljava/lang/String;I)V

    .line 70
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;)Lcom/fimi/app/x8s/interfaces/IX8FiveKeyDefineListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;)I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/fimi/app/x8s/interfaces/IX8FiveKeyDefineListener;->onSelected(II)V

    .line 73
    :cond_1
    return-void

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 62
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    sget-object v1, Lcom/fimi/x8sdk/common/Constants;->FIVE_KEY_DOWN_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 63
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 64
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    sget-object v1, Lcom/fimi/x8sdk/common/Constants;->FIVE_KEY_LEFT_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 65
    :cond_4
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 66
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    sget-object v1, Lcom/fimi/x8sdk/common/Constants;->FIVE_KEY_RIGHT_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 67
    :cond_5
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyDefineController;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 68
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    sget-object v1, Lcom/fimi/x8sdk/common/Constants;->FIVE_KEY_CENTRE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveInt(Ljava/lang/String;I)V

    goto :goto_0
.end method
