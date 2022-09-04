package com.twitter.sdk.android.tweetcomposer;

import com.twitter.sdk.android.core.internal.scribe.EventNamespace;
import com.twitter.sdk.android.core.internal.scribe.ScribeItem;
import java.util.List;
/* loaded from: classes2.dex */
interface ScribeClient {
    void scribe(EventNamespace eventNamespace, List<ScribeItem> list);
}
