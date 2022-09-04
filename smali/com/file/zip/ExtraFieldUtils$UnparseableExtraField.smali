.class public final Lcom/file/zip/ExtraFieldUtils$UnparseableExtraField;
.super Ljava/lang/Object;
.source "ExtraFieldUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/file/zip/ExtraFieldUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnparseableExtraField"
.end annotation


# static fields
.field public static final READ:Lcom/file/zip/ExtraFieldUtils$UnparseableExtraField;

.field public static final READ_KEY:I = 0x2

.field public static final SKIP:Lcom/file/zip/ExtraFieldUtils$UnparseableExtraField;

.field public static final SKIP_KEY:I = 0x1

.field public static final THROW:Lcom/file/zip/ExtraFieldUtils$UnparseableExtraField;

.field public static final THROW_KEY:I


# instance fields
.field private final key:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 287
    new-instance v0, Lcom/file/zip/ExtraFieldUtils$UnparseableExtraField;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/file/zip/ExtraFieldUtils$UnparseableExtraField;-><init>(I)V

    .line 286
    sput-object v0, Lcom/file/zip/ExtraFieldUtils$UnparseableExtraField;->THROW:Lcom/file/zip/ExtraFieldUtils$UnparseableExtraField;

    .line 294
    new-instance v0, Lcom/file/zip/ExtraFieldUtils$UnparseableExtraField;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/file/zip/ExtraFieldUtils$UnparseableExtraField;-><init>(I)V

    .line 293
    sput-object v0, Lcom/file/zip/ExtraFieldUtils$UnparseableExtraField;->SKIP:Lcom/file/zip/ExtraFieldUtils$UnparseableExtraField;

    .line 301
    new-instance v0, Lcom/file/zip/ExtraFieldUtils$UnparseableExtraField;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/file/zip/ExtraFieldUtils$UnparseableExtraField;-><init>(I)V

    .line 300
    sput-object v0, Lcom/file/zip/ExtraFieldUtils$UnparseableExtraField;->READ:Lcom/file/zip/ExtraFieldUtils$UnparseableExtraField;

    .line 301
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "k"    # I

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput p1, p0, Lcom/file/zip/ExtraFieldUtils$UnparseableExtraField;->key:I

    .line 307
    return-void
.end method


# virtual methods
.method public getKey()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/file/zip/ExtraFieldUtils$UnparseableExtraField;->key:I

    return v0
.end method
