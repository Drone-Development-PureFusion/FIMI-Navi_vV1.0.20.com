.class final Lcom/google/android/gms/tasks/zzl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzldy:Lcom/google/android/gms/tasks/Task;

.field private synthetic zzlei:Lcom/google/android/gms/tasks/zzk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/zzk;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzl;->zzlei:Lcom/google/android/gms/tasks/zzk;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzl;->zzldy:Lcom/google/android/gms/tasks/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzl;->zzlei:Lcom/google/android/gms/tasks/zzk;

    invoke-static {v0}, Lcom/google/android/gms/tasks/zzk;->zza(Lcom/google/android/gms/tasks/zzk;)Lcom/google/android/gms/tasks/SuccessContinuation;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzl;->zzldy:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/tasks/SuccessContinuation;->then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzl;->zzlei:Lcom/google/android/gms/tasks/zzk;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Continuation returned null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzk;->onFailure(Ljava/lang/Exception;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzl;->zzlei:Lcom/google/android/gms/tasks/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzk;->onFailure(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzl;->zzlei:Lcom/google/android/gms/tasks/zzk;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzk;->onFailure(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzl;->zzlei:Lcom/google/android/gms/tasks/zzk;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzk;->onFailure(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->zzlem:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/android/gms/tasks/zzl;->zzlei:Lcom/google/android/gms/tasks/zzk;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->zzlem:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/android/gms/tasks/zzl;->zzlei:Lcom/google/android/gms/tasks/zzk;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0
.end method
