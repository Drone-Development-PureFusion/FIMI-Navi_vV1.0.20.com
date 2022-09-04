package com.fimi.app.x8s.p011ui.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.design.widget.TabLayout;
import android.support.p001v4.app.Fragment;
import android.support.p004v7.app.AppCompatActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.fimi.album.widget.HackyViewPager;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.adapter.X8CategoryAdapter;
import com.fimi.app.x8s.interfaces.IX8AiLineHistoryListener;
import com.fimi.app.x8s.p011ui.fragment.X8AiLineFavoritesFragment;
import com.fimi.app.x8s.p011ui.fragment.X8AiLineRecentFragment;
import com.fimi.app.x8s.tools.X8sNavigationBarUtils;
import com.fimi.kernel.store.sqlite.entity.X8AiLinePointInfo;
import com.fimi.kernel.utils.LanguageUtil;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.fimi.app.x8s.ui.activity.X8AiLineHistoryActivity */
/* loaded from: classes.dex */
public class X8AiLineHistoryActivity extends AppCompatActivity implements TabLayout.OnTabSelectedListener, View.OnClickListener {
    private ImageView imgReturn;
    private X8CategoryAdapter mCategolyAdapter;
    private X8AiLineFavoritesFragment mFavoritesFragment;
    private List<Fragment> mFragmentList;
    private HackyViewPager mHackyViewPager;
    private X8AiLineRecentFragment mRecentFragment;
    private TabLayout mTlTitleCategoly;

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(LanguageUtil.attachBaseContext(newBase));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.support.p001v4.app.SupportActivity, android.app.Activity
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        getWindow().addFlags(128);
        setContentView(C0885R.layout.activity_x8_ai_line_history);
        initView();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        X8sNavigationBarUtils.hideBottomUIMenu(this);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        if (hasFocus) {
            X8sNavigationBarUtils.hideBottomUIMenu(this);
        }
    }

    public void initView() {
        this.mTlTitleCategoly = (TabLayout) findViewById(C0885R.C0889id.tl_title_categoly);
        this.mHackyViewPager = (HackyViewPager) findViewById(C0885R.C0889id.viewpaper);
        this.imgReturn = (ImageView) findViewById(C0885R.C0889id.img_return);
        this.mRecentFragment = new X8AiLineRecentFragment();
        this.mFavoritesFragment = new X8AiLineFavoritesFragment();
        this.mRecentFragment.setOnX8AiLineSelectListener(new IX8AiLineHistoryListener() { // from class: com.fimi.app.x8s.ui.activity.X8AiLineHistoryActivity.1
            @Override // com.fimi.app.x8s.interfaces.IX8AiLineHistoryListener
            public void onSelectId(long id, int type) {
                X8AiLineHistoryActivity.this.onSelectEvent(id, type);
            }

            @Override // com.fimi.app.x8s.interfaces.IX8AiLineHistoryListener
            public void onItemChange(long id, int saveFlag, int potion) {
                X8AiLineHistoryActivity.this.mFavoritesFragment.notityItemChange(id, saveFlag);
            }

            @Override // com.fimi.app.x8s.interfaces.IX8AiLineHistoryListener
            public void addLineItem(X8AiLinePointInfo info) {
                X8AiLineHistoryActivity.this.mFavoritesFragment.addLineItem(info);
            }

            @Override // com.fimi.app.x8s.interfaces.IX8AiLineHistoryListener
            public int favoritesCapacity() {
                return X8AiLineHistoryActivity.this.mFavoritesFragment.favoritesCapacity();
            }

            @Override // com.fimi.app.x8s.interfaces.IX8AiLineHistoryListener
            public void goFavorites() {
                X8AiLineHistoryActivity.this.mTlTitleCategoly.getTabAt(1).select();
            }

            @Override // com.fimi.app.x8s.interfaces.IX8AiLineHistoryListener
            public void onItemChange(long id, String name, int position) {
                X8AiLineHistoryActivity.this.mFavoritesFragment.notityItemChange(id, name);
            }
        });
        this.mFavoritesFragment.setOnX8AiLineSelectListener(new IX8AiLineHistoryListener() { // from class: com.fimi.app.x8s.ui.activity.X8AiLineHistoryActivity.2
            @Override // com.fimi.app.x8s.interfaces.IX8AiLineHistoryListener
            public void onSelectId(long id, int type) {
                X8AiLineHistoryActivity.this.onSelectEvent(id, type);
            }

            @Override // com.fimi.app.x8s.interfaces.IX8AiLineHistoryListener
            public void onItemChange(long id, int saveFlag, int position) {
                X8AiLineHistoryActivity.this.mRecentFragment.notityItemChange(id);
            }

            @Override // com.fimi.app.x8s.interfaces.IX8AiLineHistoryListener
            public void addLineItem(X8AiLinePointInfo info) {
            }

            @Override // com.fimi.app.x8s.interfaces.IX8AiLineHistoryListener
            public int favoritesCapacity() {
                return 0;
            }

            @Override // com.fimi.app.x8s.interfaces.IX8AiLineHistoryListener
            public void goFavorites() {
            }

            @Override // com.fimi.app.x8s.interfaces.IX8AiLineHistoryListener
            public void onItemChange(long id, String name, int position) {
            }
        });
        this.mFragmentList = new ArrayList();
        this.mFragmentList.add(this.mRecentFragment);
        this.mFragmentList.add(this.mFavoritesFragment);
        this.mCategolyAdapter = new X8CategoryAdapter(getSupportFragmentManager(), this.mFragmentList);
        this.mHackyViewPager.setAdapter(this.mCategolyAdapter);
        this.mHackyViewPager.setOverScrollMode(2);
        this.mTlTitleCategoly.setupWithViewPager(this.mHackyViewPager);
        int[] tabStringRes = {C0885R.string.x8_ai_fly_line_history_title, C0885R.string.x8_ai_fly_line_favorites_title};
        for (int index = 0; index < this.mTlTitleCategoly.getTabCount(); index++) {
            View tabItem = LayoutInflater.from(this).inflate(C0885R.layout.x8_tab_ai_line_history_view, (ViewGroup) null);
            if (index == 0) {
                changeViewVariablw(tabItem, getResources().getColor(C0885R.C0887color.x8_value_select), 0, tabStringRes[index]);
            } else {
                changeViewVariablw(tabItem, getResources().getColor(C0885R.C0887color.white_100), 4, tabStringRes[index]);
            }
            TabLayout.Tab tab = this.mTlTitleCategoly.getTabAt(index);
            if (tab != null) {
                tab.setCustomView(tabItem);
            }
        }
        this.mTlTitleCategoly.addOnTabSelectedListener(this);
        this.imgReturn.setOnClickListener(this);
    }

    private void changeViewVariablw(View view, int resColor, int indicatorState, int resStr) {
        TextView tvTitleDescription = (TextView) view.findViewById(C0885R.C0889id.tv_title_desprition);
        tvTitleDescription.setTextColor(resColor);
        if (resStr != 0) {
            tvTitleDescription.setText(resStr);
        }
    }

    @Override // android.support.design.widget.TabLayout.OnTabSelectedListener
    public void onTabSelected(TabLayout.Tab tab) {
        changeViewVariablw(tab.getCustomView(), getResources().getColor(C0885R.C0887color.x8_value_select), 4, 0);
        this.mHackyViewPager.setCurrentItem(tab.getPosition());
        if (tab.getPosition() == 1) {
            this.mFavoritesFragment.showMaxSaveDialog();
        }
    }

    @Override // android.support.design.widget.TabLayout.OnTabSelectedListener
    public void onTabUnselected(TabLayout.Tab tab) {
        changeViewVariablw(tab.getCustomView(), getResources().getColor(C0885R.C0887color.white_100), 4, 0);
    }

    @Override // android.support.design.widget.TabLayout.OnTabSelectedListener
    public void onTabReselected(TabLayout.Tab tab) {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        int id = v.getId();
        if (id == C0885R.C0889id.img_return) {
            finish();
        }
    }

    public void onSelectEvent(long id, int type) {
        Intent intent = getIntent();
        intent.putExtra("id", id);
        intent.putExtra("type", type);
        setResult(-1, intent);
        finish();
    }
}
