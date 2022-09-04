.class Lcom/fimi/libperson/widget/TitleView$1;
.super Ljava/lang/Object;
.source "TitleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/widget/TitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libperson/widget/TitleView;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/widget/TitleView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/widget/TitleView;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/fimi/libperson/widget/TitleView$1;->this$0:Lcom/fimi/libperson/widget/TitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/libperson/widget/TitleView$1;->this$0:Lcom/fimi/libperson/widget/TitleView;

    invoke-virtual {v0}, Lcom/fimi/libperson/widget/TitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 36
    return-void
.end method
