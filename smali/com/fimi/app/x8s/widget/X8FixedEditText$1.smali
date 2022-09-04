.class Lcom/fimi/app/x8s/widget/X8FixedEditText$1;
.super Ljava/lang/Object;
.source "X8FixedEditText.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/widget/X8FixedEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/widget/X8FixedEditText;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/widget/X8FixedEditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/widget/X8FixedEditText;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8FixedEditText$1;->this$0:Lcom/fimi/app/x8s/widget/X8FixedEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 44
    const/4 v3, 0x6

    if-eq p2, v3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 45
    :cond_0
    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8FixedEditText$1;->this$0:Lcom/fimi/app/x8s/widget/X8FixedEditText;

    invoke-static {v3}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->access$000(Lcom/fimi/app/x8s/widget/X8FixedEditText;)Lcom/fimi/app/x8s/widget/X8FixedEditText$OnInputChangedListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 47
    :try_start_0
    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8FixedEditText$1;->this$0:Lcom/fimi/app/x8s/widget/X8FixedEditText;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 48
    .local v1, "value":I
    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8FixedEditText$1;->this$0:Lcom/fimi/app/x8s/widget/X8FixedEditText;

    invoke-static {v3}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->access$100(Lcom/fimi/app/x8s/widget/X8FixedEditText;)I

    move-result v3

    if-lt v1, v3, :cond_1

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8FixedEditText$1;->this$0:Lcom/fimi/app/x8s/widget/X8FixedEditText;

    invoke-static {v3}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->access$200(Lcom/fimi/app/x8s/widget/X8FixedEditText;)I

    move-result v3

    if-ge v3, v1, :cond_3

    .line 49
    :cond_1
    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8FixedEditText$1;->this$0:Lcom/fimi/app/x8s/widget/X8FixedEditText;

    invoke-static {v3}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->access$000(Lcom/fimi/app/x8s/widget/X8FixedEditText;)Lcom/fimi/app/x8s/widget/X8FixedEditText$OnInputChangedListener;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8FixedEditText$1;->this$0:Lcom/fimi/app/x8s/widget/X8FixedEditText;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Lcom/fimi/app/x8s/widget/X8FixedEditText$OnInputChangedListener;->onError(Landroid/widget/EditText;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v1    # "value":I
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8FixedEditText$1;->this$0:Lcom/fimi/app/x8s/widget/X8FixedEditText;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->hintKeyBoard()V

    .line 60
    :goto_1
    return v2

    .line 51
    .restart local v1    # "value":I
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8FixedEditText$1;->this$0:Lcom/fimi/app/x8s/widget/X8FixedEditText;

    invoke-static {v3}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->access$000(Lcom/fimi/app/x8s/widget/X8FixedEditText;)Lcom/fimi/app/x8s/widget/X8FixedEditText$OnInputChangedListener;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8FixedEditText$1;->this$0:Lcom/fimi/app/x8s/widget/X8FixedEditText;

    invoke-virtual {v4}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->getId()I

    move-result v4

    invoke-interface {v3, v4, v1}, Lcom/fimi/app/x8s/widget/X8FixedEditText$OnInputChangedListener;->onInputChanged(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 53
    .end local v1    # "value":I
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8FixedEditText$1;->this$0:Lcom/fimi/app/x8s/widget/X8FixedEditText;

    invoke-static {v3}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->access$000(Lcom/fimi/app/x8s/widget/X8FixedEditText;)Lcom/fimi/app/x8s/widget/X8FixedEditText$OnInputChangedListener;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8FixedEditText$1;->this$0:Lcom/fimi/app/x8s/widget/X8FixedEditText;

    const/4 v5, 0x3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/fimi/app/x8s/widget/X8FixedEditText$OnInputChangedListener;->onError(Landroid/widget/EditText;ILjava/lang/String;)V

    goto :goto_0

    .line 60
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method
