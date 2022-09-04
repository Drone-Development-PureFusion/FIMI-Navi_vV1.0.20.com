package com.github.moduth.blockcanary;

import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class AbstractSampler {
    private static final int DEFAULT_SAMPLE_INTERVAL = 300;
    protected long mSampleInterval;
    protected AtomicBoolean mShouldSample = new AtomicBoolean(false);
    private Runnable mRunnable = new Runnable() { // from class: com.github.moduth.blockcanary.AbstractSampler.1
        @Override // java.lang.Runnable
        public void run() {
            AbstractSampler.this.doSample();
            if (AbstractSampler.this.mShouldSample.get()) {
                HandlerThreadFactory.getTimerThreadHandler().postDelayed(AbstractSampler.this.mRunnable, AbstractSampler.this.mSampleInterval);
            }
        }
    };

    abstract void doSample();

    public AbstractSampler(long sampleInterval) {
        this.mSampleInterval = 0 == sampleInterval ? 300L : sampleInterval;
    }

    public void start() {
        if (!this.mShouldSample.get()) {
            this.mShouldSample.set(true);
            HandlerThreadFactory.getTimerThreadHandler().removeCallbacks(this.mRunnable);
            HandlerThreadFactory.getTimerThreadHandler().postDelayed(this.mRunnable, BlockCanaryInternals.getInstance().getSampleDelay());
        }
    }

    public void stop() {
        if (this.mShouldSample.get()) {
            this.mShouldSample.set(false);
            HandlerThreadFactory.getTimerThreadHandler().removeCallbacks(this.mRunnable);
        }
    }
}
