.class Lcom/fimi/widget/CustomDialog$Builder$4;
.super Ljava/lang/Object;
.source "CustomDialog.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/widget/CustomDialog$Builder;->create()Lcom/fimi/widget/CustomDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/widget/CustomDialog$Builder;

.field final synthetic val$dialog:Lcom/fimi/widget/CustomDialog;


# direct methods
.method constructor <init>(Lcom/fimi/widget/CustomDialog$Builder;Lcom/fimi/widget/CustomDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/widget/CustomDialog$Builder;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/fimi/widget/CustomDialog$Builder$4;->this$0:Lcom/fimi/widget/CustomDialog$Builder;

    iput-object p2, p0, Lcom/fimi/widget/CustomDialog$Builder$4;->val$dialog:Lcom/fimi/widget/CustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 345
    const/16 v0, 0x706

    .line 353
    .local v0, "uiOptions":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 354
    or-int/lit16 v0, v0, 0x1000

    .line 358
    :goto_0
    iget-object v1, p0, Lcom/fimi/widget/CustomDialog$Builder$4;->val$dialog:Lcom/fimi/widget/CustomDialog;

    invoke-virtual {v1}, Lcom/fimi/widget/CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 359
    return-void

    .line 356
    :cond_0
    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
