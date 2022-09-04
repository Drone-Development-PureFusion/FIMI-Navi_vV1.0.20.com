.class public Lcom/umeng/analytics/pro/i$d;
.super Ljava/lang/Object;
.source "CoreProtocolImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1043
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1038
    iput-object v0, p0, Lcom/umeng/analytics/pro/i$d;->a:Ljava/util/Map;

    .line 1039
    iput-object v0, p0, Lcom/umeng/analytics/pro/i$d;->b:Ljava/lang/String;

    .line 1040
    iput-object v0, p0, Lcom/umeng/analytics/pro/i$d;->c:Ljava/lang/String;

    .line 1041
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/umeng/analytics/pro/i$d;->d:J

    .line 1044
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1046
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1038
    iput-object v0, p0, Lcom/umeng/analytics/pro/i$d;->a:Ljava/util/Map;

    .line 1039
    iput-object v0, p0, Lcom/umeng/analytics/pro/i$d;->b:Ljava/lang/String;

    .line 1040
    iput-object v0, p0, Lcom/umeng/analytics/pro/i$d;->c:Ljava/lang/String;

    .line 1041
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/umeng/analytics/pro/i$d;->d:J

    .line 1047
    iput-object p2, p0, Lcom/umeng/analytics/pro/i$d;->a:Ljava/util/Map;

    .line 1048
    iput-object p1, p0, Lcom/umeng/analytics/pro/i$d;->b:Ljava/lang/String;

    .line 1049
    iput-wide p4, p0, Lcom/umeng/analytics/pro/i$d;->d:J

    .line 1050
    iput-object p3, p0, Lcom/umeng/analytics/pro/i$d;->c:Ljava/lang/String;

    .line 1051
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/umeng/analytics/pro/i$d;->a:Ljava/util/Map;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/umeng/analytics/pro/i$d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/umeng/analytics/pro/i$d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 1066
    iget-wide v0, p0, Lcom/umeng/analytics/pro/i$d;->d:J

    return-wide v0
.end method
