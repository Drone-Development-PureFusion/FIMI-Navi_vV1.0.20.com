package com.twitter.sdk.android.tweetui;

import com.twitter.sdk.android.core.models.MediaEntity;
/* loaded from: classes2.dex */
class FormattedMediaEntity extends FormattedUrlEntity {
    final String mediaUrlHttps;
    final String type;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FormattedMediaEntity(MediaEntity entity) {
        super(entity.getStart(), entity.getEnd(), entity.displayUrl, entity.url, entity.expandedUrl);
        this.type = entity.type;
        this.mediaUrlHttps = entity.mediaUrlHttps;
    }
}
