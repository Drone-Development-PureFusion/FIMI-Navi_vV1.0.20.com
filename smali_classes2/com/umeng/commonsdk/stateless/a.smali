.class public Lcom/umeng/commonsdk/stateless/a;
.super Ljava/lang/Object;
.source "UMSLConfig.java"


# static fields
.field public static a:Ljava/lang/String; = null

.field public static b:Ljava/lang/String; = null

.field public static c:J = 0x0L

.field public static d:J = 0x0L

.field public static final e:Ljava/lang/String; = "stateless"

.field public static f:[Ljava/lang/String; = null

.field public static final g:Ljava/lang/String; = "https://plbslog.umeng.com"

.field public static final h:Ljava/lang/String; = "http://11.239.113.99"

.field public static final i:Ljava/lang/String; = "https://preplbslog.umeng.com"

.field public static final j:Ljava/lang/String; = "https://plbslog.umeng.com"

.field public static final k:Ljava/lang/String; = "http://11.239.113.99"

.field public static final l:Ljava/lang/String; = "https://preplbslog.umeng.com"

.field public static final m:Ljava/lang/String; = "https://plbslog.umeng.com"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    const-string v0, "native"

    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->a:Ljava/lang/String;

    .line 12
    const-string v0, ""

    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->b:Ljava/lang/String;

    .line 14
    const-wide/32 v0, 0x200000

    sput-wide v0, Lcom/umeng/commonsdk/stateless/a;->c:J

    .line 15
    const-wide/32 v0, 0x32000

    sput-wide v0, Lcom/umeng/commonsdk/stateless/a;->d:J

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "https://preplbslog.umeng.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "https://preplbslog.umeng.com"

    aput-object v2, v0, v1

    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
