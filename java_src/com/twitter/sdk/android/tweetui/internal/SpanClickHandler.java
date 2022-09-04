package com.twitter.sdk.android.tweetui.internal;

import android.annotation.SuppressLint;
import android.text.Layout;
import android.text.Spanned;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
/* loaded from: classes2.dex */
public class SpanClickHandler {
    private HighlightedClickableSpan highlightedClickableSpan;
    private Layout layout;
    private float left;
    private float top;
    private final View view;

    public static void enableClicksOnSpans(TextView textView) {
        SpanClickHandler helper = new SpanClickHandler(textView, null);
        textView.setOnTouchListener(new View.OnTouchListener() { // from class: com.twitter.sdk.android.tweetui.internal.SpanClickHandler.1
            @Override // android.view.View.OnTouchListener
            @SuppressLint({"ClickableViewAccessibility"})
            public boolean onTouch(View view, MotionEvent event) {
                TextView textView2 = (TextView) view;
                Layout layout = textView2.getLayout();
                if (layout != null) {
                    SpanClickHandler.this.layout = layout;
                    SpanClickHandler.this.left = textView2.getTotalPaddingLeft() + textView2.getScrollX();
                    SpanClickHandler.this.top = textView2.getTotalPaddingTop() + textView2.getScrollY();
                    return SpanClickHandler.this.handleTouchEvent(event);
                }
                return false;
            }
        });
    }

    public SpanClickHandler(View view, Layout layout) {
        this.view = view;
        this.layout = layout;
    }

    public boolean handleTouchEvent(MotionEvent event) {
        HighlightedClickableSpan selectedSpan;
        CharSequence text = this.layout.getText();
        Spanned spannedText = text instanceof Spanned ? (Spanned) text : null;
        if (spannedText == null) {
            return false;
        }
        int action = event.getAction() & 255;
        int x = (int) (event.getX() - this.left);
        int y = (int) (event.getY() - this.top);
        if (x < 0 || x >= this.layout.getWidth() || y < 0 || y >= this.layout.getHeight()) {
            deselectSpan();
            return false;
        }
        int line = this.layout.getLineForVertical(y);
        if (x < this.layout.getLineLeft(line) || x > this.layout.getLineRight(line)) {
            deselectSpan();
            return false;
        } else if (action == 0) {
            int offset = this.layout.getOffsetForHorizontal(line, x);
            HighlightedClickableSpan[] span = (HighlightedClickableSpan[]) spannedText.getSpans(offset, offset, HighlightedClickableSpan.class);
            if (span.length <= 0) {
                return false;
            }
            selectSpan(span[0]);
            return true;
        } else if (action != 1 || (selectedSpan = this.highlightedClickableSpan) == null) {
            return false;
        } else {
            selectedSpan.onClick(this.view);
            deselectSpan();
            return true;
        }
    }

    private void selectSpan(HighlightedClickableSpan span) {
        span.select(true);
        this.highlightedClickableSpan = span;
        invalidate();
    }

    private void deselectSpan() {
        HighlightedClickableSpan selectedSpan = this.highlightedClickableSpan;
        if (selectedSpan != null && selectedSpan.isSelected()) {
            selectedSpan.select(false);
            this.highlightedClickableSpan = null;
            invalidate();
        }
    }

    private void invalidate() {
        this.view.invalidate((int) this.left, (int) this.top, ((int) this.left) + this.layout.getWidth(), ((int) this.top) + this.layout.getHeight());
    }
}
