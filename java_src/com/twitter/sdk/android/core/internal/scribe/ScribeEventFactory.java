package com.twitter.sdk.android.core.internal.scribe;

import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class ScribeEventFactory {
    public static ScribeEvent newScribeEvent(EventNamespace ns, long timestamp, String language, String advertisingId) {
        return newScribeEvent(ns, "", timestamp, language, advertisingId, Collections.emptyList());
    }

    public static ScribeEvent newScribeEvent(EventNamespace ns, String eventInfo, long timestamp, String language, String advertisingId, List<ScribeItem> items) {
        String str = ns.client;
        char c = 65535;
        switch (str.hashCode()) {
            case 114757:
                if (str.equals(SyndicationClientEvent.CLIENT_NAME)) {
                    c = 0;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return new SyndicationClientEvent(ns, eventInfo, timestamp, language, advertisingId, items);
            default:
                return new SyndicatedSdkImpressionEvent(ns, timestamp, language, advertisingId, items);
        }
    }
}
