.class final Lcom/google/android/gms/internal/zzfjn;
.super Ljava/lang/Object;


# static fields
.field private static final zzprm:Lcom/google/android/gms/internal/zzfjn;


# instance fields
.field private final zzprn:Lcom/google/android/gms/internal/zzfjw;

.field private final zzpro:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/android/gms/internal/zzfjv",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzfjn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfjn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzfjn;->zzprm:Lcom/google/android/gms/internal/zzfjn;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfjn;->zzpro:Ljava/util/concurrent/ConcurrentMap;

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "com.google.protobuf.AndroidProto3SchemaFactory"

    aput-object v1, v3, v2

    move v1, v2

    :goto_0
    if-gtz v1, :cond_0

    aget-object v0, v3, v2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfjn;->zzua(Ljava/lang/String;)Lcom/google/android/gms/internal/zzfjw;

    move-result-object v0

    if-nez v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzfiq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfiq;-><init>()V

    :cond_1
    iput-object v0, p0, Lcom/google/android/gms/internal/zzfjn;->zzprn:Lcom/google/android/gms/internal/zzfjw;

    return-void
.end method

.method public static zzdbf()Lcom/google/android/gms/internal/zzfjn;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzfjn;->zzprm:Lcom/google/android/gms/internal/zzfjn;

    return-object v0
.end method

.method private static zzua(Ljava/lang/String;)Lcom/google/android/gms/internal/zzfjw;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfjw;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final zzl(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzfjv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzfjv",
            "<TT;>;"
        }
    .end annotation

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzfhz;->zzc(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfjn;->zzpro:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfjv;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfjn;->zzprn:Lcom/google/android/gms/internal/zzfjw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzfjw;->zzk(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzfjv;

    move-result-object v1

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzfhz;->zzc(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "schema"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzfhz;->zzc(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfjn;->zzpro:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfjv;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
