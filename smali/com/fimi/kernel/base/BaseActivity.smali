.class public abstract Lcom/fimi/kernel/base/BaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseActivity.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected marginStatus:I

.field public savedInstanceState:Landroid/os/Bundle;

.field protected statusBarHeight:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 241
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "newBase"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-static {p1}, Lcom/fimi/kernel/utils/LanguageUtil;->attachBaseContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public abstract doTrans()V
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    .line 81
    invoke-static {}, Lcom/fimi/kernel/base/BaseAppManager;->getInstance()Lcom/fimi/kernel/base/BaseAppManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/kernel/base/BaseAppManager;->removeActivity(Landroid/app/Activity;)V

    .line 82
    return-void
.end method

.method protected getBundleExtras(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 75
    return-void
.end method

.method protected abstract getContentViewLayoutID()I
.end method

.method public getSavedInstanceState()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/fimi/kernel/base/BaseActivity;->savedInstanceState:Landroid/os/Bundle;

    return-object v0
.end method

.method public abstract initData()V
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .prologue
    .line 247
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 249
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    iput-object p0, p0, Lcom/fimi/kernel/base/BaseActivity;->mContext:Landroid/content/Context;

    .line 34
    iput-object p1, p0, Lcom/fimi/kernel/base/BaseActivity;->savedInstanceState:Landroid/os/Bundle;

    .line 35
    invoke-static {}, Lcom/fimi/kernel/base/BaseAppManager;->getInstance()Lcom/fimi/kernel/base/BaseAppManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/fimi/kernel/base/BaseAppManager;->addActivity(Landroid/app/Activity;)V

    .line 36
    invoke-virtual {p0}, Lcom/fimi/kernel/base/BaseActivity;->setStatusBarColor()V

    .line 37
    invoke-virtual {p0}, Lcom/fimi/kernel/base/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 38
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {p0, v1}, Lcom/fimi/kernel/base/BaseActivity;->getBundleExtras(Landroid/os/Bundle;)V

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/kernel/base/BaseActivity;->getContentViewLayoutID()I

    move-result v3

    if-eqz v3, :cond_1

    .line 43
    invoke-virtual {p0}, Lcom/fimi/kernel/base/BaseActivity;->getContentViewLayoutID()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/fimi/kernel/base/BaseActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/fimi/kernel/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 53
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 54
    .local v2, "height":I
    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/fimi/kernel/base/BaseActivity;->statusBarHeight:I

    .line 55
    mul-int/lit8 v3, v2, 0x12

    div-int/lit16 v3, v3, 0x780

    iput v3, p0, Lcom/fimi/kernel/base/BaseActivity;->marginStatus:I

    .line 56
    invoke-virtual {p0}, Lcom/fimi/kernel/base/BaseActivity;->initData()V

    .line 57
    invoke-virtual {p0}, Lcom/fimi/kernel/base/BaseActivity;->doTrans()V

    .line 58
    return-void

    .line 45
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v2    # "height":I
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "You must return a right contentView layout resource Id"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 232
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 233
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 227
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 228
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 220
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 222
    return-void
.end method

.method protected readyGo(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/fimi/kernel/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 97
    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/fimi/kernel/base/BaseActivity;->overridePendingTransition(II)V

    .line 98
    return-void
.end method

.method protected readyGo(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 3
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 116
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 118
    :cond_0
    invoke-virtual {p0, v0}, Lcom/fimi/kernel/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 119
    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/fimi/kernel/base/BaseActivity;->overridePendingTransition(II)V

    .line 120
    return-void
.end method

.method protected readyGo(Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 3
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "b"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v0}, Lcom/fimi/kernel/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 104
    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/fimi/kernel/base/BaseActivity;->overridePendingTransition(II)V

    .line 105
    return-void
.end method

.method protected readyGoForResult(Ljava/lang/Class;I)V
    .locals 1
    .param p2, "requestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0, p2}, Lcom/fimi/kernel/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 194
    return-void
.end method

.method protected readyGoForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V
    .locals 1
    .param p2, "requestCode"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_0

    .line 206
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 208
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/fimi/kernel/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 209
    return-void
.end method

.method protected readyGoThenKill(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/fimi/kernel/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 130
    invoke-virtual {p0}, Lcom/fimi/kernel/base/BaseActivity;->finish()V

    .line 131
    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/fimi/kernel/base/BaseActivity;->overridePendingTransition(II)V

    .line 132
    return-void
.end method

.method protected readyGoThenKill(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 3
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 143
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 145
    :cond_0
    invoke-virtual {p0, v0}, Lcom/fimi/kernel/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 146
    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/fimi/kernel/base/BaseActivity;->overridePendingTransition(II)V

    .line 147
    invoke-virtual {p0}, Lcom/fimi/kernel/base/BaseActivity;->finish()V

    .line 148
    return-void
.end method

.method protected readyGoThenKillAllActivity(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 163
    const v0, 0x10008000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0, p1}, Lcom/fimi/kernel/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 165
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/fimi/kernel/base/BaseActivity;->overridePendingTransition(II)V

    .line 166
    invoke-virtual {p0}, Lcom/fimi/kernel/base/BaseActivity;->finish()V

    .line 167
    return-void
.end method

.method protected readyGoThenKillAllActivity(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 157
    invoke-virtual {p0, v0}, Lcom/fimi/kernel/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 158
    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/fimi/kernel/base/BaseActivity;->overridePendingTransition(II)V

    .line 159
    invoke-virtual {p0}, Lcom/fimi/kernel/base/BaseActivity;->finish()V

    .line 160
    return-void
.end method

.method protected readyGoThenKillAllActivity(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 3
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 177
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 179
    :cond_0
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 180
    invoke-virtual {p0, v0}, Lcom/fimi/kernel/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 181
    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/fimi/kernel/base/BaseActivity;->overridePendingTransition(II)V

    .line 182
    invoke-virtual {p0}, Lcom/fimi/kernel/base/BaseActivity;->finish()V

    .line 183
    return-void
.end method

.method protected readyService(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/fimi/kernel/base/BaseActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 87
    return-void
.end method

.method protected abstract setStatusBarColor()V
.end method
