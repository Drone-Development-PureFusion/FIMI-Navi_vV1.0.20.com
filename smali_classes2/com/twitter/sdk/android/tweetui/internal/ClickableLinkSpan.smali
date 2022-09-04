.class public abstract Lcom/twitter/sdk/android/tweetui/internal/ClickableLinkSpan;
.super Landroid/text/style/ClickableSpan;
.source "ClickableLinkSpan.java"

# interfaces
.implements Lcom/twitter/sdk/android/tweetui/internal/HighlightedClickableSpan;


# instance fields
.field private final colored:Z

.field public final linkColor:I

.field private selected:Z

.field private final selectedColor:I

.field private final underlined:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 1
    .param p1, "selectedColor"    # I
    .param p2, "linkColor"    # I
    .param p3, "underlined"    # Z

    .prologue
    .line 36
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/twitter/sdk/android/tweetui/internal/ClickableLinkSpan;-><init>(IIZZ)V

    .line 37
    return-void
.end method

.method constructor <init>(IIZZ)V
    .locals 0
    .param p1, "selectedColor"    # I
    .param p2, "linkColor"    # I
    .param p3, "colored"    # Z
    .param p4, "underlined"    # Z

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 40
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/ClickableLinkSpan;->selectedColor:I

    .line 41
    iput p2, p0, Lcom/twitter/sdk/android/tweetui/internal/ClickableLinkSpan;->linkColor:I

    .line 42
    iput-boolean p3, p0, Lcom/twitter/sdk/android/tweetui/internal/ClickableLinkSpan;->colored:Z

    .line 43
    iput-boolean p4, p0, Lcom/twitter/sdk/android/tweetui/internal/ClickableLinkSpan;->underlined:Z

    .line 44
    return-void
.end method


# virtual methods
.method public isSelected()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/twitter/sdk/android/tweetui/internal/ClickableLinkSpan;->selected:Z

    return v0
.end method

.method public select(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/twitter/sdk/android/tweetui/internal/ClickableLinkSpan;->selected:Z

    .line 68
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/twitter/sdk/android/tweetui/internal/ClickableLinkSpan;->colored:Z

    if-eqz v0, :cond_1

    .line 49
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/ClickableLinkSpan;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 54
    :goto_0
    iget-boolean v0, p0, Lcom/twitter/sdk/android/tweetui/internal/ClickableLinkSpan;->selected:Z

    if-eqz v0, :cond_2

    .line 55
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/ClickableLinkSpan;->selectedColor:I

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 60
    :goto_1
    iget-boolean v0, p0, Lcom/twitter/sdk/android/tweetui/internal/ClickableLinkSpan;->underlined:Z

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 63
    :cond_0
    return-void

    .line 51
    :cond_1
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0

    .line 57
    :cond_2
    const/4 v0, 0x0

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    goto :goto_1
.end method
