.class final Lcom/fimi/kernel/widget/statusbar/StatusBarCompatLollipop$3;
.super Ljava/lang/Object;
.source "StatusBarCompatLollipop.java"

# interfaces
.implements Landroid/support/v4/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/kernel/widget/statusbar/StatusBarCompatLollipop;->setStatusBarColorForCollapsingToolbar(Landroid/app/Activity;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/CollapsingToolbarLayout;Landroid/support/v7/widget/Toolbar;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .prologue
    .line 100
    return-object p2
.end method
