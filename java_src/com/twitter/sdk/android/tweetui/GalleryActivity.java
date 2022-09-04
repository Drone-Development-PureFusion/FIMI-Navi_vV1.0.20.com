package com.twitter.sdk.android.tweetui;

import android.app.Activity;
import android.os.Bundle;
import android.support.p001v4.view.ViewPager;
import com.twitter.sdk.android.core.internal.scribe.ScribeItem;
import com.twitter.sdk.android.core.models.MediaEntity;
import com.twitter.sdk.android.tweetui.internal.SwipeToDismissTouchListener;
import java.io.Serializable;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class GalleryActivity extends Activity {
    public static final String GALLERY_ITEM = "GALLERY_ITEM";
    static final String MEDIA_ENTITY = "MEDIA_ENTITY";
    GalleryItem galleryItem;
    final GalleryScribeClient galleryScribeClient = new GalleryScribeClientImpl(TweetUi.getInstance());

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(C2168R.layout.tw__gallery_activity);
        this.galleryItem = getGalleryItem();
        if (savedInstanceState == null) {
            scribeShowEvent();
        }
        GalleryAdapter adapter = new GalleryAdapter(this, getSwipeToDismissCallback());
        adapter.addAll(this.galleryItem.mediaEntities);
        ViewPager viewPager = (ViewPager) findViewById(C2168R.C2172id.tw__view_pager);
        int marginPixels = getResources().getDimensionPixelSize(C2168R.dimen.tw__gallery_page_margin);
        viewPager.setPageMargin(marginPixels);
        viewPager.addOnPageChangeListener(getOnPageChangeListener());
        viewPager.setAdapter(adapter);
        viewPager.setCurrentItem(this.galleryItem.mediaEntityIndex);
    }

    ViewPager.OnPageChangeListener getOnPageChangeListener() {
        return new ViewPager.OnPageChangeListener() { // from class: com.twitter.sdk.android.tweetui.GalleryActivity.1
            int galleryPosition = -1;

            @Override // android.support.p001v4.view.ViewPager.OnPageChangeListener
            public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
                if (this.galleryPosition == -1 && position == 0 && positionOffset == 0.0d) {
                    GalleryActivity.this.scribeImpressionEvent(position);
                    this.galleryPosition++;
                }
            }

            @Override // android.support.p001v4.view.ViewPager.OnPageChangeListener
            public void onPageSelected(int position) {
                if (this.galleryPosition >= 0) {
                    GalleryActivity.this.scribeNavigateEvent();
                }
                this.galleryPosition++;
                GalleryActivity.this.scribeImpressionEvent(position);
            }

            @Override // android.support.p001v4.view.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int state) {
            }
        };
    }

    SwipeToDismissTouchListener.Callback getSwipeToDismissCallback() {
        return new SwipeToDismissTouchListener.Callback() { // from class: com.twitter.sdk.android.tweetui.GalleryActivity.2
            @Override // com.twitter.sdk.android.tweetui.internal.SwipeToDismissTouchListener.Callback
            public void onDismiss() {
                GalleryActivity.this.scribeDismissEvent();
                GalleryActivity.this.finish();
                GalleryActivity.this.overridePendingTransition(0, C2168R.C2169anim.tw__slide_out);
            }

            @Override // com.twitter.sdk.android.tweetui.internal.SwipeToDismissTouchListener.Callback
            public void onMove(float translationY) {
            }
        };
    }

    GalleryItem getGalleryItem() {
        MediaEntity entity = (MediaEntity) getIntent().getSerializableExtra(MEDIA_ENTITY);
        return entity != null ? new GalleryItem(0, Collections.singletonList(entity)) : (GalleryItem) getIntent().getSerializableExtra(GALLERY_ITEM);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        scribeDismissEvent();
        super.onBackPressed();
        overridePendingTransition(0, C2168R.C2169anim.tw__slide_out);
    }

    void scribeShowEvent() {
        this.galleryScribeClient.show();
    }

    void scribeDismissEvent() {
        this.galleryScribeClient.dismiss();
    }

    void scribeImpressionEvent(int mediaEntityPosition) {
        MediaEntity mediaEntity = this.galleryItem.mediaEntities.get(mediaEntityPosition);
        ScribeItem scribeItem = ScribeItem.fromMediaEntity(this.galleryItem.tweetId, mediaEntity);
        this.galleryScribeClient.impression(scribeItem);
    }

    void scribeNavigateEvent() {
        this.galleryScribeClient.navigate();
    }

    /* loaded from: classes2.dex */
    public static class GalleryItem implements Serializable {
        public final List<MediaEntity> mediaEntities;
        public final int mediaEntityIndex;
        public final long tweetId;

        public GalleryItem(int mediaEntityIndex, List<MediaEntity> mediaEntities) {
            this(0L, mediaEntityIndex, mediaEntities);
        }

        public GalleryItem(long tweetId, int mediaEntityIndex, List<MediaEntity> mediaEntities) {
            this.tweetId = tweetId;
            this.mediaEntityIndex = mediaEntityIndex;
            this.mediaEntities = mediaEntities;
        }
    }
}
