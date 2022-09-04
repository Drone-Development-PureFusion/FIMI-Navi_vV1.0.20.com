package com.fimi.app.p009ui.main;

import android.content.Context;
import android.support.annotation.AttrRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.p001v4.view.PagerAdapter;
import android.support.p001v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.fimi.android.app.R;
import com.fimi.app.interfaces.IProductControllers;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.fimi.app.ui.main.ProductShowWidget */
/* loaded from: classes.dex */
public class ProductShowWidget extends FrameLayout implements IProductControllers {
    private Context context;
    private List<FrameLayout> frameLayouts;
    private ViewPager pager;
    ChangePositionListener positionListener;

    /* renamed from: com.fimi.app.ui.main.ProductShowWidget$ChangePositionListener */
    /* loaded from: classes.dex */
    public interface ChangePositionListener {
        void changePosition(int i);
    }

    public void setPositionListener(ChangePositionListener positionListener) {
        this.positionListener = positionListener;
    }

    public ProductShowWidget(@NonNull Context context) {
        this(context, null);
    }

    public ProductShowWidget(@NonNull Context context, @Nullable AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public ProductShowWidget(@NonNull Context context, @Nullable AttributeSet attrs, @AttrRes int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.context = context;
        initWidget();
    }

    private void initWidget() {
        View view = LayoutInflater.from(this.context).inflate(R.layout.layout_cardslide, (ViewGroup) this, true);
        this.pager = (ViewPager) view.findViewById(R.id.vp);
        this.frameLayouts = new ArrayList();
        for (int i = 0; i < HostNewMainActivity.PRODUCTCLASS.length; i++) {
            if (HostNewMainActivity.PRODUCTCLASS[i] == HostX9ProductView.class) {
                this.frameLayouts.add(new HostX9ProductView(this.context, null));
            } else if (HostNewMainActivity.PRODUCTCLASS[i] == HostGh2ProductView.class) {
                this.frameLayouts.add(new HostGh2ProductView(this.context, null));
            } else if (HostNewMainActivity.PRODUCTCLASS[i] == HostX8sProductView.class) {
                this.frameLayouts.add(new HostX8sProductView(this.context, null));
            }
        }
        this.pager.setAdapter(new KannerPagerAdapter());
        this.pager.setFocusable(true);
        this.pager.setCurrentItem(0);
        this.pager.setOnPageChangeListener(new PageChangeListener());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.fimi.app.ui.main.ProductShowWidget$KannerPagerAdapter */
    /* loaded from: classes.dex */
    public class KannerPagerAdapter extends PagerAdapter {
        KannerPagerAdapter() {
        }

        @Override // android.support.p001v4.view.PagerAdapter
        public int getCount() {
            return ProductShowWidget.this.frameLayouts.size();
        }

        @Override // android.support.p001v4.view.PagerAdapter
        public boolean isViewFromObject(View arg0, Object arg1) {
            return arg0 == arg1;
        }

        @Override // android.support.p001v4.view.PagerAdapter
        public Object instantiateItem(ViewGroup container, int position) {
            container.addView((View) ProductShowWidget.this.frameLayouts.get(position));
            return ProductShowWidget.this.frameLayouts.get(position);
        }

        @Override // android.support.p001v4.view.PagerAdapter
        public void destroyItem(ViewGroup container, int position, Object object) {
            container.removeView((View) ProductShowWidget.this.frameLayouts.get(position));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.fimi.app.ui.main.ProductShowWidget$PageChangeListener */
    /* loaded from: classes.dex */
    public class PageChangeListener implements ViewPager.OnPageChangeListener {
        private PageChangeListener() {
        }

        @Override // android.support.p001v4.view.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        }

        @Override // android.support.p001v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
            if (ProductShowWidget.this.positionListener != null) {
                ProductShowWidget.this.positionListener.changePosition(position);
            }
        }

        @Override // android.support.p001v4.view.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
            switch (state) {
                case 1:
                case 2:
                default:
                    return;
            }
        }
    }

    @Override // com.fimi.app.interfaces.IProductControllers
    public void stopAnimation() {
        if (this.frameLayouts.get(0).getClass() == HostX9ProductView.class) {
            ((HostX9ProductView) this.frameLayouts.get(0)).stopnAnimation();
        }
    }

    @Override // com.fimi.app.interfaces.IProductControllers
    public void startAnimation() {
        if (this.frameLayouts.get(0).getClass() == HostX9ProductView.class) {
            ((HostX9ProductView) this.frameLayouts.get(0)).startAnimation();
        }
    }
}
