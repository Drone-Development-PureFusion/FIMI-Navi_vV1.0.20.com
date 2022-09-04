package com.twitter.sdk.android.core.internal;

import android.text.TextUtils;
import com.twitter.sdk.android.core.models.User;
/* loaded from: classes2.dex */
public final class UserUtils {
    private UserUtils() {
    }

    /* loaded from: classes2.dex */
    public enum AvatarSize {
        NORMAL("_normal"),
        BIGGER("_bigger"),
        MINI("_mini"),
        ORIGINAL("_original"),
        REASONABLY_SMALL("_reasonably_small");
        
        private final String suffix;

        AvatarSize(String suffix) {
            this.suffix = suffix;
        }

        String getSuffix() {
            return this.suffix;
        }
    }

    public static String getProfileImageUrlHttps(User user, AvatarSize size) {
        if (user != null && user.profileImageUrlHttps != null) {
            String url = user.profileImageUrlHttps;
            if (size != null && url != null) {
                switch (size) {
                    case NORMAL:
                    case BIGGER:
                    case MINI:
                    case ORIGINAL:
                    case REASONABLY_SMALL:
                        return url.replace(AvatarSize.NORMAL.getSuffix(), size.getSuffix());
                    default:
                        return url;
                }
            }
            return url;
        }
        return null;
    }

    public static CharSequence formatScreenName(CharSequence screenName) {
        if (TextUtils.isEmpty(screenName)) {
            return "";
        }
        return screenName.charAt(0) != '@' ? "@" + ((Object) screenName) : screenName;
    }
}
