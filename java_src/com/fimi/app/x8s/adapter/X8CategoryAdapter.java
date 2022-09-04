package com.fimi.app.x8s.adapter;

import android.support.p001v4.app.Fragment;
import android.support.p001v4.app.FragmentManager;
import android.support.p001v4.app.FragmentStatePagerAdapter;
import android.view.ViewGroup;
import java.util.List;
/* loaded from: classes.dex */
public class X8CategoryAdapter extends FragmentStatePagerAdapter {
    private List<Fragment> fragments;

    public X8CategoryAdapter(FragmentManager fm) {
        super(fm);
    }

    public X8CategoryAdapter(FragmentManager fm, List<Fragment> fragmentList) {
        super(fm);
        this.fragments = fragmentList;
    }

    @Override // android.support.p001v4.app.FragmentStatePagerAdapter
    public Fragment getItem(int position) {
        if (this.fragments == null) {
            return null;
        }
        return this.fragments.get(position);
    }

    @Override // android.support.p001v4.view.PagerAdapter
    public int getCount() {
        if (this.fragments == null) {
            return 0;
        }
        return this.fragments.size();
    }

    @Override // android.support.p001v4.app.FragmentStatePagerAdapter, android.support.p001v4.view.PagerAdapter
    public Object instantiateItem(ViewGroup container, int position) {
        return super.instantiateItem(container, position);
    }

    @Override // android.support.p001v4.app.FragmentStatePagerAdapter, android.support.p001v4.view.PagerAdapter
    public void destroyItem(ViewGroup container, int position, Object object) {
        super.destroyItem(container, position, object);
    }
}
