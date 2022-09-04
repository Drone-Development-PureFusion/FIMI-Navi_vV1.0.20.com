.class Lcom/fimi/app/ui/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/ui/SplashActivity;->doTrans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/ui/SplashActivity;


# direct methods
.method constructor <init>(Lcom/fimi/app/ui/SplashActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/ui/SplashActivity;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/fimi/app/ui/SplashActivity$1;->this$0:Lcom/fimi/app/ui/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/fimi/app/ui/SplashActivity$1;->this$0:Lcom/fimi/app/ui/SplashActivity;

    invoke-static {v0}, Lcom/fimi/app/ui/SplashActivity;->access$000(Lcom/fimi/app/ui/SplashActivity;)V

    .line 138
    return-void
.end method
