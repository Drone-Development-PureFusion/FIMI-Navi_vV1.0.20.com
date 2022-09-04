package ch.qos.logback.classic;

import android.support.p001v4.app.NotificationCompat;
import ch.qos.logback.classic.pattern.CallerDataConverter;
import ch.qos.logback.classic.pattern.ClassOfCallerConverter;
import ch.qos.logback.classic.pattern.ContextNameConverter;
import ch.qos.logback.classic.pattern.DateConverter;
import ch.qos.logback.classic.pattern.EnsureExceptionHandling;
import ch.qos.logback.classic.pattern.ExtendedThrowableProxyConverter;
import ch.qos.logback.classic.pattern.FileOfCallerConverter;
import ch.qos.logback.classic.pattern.LevelConverter;
import ch.qos.logback.classic.pattern.LineOfCallerConverter;
import ch.qos.logback.classic.pattern.LineSeparatorConverter;
import ch.qos.logback.classic.pattern.LocalSequenceNumberConverter;
import ch.qos.logback.classic.pattern.LoggerConverter;
import ch.qos.logback.classic.pattern.MDCConverter;
import ch.qos.logback.classic.pattern.MarkerConverter;
import ch.qos.logback.classic.pattern.MessageConverter;
import ch.qos.logback.classic.pattern.MethodOfCallerConverter;
import ch.qos.logback.classic.pattern.NopThrowableInformationConverter;
import ch.qos.logback.classic.pattern.PropertyConverter;
import ch.qos.logback.classic.pattern.RelativeTimeConverter;
import ch.qos.logback.classic.pattern.RootCauseFirstThrowableProxyConverter;
import ch.qos.logback.classic.pattern.ThreadConverter;
import ch.qos.logback.classic.pattern.ThrowableProxyConverter;
import ch.qos.logback.classic.pattern.color.HighlightingCompositeConverter;
import ch.qos.logback.classic.spi.ILoggingEvent;
import ch.qos.logback.core.joran.action.Action;
import ch.qos.logback.core.pattern.PatternLayoutBase;
import ch.qos.logback.core.pattern.color.ANSIConstants;
import ch.qos.logback.core.pattern.color.BlackCompositeConverter;
import ch.qos.logback.core.pattern.color.BlueCompositeConverter;
import ch.qos.logback.core.pattern.color.BoldBlueCompositeConverter;
import ch.qos.logback.core.pattern.color.BoldCyanCompositeConverter;
import ch.qos.logback.core.pattern.color.BoldGreenCompositeConverter;
import ch.qos.logback.core.pattern.color.BoldMagentaCompositeConverter;
import ch.qos.logback.core.pattern.color.BoldRedCompositeConverter;
import ch.qos.logback.core.pattern.color.BoldWhiteCompositeConverter;
import ch.qos.logback.core.pattern.color.BoldYellowCompositeConverter;
import ch.qos.logback.core.pattern.color.CyanCompositeConverter;
import ch.qos.logback.core.pattern.color.GrayCompositeConverter;
import ch.qos.logback.core.pattern.color.GreenCompositeConverter;
import ch.qos.logback.core.pattern.color.MagentaCompositeConverter;
import ch.qos.logback.core.pattern.color.RedCompositeConverter;
import ch.qos.logback.core.pattern.color.WhiteCompositeConverter;
import ch.qos.logback.core.pattern.color.YellowCompositeConverter;
import ch.qos.logback.core.pattern.parser.Parser;
import com.facebook.share.internal.ShareConstants;
import com.umeng.analytics.pro.C2216b;
import com.umeng.commonsdk.proguard.C2354g;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class PatternLayout extends PatternLayoutBase<ILoggingEvent> {
    public static final Map<String, String> defaultConverterMap = new HashMap();

    static {
        defaultConverterMap.putAll(Parser.DEFAULT_COMPOSITE_CONVERTER_MAP);
        defaultConverterMap.put("d", DateConverter.class.getName());
        defaultConverterMap.put("date", DateConverter.class.getName());
        defaultConverterMap.put("r", RelativeTimeConverter.class.getName());
        defaultConverterMap.put("relative", RelativeTimeConverter.class.getName());
        defaultConverterMap.put("level", LevelConverter.class.getName());
        defaultConverterMap.put("le", LevelConverter.class.getName());
        defaultConverterMap.put(C2354g.f1004ao, LevelConverter.class.getName());
        defaultConverterMap.put("t", ThreadConverter.class.getName());
        defaultConverterMap.put("thread", ThreadConverter.class.getName());
        defaultConverterMap.put("lo", LoggerConverter.class.getName());
        defaultConverterMap.put("logger", LoggerConverter.class.getName());
        defaultConverterMap.put("c", LoggerConverter.class.getName());
        defaultConverterMap.put(ANSIConstants.ESC_END, MessageConverter.class.getName());
        defaultConverterMap.put(NotificationCompat.CATEGORY_MESSAGE, MessageConverter.class.getName());
        defaultConverterMap.put(ShareConstants.WEB_DIALOG_PARAM_MESSAGE, MessageConverter.class.getName());
        defaultConverterMap.put("C", ClassOfCallerConverter.class.getName());
        defaultConverterMap.put(Action.CLASS_ATTRIBUTE, ClassOfCallerConverter.class.getName());
        defaultConverterMap.put("M", MethodOfCallerConverter.class.getName());
        defaultConverterMap.put("method", MethodOfCallerConverter.class.getName());
        defaultConverterMap.put("L", LineOfCallerConverter.class.getName());
        defaultConverterMap.put("line", LineOfCallerConverter.class.getName());
        defaultConverterMap.put("F", FileOfCallerConverter.class.getName());
        defaultConverterMap.put("file", FileOfCallerConverter.class.getName());
        defaultConverterMap.put("X", MDCConverter.class.getName());
        defaultConverterMap.put("mdc", MDCConverter.class.getName());
        defaultConverterMap.put("ex", ThrowableProxyConverter.class.getName());
        defaultConverterMap.put(C2216b.f448ao, ThrowableProxyConverter.class.getName());
        defaultConverterMap.put("rEx", RootCauseFirstThrowableProxyConverter.class.getName());
        defaultConverterMap.put("rootException", RootCauseFirstThrowableProxyConverter.class.getName());
        defaultConverterMap.put("throwable", ThrowableProxyConverter.class.getName());
        defaultConverterMap.put("xEx", ExtendedThrowableProxyConverter.class.getName());
        defaultConverterMap.put("xException", ExtendedThrowableProxyConverter.class.getName());
        defaultConverterMap.put("xThrowable", ExtendedThrowableProxyConverter.class.getName());
        defaultConverterMap.put("nopex", NopThrowableInformationConverter.class.getName());
        defaultConverterMap.put("nopexception", NopThrowableInformationConverter.class.getName());
        defaultConverterMap.put("cn", ContextNameConverter.class.getName());
        defaultConverterMap.put("contextName", ContextNameConverter.class.getName());
        defaultConverterMap.put("caller", CallerDataConverter.class.getName());
        defaultConverterMap.put("marker", MarkerConverter.class.getName());
        defaultConverterMap.put("property", PropertyConverter.class.getName());
        defaultConverterMap.put("n", LineSeparatorConverter.class.getName());
        defaultConverterMap.put("black", BlackCompositeConverter.class.getName());
        defaultConverterMap.put("red", RedCompositeConverter.class.getName());
        defaultConverterMap.put("green", GreenCompositeConverter.class.getName());
        defaultConverterMap.put("yellow", YellowCompositeConverter.class.getName());
        defaultConverterMap.put("blue", BlueCompositeConverter.class.getName());
        defaultConverterMap.put("magenta", MagentaCompositeConverter.class.getName());
        defaultConverterMap.put("cyan", CyanCompositeConverter.class.getName());
        defaultConverterMap.put("white", WhiteCompositeConverter.class.getName());
        defaultConverterMap.put("gray", GrayCompositeConverter.class.getName());
        defaultConverterMap.put("boldRed", BoldRedCompositeConverter.class.getName());
        defaultConverterMap.put("boldGreen", BoldGreenCompositeConverter.class.getName());
        defaultConverterMap.put("boldYellow", BoldYellowCompositeConverter.class.getName());
        defaultConverterMap.put("boldBlue", BoldBlueCompositeConverter.class.getName());
        defaultConverterMap.put("boldMagenta", BoldMagentaCompositeConverter.class.getName());
        defaultConverterMap.put("boldCyan", BoldCyanCompositeConverter.class.getName());
        defaultConverterMap.put("boldWhite", BoldWhiteCompositeConverter.class.getName());
        defaultConverterMap.put("highlight", HighlightingCompositeConverter.class.getName());
        defaultConverterMap.put("lsn", LocalSequenceNumberConverter.class.getName());
    }

    public PatternLayout() {
        this.postCompileProcessor = new EnsureExceptionHandling();
    }

    @Override // ch.qos.logback.core.Layout
    public String doLayout(ILoggingEvent iLoggingEvent) {
        return !isStarted() ? "" : writeLoopOnConverters(iLoggingEvent);
    }

    @Override // ch.qos.logback.core.pattern.PatternLayoutBase
    public Map<String, String> getDefaultConverterMap() {
        return defaultConverterMap;
    }
}
