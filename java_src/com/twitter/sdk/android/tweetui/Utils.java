package com.twitter.sdk.android.tweetui;

import com.twitter.sdk.android.core.models.Tweet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes2.dex */
final class Utils {
    private Utils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Long numberOrDefault(String candidate, long defaultLong) {
        try {
            return Long.valueOf(Long.parseLong(candidate));
        } catch (NumberFormatException e) {
            return Long.valueOf(defaultLong);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String stringOrEmpty(String candidate) {
        return stringOrDefault(candidate, "");
    }

    static String stringOrDefault(String candidate, String defaultString) {
        return candidate != null ? candidate : defaultString;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CharSequence charSeqOrEmpty(CharSequence candidate) {
        return charSeqOrDefault(candidate, "");
    }

    static CharSequence charSeqOrDefault(CharSequence candidate, CharSequence defaultSequence) {
        return candidate != null ? candidate : defaultSequence;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<Tweet> orderTweets(List<Long> tweetIds, List<Tweet> tweets) {
        HashMap<Long, Tweet> idToTweet = new HashMap<>();
        ArrayList<Tweet> ordered = new ArrayList<>();
        for (Tweet tweet : tweets) {
            idToTweet.put(Long.valueOf(tweet.f312id), tweet);
        }
        for (Long id : tweetIds) {
            if (idToTweet.containsKey(id)) {
                ordered.add(idToTweet.get(id));
            }
        }
        return ordered;
    }
}
