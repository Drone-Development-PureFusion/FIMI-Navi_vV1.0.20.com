.class public Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;
.super Ljava/lang/Object;
.source "ComposerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private hashtags:Ljava/lang/String;

.field private imageUri:Landroid/net/Uri;

.field private text:Ljava/lang/String;

.field private themeResId:I

.field private token:Lcom/twitter/sdk/android/core/TwitterAuthToken;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    sget v0, Lcom/twitter/sdk/android/tweetcomposer/R$style;->ComposerLight:I

    iput v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;->themeResId:I

    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;->context:Landroid/content/Context;

    .line 91
    return-void
.end method


# virtual methods
.method public createIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 140
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;->token:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    if-nez v1, :cond_0

    .line 141
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Must set a TwitterSession"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;->context:Landroid/content/Context;

    const-class v2, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "EXTRA_USER_TOKEN"

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;->token:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 145
    const-string v1, "EXTRA_IMAGE_URI"

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;->imageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 146
    const-string v1, "EXTRA_THEME"

    iget v2, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;->themeResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    const-string v1, "EXTRA_TEXT"

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v1, "EXTRA_HASHTAGS"

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;->hashtags:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    return-object v0
.end method

.method public darkTheme()Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;
    .locals 1

    .prologue
    .line 135
    sget v0, Lcom/twitter/sdk/android/tweetcomposer/R$style;->ComposerDark:I

    iput v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;->themeResId:I

    .line 136
    return-object p0
.end method

.method public varargs hashtags([Ljava/lang/String;)Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;
    .locals 5
    .param p1, "hashtags"    # [Ljava/lang/String;

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 131
    :goto_0
    return-object p0

    .line 119
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v3, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v0, p1, v2

    .line 121
    .local v0, "hashtag":Ljava/lang/String;
    sget-object v4, Lcom/twitter/Regex;->VALID_HASHTAG:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 123
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 129
    .end local v0    # "hashtag":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    :goto_2
    iput-object v2, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;->hashtags:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method public image(Landroid/net/Uri;)Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;
    .locals 0
    .param p1, "imageUri"    # Landroid/net/Uri;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;->imageUri:Landroid/net/Uri;

    .line 108
    return-object p0
.end method

.method public session(Lcom/twitter/sdk/android/core/TwitterSession;)Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;
    .locals 3
    .param p1, "session"    # Lcom/twitter/sdk/android/core/TwitterSession;

    .prologue
    .line 94
    if-nez p1, :cond_0

    .line 95
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "TwitterSession must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_0
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterSession;->getAuthToken()Lcom/twitter/sdk/android/core/AuthToken;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    .line 98
    .local v0, "token":Lcom/twitter/sdk/android/core/TwitterAuthToken;
    if-nez v0, :cond_1

    .line 99
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "TwitterSession token must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_1
    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;->token:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    .line 103
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;->text:Ljava/lang/String;

    .line 113
    return-object p0
.end method
