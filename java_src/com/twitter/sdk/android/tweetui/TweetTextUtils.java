package com.twitter.sdk.android.tweetui;

import android.text.TextUtils;
import com.twitter.sdk.android.core.models.HashtagEntity;
import com.twitter.sdk.android.core.models.MediaEntity;
import com.twitter.sdk.android.core.models.MentionEntity;
import com.twitter.sdk.android.core.models.SymbolEntity;
import com.twitter.sdk.android.core.models.Tweet;
import com.twitter.sdk.android.core.models.UrlEntity;
import com.twitter.sdk.android.tweetui.internal.util.HtmlEntities;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class TweetTextUtils {
    private TweetTextUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static FormattedTweetText formatTweetText(Tweet tweet) {
        if (tweet == null) {
            return null;
        }
        FormattedTweetText adjustedTweet = new FormattedTweetText();
        convertEntities(adjustedTweet, tweet);
        format(adjustedTweet, tweet);
        return adjustedTweet;
    }

    static void convertEntities(FormattedTweetText formattedTweetText, Tweet tweet) {
        if (tweet.entities != null) {
            List<UrlEntity> coreUrls = tweet.entities.urls;
            if (coreUrls != null) {
                for (UrlEntity entity : coreUrls) {
                    FormattedUrlEntity formattedUrlEntity = FormattedUrlEntity.createFormattedUrlEntity(entity);
                    formattedTweetText.urlEntities.add(formattedUrlEntity);
                }
            }
            List<MediaEntity> coreMedia = tweet.entities.media;
            if (coreMedia != null) {
                for (MediaEntity entity2 : coreMedia) {
                    FormattedMediaEntity formattedMediaEntity = new FormattedMediaEntity(entity2);
                    formattedTweetText.mediaEntities.add(formattedMediaEntity);
                }
            }
            List<HashtagEntity> coreHashtags = tweet.entities.hashtags;
            if (coreHashtags != null) {
                for (HashtagEntity entity3 : coreHashtags) {
                    FormattedUrlEntity formattedHashtagEntity = FormattedUrlEntity.createFormattedUrlEntity(entity3);
                    formattedTweetText.hashtagEntities.add(formattedHashtagEntity);
                }
            }
            List<MentionEntity> coreMentions = tweet.entities.userMentions;
            if (coreMentions != null) {
                for (MentionEntity entity4 : coreMentions) {
                    FormattedUrlEntity formattedMentionEntity = FormattedUrlEntity.createFormattedUrlEntity(entity4);
                    formattedTweetText.mentionEntities.add(formattedMentionEntity);
                }
            }
            List<SymbolEntity> coreSymbols = tweet.entities.symbols;
            if (coreSymbols != null) {
                for (SymbolEntity entity5 : coreSymbols) {
                    FormattedUrlEntity formattedSymbolEntity = FormattedUrlEntity.createFormattedUrlEntity(entity5);
                    formattedTweetText.symbolEntities.add(formattedSymbolEntity);
                }
            }
        }
    }

    static void format(FormattedTweetText formattedTweetText, Tweet tweet) {
        if (!TextUtils.isEmpty(tweet.text)) {
            HtmlEntities.Unescaped u = HtmlEntities.HTML40.unescape(tweet.text);
            StringBuilder result = new StringBuilder(u.unescaped);
            adjustIndicesForEscapedChars(formattedTweetText.urlEntities, u.indices);
            adjustIndicesForEscapedChars(formattedTweetText.mediaEntities, u.indices);
            adjustIndicesForEscapedChars(formattedTweetText.hashtagEntities, u.indices);
            adjustIndicesForEscapedChars(formattedTweetText.mentionEntities, u.indices);
            adjustIndicesForEscapedChars(formattedTweetText.symbolEntities, u.indices);
            adjustIndicesForSupplementaryChars(result, formattedTweetText);
            formattedTweetText.text = result.toString();
        }
    }

    static void adjustIndicesForEscapedChars(List<? extends FormattedUrlEntity> entities, List<int[]> indices) {
        if (entities != null && indices != null && !indices.isEmpty()) {
            int size = indices.size();
            int m = 0;
            int diff = 0;
            for (FormattedUrlEntity entity : entities) {
                int inDiff = 0;
                for (int i = m; i < size; i++) {
                    int[] index = indices.get(i);
                    int start = index[0];
                    int end = index[1];
                    int len = end - start;
                    if (end < entity.start) {
                        diff += len;
                        m++;
                    } else if (end < entity.end) {
                        inDiff += len;
                    }
                }
                entity.start -= diff + inDiff;
                entity.end -= diff + inDiff;
            }
        }
    }

    static void adjustIndicesForSupplementaryChars(StringBuilder content, FormattedTweetText formattedTweetText) {
        List<Integer> highSurrogateIndices = new ArrayList<>();
        int len = content.length() - 1;
        for (int i = 0; i < len; i++) {
            if (Character.isHighSurrogate(content.charAt(i)) && Character.isLowSurrogate(content.charAt(i + 1))) {
                highSurrogateIndices.add(Integer.valueOf(i));
            }
        }
        adjustEntitiesWithOffsets(formattedTweetText.urlEntities, highSurrogateIndices);
        adjustEntitiesWithOffsets(formattedTweetText.mediaEntities, highSurrogateIndices);
        adjustEntitiesWithOffsets(formattedTweetText.hashtagEntities, highSurrogateIndices);
        adjustEntitiesWithOffsets(formattedTweetText.mentionEntities, highSurrogateIndices);
        adjustEntitiesWithOffsets(formattedTweetText.symbolEntities, highSurrogateIndices);
    }

    static void adjustEntitiesWithOffsets(List<? extends FormattedUrlEntity> entities, List<Integer> indices) {
        if (entities != null && indices != null) {
            for (FormattedUrlEntity entity : entities) {
                int start = entity.start;
                int offset = 0;
                for (Integer index : indices) {
                    if (index.intValue() - offset <= start) {
                        offset++;
                    }
                }
                entity.start += offset;
                entity.end += offset;
            }
        }
    }
}
