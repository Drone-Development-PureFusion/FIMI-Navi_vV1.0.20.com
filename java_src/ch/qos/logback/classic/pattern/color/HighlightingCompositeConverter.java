package ch.qos.logback.classic.pattern.color;

import ch.qos.logback.classic.Level;
import ch.qos.logback.classic.spi.ILoggingEvent;
import ch.qos.logback.core.pattern.color.ANSIConstants;
import ch.qos.logback.core.pattern.color.ForegroundCompositeConverterBase;
@Deprecated
/* loaded from: classes.dex */
public class HighlightingCompositeConverter extends ForegroundCompositeConverterBase<ILoggingEvent> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // ch.qos.logback.core.pattern.color.ForegroundCompositeConverterBase
    public String getForegroundColorCode(ILoggingEvent iLoggingEvent) {
        switch (iLoggingEvent.getLevel().toInt()) {
            case 20000:
                return ANSIConstants.BLUE_FG;
            case 30000:
                return ANSIConstants.RED_FG;
            case Level.ERROR_INT /* 40000 */:
                return "1;31";
            default:
                return ANSIConstants.DEFAULT_FG;
        }
    }
}
