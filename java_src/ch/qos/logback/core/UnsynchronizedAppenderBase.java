package ch.qos.logback.core;

import ch.qos.logback.core.filter.Filter;
import ch.qos.logback.core.spi.ContextAwareBase;
import ch.qos.logback.core.spi.FilterAttachableImpl;
import ch.qos.logback.core.spi.FilterReply;
import ch.qos.logback.core.status.WarnStatus;
import java.util.List;
/* loaded from: classes.dex */
public abstract class UnsynchronizedAppenderBase<E> extends ContextAwareBase implements Appender<E> {
    static final int ALLOWED_REPEATS = 3;
    protected String name;
    protected boolean started = false;
    private ThreadLocal<Boolean> guard = new ThreadLocal<>();
    private FilterAttachableImpl<E> fai = new FilterAttachableImpl<>();
    private int statusRepeatCount = 0;
    private int exceptionCount = 0;

    @Override // ch.qos.logback.core.spi.FilterAttachable
    public void addFilter(Filter<E> filter) {
        this.fai.addFilter(filter);
    }

    protected abstract void append(E e);

    @Override // ch.qos.logback.core.spi.FilterAttachable
    public void clearAllFilters() {
        this.fai.clearAllFilters();
    }

    @Override // ch.qos.logback.core.Appender
    public void doAppend(E e) {
        try {
            if (Boolean.TRUE.equals(this.guard.get())) {
                return;
            }
            this.guard.set(Boolean.TRUE);
            if (this.started) {
                if (getFilterChainDecision(e) == FilterReply.DENY) {
                    return;
                }
                append(e);
                return;
            }
            int i = this.statusRepeatCount;
            this.statusRepeatCount = i + 1;
            if (i < 3) {
                addStatus(new WarnStatus("Attempted to append to non started appender [" + this.name + "].", this));
            }
        } catch (Exception e2) {
            int i2 = this.exceptionCount;
            this.exceptionCount = i2 + 1;
            if (i2 < 3) {
                addError("Appender [" + this.name + "] failed to append.", e2);
            }
        } finally {
            this.guard.set(Boolean.FALSE);
        }
    }

    @Override // ch.qos.logback.core.spi.FilterAttachable
    public List<Filter<E>> getCopyOfAttachedFiltersList() {
        return this.fai.getCopyOfAttachedFiltersList();
    }

    @Override // ch.qos.logback.core.spi.FilterAttachable
    public FilterReply getFilterChainDecision(E e) {
        return this.fai.getFilterChainDecision(e);
    }

    @Override // ch.qos.logback.core.Appender
    public String getName() {
        return this.name;
    }

    @Override // ch.qos.logback.core.spi.LifeCycle
    public boolean isStarted() {
        return this.started;
    }

    @Override // ch.qos.logback.core.Appender
    public void setName(String str) {
        this.name = str;
    }

    public void start() {
        this.started = true;
    }

    public void stop() {
        this.started = false;
    }

    public String toString() {
        return getClass().getName() + "[" + this.name + "]";
    }
}
