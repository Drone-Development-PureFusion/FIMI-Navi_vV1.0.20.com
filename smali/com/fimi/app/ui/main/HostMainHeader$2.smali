.class Lcom/fimi/app/ui/main/HostMainHeader$2;
.super Ljava/lang/Object;
.source "HostMainHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/ui/main/HostMainHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/ui/main/HostMainHeader;


# direct methods
.method constructor <init>(Lcom/fimi/app/ui/main/HostMainHeader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/ui/main/HostMainHeader;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/fimi/app/ui/main/HostMainHeader$2;->this$0:Lcom/fimi/app/ui/main/HostMainHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostMainHeader$2;->this$0:Lcom/fimi/app/ui/main/HostMainHeader;

    invoke-static {v0}, Lcom/fimi/app/ui/main/HostMainHeader;->access$000(Lcom/fimi/app/ui/main/HostMainHeader;)Lcom/fimi/app/presenter/HostMainPresenter;

    move-result-object v0

    const-string v1, "activity://gh2.teacher"

    invoke-virtual {v0, v1}, Lcom/fimi/app/presenter/HostMainPresenter;->gotoTeacher(Ljava/lang/String;)V

    .line 63
    return-void
.end method
