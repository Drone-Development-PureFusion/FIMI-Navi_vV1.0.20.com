.class Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1$1;
.super Ljava/lang/Object;
.source "LibPersonAboutActivity.java"

# interfaces
.implements Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1;->dialogBtnRightOrSingleListener(Landroid/view/View;Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1$1;->this$2:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Object;)V
    .locals 3
    .param p1, "reasonObj"    # Ljava/lang/Object;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1$1;->this$2:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1;

    iget-object v0, v0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1;->this$1:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1;

    iget-object v0, v0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1;->this$0:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;

    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1$1;->this$2:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1;

    iget-object v1, v1, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1;->this$1:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1;

    iget-object v1, v1, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1;->this$0:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;

    invoke-static {v1}, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->access$200(Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/libperson/R$string;->network_exception:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/fimi/kernel/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 154
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 5
    .param p1, "responseObj"    # Ljava/lang/Object;

    .prologue
    .line 140
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/fimi/network/entity/NetModel;

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/network/entity/NetModel;

    .line 141
    .local v1, "netModel":Lcom/fimi/network/entity/NetModel;
    invoke-virtual {v1}, Lcom/fimi/network/entity/NetModel;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1$1;->this$2:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1;

    iget-object v2, v2, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1;->this$1:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1;

    iget-object v2, v2, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1;->this$0:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;

    iget-object v2, v2, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->mBitmapLoadTaskInstance:Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

    iget-object v3, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1$1;->this$2:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1;

    iget-object v3, v3, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1;->this$1:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1;

    iget-object v3, v3, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1;->this$0:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;

    invoke-virtual {v2, v3}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->setOnLoadListener(Lcom/fimi/libperson/widget/BitmapLoadTaskInstance$OnLoadListener;)V

    .line 143
    iget-object v2, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1$1;->this$2:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1;

    iget-object v2, v2, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1;->this$1:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1;

    iget-object v2, v2, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1;->this$0:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;

    iget-object v2, v2, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->mBitmapLoadTaskInstance:Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

    const-string v3, "login_bg.jpg"

    invoke-static {v3}, Lcom/fimi/libperson/entity/ImageSource;->asset(Ljava/lang/String;)Lcom/fimi/libperson/entity/ImageSource;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1$1;->this$2:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1;

    iget-object v4, v4, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1;->this$1:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1;

    iget-object v4, v4, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1;->this$0:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;

    invoke-static {v4}, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->access$100(Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->setImage(Lcom/fimi/libperson/entity/ImageSource;Landroid/content/Context;)V

    .line 150
    .end local v1    # "netModel":Lcom/fimi/network/entity/NetModel;
    :goto_0
    return-void

    .line 145
    .restart local v1    # "netModel":Lcom/fimi/network/entity/NetModel;
    :cond_0
    iget-object v2, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1$1;->this$2:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1;

    iget-object v2, v2, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1;->this$1:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1;

    iget-object v2, v2, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1;->this$0:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;

    iget-object v3, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1$1;->this$2:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1;

    iget-object v3, v3, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1;->this$1:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1;

    iget-object v3, v3, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1;->this$0:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;

    invoke-virtual {v1}, Lcom/fimi/network/entity/NetModel;->getErrCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fimi/network/ErrorMessage;->getUserModeErrorMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/fimi/kernel/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    .end local v1    # "netModel":Lcom/fimi/network/entity/NetModel;
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
