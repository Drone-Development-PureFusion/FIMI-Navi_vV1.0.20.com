.class public Lcom/fimi/widget/X8ToastUtil;
.super Ljava/lang/Object;
.source "X8ToastUtil.java"


# static fields
.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_SHORT:I

.field private static mTosat:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    const/4 v3, 0x1

    .line 34
    if-nez p0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 37
    :cond_0
    sget-object v2, Lcom/fimi/widget/X8ToastUtil;->mTosat:Landroid/widget/Toast;

    if-nez v2, :cond_4

    .line 38
    if-nez p2, :cond_3

    .line 39
    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    sput-object v2, Lcom/fimi/widget/X8ToastUtil;->mTosat:Landroid/widget/Toast;

    .line 43
    :cond_1
    :goto_1
    sget-object v2, Lcom/fimi/widget/X8ToastUtil;->mTosat:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    .line 44
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 45
    sget v2, Lcom/fimi/sdk/R$drawable;->x8_img_tost_bg:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 46
    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 47
    .local v0, "message":Landroid/widget/TextView;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 54
    .end local v0    # "message":Landroid/widget/TextView;
    .end local v1    # "view":Landroid/view/View;
    :cond_2
    :goto_2
    sget-object v2, Lcom/fimi/widget/X8ToastUtil;->mTosat:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 40
    :cond_3
    if-ne p2, v3, :cond_1

    .line 41
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    sput-object v2, Lcom/fimi/widget/X8ToastUtil;->mTosat:Landroid/widget/Toast;

    goto :goto_1

    .line 52
    :cond_4
    sget-object v2, Lcom/fimi/widget/X8ToastUtil;->mTosat:Landroid/widget/Toast;

    invoke-virtual {v2, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
