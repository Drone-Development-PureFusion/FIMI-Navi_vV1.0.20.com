package ch.qos.logback.classic.pattern;

import ch.qos.logback.classic.spi.CallerData;
import ch.qos.logback.classic.spi.ILoggingEvent;
import ch.qos.logback.core.Context;
import ch.qos.logback.core.CoreConstants;
import ch.qos.logback.core.boolex.EvaluationException;
import ch.qos.logback.core.boolex.EventEvaluator;
import ch.qos.logback.core.status.ErrorStatus;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class CallerDataConverter extends ClassicConverter {
    public static final String DEFAULT_CALLER_LINE_PREFIX = "Caller+";
    int depth = 5;
    List<EventEvaluator<ILoggingEvent>> evaluatorList = null;
    final int MAX_ERROR_COUNT = 4;
    int errorCount = 0;

    private void addEvaluator(EventEvaluator<ILoggingEvent> eventEvaluator) {
        if (this.evaluatorList == null) {
            this.evaluatorList = new ArrayList();
        }
        this.evaluatorList.add(eventEvaluator);
    }

    @Override // ch.qos.logback.core.pattern.Converter
    public String convert(ILoggingEvent iLoggingEvent) {
        boolean z;
        EventEvaluator<ILoggingEvent> eventEvaluator;
        StringBuilder sb = new StringBuilder();
        if (this.evaluatorList != null) {
            int i = 0;
            while (true) {
                if (i >= this.evaluatorList.size()) {
                    z = false;
                    break;
                }
                try {
                } catch (EvaluationException e) {
                    this.errorCount++;
                    if (this.errorCount < 4) {
                        addError("Exception thrown for evaluator named [" + eventEvaluator.getName() + "]", e);
                    } else if (this.errorCount == 4) {
                        ErrorStatus errorStatus = new ErrorStatus("Exception thrown for evaluator named [" + eventEvaluator.getName() + "].", this, e);
                        errorStatus.add(new ErrorStatus("This was the last warning about this evaluator's errors.We don't want the StatusManager to get flooded.", this));
                        addStatus(errorStatus);
                    }
                }
                if (this.evaluatorList.get(i).evaluate(iLoggingEvent)) {
                    z = true;
                    break;
                }
                i++;
            }
            if (!z) {
                return "";
            }
        }
        StackTraceElement[] callerData = iLoggingEvent.getCallerData();
        if (callerData == null || callerData.length <= 0) {
            return CallerData.CALLER_DATA_NA;
        }
        int length = this.depth < callerData.length ? this.depth : callerData.length;
        for (int i2 = 0; i2 < length; i2++) {
            sb.append(getCallerLinePrefix());
            sb.append(i2);
            sb.append("\t at ");
            sb.append(callerData[i2]);
            sb.append(CoreConstants.LINE_SEPARATOR);
        }
        return sb.toString();
    }

    protected String getCallerLinePrefix() {
        return DEFAULT_CALLER_LINE_PREFIX;
    }

    @Override // ch.qos.logback.core.pattern.DynamicConverter, ch.qos.logback.core.spi.LifeCycle
    public void start() {
        EventEvaluator<ILoggingEvent> eventEvaluator;
        String firstOption = getFirstOption();
        if (firstOption == null) {
            return;
        }
        try {
            this.depth = Integer.parseInt(firstOption);
        } catch (NumberFormatException e) {
            addError("Failed to parse depth option [" + firstOption + "]", e);
        }
        List<String> optionList = getOptionList();
        if (optionList == null || optionList.size() <= 1) {
            return;
        }
        int size = optionList.size();
        for (int i = 1; i < size; i++) {
            String str = optionList.get(i);
            Context context = getContext();
            if (context != null && (eventEvaluator = (EventEvaluator) ((Map) context.getObject(CoreConstants.EVALUATOR_MAP)).get(str)) != null) {
                addEvaluator(eventEvaluator);
            }
        }
    }
}
