.class public Lcom/fimi/x8sdk/util/XPermission;
.super Ljava/lang/Object;
.source "XPermission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/x8sdk/util/XPermission$OnPermissionListener;
    }
.end annotation


# static fields
.field private static mOnPermissionListener:Lcom/fimi/x8sdk/util/XPermission$OnPermissionListener;

.field private static mRequestCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, -0x1

    sput v0, Lcom/fimi/x8sdk/util/XPermission;->mRequestCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-static {p0}, Lcom/fimi/x8sdk/util/XPermission;->startAppSettings(Landroid/content/Context;)V

    return-void
.end method

.method private static varargs getDeniedPermissions(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v0, "deniedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, p1, v2

    .line 107
    .local v1, "permission":Ljava/lang/String;
    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 108
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    .end local v1    # "permission":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p0, "requestCode"    # I
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I

    .prologue
    .line 118
    sget v0, Lcom/fimi/x8sdk/util/XPermission;->mRequestCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/fimi/x8sdk/util/XPermission;->mRequestCode:I

    if-ne p0, v0, :cond_0

    .line 119
    sget-object v0, Lcom/fimi/x8sdk/util/XPermission;->mOnPermissionListener:Lcom/fimi/x8sdk/util/XPermission$OnPermissionListener;

    if-eqz v0, :cond_0

    .line 120
    invoke-static {p2}, Lcom/fimi/x8sdk/util/XPermission;->verifyPermissions([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    sget-object v0, Lcom/fimi/x8sdk/util/XPermission;->mOnPermissionListener:Lcom/fimi/x8sdk/util/XPermission$OnPermissionListener;

    invoke-interface {v0}, Lcom/fimi/x8sdk/util/XPermission$OnPermissionListener;->onPermissionGranted()V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    sget-object v0, Lcom/fimi/x8sdk/util/XPermission;->mOnPermissionListener:Lcom/fimi/x8sdk/util/XPermission$OnPermissionListener;

    invoke-interface {v0}, Lcom/fimi/x8sdk/util/XPermission$OnPermissionListener;->onPermissionDenied()V

    goto :goto_0
.end method

.method public static requestPermissions(Landroid/content/Context;I[Ljava/lang/String;Lcom/fimi/x8sdk/util/XPermission$OnPermissionListener;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "listener"    # Lcom/fimi/x8sdk/util/XPermission$OnPermissionListener;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 84
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 85
    sput-object p3, Lcom/fimi/x8sdk/util/XPermission;->mOnPermissionListener:Lcom/fimi/x8sdk/util/XPermission$OnPermissionListener;

    .line 86
    invoke-static {p0, p2}, Lcom/fimi/x8sdk/util/XPermission;->getDeniedPermissions(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 87
    .local v0, "deniedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 88
    sput p1, Lcom/fimi/x8sdk/util/XPermission;->mRequestCode:I

    .line 89
    check-cast p0, Landroid/app/Activity;

    .line 90
    .end local p0    # "context":Landroid/content/Context;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 89
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 92
    .restart local p0    # "context":Landroid/content/Context;
    :cond_1
    sget-object v1, Lcom/fimi/x8sdk/util/XPermission;->mOnPermissionListener:Lcom/fimi/x8sdk/util/XPermission$OnPermissionListener;

    if-eqz v1, :cond_0

    .line 93
    sget-object v1, Lcom/fimi/x8sdk/util/XPermission;->mOnPermissionListener:Lcom/fimi/x8sdk/util/XPermission$OnPermissionListener;

    invoke-interface {v1}, Lcom/fimi/x8sdk/util/XPermission$OnPermissionListener;->onPermissionGranted()V

    goto :goto_0

    .line 97
    .end local v0    # "deniedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Context must be an Activity"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static showTipsDialog(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/fimi/x8sdk/R$string;->x8_permission_dialog_title:I

    .line 147
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/fimi/x8sdk/R$string;->x8_permission_dialog_message:I

    .line 148
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/fimi/x8sdk/R$string;->x8_permission_dialog_cancel:I

    .line 149
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/fimi/x8sdk/R$string;->x8_permission_dialog_comfirm:I

    .line 150
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/fimi/x8sdk/util/XPermission$1;

    invoke-direct {v2, p0}, Lcom/fimi/x8sdk/util/XPermission$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 156
    return-void
.end method

.method private static startAppSettings(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 163
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 164
    return-void
.end method

.method private static verifyPermissions([I)Z
    .locals 4
    .param p0, "grantResults"    # [I

    .prologue
    const/4 v1, 0x0

    .line 133
    array-length v3, p0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget v0, p0, v2

    .line 134
    .local v0, "grantResult":I
    if-eqz v0, :cond_0

    .line 138
    .end local v0    # "grantResult":I
    :goto_1
    return v1

    .line 133
    .restart local v0    # "grantResult":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    .end local v0    # "grantResult":I
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method
