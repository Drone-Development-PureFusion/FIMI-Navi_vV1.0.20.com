package ch.qos.logback.classic.html;

import ch.qos.logback.classic.PatternLayout;
import ch.qos.logback.classic.pattern.MDCConverter;
import ch.qos.logback.classic.spi.ILoggingEvent;
import ch.qos.logback.core.CoreConstants;
import ch.qos.logback.core.html.HTMLLayoutBase;
import ch.qos.logback.core.html.IThrowableRenderer;
import ch.qos.logback.core.pattern.Converter;
import java.util.Map;
/* loaded from: classes.dex */
public class HTMLLayout extends HTMLLayoutBase<ILoggingEvent> {
    static final String DEFAULT_CONVERSION_PATTERN = "%date%thread%level%logger%mdc%msg";
    IThrowableRenderer<ILoggingEvent> throwableRenderer = new DefaultThrowableRenderer();

    public HTMLLayout() {
        this.pattern = DEFAULT_CONVERSION_PATTERN;
        this.cssBuilder = new DefaultCssBuilder();
    }

    private void appendEventToBuffer(StringBuilder sb, Converter<ILoggingEvent> converter, ILoggingEvent iLoggingEvent) {
        sb.append("<td class=\"");
        sb.append(computeConverterName(converter));
        sb.append("\">");
        converter.write(sb, iLoggingEvent);
        sb.append("</td>");
        sb.append(CoreConstants.LINE_SEPARATOR);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // ch.qos.logback.core.html.HTMLLayoutBase
    public String computeConverterName(Converter converter) {
        if (converter instanceof MDCConverter) {
            String firstOption = ((MDCConverter) converter).getFirstOption();
            return firstOption != null ? firstOption : "MDC";
        }
        return super.computeConverterName(converter);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // ch.qos.logback.core.Layout
    public String doLayout(ILoggingEvent iLoggingEvent) {
        StringBuilder sb = new StringBuilder();
        startNewTableIfLimitReached(sb);
        boolean z = true;
        long j = this.counter;
        this.counter = j + 1;
        if ((j & 1) == 0) {
            z = false;
        }
        String lowerCase = iLoggingEvent.getLevel().toString().toLowerCase();
        sb.append(CoreConstants.LINE_SEPARATOR);
        sb.append("<tr class=\"");
        sb.append(lowerCase);
        if (z) {
            sb.append(" odd\">");
        } else {
            sb.append(" even\">");
        }
        sb.append(CoreConstants.LINE_SEPARATOR);
        for (Converter converter = this.head; converter != null; converter = converter.getNext()) {
            appendEventToBuffer(sb, converter, iLoggingEvent);
        }
        sb.append("</tr>");
        sb.append(CoreConstants.LINE_SEPARATOR);
        if (iLoggingEvent.getThrowableProxy() != null) {
            this.throwableRenderer.render(sb, iLoggingEvent);
        }
        return sb.toString();
    }

    @Override // ch.qos.logback.core.html.HTMLLayoutBase
    protected Map<String, String> getDefaultConverterMap() {
        return PatternLayout.defaultConverterMap;
    }

    public IThrowableRenderer getThrowableRenderer() {
        return this.throwableRenderer;
    }

    public void setThrowableRenderer(IThrowableRenderer<ILoggingEvent> iThrowableRenderer) {
        this.throwableRenderer = iThrowableRenderer;
    }

    @Override // ch.qos.logback.core.html.HTMLLayoutBase, ch.qos.logback.core.LayoutBase, ch.qos.logback.core.spi.LifeCycle
    public void start() {
        boolean z = false;
        if (this.throwableRenderer == null) {
            addError("ThrowableRender cannot be null.");
            z = true;
        }
        if (!z) {
            super.start();
        }
    }
}
