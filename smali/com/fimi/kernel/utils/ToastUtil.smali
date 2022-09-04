.class public Lcom/fimi/kernel/utils/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# static fields
.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_SHORT:I

.field private static mTosat:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelTosat()V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/fimi/kernel/utils/ToastUtil;->mTosat:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/fimi/kernel/utils/ToastUtil;->mTosat:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 50
    :cond_0
    return-void
.end method

.method public static showToast(Landroid/content/Context;II)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "duration"    # I

    .prologue
    .line 41
    if-eqz p0, :cond_0

    .line 42
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/fimi/kernel/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 44
    :cond_0
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    const/4 v1, 0x1

    .line 25
    if-nez p0, :cond_0

    .line 38
    :goto_0
    return-void

    .line 28
    :cond_0
    sget-object v0, Lcom/fimi/kernel/utils/ToastUtil;->mTosat:Landroid/widget/Toast;

    if-nez v0, :cond_3

    .line 29
    if-nez p2, :cond_2

    .line 30
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/fimi/kernel/utils/ToastUtil;->mTosat:Landroid/widget/Toast;

    .line 37
    :cond_1
    :goto_1
    sget-object v0, Lcom/fimi/kernel/utils/ToastUtil;->mTosat:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 31
    :cond_2
    if-ne p2, v1, :cond_1

    .line 32
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/fimi/kernel/utils/ToastUtil;->mTosat:Landroid/widget/Toast;

    goto :goto_1

    .line 35
    :cond_3
    sget-object v0, Lcom/fimi/kernel/utils/ToastUtil;->mTosat:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
