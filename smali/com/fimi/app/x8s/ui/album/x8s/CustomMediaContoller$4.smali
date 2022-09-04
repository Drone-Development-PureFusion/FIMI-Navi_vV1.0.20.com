.class Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$4;
.super Ljava/lang/Object;
.source "CustomMediaContoller.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->initAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$4;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller$4;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->onPlay()V

    .line 152
    return-void
.end method
