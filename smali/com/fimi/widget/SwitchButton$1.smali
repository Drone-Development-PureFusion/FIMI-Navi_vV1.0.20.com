.class Lcom/fimi/widget/SwitchButton$1;
.super Ljava/lang/Object;
.source "SwitchButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/widget/SwitchButton;->setup(Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/widget/SwitchButton;


# direct methods
.method constructor <init>(Lcom/fimi/widget/SwitchButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/widget/SwitchButton;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/fimi/widget/SwitchButton$1;->this$0:Lcom/fimi/widget/SwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/fimi/widget/SwitchButton$1;->this$0:Lcom/fimi/widget/SwitchButton;

    invoke-static {v0}, Lcom/fimi/widget/SwitchButton;->access$000(Lcom/fimi/widget/SwitchButton;)V

    .line 152
    return-void
.end method
