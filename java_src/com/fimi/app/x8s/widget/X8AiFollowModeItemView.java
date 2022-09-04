package com.fimi.app.x8s.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.fimi.app.x8s.C0885R;
/* loaded from: classes.dex */
public class X8AiFollowModeItemView extends RelativeLayout implements View.OnClickListener {
    private OnModeSelectListner listener;
    private int[] res = {C0885R.C0888drawable.x8_btn_ai_follow_lockup, C0885R.C0888drawable.x8_btn_ai_follow_parallel, C0885R.C0888drawable.x8_btn_ai_follow_normal};
    private int[] mode = {2, 1, 0};
    private int index = 0;
    private boolean isOpen = true;
    private final ImageView openClose = (ImageView) findViewById(C0885R.C0889id.img_open_close);
    private final ImageView item1 = (ImageView) findViewById(C0885R.C0889id.img_item1);
    private final ImageView item2 = (ImageView) findViewById(C0885R.C0889id.img_item2);
    private final ImageView item3 = (ImageView) findViewById(C0885R.C0889id.img_item3);

    /* loaded from: classes.dex */
    public interface OnModeSelectListner {
        void onModeSelect(int i);
    }

    public X8AiFollowModeItemView(Context context, AttributeSet attrs) {
        super(context, attrs);
        LayoutInflater.from(context).inflate(C0885R.layout.x8_ai_follow_item_mode_layout, (ViewGroup) this, true);
        this.openClose.setOnClickListener(this);
        this.item1.setOnClickListener(this);
        this.item2.setOnClickListener(this);
        this.item3.setOnClickListener(this);
        this.item3.setSelected(true);
    }

    public void setListener(OnModeSelectListner listener) {
        this.listener = listener;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        int id = v.getId();
        if (id == C0885R.C0889id.img_open_close) {
            if (this.isOpen) {
                this.isOpen = false;
                this.openClose.setBackgroundResource(C0885R.C0888drawable.x8_btn_ai_follow_mode_open);
                this.item1.setVisibility(8);
                this.item2.setVisibility(8);
                return;
            }
            this.isOpen = true;
            this.openClose.setBackgroundResource(C0885R.C0888drawable.x8_btn_ai_follow_mode_close);
            this.item1.setVisibility(0);
            this.item2.setVisibility(0);
        } else if (id == C0885R.C0889id.img_item1) {
            findIndexByMode(2);
            this.listener.onModeSelect(this.mode[0]);
        } else if (id == C0885R.C0889id.img_item2) {
            findIndexByMode(1);
            this.listener.onModeSelect(this.mode[1]);
        } else if (id == C0885R.C0889id.img_item3) {
            findIndexByMode(0);
            this.listener.onModeSelect(this.mode[2]);
        }
    }

    public void switchItem() {
        int temp = this.mode[2];
        this.mode[2] = this.mode[this.index];
        this.mode[this.index] = temp;
        int temp2 = this.res[2];
        this.res[2] = this.res[this.index];
        this.res[this.index] = temp2;
        for (int i = 0; i < this.mode.length; i++) {
            switch (i) {
                case 0:
                    this.item1.setBackgroundResource(this.res[i]);
                    break;
                case 1:
                    this.item2.setBackgroundResource(this.res[i]);
                    break;
                case 2:
                    this.item3.setBackgroundResource(this.res[i]);
                    break;
            }
        }
        Log.i("istep", " " + this.mode[2]);
    }

    public void findIndexByMode(int type) {
        if (type == 2) {
            this.item1.setSelected(true);
            this.item2.setSelected(false);
            this.item3.setSelected(false);
        } else if (type == 1) {
            this.item1.setSelected(false);
            this.item2.setSelected(true);
            this.item3.setSelected(false);
        } else if (type == 0) {
            this.item1.setSelected(false);
            this.item2.setSelected(false);
            this.item3.setSelected(true);
        }
    }
}
