.class public Lcom/umeng/commonsdk/statistics/common/ReportPolicy$SmartPolicy;
.super Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/common/ReportPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmartPolicy"
.end annotation


# instance fields
.field private final ReportInterval:J

.field private mTracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;


# direct methods
.method public constructor <init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;)V
    .locals 2

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;-><init>()V

    .line 239
    const-wide/32 v0, 0xa4cb80

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$SmartPolicy;->ReportInterval:J

    .line 243
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$SmartPolicy;->mTracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    .line 244
    return-void
.end method


# virtual methods
.method public shouldSendMessage(Z)Z
    .locals 4

    .prologue
    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/umeng/commonsdk/framework/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->lastSuccessfulBuildTime(Landroid/content/Context;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xa4cb80

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 253
    const/4 v0, 0x1

    .line 256
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
