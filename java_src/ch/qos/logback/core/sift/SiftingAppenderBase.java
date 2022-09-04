package ch.qos.logback.core.sift;

import ch.qos.logback.core.Appender;
import ch.qos.logback.core.AppenderBase;
import ch.qos.logback.core.util.Duration;
/* loaded from: classes.dex */
public abstract class SiftingAppenderBase<E> extends AppenderBase<E> {
    AppenderFactory<E> appenderFactory;
    protected AppenderTracker<E> appenderTracker;
    Discriminator<E> discriminator;
    Duration timeout = new Duration(1800000);
    int maxAppenderCount = Integer.MAX_VALUE;

    @Override // ch.qos.logback.core.AppenderBase
    protected void append(E e) {
        if (!isStarted()) {
            return;
        }
        String discriminatingValue = this.discriminator.getDiscriminatingValue(e);
        long timestamp = getTimestamp(e);
        Appender<E> orCreate = this.appenderTracker.getOrCreate(discriminatingValue, timestamp);
        if (eventMarksEndOfLife(e)) {
            this.appenderTracker.endOfLife(discriminatingValue);
        }
        this.appenderTracker.removeStaleComponents(timestamp);
        orCreate.doAppend(e);
    }

    protected abstract boolean eventMarksEndOfLife(E e);

    public AppenderTracker<E> getAppenderTracker() {
        return this.appenderTracker;
    }

    public Discriminator<E> getDiscriminator() {
        return this.discriminator;
    }

    public String getDiscriminatorKey() {
        if (this.discriminator != null) {
            return this.discriminator.getKey();
        }
        return null;
    }

    public int getMaxAppenderCount() {
        return this.maxAppenderCount;
    }

    public Duration getTimeout() {
        return this.timeout;
    }

    protected abstract long getTimestamp(E e);

    public void setAppenderFactory(AppenderFactory<E> appenderFactory) {
        this.appenderFactory = appenderFactory;
    }

    public void setDiscriminator(Discriminator<E> discriminator) {
        this.discriminator = discriminator;
    }

    public void setMaxAppenderCount(int i) {
        this.maxAppenderCount = i;
    }

    public void setTimeout(Duration duration) {
        this.timeout = duration;
    }

    @Override // ch.qos.logback.core.AppenderBase, ch.qos.logback.core.spi.LifeCycle
    public void start() {
        int i = 0;
        if (this.discriminator == null) {
            addError("Missing discriminator. Aborting");
            i = 1;
        }
        if (!this.discriminator.isStarted()) {
            addError("Discriminator has not started successfully. Aborting");
            i++;
        }
        if (this.appenderFactory == null) {
            addError("AppenderFactory has not been set. Aborting");
            i++;
        } else {
            this.appenderTracker = new AppenderTracker<>(this.context, this.appenderFactory);
            this.appenderTracker.setMaxComponents(this.maxAppenderCount);
            this.appenderTracker.setTimeout(this.timeout.getMilliseconds());
        }
        if (i == 0) {
            super.start();
        }
    }

    @Override // ch.qos.logback.core.AppenderBase, ch.qos.logback.core.spi.LifeCycle
    public void stop() {
        for (Appender<E> appender : this.appenderTracker.allComponents()) {
            appender.stop();
        }
    }
}
