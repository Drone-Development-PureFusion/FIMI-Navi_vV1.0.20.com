package com.twitter.sdk.android.tweetcomposer;

import com.twitter.sdk.android.core.internal.scribe.EventNamespace;
import java.util.Collections;
/* loaded from: classes2.dex */
class ComposerScribeClientImpl implements ComposerScribeClient {
    private final ScribeClient scribeClient;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ComposerScribeClientImpl(ScribeClient scribeClient) {
        if (scribeClient == null) {
            throw new NullPointerException("scribeClient must not be null");
        }
        this.scribeClient = scribeClient;
    }

    @Override // com.twitter.sdk.android.tweetcomposer.ComposerScribeClient
    public void impression() {
        EventNamespace ns = ScribeConstants.ComposerEventBuilder.setComponent("").setElement("").setAction("impression").builder();
        this.scribeClient.scribe(ns, Collections.EMPTY_LIST);
    }

    @Override // com.twitter.sdk.android.tweetcomposer.ComposerScribeClient
    public void click(String element) {
        EventNamespace ns = ScribeConstants.ComposerEventBuilder.setComponent("").setElement(element).setAction("click").builder();
        this.scribeClient.scribe(ns, Collections.EMPTY_LIST);
    }
}
