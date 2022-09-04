package com.twitter.sdk.android.tweetui;

import com.twitter.sdk.android.core.models.HashtagEntity;
import com.twitter.sdk.android.core.models.MentionEntity;
import com.twitter.sdk.android.core.models.SymbolEntity;
import com.twitter.sdk.android.core.models.UrlEntity;
/* loaded from: classes2.dex */
class FormattedUrlEntity {
    final String displayUrl;
    int end;
    final String expandedUrl;
    int start;
    final String url;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FormattedUrlEntity(int start, int end, String displayUrl, String url, String expandedUrl) {
        this.start = start;
        this.end = end;
        this.displayUrl = displayUrl;
        this.url = url;
        this.expandedUrl = expandedUrl;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static FormattedUrlEntity createFormattedUrlEntity(UrlEntity entity) {
        return new FormattedUrlEntity(entity.getStart(), entity.getEnd(), entity.displayUrl, entity.url, entity.expandedUrl);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static FormattedUrlEntity createFormattedUrlEntity(HashtagEntity hashtagEntity) {
        String url = TweetUtils.getHashtagPermalink(hashtagEntity.text);
        return new FormattedUrlEntity(hashtagEntity.getStart(), hashtagEntity.getEnd(), "#" + hashtagEntity.text, url, url);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static FormattedUrlEntity createFormattedUrlEntity(MentionEntity mentionEntity) {
        String url = TweetUtils.getProfilePermalink(mentionEntity.screenName);
        return new FormattedUrlEntity(mentionEntity.getStart(), mentionEntity.getEnd(), "@" + mentionEntity.screenName, url, url);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static FormattedUrlEntity createFormattedUrlEntity(SymbolEntity symbolEntity) {
        String url = TweetUtils.getSymbolPermalink(symbolEntity.text);
        return new FormattedUrlEntity(symbolEntity.getStart(), symbolEntity.getEnd(), "$" + symbolEntity.text, url, url);
    }
}
