.class Lcom/umeng/commonsdk/statistics/proto/c$d;
.super Ljava/lang/Object;
.source "IdTracking.java"

# interfaces
.implements Lcom/umeng/commonsdk/proguard/at;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/proto/c$1;)V
    .locals 0

    .prologue
    .line 525
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/c$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/umeng/commonsdk/statistics/proto/c$c;
    .locals 2

    .prologue
    .line 528
    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/c$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/statistics/proto/c$c;-><init>(Lcom/umeng/commonsdk/statistics/proto/c$1;)V

    return-object v0
.end method

.method public synthetic b()Lcom/umeng/commonsdk/proguard/as;
    .locals 1

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/c$d;->a()Lcom/umeng/commonsdk/statistics/proto/c$c;

    move-result-object v0

    return-object v0
.end method
