package com.twitter.sdk.android.tweetui;

import android.content.Context;
import android.support.p001v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;
import com.squareup.picasso.Picasso;
import com.twitter.sdk.android.core.models.MediaEntity;
import com.twitter.sdk.android.tweetui.internal.GalleryImageView;
import com.twitter.sdk.android.tweetui.internal.SwipeToDismissTouchListener;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
class GalleryAdapter extends PagerAdapter {
    final SwipeToDismissTouchListener.Callback callback;
    final Context context;
    final List<MediaEntity> items = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    public GalleryAdapter(Context context, SwipeToDismissTouchListener.Callback callback) {
        this.context = context;
        this.callback = callback;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addAll(List<MediaEntity> entities) {
        this.items.addAll(entities);
        notifyDataSetChanged();
    }

    @Override // android.support.p001v4.view.PagerAdapter
    public int getCount() {
        return this.items.size();
    }

    @Override // android.support.p001v4.view.PagerAdapter
    public boolean isViewFromObject(View view, Object object) {
        return view == object;
    }

    @Override // android.support.p001v4.view.PagerAdapter
    public Object instantiateItem(ViewGroup container, int position) {
        GalleryImageView root = new GalleryImageView(this.context);
        root.setSwipeToDismissCallback(this.callback);
        container.addView(root);
        MediaEntity entity = this.items.get(position);
        Picasso.with(this.context).load(entity.mediaUrlHttps).into(root);
        return root;
    }

    @Override // android.support.p001v4.view.PagerAdapter
    public void destroyItem(ViewGroup container, int position, Object object) {
        container.removeView((View) object);
    }
}
