.class Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$3;
.super Ljava/lang/Object;
.source "DownloadFwSelectActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->doTrans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;


# direct methods
.method constructor <init>(Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$3;->this$0:Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
