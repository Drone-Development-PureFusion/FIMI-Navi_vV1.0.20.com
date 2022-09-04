.class public Lcom/fimi/kernel/FimiAppContext;
.super Ljava/lang/Object;
.source "FimiAppContext.java"


# static fields
.field public static final ALL:I = 0x3

.field public static final DELETE_LOCAL_FILE:I = 0x1

.field public static final PHOTO:I = 0x1

.field public static final UI_DENSITY:I = 0x2

.field public static final UI_HEIGHT:I = 0x500

.field public static final UI_WIDTH:I = 0x2d0

.field public static final UUID_NOTIFY:Ljava/lang/String; = "49535343-1e4d-4bd9-ba61-23c647249616"

.field public static final UUID_READ:Ljava/lang/String; = "49535343-6daa-4d02-abf6-19569aca69fe"

.field public static final UUID_SERVER:Ljava/lang/String; = "49535343-fe7d-4ae5-8fa9-9fafd205e455"

.field public static final UUID_WRITE:Ljava/lang/String; = "49535343-8841-43f4-a8d4-ecbe34729bb3"

.field public static final VIDEO:I

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/fimi/kernel/FimiAppContext;->mContext:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/fimi/kernel/FimiAppContext;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static initKernel(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    sput-object p0, Lcom/fimi/kernel/FimiAppContext;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method
