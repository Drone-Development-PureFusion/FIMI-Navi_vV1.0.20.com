package com.fimi.app.x8s.controls.fcsettting;

import android.content.res.Resources;
import android.support.p004v7.widget.LinearLayoutManager;
import android.support.p004v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.adapter.X8DroneInfoStateAdapter;
import com.fimi.app.x8s.entity.X8DroneInfoState;
import com.fimi.app.x8s.interfaces.AbsX8MenuBoxControllers;
import com.fimi.app.x8s.interfaces.IX8DroneStateListener;
import com.fimi.app.x8s.manager.X8DroneInfoStatemManager;
import com.fimi.x8sdk.modulestate.StateManager;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class X8DroneInfoStateController extends AbsX8MenuBoxControllers implements X8DroneInfoStateAdapter.OnEventClickListener {
    private X8DroneInfoStateAdapter adapter;
    List<X8DroneInfoState> list;
    private IX8DroneStateListener listener;
    private View parentView;

    /* loaded from: classes.dex */
    public enum Mode {
        GPS,
        CAMP,
        MAGNETIC,
        IMU,
        BATTERY,
        GIMBAL
    }

    /* loaded from: classes.dex */
    public enum State {
        NA,
        NORMAL,
        MIDDLE,
        ERROR
    }

    public IX8DroneStateListener getListener() {
        return this.listener;
    }

    public void setListener(IX8DroneStateListener listener) {
        this.listener = listener;
    }

    public X8DroneInfoStateController(View rootView) {
        super(rootView);
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void initViews(View rootView) {
        this.list = new ArrayList();
        LayoutInflater inflater = LayoutInflater.from(rootView.getContext());
        this.parentView = inflater.inflate(C0885R.layout.x8_main_all_setting_drone_info_state, (ViewGroup) rootView, true);
        RecyclerView recyclerView = (RecyclerView) this.parentView.findViewById(C0885R.C0889id.ryv_drone_state);
        LinearLayoutManager layoutManager = new LinearLayoutManager(rootView.getContext());
        recyclerView.setLayoutManager(layoutManager);
        Resources res = rootView.getContext().getResources();
        String[] states = res.getStringArray(C0885R.array.x8_drone_info_state_array);
        for (int i = 0; i < states.length; i++) {
            X8DroneInfoState state = new X8DroneInfoState();
            state.setName(states[i]);
            state.setState(State.NA);
            state.setMode(getMode(i));
            state.setInfo(res.getString(C0885R.string.x8_na));
            state.setErrorEvent(getEvent(state.getMode()));
            this.list.add(state);
        }
        this.adapter = new X8DroneInfoStateAdapter(this.list);
        this.adapter.setOnEventClickListener(this);
        recyclerView.setAdapter(this.adapter);
        initActions();
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void initActions() {
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void defaultVal() {
    }

    public Mode getMode(int index) {
        Mode mode = Mode.GPS;
        switch (index) {
            case 0:
                Mode mode2 = Mode.GPS;
                return mode2;
            case 1:
                Mode mode3 = Mode.CAMP;
                return mode3;
            case 2:
                Mode mode4 = Mode.MAGNETIC;
                return mode4;
            case 3:
                Mode mode5 = Mode.IMU;
                return mode5;
            case 4:
                Mode mode6 = Mode.BATTERY;
                return mode6;
            case 5:
                Mode mode7 = Mode.GIMBAL;
                return mode7;
            default:
                return mode;
        }
    }

    public boolean checkError(Mode mode) {
        switch (mode) {
            case GPS:
                boolean ret = X8DroneInfoStatemManager.isGpsError();
                return ret;
            case CAMP:
                boolean ret2 = X8DroneInfoStatemManager.isCompassError();
                return ret2;
            case MAGNETIC:
                boolean ret3 = StateManager.getInstance().getErrorCodeState().isMagneticError();
                return ret3;
            case IMU:
                boolean ret4 = X8DroneInfoStatemManager.isImuError();
                return ret4;
            case BATTERY:
                boolean ret5 = X8DroneInfoStatemManager.isBatteryError();
                return ret5;
            case GIMBAL:
                boolean ret6 = X8DroneInfoStatemManager.isGcError();
                return ret6;
            default:
                return false;
        }
    }

    public String getInfo(Mode mode) {
        switch (mode) {
            case GPS:
                String s = getString(C0885R.string.x8_fc_state_exception);
                return s;
            case CAMP:
                String s2 = getString(C0885R.string.x8_fc_state_exception);
                return s2;
            case MAGNETIC:
                int magnetic = StateManager.getInstance().getX8Drone().getFcSingal().getMagnetic();
                if (magnetic >= 0 && magnetic <= 20) {
                    String s3 = getString(C0885R.string.x8_fc_item_magnetic_field_error1);
                    return s3;
                } else if (magnetic >= 21 && magnetic <= 40) {
                    String s4 = getString(C0885R.string.x8_fc_item_magnetic_field_error2);
                    return s4;
                } else {
                    String s5 = getString(C0885R.string.x8_fc_item_magnetic_field_error3);
                    return s5;
                }
            case IMU:
                String s6 = getString(C0885R.string.x8_fc_state_exception);
                return s6;
            case BATTERY:
                String s7 = getString(C0885R.string.x8_fc_state_exception);
                return s7;
            case GIMBAL:
                String s8 = getString(C0885R.string.x8_fc_state_exception);
                return s8;
            default:
                return "";
        }
    }

    public int getEvent(Mode mode) {
        switch (mode) {
            case CAMP:
                return 1;
            default:
                return 0;
        }
    }

    @Override // com.fimi.app.x8s.adapter.X8DroneInfoStateAdapter.OnEventClickListener
    public void onItemClick(int index, X8DroneInfoState obj) {
        switch (obj.getMode()) {
            case CAMP:
                this.listener.onCalibrationItemClick();
                return;
            default:
                return;
        }
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8Controllers
    public void onDroneConnected(boolean b) {
        if (b) {
            for (X8DroneInfoState state : this.list) {
                boolean error = checkError(state.getMode());
                if (error) {
                    state.setInfo(getInfo(state.getMode()));
                    state.setState(State.ERROR);
                } else {
                    String s = getString(C0885R.string.x8_fc_state_normal);
                    State st = State.NORMAL;
                    if (Mode.MAGNETIC == state.getMode()) {
                        int magnetic = StateManager.getInstance().getX8Drone().getFcSingal().getMagnetic();
                        if (magnetic >= 0 && magnetic <= 20) {
                            s = getString(C0885R.string.x8_fc_item_magnetic_field_error1);
                        } else if (magnetic >= 21 && magnetic <= 40) {
                            s = getString(C0885R.string.x8_fc_item_magnetic_field_error2);
                            st = State.MIDDLE;
                        } else {
                            s = getString(C0885R.string.x8_fc_item_magnetic_field_error3);
                            st = State.ERROR;
                        }
                    }
                    state.setInfo(s);
                    state.setState(st);
                    this.adapter.notifyDataSetChanged();
                }
                this.adapter.notifyDataSetChanged();
            }
            return;
        }
        for (X8DroneInfoState state2 : this.list) {
            state2.setState(State.NA);
            state2.setInfo(getString(C0885R.string.x8_na));
            this.adapter.notifyDataSetChanged();
        }
    }
}
