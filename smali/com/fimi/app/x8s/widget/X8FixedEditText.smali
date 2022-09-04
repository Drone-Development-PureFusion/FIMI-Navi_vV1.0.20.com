.class public Lcom/fimi/app/x8s/widget/X8FixedEditText;
.super Landroid/widget/EditText;
.source "X8FixedEditText.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/widget/X8FixedEditText$OnInputChangedListener;
    }
.end annotation


# static fields
.field public static final ERROR_NOT_NUMBER:I = 0x2

.field public static final ERROR_OTHERS:I = 0x3

.field public static final ERROR_OVER_LIMIT:I = 0x1


# instance fields
.field private MAX:I

.field private MIN:I

.field final TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private fixedText:Ljava/lang/String;

.field private listener:Lcom/fimi/app/x8s/widget/X8FixedEditText$OnInputChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const-string v0, "DDLOG"

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8FixedEditText;->TAG:Ljava/lang/String;

    .line 29
    const/16 v0, 0x64

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8FixedEditText;->MAX:I

    .line 30
    const/16 v0, 0xa

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8FixedEditText;->MIN:I

    .line 40
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8FixedEditText;->context:Landroid/content/Context;

    .line 41
    new-instance v0, Lcom/fimi/app/x8s/widget/X8FixedEditText$1;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/widget/X8FixedEditText$1;-><init>(Lcom/fimi/app/x8s/widget/X8FixedEditText;)V

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/widget/X8FixedEditText;)Lcom/fimi/app/x8s/widget/X8FixedEditText$OnInputChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8FixedEditText;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8FixedEditText;->listener:Lcom/fimi/app/x8s/widget/X8FixedEditText$OnInputChangedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/widget/X8FixedEditText;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8FixedEditText;

    .prologue
    .line 21
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8FixedEditText;->MIN:I

    return v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/widget/X8FixedEditText;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8FixedEditText;

    .prologue
    .line 21
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8FixedEditText;->MAX:I

    return v0
.end method


# virtual methods
.method public hintKeyBoard()V
    .locals 3

    .prologue
    .line 66
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8FixedEditText;->context:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 67
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 70
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 85
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8FixedEditText;->fixedText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 87
    .local v0, "padding":I
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8FixedEditText;->fixedText:Ljava/lang/String;

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->getBaseline()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 89
    .end local v0    # "padding":I
    :cond_0
    return-void
.end method

.method public setFixedText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8FixedEditText;->fixedText:Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8FixedEditText;->invalidate()V

    .line 75
    return-void
.end method

.method public setInputLimit(II)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8FixedEditText;->MIN:I

    .line 79
    iput p2, p0, Lcom/fimi/app/x8s/widget/X8FixedEditText;->MAX:I

    .line 80
    return-void
.end method

.method public setOnInputChangedListener(Lcom/fimi/app/x8s/widget/X8FixedEditText$OnInputChangedListener;)V
    .locals 0
    .param p1, "listener1"    # Lcom/fimi/app/x8s/widget/X8FixedEditText$OnInputChangedListener;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8FixedEditText;->listener:Lcom/fimi/app/x8s/widget/X8FixedEditText$OnInputChangedListener;

    .line 94
    return-void
.end method
