.class Lcom/fimi/libdownfw/update/FindeNewFwDownActivity$1;
.super Ljava/lang/Object;
.source "FindeNewFwDownActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->doTrans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;


# direct methods
.method constructor <init>(Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity$1;->this$0:Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity$1;->this$0:Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;

    invoke-virtual {v0}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->finish()V

    .line 198
    return-void
.end method
