package org.slf4j.helpers;

import org.slf4j.ILoggerFactory;
import org.slf4j.Logger;
/* loaded from: classes2.dex */
public class NOPLoggerFactory implements ILoggerFactory {
    @Override // org.slf4j.ILoggerFactory
    /* renamed from: getLogger */
    public Logger mo1619getLogger(String name) {
        return NOPLogger.NOP_LOGGER;
    }
}
