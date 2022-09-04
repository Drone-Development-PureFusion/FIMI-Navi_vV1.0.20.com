.class Lcom/fimi/kernel/exception/CrashHandler$1;
.super Ljava/lang/Thread;
.source "CrashHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/kernel/exception/CrashHandler;->handleException(Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/kernel/exception/CrashHandler;


# direct methods
.method constructor <init>(Lcom/fimi/kernel/exception/CrashHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/kernel/exception/CrashHandler;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/fimi/kernel/exception/CrashHandler$1;->this$0:Lcom/fimi/kernel/exception/CrashHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 120
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 121
    iget-object v0, p0, Lcom/fimi/kernel/exception/CrashHandler$1;->this$0:Lcom/fimi/kernel/exception/CrashHandler;

    invoke-static {v0}, Lcom/fimi/kernel/exception/CrashHandler;->access$000(Lcom/fimi/kernel/exception/CrashHandler;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/kernel/exception/CrashHandler$1;->this$0:Lcom/fimi/kernel/exception/CrashHandler;

    invoke-static {v1}, Lcom/fimi/kernel/exception/CrashHandler;->access$000(Lcom/fimi/kernel/exception/CrashHandler;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/kernel/R$string;->app_exception_hint:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 122
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 123
    return-void
.end method
