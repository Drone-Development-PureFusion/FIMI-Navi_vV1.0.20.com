package ch.qos.logback.core.rolling.helper;

import ch.qos.logback.core.spi.ContextAware;
import java.util.Date;
/* loaded from: classes.dex */
public interface ArchiveRemover extends ContextAware {
    void clean(Date date);

    void setMaxHistory(int i);
}
