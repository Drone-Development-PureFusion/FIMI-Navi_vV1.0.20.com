.class public Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;
.super Landroid/app/Activity;
.source "ComposerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;,
        Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$FinisherImpl;,
        Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Finisher;
    }
.end annotation


# static fields
.field static final EXTRA_HASHTAGS:Ljava/lang/String; = "EXTRA_HASHTAGS"

.field static final EXTRA_IMAGE_URI:Ljava/lang/String; = "EXTRA_IMAGE_URI"

.field static final EXTRA_TEXT:Ljava/lang/String; = "EXTRA_TEXT"

.field static final EXTRA_THEME:Ljava/lang/String; = "EXTRA_THEME"

.field static final EXTRA_USER_TOKEN:Ljava/lang/String; = "EXTRA_USER_TOKEN"

.field private static final PLACEHOLDER_ID:I = -0x1

.field private static final PLACEHOLDER_SCREEN_NAME:Ljava/lang/String; = ""


# instance fields
.field private composerController:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 75
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;->composerController:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->onClose()V

    .line 76
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 45
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "EXTRA_USER_TOKEN"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    .line 46
    .local v9, "token":Lcom/twitter/sdk/android/core/TwitterAuthToken;
    new-instance v2, Lcom/twitter/sdk/android/core/TwitterSession;

    const-wide/16 v10, -0x1

    const-string v0, ""

    invoke-direct {v2, v9, v10, v11, v0}, Lcom/twitter/sdk/android/core/TwitterSession;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthToken;JLjava/lang/String;)V

    .line 48
    .local v2, "session":Lcom/twitter/sdk/android/core/TwitterSession;
    const-string v0, "EXTRA_IMAGE_URI"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 49
    .local v3, "imageUri":Landroid/net/Uri;
    const-string v0, "EXTRA_TEXT"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, "text":Ljava/lang/String;
    const-string v0, "EXTRA_HASHTAGS"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, "hashtags":Ljava/lang/String;
    const-string v0, "EXTRA_THEME"

    sget v6, Lcom/twitter/sdk/android/tweetcomposer/R$style;->ComposerLight:I

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 53
    .local v8, "themeResId":I
    invoke-virtual {p0, v8}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;->setTheme(I)V

    .line 54
    sget v0, Lcom/twitter/sdk/android/tweetcomposer/R$layout;->tw__activity_composer:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;->setContentView(I)V

    .line 55
    sget v0, Lcom/twitter/sdk/android/tweetcomposer/R$id;->tw__composer_view:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    .line 56
    .local v1, "composerView":Lcom/twitter/sdk/android/tweetcomposer/ComposerView;
    new-instance v0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    new-instance v6, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$FinisherImpl;

    invoke-direct {v6, p0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$FinisherImpl;-><init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;)V

    invoke-direct/range {v0 .. v6}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;-><init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;Lcom/twitter/sdk/android/core/TwitterSession;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Finisher;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;->composerController:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    .line 58
    return-void
.end method
