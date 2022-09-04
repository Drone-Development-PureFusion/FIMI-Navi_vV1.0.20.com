.class Lcom/fimi/libperson/widget/BitmapLoadTaskInstance$BitmapLoadTask;
.super Landroid/os/AsyncTask;
.source "BitmapLoadTaskInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private final contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private exception:Ljava/lang/Exception;

.field private final preview:Z

.field private final source:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "source"    # Landroid/net/Uri;
    .param p3, "preview"    # Z

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance$BitmapLoadTask;->contextRef:Ljava/lang/ref/WeakReference;

    .line 63
    iput-object p2, p0, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance$BitmapLoadTask;->source:Landroid/net/Uri;

    .line 64
    iput-boolean p3, p0, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance$BitmapLoadTask;->preview:Z

    .line 65
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 5
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 70
    :try_start_0
    iget-object v3, p0, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance$BitmapLoadTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 71
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->access$000()Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance$BitmapLoadTask;->source:Landroid/net/Uri;

    invoke-virtual {v3, v0, v4}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->decode(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance$BitmapLoadTask;->bitmap:Landroid/graphics/Bitmap;

    .line 72
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 81
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-object v3

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, "var6":Ljava/lang/Exception;
    const-string v3, "BitmapLoadTaskInstance"

    const-string v4, "Failed to load bitmap"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    iput-object v1, p0, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance$BitmapLoadTask;->exception:Ljava/lang/Exception;

    .line 81
    .end local v1    # "var6":Ljava/lang/Exception;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 76
    :catch_1
    move-exception v2

    .line 77
    .local v2, "var7":Ljava/lang/OutOfMemoryError;
    const-string v3, "BitmapLoadTaskInstance"

    const-string v4, "Failed to load bitmap - OutOfMemoryError"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    iput-object v3, p0, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance$BitmapLoadTask;->exception:Ljava/lang/Exception;

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance$BitmapLoadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "orientation"    # Ljava/lang/Integer;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance$BitmapLoadTask;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 88
    invoke-static {}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->access$000()Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance$BitmapLoadTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->access$100(Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;Landroid/graphics/Bitmap;)V

    .line 90
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 54
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance$BitmapLoadTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
