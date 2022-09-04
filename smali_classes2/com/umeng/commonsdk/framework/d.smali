.class Lcom/umeng/commonsdk/framework/d;
.super Ljava/lang/Object;
.source "UMNetWorkSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/framework/d$a;
    }
.end annotation


# static fields
.field private static a:Landroid/os/HandlerThread; = null

.field private static b:Landroid/os/Handler; = null

.field private static c:Landroid/os/Handler; = null

.field private static final d:I = 0x111

.field private static final e:I = 0x200

.field private static final f:I = 0x301

.field private static g:Lcom/umeng/commonsdk/framework/d$a;

.field private static h:Landroid/net/ConnectivityManager;

.field private static i:Landroid/net/NetworkInfo;

.field private static j:Landroid/content/IntentFilter;

.field private static k:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

.field private static l:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

.field private static m:Z

.field private static n:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    sput-object v0, Lcom/umeng/commonsdk/framework/d;->a:Landroid/os/HandlerThread;

    .line 34
    sput-object v0, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;

    .line 36
    sput-object v0, Lcom/umeng/commonsdk/framework/d;->c:Landroid/os/Handler;

    .line 48
    sput-object v0, Lcom/umeng/commonsdk/framework/d;->j:Landroid/content/IntentFilter;

    .line 51
    sput-object v0, Lcom/umeng/commonsdk/framework/d;->k:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    .line 52
    sput-object v0, Lcom/umeng/commonsdk/framework/d;->l:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/commonsdk/framework/d;->m:Z

    .line 56
    new-instance v0, Lcom/umeng/commonsdk/framework/d$1;

    invoke-direct {v0}, Lcom/umeng/commonsdk/framework/d$1;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/framework/d;->n:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    sput-object p2, Lcom/umeng/commonsdk/framework/d;->c:Landroid/os/Handler;

    .line 143
    :try_start_0
    sget-object v0, Lcom/umeng/commonsdk/framework/d;->a:Landroid/os/HandlerThread;

    if-nez v0, :cond_3

    .line 145
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetWorkSender"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/framework/d;->a:Landroid/os/HandlerThread;

    .line 146
    sget-object v0, Lcom/umeng/commonsdk/framework/d;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 147
    sget-object v0, Lcom/umeng/commonsdk/framework/d;->g:Lcom/umeng/commonsdk/framework/d$a;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lcom/umeng/commonsdk/framework/d$a;

    invoke-static {p1}, Lcom/umeng/commonsdk/framework/b;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/framework/d$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/framework/d;->g:Lcom/umeng/commonsdk/framework/d$a;

    .line 149
    sget-object v0, Lcom/umeng/commonsdk/framework/d;->g:Lcom/umeng/commonsdk/framework/d$a;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/framework/d$a;->startWatching()V

    .line 150
    const-string v0, "--->>> FileMonitor has already started!"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    .line 152
    :cond_0
    invoke-static {}, Lcom/umeng/commonsdk/framework/c;->a()Landroid/content/Context;

    move-result-object v0

    .line 153
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    sget-object v1, Lcom/umeng/commonsdk/framework/d;->j:Landroid/content/IntentFilter;

    if-nez v1, :cond_1

    .line 155
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    sput-object v1, Lcom/umeng/commonsdk/framework/d;->j:Landroid/content/IntentFilter;

    .line 156
    sget-object v1, Lcom/umeng/commonsdk/framework/d;->j:Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    sget-object v1, Lcom/umeng/commonsdk/framework/d;->n:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 158
    sget-object v1, Lcom/umeng/commonsdk/framework/d;->n:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/umeng/commonsdk/framework/d;->j:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    :cond_1
    sget-object v0, Lcom/umeng/commonsdk/framework/d;->k:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    if-nez v0, :cond_2

    .line 165
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/framework/d;->k:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    .line 166
    sget-object v0, Lcom/umeng/commonsdk/framework/d;->k:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->getService(Landroid/content/Context;Lcom/umeng/commonsdk/statistics/internal/StatTracer;)Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/framework/d;->l:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    .line 169
    :cond_2
    sget-object v0, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;

    if-nez v0, :cond_3

    .line 170
    new-instance v0, Lcom/umeng/commonsdk/framework/d$2;

    sget-object v1, Lcom/umeng/commonsdk/framework/d;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/umeng/commonsdk/framework/d$2;-><init>(Lcom/umeng/commonsdk/framework/d;Landroid/os/Looper;)V

    sput-object v0, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_3
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    invoke-static {p1, v0}, Lcom/umeng/commonsdk/proguard/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;
    .locals 0

    .prologue
    .line 29
    sput-object p0, Lcom/umeng/commonsdk/framework/d;->h:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static synthetic a(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0

    .prologue
    .line 29
    sput-object p0, Lcom/umeng/commonsdk/framework/d;->i:Landroid/net/NetworkInfo;

    return-object p0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 253
    const/16 v0, 0x200

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/d;->c(I)V

    .line 254
    return-void
.end method

.method static synthetic a(I)V
    .locals 0

    .prologue
    .line 29
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/d;->c(I)V

    return-void
.end method

.method private static a(II)V
    .locals 4

    .prologue
    .line 306
    sget-boolean v0, Lcom/umeng/commonsdk/framework/d;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/commonsdk/framework/d;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 307
    sget-object v0, Lcom/umeng/commonsdk/framework/d;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeMessages(I)V

    .line 308
    sget-object v0, Lcom/umeng/commonsdk/framework/d;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 309
    iput p0, v0, Landroid/os/Message;->what:I

    .line 310
    sget-object v1, Lcom/umeng/commonsdk/framework/d;->c:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 312
    :cond_0
    return-void
.end method

.method private static a(IJ)V
    .locals 3

    .prologue
    .line 287
    sget-boolean v0, Lcom/umeng/commonsdk/framework/d;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 288
    sget-object v0, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 289
    iput p0, v0, Landroid/os/Message;->what:I

    .line 290
    sget-object v1, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 292
    :cond_0
    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 29
    sput-boolean p0, Lcom/umeng/commonsdk/framework/d;->m:Z

    return p0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 298
    const/16 v0, 0x111

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/d;->b(I)V

    .line 299
    return-void
.end method

.method private static b(I)V
    .locals 2

    .prologue
    .line 261
    sget-boolean v0, Lcom/umeng/commonsdk/framework/d;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 262
    sget-object v0, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    sget-object v0, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 264
    iput p0, v0, Landroid/os/Message;->what:I

    .line 265
    sget-object v1, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 268
    :cond_0
    return-void
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 315
    const/16 v0, 0x301

    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/framework/d;->a(II)V

    .line 316
    return-void
.end method

.method private static c(I)V
    .locals 2

    .prologue
    .line 275
    sget-boolean v0, Lcom/umeng/commonsdk/framework/d;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 276
    sget-object v0, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 277
    iput p0, v0, Landroid/os/Message;->what:I

    .line 278
    sget-object v1, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 280
    :cond_0
    return-void
.end method

.method static synthetic d()Landroid/net/ConnectivityManager;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/umeng/commonsdk/framework/d;->h:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic e()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/umeng/commonsdk/framework/d;->i:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic f()V
    .locals 0

    .prologue
    .line 29
    invoke-static {}, Lcom/umeng/commonsdk/framework/d;->j()V

    return-void
.end method

.method static synthetic g()V
    .locals 0

    .prologue
    .line 29
    invoke-static {}, Lcom/umeng/commonsdk/framework/d;->i()V

    return-void
.end method

.method private static h()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 205
    sget-object v0, Lcom/umeng/commonsdk/framework/d;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 206
    sput-object v1, Lcom/umeng/commonsdk/framework/d;->a:Landroid/os/HandlerThread;

    .line 208
    :cond_0
    sget-object v0, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 209
    sput-object v1, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;

    .line 211
    :cond_1
    sget-object v0, Lcom/umeng/commonsdk/framework/d;->c:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 212
    sput-object v1, Lcom/umeng/commonsdk/framework/d;->c:Landroid/os/Handler;

    .line 215
    :cond_2
    sget-object v0, Lcom/umeng/commonsdk/framework/d;->l:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    if-eqz v0, :cond_3

    .line 216
    sput-object v1, Lcom/umeng/commonsdk/framework/d;->l:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    .line 219
    :cond_3
    sget-object v0, Lcom/umeng/commonsdk/framework/d;->k:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    if-eqz v0, :cond_4

    .line 220
    sput-object v1, Lcom/umeng/commonsdk/framework/d;->k:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    .line 222
    :cond_4
    return-void
.end method

.method private static i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 229
    sget-object v0, Lcom/umeng/commonsdk/framework/d;->g:Lcom/umeng/commonsdk/framework/d$a;

    if-eqz v0, :cond_0

    .line 230
    sget-object v0, Lcom/umeng/commonsdk/framework/d;->g:Lcom/umeng/commonsdk/framework/d$a;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/framework/d$a;->stopWatching()V

    .line 231
    sput-object v2, Lcom/umeng/commonsdk/framework/d;->g:Lcom/umeng/commonsdk/framework/d$a;

    .line 233
    :cond_0
    sget-object v0, Lcom/umeng/commonsdk/framework/d;->j:Landroid/content/IntentFilter;

    if-eqz v0, :cond_2

    .line 234
    sget-object v0, Lcom/umeng/commonsdk/framework/d;->n:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 235
    invoke-static {}, Lcom/umeng/commonsdk/framework/c;->a()Landroid/content/Context;

    move-result-object v0

    .line 236
    sget-object v1, Lcom/umeng/commonsdk/framework/d;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 237
    sput-object v2, Lcom/umeng/commonsdk/framework/d;->n:Landroid/content/BroadcastReceiver;

    .line 239
    :cond_1
    sput-object v2, Lcom/umeng/commonsdk/framework/d;->j:Landroid/content/IntentFilter;

    .line 241
    :cond_2
    const-string v0, "--->>> handleQuit: Quit sender thread."

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    .line 242
    sget-object v0, Lcom/umeng/commonsdk/framework/d;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 243
    sget-object v0, Lcom/umeng/commonsdk/framework/d;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 244
    invoke-static {}, Lcom/umeng/commonsdk/framework/d;->h()V

    .line 247
    :cond_3
    return-void
.end method

.method private static j()V
    .locals 8

    .prologue
    .line 351
    const-string v0, "--->>> handleProcessNext: Enter..."

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    .line 354
    sget-boolean v0, Lcom/umeng/commonsdk/framework/d;->m:Z

    if-nez v0, :cond_0

    .line 414
    :goto_0
    return-void

    .line 357
    :cond_0
    invoke-static {}, Lcom/umeng/commonsdk/framework/c;->a()Landroid/content/Context;

    move-result-object v1

    .line 359
    :try_start_0
    invoke-static {v1}, Lcom/umeng/commonsdk/framework/b;->c(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_5

    .line 360
    const-string v0, "--->>> The envelope file exists."

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    .line 361
    invoke-static {v1}, Lcom/umeng/commonsdk/framework/b;->c(Landroid/content/Context;)I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_1

    .line 362
    const-string v0, "--->>> Number of envelope files is greater than 100, remove old files first."

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    .line 363
    invoke-static {v1}, Lcom/umeng/commonsdk/framework/b;->d(Landroid/content/Context;)V

    .line 366
    :cond_1
    invoke-static {v1}, Lcom/umeng/commonsdk/framework/b;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 367
    if-eqz v0, :cond_5

    .line 368
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 370
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--->>> Ready to send envelope file ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    .line 371
    new-instance v2, Lcom/umeng/commonsdk/statistics/c;

    invoke-direct {v2, v1}, Lcom/umeng/commonsdk/statistics/c;-><init>(Landroid/content/Context;)V

    .line 374
    sget-object v3, Lcom/umeng/commonsdk/framework/d;->l:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/umeng/commonsdk/framework/d;->l:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->isLatentActivite()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 375
    sget-object v3, Lcom/umeng/commonsdk/framework/d;->l:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentDeactivite()V

    .line 376
    sget-object v3, Lcom/umeng/commonsdk/framework/d;->l:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->getDelayTime()J

    move-result-wide v4

    .line 377
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 378
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start lacency policy, wait ["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "] milliseconds ."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 387
    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {v2, v0}, Lcom/umeng/commonsdk/statistics/c;->a(Ljava/io/File;)Z

    move-result v2

    .line 388
    if-eqz v2, :cond_4

    .line 389
    const-string v2, "--->>> Send envelope file success, delete it."

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    .line 391
    invoke-static {v0}, Lcom/umeng/commonsdk/framework/b;->a(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 392
    const-string v2, "--->>> Failed to delete already processed file. We try again after delete failed."

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    .line 393
    invoke-static {v0}, Lcom/umeng/commonsdk/framework/b;->a(Ljava/io/File;)Z

    .line 401
    :cond_3
    const/16 v0, 0x111

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/d;->c(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 411
    :catch_0
    move-exception v0

    .line 412
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/proguard/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 381
    :catch_1
    move-exception v3

    .line 382
    :try_start_3
    invoke-static {v1, v3}, Lcom/umeng/commonsdk/proguard/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 397
    :cond_4
    const-string v0, "--->>> Send envelope file failed, abandon and wait next trigger!"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 405
    :cond_5
    const-string v0, "--->>> The envelope file not exists, start auto process for module cache data."

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    .line 410
    invoke-static {}, Lcom/umeng/commonsdk/framework/d;->c()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
