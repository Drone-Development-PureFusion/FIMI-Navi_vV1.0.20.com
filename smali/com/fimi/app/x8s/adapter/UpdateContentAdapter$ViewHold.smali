.class Lcom/fimi/app/x8s/adapter/UpdateContentAdapter$ViewHold;
.super Ljava/lang/Object;
.source "UpdateContentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/adapter/UpdateContentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHold"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/adapter/UpdateContentAdapter;

.field tvSyscontent:Landroid/widget/TextView;

.field tvSysname:Landroid/widget/TextView;

.field tvSysnameFlag:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/fimi/app/x8s/adapter/UpdateContentAdapter;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/UpdateContentAdapter$ViewHold;->this$0:Lcom/fimi/app/x8s/adapter/UpdateContentAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fimi/app/x8s/adapter/UpdateContentAdapter;Lcom/fimi/app/x8s/adapter/UpdateContentAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fimi/app/x8s/adapter/UpdateContentAdapter;
    .param p2, "x1"    # Lcom/fimi/app/x8s/adapter/UpdateContentAdapter$1;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/adapter/UpdateContentAdapter$ViewHold;-><init>(Lcom/fimi/app/x8s/adapter/UpdateContentAdapter;)V

    return-void
.end method
