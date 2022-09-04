.class Lcom/securepreferences/SecurePreferencesOld$1;
.super Ljava/lang/Object;
.source "SecurePreferencesOld.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/securepreferences/SecurePreferencesOld;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mInsecureListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field final synthetic this$0:Lcom/securepreferences/SecurePreferencesOld;

.field final synthetic val$listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method constructor <init>(Lcom/securepreferences/SecurePreferencesOld;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .prologue
    .line 538
    iput-object p1, p0, Lcom/securepreferences/SecurePreferencesOld$1;->this$0:Lcom/securepreferences/SecurePreferencesOld;

    iput-object p2, p0, Lcom/securepreferences/SecurePreferencesOld$1;->val$listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    iget-object v0, p0, Lcom/securepreferences/SecurePreferencesOld$1;->val$listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    iput-object v0, p0, Lcom/securepreferences/SecurePreferencesOld$1;->mInsecureListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 544
    :try_start_0
    invoke-static {p2}, Lcom/securepreferences/SecurePreferencesOld;->access$300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "decryptedKey":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 546
    iget-object v2, p0, Lcom/securepreferences/SecurePreferencesOld$1;->mInsecureListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v2, p1, v0}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    .end local v0    # "decryptedKey":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 549
    :catch_0
    move-exception v1

    .line 550
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/securepreferences/SecurePreferencesOld;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to decrypt key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
