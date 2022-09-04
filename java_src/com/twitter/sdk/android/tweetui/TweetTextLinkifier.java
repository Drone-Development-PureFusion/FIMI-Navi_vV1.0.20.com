package com.twitter.sdk.android.tweetui;

import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.CharacterStyle;
import android.view.View;
import com.twitter.sdk.android.core.models.ModelUtils;
import com.twitter.sdk.android.tweetui.internal.ClickableLinkSpan;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
final class TweetTextLinkifier {
    static final Pattern QUOTED_STATUS_URL = Pattern.compile("^https?://twitter\\.com(/#!)?/\\w+/status/\\d+$");
    static final Pattern VINE_URL = Pattern.compile("^https?://vine\\.co(/#!)?/v/\\w+$");

    private TweetTextLinkifier() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CharSequence linkifyUrls(FormattedTweetText tweetText, LinkClickListener linkListener, int linkColor, int linkHighlightColor, boolean stripQuoteTweet, boolean stripVineCard) {
        if (tweetText == null) {
            return null;
        }
        if (TextUtils.isEmpty(tweetText.text)) {
            return tweetText.text;
        }
        SpannableStringBuilder spannable = new SpannableStringBuilder(tweetText.text);
        List<FormattedUrlEntity> urls = ModelUtils.getSafeList(tweetText.urlEntities);
        List<FormattedMediaEntity> media = ModelUtils.getSafeList(tweetText.mediaEntities);
        List<FormattedUrlEntity> hashtags = ModelUtils.getSafeList(tweetText.hashtagEntities);
        List<FormattedUrlEntity> mentions = ModelUtils.getSafeList(tweetText.mentionEntities);
        List<FormattedUrlEntity> symbols = ModelUtils.getSafeList(tweetText.symbolEntities);
        List<FormattedUrlEntity> combined = mergeAndSortEntities(urls, media, hashtags, mentions, symbols);
        FormattedUrlEntity strippedEntity = getEntityToStrip(tweetText.text, combined, stripQuoteTweet, stripVineCard);
        addUrlEntities(spannable, combined, strippedEntity, linkListener, linkColor, linkHighlightColor);
        return trimEnd(spannable);
    }

    static CharSequence trimEnd(CharSequence charSequence) {
        int length = charSequence.length();
        while (length > 0 && charSequence.charAt(length - 1) <= ' ') {
            length--;
        }
        return length < charSequence.length() ? charSequence.subSequence(0, length) : charSequence;
    }

    static List<FormattedUrlEntity> mergeAndSortEntities(List<FormattedUrlEntity> urls, List<FormattedMediaEntity> media, List<FormattedUrlEntity> hashtags, List<FormattedUrlEntity> mentions, List<FormattedUrlEntity> symbols) {
        ArrayList<FormattedUrlEntity> combined = new ArrayList<>(urls);
        combined.addAll(media);
        combined.addAll(hashtags);
        combined.addAll(mentions);
        combined.addAll(symbols);
        Collections.sort(combined, new Comparator<FormattedUrlEntity>() { // from class: com.twitter.sdk.android.tweetui.TweetTextLinkifier.1
            @Override // java.util.Comparator
            public int compare(FormattedUrlEntity lhs, FormattedUrlEntity rhs) {
                if (lhs != null || rhs == null) {
                    if (lhs != null && rhs == null) {
                        return 1;
                    }
                    if (lhs == null && rhs == null) {
                        return 0;
                    }
                    if (lhs.start < rhs.start) {
                        return -1;
                    }
                    return lhs.start > rhs.start ? 1 : 0;
                }
                return -1;
            }
        });
        return combined;
    }

    private static void addUrlEntities(SpannableStringBuilder spannable, List<FormattedUrlEntity> entities, FormattedUrlEntity strippedEntity, final LinkClickListener linkListener, int linkColor, int linkHighlightColor) {
        if (entities != null && !entities.isEmpty()) {
            int offset = 0;
            for (final FormattedUrlEntity url : entities) {
                int start = url.start - offset;
                int end = url.end - offset;
                if (start >= 0 && end <= spannable.length()) {
                    if (strippedEntity != null && strippedEntity.start == url.start) {
                        spannable.replace(start, end, "");
                        offset += end - start;
                    } else if (!TextUtils.isEmpty(url.displayUrl)) {
                        spannable.replace(start, end, (CharSequence) url.displayUrl);
                        int len = end - (url.displayUrl.length() + start);
                        offset += len;
                        CharacterStyle span = new ClickableLinkSpan(linkHighlightColor, linkColor, false) { // from class: com.twitter.sdk.android.tweetui.TweetTextLinkifier.2
                            @Override // android.text.style.ClickableSpan, com.twitter.sdk.android.tweetui.internal.HighlightedClickableSpan
                            public void onClick(View widget) {
                                if (linkListener != null) {
                                    linkListener.onUrlClicked(url.url);
                                }
                            }
                        };
                        spannable.setSpan(span, start, end - len, 33);
                    }
                }
            }
        }
    }

    static FormattedUrlEntity getEntityToStrip(String tweetText, List<FormattedUrlEntity> combined, boolean stripQuoteTweet, boolean stripVineCard) {
        if (combined.isEmpty()) {
            return null;
        }
        FormattedUrlEntity urlEntity = combined.get(combined.size() - 1);
        if (stripLtrMarker(tweetText).endsWith(urlEntity.url)) {
            if (!isPhotoEntity(urlEntity)) {
                if (!stripQuoteTweet || !isQuotedStatus(urlEntity)) {
                    if (stripVineCard && isVineCard(urlEntity)) {
                        return urlEntity;
                    }
                } else {
                    return urlEntity;
                }
            } else {
                return urlEntity;
            }
        }
        return null;
    }

    static String stripLtrMarker(String tweetText) {
        if (tweetText.endsWith(Character.toString((char) 8206))) {
            return tweetText.substring(0, tweetText.length() - 1);
        }
        return tweetText;
    }

    static boolean isPhotoEntity(FormattedUrlEntity urlEntity) {
        return (urlEntity instanceof FormattedMediaEntity) && "photo".equals(((FormattedMediaEntity) urlEntity).type);
    }

    static boolean isQuotedStatus(FormattedUrlEntity urlEntity) {
        return QUOTED_STATUS_URL.matcher(urlEntity.expandedUrl).find();
    }

    static boolean isVineCard(FormattedUrlEntity urlEntity) {
        return VINE_URL.matcher(urlEntity.expandedUrl).find();
    }
}
