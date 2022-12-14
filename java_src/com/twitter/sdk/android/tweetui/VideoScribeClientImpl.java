package com.twitter.sdk.android.tweetui;

import com.twitter.sdk.android.core.internal.scribe.EventNamespace;
import com.twitter.sdk.android.core.internal.scribe.ScribeItem;
import com.twitter.sdk.android.core.internal.scribe.SyndicationClientEvent;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
class VideoScribeClientImpl implements VideoScribeClient {
    static final String SCRIBE_IMPRESSION_ACTION = "impression";
    static final String SCRIBE_PLAY_ACTION = "play";
    static final String TFW_CLIENT_EVENT_PAGE = "android";
    static final String TFW_CLIENT_EVENT_SECTION = "video";
    final TweetUi tweetUi;

    /* JADX INFO: Access modifiers changed from: package-private */
    public VideoScribeClientImpl(TweetUi tweetUi) {
        this.tweetUi = tweetUi;
    }

    @Override // com.twitter.sdk.android.tweetui.VideoScribeClient
    public void impression(ScribeItem scribeItem) {
        List<ScribeItem> items = new ArrayList<>();
        items.add(scribeItem);
        this.tweetUi.scribe(getTfwImpressionNamespace(), items);
    }

    @Override // com.twitter.sdk.android.tweetui.VideoScribeClient
    public void play(ScribeItem scribeItem) {
        List<ScribeItem> items = new ArrayList<>();
        items.add(scribeItem);
        this.tweetUi.scribe(getTfwPlayNamespace(), items);
    }

    static EventNamespace getTfwImpressionNamespace() {
        return new EventNamespace.Builder().setClient(SyndicationClientEvent.CLIENT_NAME).setPage("android").setSection("video").setAction(SCRIBE_IMPRESSION_ACTION).builder();
    }

    static EventNamespace getTfwPlayNamespace() {
        return new EventNamespace.Builder().setClient(SyndicationClientEvent.CLIENT_NAME).setPage("android").setSection("video").setAction(SCRIBE_PLAY_ACTION).builder();
    }
}
