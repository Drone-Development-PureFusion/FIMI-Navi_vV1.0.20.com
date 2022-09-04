package com.twitter.sdk.android.core.internal.scribe;

import com.google.gson.annotations.SerializedName;
import com.twitter.sdk.android.core.internal.VineCardUtils;
import com.twitter.sdk.android.core.models.Card;
import com.twitter.sdk.android.core.models.MediaEntity;
import com.twitter.sdk.android.core.models.Tweet;
import com.twitter.sdk.android.core.models.User;
import java.io.Serializable;
/* loaded from: classes.dex */
public class ScribeItem implements Serializable {
    public static final int TYPE_MESSAGE = 6;
    public static final int TYPE_TWEET = 0;
    public static final int TYPE_USER = 3;
    @SerializedName("card_event")
    public final CardEvent cardEvent;
    @SerializedName("description")
    public final String description;
    @SerializedName("id")

    /* renamed from: id */
    public final Long f303id;
    @SerializedName("item_type")
    public final Integer itemType;
    @SerializedName("media_details")
    public final MediaDetails mediaDetails;

    private ScribeItem(Integer itemType, Long id, String description, CardEvent cardEvent, MediaDetails mediaDetails) {
        this.itemType = itemType;
        this.f303id = id;
        this.description = description;
        this.cardEvent = cardEvent;
        this.mediaDetails = mediaDetails;
    }

    public static ScribeItem fromTweet(Tweet tweet) {
        return new Builder().setItemType(0).setId(tweet.f312id).build();
    }

    public static ScribeItem fromUser(User user) {
        return new Builder().setItemType(3).setId(user.f315id).build();
    }

    public static ScribeItem fromMessage(String message) {
        return new Builder().setItemType(6).setDescription(message).build();
    }

    public static ScribeItem fromTweetCard(long tweetId, Card card) {
        return new Builder().setItemType(0).setId(tweetId).setMediaDetails(createCardDetails(tweetId, card)).build();
    }

    public static ScribeItem fromMediaEntity(long tweetId, MediaEntity mediaEntity) {
        return new Builder().setItemType(0).setId(tweetId).setMediaDetails(createMediaDetails(tweetId, mediaEntity)).build();
    }

    static MediaDetails createMediaDetails(long tweetId, MediaEntity mediaEntity) {
        return new MediaDetails(tweetId, getMediaType(mediaEntity), mediaEntity.f307id);
    }

    static MediaDetails createCardDetails(long tweetId, Card card) {
        return new MediaDetails(tweetId, 4, Long.valueOf(VineCardUtils.getPublisherId(card)).longValue());
    }

    static int getMediaType(MediaEntity mediaEntity) {
        return "animated_gif".equals(mediaEntity.type) ? 3 : 1;
    }

    public boolean equals(Object o) {
        boolean z = true;
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        ScribeItem that = (ScribeItem) o;
        if (this.itemType != null) {
            if (!this.itemType.equals(that.itemType)) {
                return false;
            }
        } else if (that.itemType != null) {
            return false;
        }
        if (this.f303id != null) {
            if (!this.f303id.equals(that.f303id)) {
                return false;
            }
        } else if (that.f303id != null) {
            return false;
        }
        if (this.description != null) {
            if (!this.description.equals(that.description)) {
                return false;
            }
        } else if (that.description != null) {
            return false;
        }
        if (this.cardEvent != null) {
            if (!this.cardEvent.equals(that.cardEvent)) {
                return false;
            }
        } else if (that.cardEvent != null) {
            return false;
        }
        if (this.mediaDetails == null ? that.mediaDetails != null : !this.mediaDetails.equals(that.mediaDetails)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i = 0;
        int result = this.itemType != null ? this.itemType.hashCode() : 0;
        int hashCode = ((((((result * 31) + (this.f303id != null ? this.f303id.hashCode() : 0)) * 31) + (this.description != null ? this.description.hashCode() : 0)) * 31) + (this.cardEvent != null ? this.cardEvent.hashCode() : 0)) * 31;
        if (this.mediaDetails != null) {
            i = this.mediaDetails.hashCode();
        }
        int result2 = hashCode + i;
        return result2;
    }

    /* loaded from: classes.dex */
    public static class CardEvent implements Serializable {
        @SerializedName("promotion_card_type")
        final int promotionCardType;

        public CardEvent(int cardType) {
            this.promotionCardType = cardType;
        }

        public boolean equals(Object o) {
            if (this == o) {
                return true;
            }
            if (o == null || getClass() != o.getClass()) {
                return false;
            }
            CardEvent cardEvent = (CardEvent) o;
            return this.promotionCardType == cardEvent.promotionCardType;
        }

        public int hashCode() {
            return this.promotionCardType;
        }
    }

    /* loaded from: classes.dex */
    public static class MediaDetails implements Serializable {
        public static final String GIF_TYPE = "animated_gif";
        public static final int TYPE_AMPLIFY = 2;
        public static final int TYPE_ANIMATED_GIF = 3;
        public static final int TYPE_CONSUMER = 1;
        public static final int TYPE_VINE = 4;
        @SerializedName("content_id")
        public final long contentId;
        @SerializedName("media_type")
        public final int mediaType;
        @SerializedName("publisher_id")
        public final long publisherId;

        public MediaDetails(long contentId, int mediaType, long publisherId) {
            this.contentId = contentId;
            this.mediaType = mediaType;
            this.publisherId = publisherId;
        }

        public boolean equals(Object o) {
            boolean z = true;
            if (this == o) {
                return true;
            }
            if (o == null || getClass() != o.getClass()) {
                return false;
            }
            MediaDetails that = (MediaDetails) o;
            if (this.contentId != that.contentId || this.mediaType != that.mediaType) {
                return false;
            }
            if (this.publisherId != that.publisherId) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            int result = (int) (this.contentId ^ (this.contentId >>> 32));
            return (((result * 31) + this.mediaType) * 31) + ((int) (this.publisherId ^ (this.publisherId >>> 32)));
        }
    }

    /* loaded from: classes2.dex */
    public static class Builder {
        private CardEvent cardEvent;
        private String description;

        /* renamed from: id */
        private Long f304id;
        private Integer itemType;
        private MediaDetails mediaDetails;

        public Builder setItemType(int itemType) {
            this.itemType = Integer.valueOf(itemType);
            return this;
        }

        public Builder setId(long id) {
            this.f304id = Long.valueOf(id);
            return this;
        }

        public Builder setDescription(String description) {
            this.description = description;
            return this;
        }

        public Builder setCardEvent(CardEvent cardEvent) {
            this.cardEvent = cardEvent;
            return this;
        }

        public Builder setMediaDetails(MediaDetails mediaDetails) {
            this.mediaDetails = mediaDetails;
            return this;
        }

        public ScribeItem build() {
            return new ScribeItem(this.itemType, this.f304id, this.description, this.cardEvent, this.mediaDetails);
        }
    }
}
