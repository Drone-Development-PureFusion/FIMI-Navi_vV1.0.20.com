package com.fimi.album.p007ui;

import android.content.Intent;
import android.support.p001v4.view.ViewPager;
import android.support.p004v7.widget.LinearLayoutManager;
import android.view.View;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.example.album.C0522R;
import com.fimi.album.adapter.MediaDetailViewPaperAdapter;
import com.fimi.album.biz.AlbumConstant;
import com.fimi.album.presenter.MediaDetailPresenter;
import com.fimi.kernel.base.BaseActivity;
import com.fimi.kernel.utils.FontUtil;
/* renamed from: com.fimi.album.ui.MediaDetailActivity */
/* loaded from: classes.dex */
public class MediaDetailActivity extends BaseActivity {
    private int currentSelectPosition;
    private ImageButton ibBottomDelete;
    private ImageButton ibMediaBack;
    private LinearLayout llHeadViewGroup;
    private MediaDetailPresenter mMediaDetailPresenter;
    private MediaDetailViewPaperAdapter mMediaDetailViewPaperAdapter;
    private RelativeLayout rlHeadDirection;
    private TextView tvDeleteTip;
    private TextView tvPhotoName;
    private ViewPager viewpaper;

    @Override // com.fimi.kernel.base.BaseActivity
    protected void setStatusBarColor() {
    }

    @Override // com.fimi.kernel.base.BaseActivity
    public void initData() {
        this.llHeadViewGroup = (LinearLayout) findViewById(C0522R.C0526id.shoto_top_tab_ll);
        this.rlHeadDirection = (RelativeLayout) findViewById(C0522R.C0526id.media_select_bottom_rl);
        this.rlHeadDirection.setVisibility(0);
        this.viewpaper = (ViewPager) findViewById(C0522R.C0526id.viewpaper);
        this.ibMediaBack = (ImageButton) findViewById(C0522R.C0526id.media_back_btn);
        this.ibBottomDelete = (ImageButton) findViewById(C0522R.C0526id.bottom_delete_ibtn);
        this.tvDeleteTip = (TextView) findViewById(C0522R.C0526id.delete_tv);
        this.tvPhotoName = (TextView) findViewById(C0522R.C0526id.photo_name_tv);
        FontUtil.changeFontLanTing(getAssets(), this.tvDeleteTip, this.tvPhotoName);
        Intent intent = getIntent();
        if (intent != null) {
            this.currentSelectPosition = intent.getIntExtra(AlbumConstant.SELECTPOSITION, 0);
        }
        this.mMediaDetailPresenter = new MediaDetailPresenter(this, this.viewpaper);
        this.mMediaDetailViewPaperAdapter = new MediaDetailViewPaperAdapter(this.mMediaDetailPresenter);
        LinearLayoutManager mLinearLayoutManager = new LinearLayoutManager(this);
        mLinearLayoutManager.setOrientation(0);
        this.viewpaper.setAdapter(this.mMediaDetailViewPaperAdapter);
        if (this.currentSelectPosition < this.mMediaDetailViewPaperAdapter.getCount()) {
            this.mMediaDetailPresenter.updateFileName(this.currentSelectPosition);
            this.viewpaper.setCurrentItem(this.currentSelectPosition);
        }
    }

    @Override // com.fimi.kernel.base.BaseActivity
    public void doTrans() {
        this.ibMediaBack.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.album.ui.MediaDetailActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MediaDetailActivity.this.finish();
            }
        });
        this.ibBottomDelete.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.album.ui.MediaDetailActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MediaDetailActivity.this.mMediaDetailPresenter.deleteItem(MediaDetailActivity.this.viewpaper.getCurrentItem());
            }
        });
        this.viewpaper.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.fimi.album.ui.MediaDetailActivity.3
            @Override // android.support.p001v4.view.ViewPager.OnPageChangeListener
            public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
            }

            @Override // android.support.p001v4.view.ViewPager.OnPageChangeListener
            public void onPageSelected(int position) {
                MediaDetailActivity.this.mMediaDetailPresenter.updateItem(position);
            }

            @Override // android.support.p001v4.view.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int state) {
            }
        });
    }

    @Override // com.fimi.kernel.base.BaseActivity
    protected int getContentViewLayoutID() {
        return C0522R.layout.album_activity_media_detial;
    }

    public TextView getPhotoText() {
        return this.tvPhotoName;
    }

    public RelativeLayout getRlHeadDirection() {
        return this.rlHeadDirection;
    }

    public LinearLayout getLlHeadViewGroup() {
        return this.llHeadViewGroup;
    }
}
