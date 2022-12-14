package com.fimi.libperson.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.fimi.kernel.utils.FontUtil;
import com.fimi.libperson.C1647R;
import com.fimi.libperson.entity.PersonSetting;
import java.util.List;
/* loaded from: classes.dex */
public class PersettingFourAdapt extends BaseAdapter {
    private Context mContext;
    private List<PersonSetting> mList;

    /* loaded from: classes.dex */
    public enum State {
        ABOUT
    }

    public PersettingFourAdapt(Context context) {
        this.mContext = context;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.mList == null) {
            return 0;
        }
        return this.mList.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        return Integer.valueOf(position);
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    public void setData(List<PersonSetting> list) {
        this.mList = list;
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        ViewHolder holder;
        if (convertView == null) {
            holder = new ViewHolder();
            convertView = holder.initView(parent);
            convertView.setTag(holder);
        } else {
            holder = (ViewHolder) convertView.getTag();
        }
        if (this.mList != null) {
            resetDefaultView(holder, convertView.getLayoutParams());
            State positionIndex = this.mList.get(position).getFourAdapt();
            if (positionIndex == State.ABOUT) {
                holder.mTvItemTitle.setText(C1647R.string.libperson_about);
            }
        }
        return convertView;
    }

    private void resetDefaultView(ViewHolder holder, ViewGroup.LayoutParams params) {
        holder.mIvArrow.setVisibility(0);
        holder.mTvContent.setText("");
        params.height = (int) this.mContext.getResources().getDimension(C1647R.dimen.person_setting_height);
        holder.mRlBg.setLayoutParams(params);
        holder.mRlBg.setBackgroundResource(C1647R.C1650drawable.person_listview_item_shape_enable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class ViewHolder {
        ImageView mIvArrow;
        RelativeLayout mRlBg;
        TextView mTvContent;
        TextView mTvItemTitle;

        private ViewHolder() {
        }

        public View initView(ViewGroup parent) {
            LayoutInflater inflater = LayoutInflater.from(PersettingFourAdapt.this.mContext);
            View view = inflater.inflate(C1647R.layout.libperson_adapt_person_new_setting, parent, false);
            this.mRlBg = (RelativeLayout) view.findViewById(C1647R.C1651id.rl_bg);
            this.mTvItemTitle = (TextView) view.findViewById(C1647R.C1651id.tv_item_title);
            this.mIvArrow = (ImageView) view.findViewById(C1647R.C1651id.iv_arrow);
            this.mTvContent = (TextView) view.findViewById(C1647R.C1651id.tv_content);
            FontUtil.changeFontLanTing(PersettingFourAdapt.this.mContext.getAssets(), this.mTvContent, this.mTvItemTitle);
            return view;
        }
    }
}
