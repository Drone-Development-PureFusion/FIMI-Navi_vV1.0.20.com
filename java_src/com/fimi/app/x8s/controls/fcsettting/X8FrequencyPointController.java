package com.fimi.app.x8s.controls.fcsettting;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.interfaces.AbsX8MenuBoxControllers;
import com.fimi.app.x8s.interfaces.IX8FrequencyPointListener;
import com.fimi.app.x8s.widget.X8FrequencyPoint;
import java.util.Random;
/* loaded from: classes.dex */
public class X8FrequencyPointController extends AbsX8MenuBoxControllers implements View.OnClickListener {
    private View imgRetruen;
    private IX8FrequencyPointListener listener;
    private X8FrequencyPoint vFrePoint;
    private Button[] views;

    public X8FrequencyPointController(View rootView) {
        super(rootView);
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void initViews(View rootView) {
        LayoutInflater inflater = LayoutInflater.from(rootView.getContext());
        this.contentView = inflater.inflate(C0885R.layout.x8_main_general_frepoint_setting, (ViewGroup) rootView, true);
        this.views = new Button[5];
        this.imgRetruen = this.contentView.findViewById(C0885R.C0889id.img_return);
        this.vFrePoint = (X8FrequencyPoint) this.contentView.findViewById(C0885R.C0889id.v_fre_point);
        this.views[0] = (Button) this.contentView.findViewById(C0885R.C0889id.tv_point1);
        this.views[1] = (Button) this.contentView.findViewById(C0885R.C0889id.tv_point2);
        this.views[2] = (Button) this.contentView.findViewById(C0885R.C0889id.tv_point3);
        this.views[3] = (Button) this.contentView.findViewById(C0885R.C0889id.tv_point4);
        this.views[4] = (Button) this.contentView.findViewById(C0885R.C0889id.tv_point5);
        updateUi();
        initActions();
    }

    public void setEnabled(boolean b) {
        for (int i = 0; i < this.views.length; i++) {
            this.views[i].setEnabled(b);
        }
    }

    public void setSelectIndex(int index) {
        for (int i = 0; i < this.views.length; i++) {
            if (i == index - 1) {
                this.views[i].setSelected(true);
            } else {
                this.views[i].setSelected(false);
            }
        }
    }

    public void setSelectDisenable() {
        for (int i = 0; i < this.views.length; i++) {
            this.views[i].setSelected(false);
        }
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void initActions() {
        this.imgRetruen.setOnClickListener(this);
        this.views[0].setOnClickListener(this);
        this.views[1].setOnClickListener(this);
        this.views[2].setOnClickListener(this);
        this.views[3].setOnClickListener(this);
        this.views[4].setOnClickListener(this);
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8Controllers
    public void onDroneConnected(boolean b) {
        updateUi();
    }

    public void updateUi() {
        getDroneState();
        if (this.isConect) {
            this.vFrePoint.setPercent(new Random().nextInt(100));
            if (this.isInSky) {
                setEnabled(false);
                return;
            } else {
                setEnabled(true);
                return;
            }
        }
        this.vFrePoint.setPercent(0);
        setEnabled(false);
        setSelectDisenable();
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void defaultVal() {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        int id = v.getId();
        if (id == C0885R.C0889id.img_return) {
            if (this.listener != null) {
                this.listener.onBack();
            }
        } else if (C0885R.C0889id.tv_point1 == id) {
            setSelectIndex(1);
        } else if (C0885R.C0889id.tv_point2 == id) {
            setSelectIndex(2);
        } else if (C0885R.C0889id.tv_point3 == id) {
            setSelectIndex(3);
        } else if (C0885R.C0889id.tv_point4 == id) {
            setSelectIndex(4);
        } else if (C0885R.C0889id.tv_point5 == id) {
            setSelectIndex(5);
        }
    }

    public void setListener(IX8FrequencyPointListener listener) {
        this.listener = listener;
    }
}
