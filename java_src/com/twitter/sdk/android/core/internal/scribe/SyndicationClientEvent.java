package com.twitter.sdk.android.core.internal.scribe;

import com.google.gson.annotations.SerializedName;
import com.umeng.commonsdk.proguard.C2354g;
import java.util.List;
/* loaded from: classes.dex */
public class SyndicationClientEvent extends ScribeEvent {
    public static final String CLIENT_NAME = "tfw";
    private static final String SCRIBE_CATEGORY = "tfw_client_event";
    @SerializedName("event_info")
    public final String eventInfo;
    @SerializedName("external_ids")
    public final ExternalIds externalIds;
    @SerializedName(C2354g.f975M)
    public final String language;

    public SyndicationClientEvent(EventNamespace eventNamespace, String eventInfo, long timestamp, String language, String adId, List<ScribeItem> items) {
        super(SCRIBE_CATEGORY, eventNamespace, timestamp, items);
        this.language = language;
        this.eventInfo = eventInfo;
        this.externalIds = new ExternalIds(adId);
    }

    /* loaded from: classes.dex */
    public class ExternalIds {
        @SerializedName("6")
        public final String adId;

        public ExternalIds(String adId) {
            this.adId = adId;
        }
    }
}
