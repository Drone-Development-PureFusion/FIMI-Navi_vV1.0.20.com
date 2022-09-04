package com.fimi.libperson.widget;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.fimi.kernel.utils.FontUtil;
import com.fimi.libperson.C1647R;
/* loaded from: classes.dex */
public class TitleView extends FrameLayout {
    private TextView mTvTitle = (TextView) findViewById(C1647R.C1651id.tv_title);
    private ImageView mIvLeft = (ImageView) findViewById(C1647R.C1651id.iv_return);
    private TextView mTvRight = (TextView) findViewById(C1647R.C1651id.tv_right);

    public TitleView(Context context, AttributeSet attrs) {
        super(context, attrs);
        LayoutInflater.from(context).inflate(C1647R.layout.sub_login_title, this);
        this.mIvLeft.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.libperson.widget.TitleView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ((Activity) TitleView.this.getContext()).finish();
            }
        });
        FontUtil.changeFontLanTing(context.getAssets(), this.mTvRight, this.mTvTitle);
    }

    public void setTvTitle(String text) {
        this.mTvTitle.setText(text);
    }

    public void setTvRightText(String rightText) {
        this.mTvRight.setText(rightText);
    }

    public void setTvRightVisible(int visible) {
        this.mTvRight.setVisibility(visible);
    }

    public void setIvLeftListener(View.OnClickListener l) {
        this.mIvLeft.setOnClickListener(l);
    }

    public void setTvRightListener(View.OnClickListener l) {
        this.mTvRight.setOnClickListener(l);
    }

    public void setRightTvIsVisible(boolean isVisible) {
        this.mTvRight.setVisibility(isVisible ? 0 : 4);
    }
}
