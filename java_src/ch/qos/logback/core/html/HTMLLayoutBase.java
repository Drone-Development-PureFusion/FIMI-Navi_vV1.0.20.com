package ch.qos.logback.core.html;

import ch.qos.logback.core.Context;
import ch.qos.logback.core.CoreConstants;
import ch.qos.logback.core.LayoutBase;
import ch.qos.logback.core.pattern.Converter;
import ch.qos.logback.core.pattern.ConverterUtil;
import ch.qos.logback.core.pattern.parser.Parser;
import ch.qos.logback.core.spi.ScanException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class HTMLLayoutBase<E> extends LayoutBase<E> {
    protected CssBuilder cssBuilder;
    protected Converter<E> head;
    protected String pattern;
    protected String title = "Logback Log Messages";
    protected long counter = 0;

    private void buildHeaderRowForTable(StringBuilder sb) {
        Converter<E> converter = this.head;
        sb.append("<tr class=\"header\">");
        sb.append(CoreConstants.LINE_SEPARATOR);
        while (converter != null) {
            if (computeConverterName(converter) == null) {
                converter = converter.getNext();
            } else {
                sb.append("<td class=\"");
                sb.append(computeConverterName(converter));
                sb.append("\">");
                sb.append(computeConverterName(converter));
                sb.append("</td>");
                sb.append(CoreConstants.LINE_SEPARATOR);
                converter = converter.getNext();
            }
        }
        sb.append("</tr>");
        sb.append(CoreConstants.LINE_SEPARATOR);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String computeConverterName(Converter converter) {
        String simpleName = converter.getClass().getSimpleName();
        int indexOf = simpleName.indexOf("Converter");
        return indexOf == -1 ? simpleName : simpleName.substring(0, indexOf);
    }

    @Override // ch.qos.logback.core.LayoutBase, ch.qos.logback.core.Layout
    public String getContentType() {
        return "text/html";
    }

    public CssBuilder getCssBuilder() {
        return this.cssBuilder;
    }

    protected abstract Map<String, String> getDefaultConverterMap();

    public Map<String, String> getEffectiveConverterMap() {
        Map map;
        HashMap hashMap = new HashMap();
        Map<String, String> defaultConverterMap = getDefaultConverterMap();
        if (defaultConverterMap != null) {
            hashMap.putAll(defaultConverterMap);
        }
        Context context = getContext();
        if (context != null && (map = (Map) context.getObject(CoreConstants.PATTERN_RULE_REGISTRY)) != null) {
            hashMap.putAll(map);
        }
        return hashMap;
    }

    @Override // ch.qos.logback.core.LayoutBase, ch.qos.logback.core.Layout
    public String getFileFooter() {
        return CoreConstants.LINE_SEPARATOR + "</body></html>";
    }

    @Override // ch.qos.logback.core.LayoutBase, ch.qos.logback.core.Layout
    public String getFileHeader() {
        StringBuilder sb = new StringBuilder();
        sb.append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\"");
        sb.append(" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">");
        sb.append(CoreConstants.LINE_SEPARATOR);
        sb.append("<html>");
        sb.append(CoreConstants.LINE_SEPARATOR);
        sb.append("  <head>");
        sb.append(CoreConstants.LINE_SEPARATOR);
        sb.append("    <title>");
        sb.append(this.title);
        sb.append("</title>");
        sb.append(CoreConstants.LINE_SEPARATOR);
        this.cssBuilder.addCss(sb);
        sb.append(CoreConstants.LINE_SEPARATOR);
        sb.append("  </head>");
        sb.append(CoreConstants.LINE_SEPARATOR);
        sb.append("<body>");
        sb.append(CoreConstants.LINE_SEPARATOR);
        return sb.toString();
    }

    public String getPattern() {
        return this.pattern;
    }

    @Override // ch.qos.logback.core.LayoutBase, ch.qos.logback.core.Layout
    public String getPresentationFooter() {
        return "</table>";
    }

    @Override // ch.qos.logback.core.LayoutBase, ch.qos.logback.core.Layout
    public String getPresentationHeader() {
        StringBuilder sb = new StringBuilder();
        sb.append("<hr/>");
        sb.append(CoreConstants.LINE_SEPARATOR);
        sb.append("<p>Log session start time ");
        sb.append(new Date());
        sb.append("</p><p></p>");
        sb.append(CoreConstants.LINE_SEPARATOR);
        sb.append(CoreConstants.LINE_SEPARATOR);
        sb.append("<table cellspacing=\"0\">");
        sb.append(CoreConstants.LINE_SEPARATOR);
        buildHeaderRowForTable(sb);
        return sb.toString();
    }

    public String getTitle() {
        return this.title;
    }

    public void setCssBuilder(CssBuilder cssBuilder) {
        this.cssBuilder = cssBuilder;
    }

    public void setPattern(String str) {
        this.pattern = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    @Override // ch.qos.logback.core.LayoutBase, ch.qos.logback.core.spi.LifeCycle
    public void start() {
        boolean z = false;
        try {
            Parser parser = new Parser(this.pattern);
            parser.setContext(getContext());
            this.head = parser.compile(parser.parse(), getEffectiveConverterMap());
            ConverterUtil.startConverters(this.head);
        } catch (ScanException e) {
            addError("Incorrect pattern found", e);
            z = true;
        }
        if (!z) {
            this.started = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void startNewTableIfLimitReached(StringBuilder sb) {
        if (this.counter >= 10000) {
            this.counter = 0L;
            sb.append("</table>");
            sb.append(CoreConstants.LINE_SEPARATOR);
            sb.append("<p></p>");
            sb.append("<table cellspacing=\"0\">");
            sb.append(CoreConstants.LINE_SEPARATOR);
            buildHeaderRowForTable(sb);
        }
    }
}
