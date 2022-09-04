package com.fimi.app.x8s.controls.fcsettting;

import android.support.p004v7.widget.GridLayoutManager;
import android.support.p004v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.adapter.FirmwareUpgradeAdapter;
import com.fimi.app.x8s.entity.VersionEntity;
import com.fimi.app.x8s.interfaces.AbsX8MenuBoxControllers;
import com.fimi.app.x8s.interfaces.IX8FirmwareUpgradeControllerListener;
import com.fimi.kernel.Constants;
import com.fimi.kernel.base.EventMessage;
import com.fimi.network.entity.UpfirewareDto;
import com.fimi.widget.impl.NoDoubleClickListener;
import com.fimi.x8sdk.dataparser.AckVersion;
import com.fimi.x8sdk.modulestate.StateManager;
import com.fimi.x8sdk.modulestate.VersionState;
import com.fimi.x8sdk.update.UpdateUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes.dex */
public class X8FirmwareUpgradeController extends AbsX8MenuBoxControllers implements View.OnClickListener {
    private boolean availableUpgrades;
    boolean currentConnectedState;
    private IX8FirmwareUpgradeControllerListener listener;
    private ArrayList<VersionEntity> items = new ArrayList<>();
    private ImageView imgReturn = (ImageView) this.contentView.findViewById(C0885R.C0889id.btn_return);
    private TextView tvFirmwareUpgrade = (TextView) this.contentView.findViewById(C0885R.C0889id.tv_firmware_upgrade);
    private RecyclerView mRecyclerList = (RecyclerView) this.contentView.findViewById(C0885R.C0889id.recycler_version_list);
    private FirmwareUpgradeAdapter adapter = new FirmwareUpgradeAdapter(this.items);

    public X8FirmwareUpgradeController(View rootView) {
        super(rootView);
        LayoutInflater inflater = LayoutInflater.from(rootView.getContext());
        this.contentView = inflater.inflate(C0885R.layout.x8_main_general_item_firmware_upgrade, (ViewGroup) rootView, true);
        initData();
        GridLayoutManager layoutManager = new GridLayoutManager(rootView.getContext(), 2);
        this.mRecyclerList.setLayoutManager(layoutManager);
        this.mRecyclerList.setAdapter(this.adapter);
        this.imgReturn.setOnClickListener(this);
        this.tvFirmwareUpgrade.setOnClickListener(new NoDoubleClickListener(800) { // from class: com.fimi.app.x8s.controls.fcsettting.X8FirmwareUpgradeController.1
            @Override // com.fimi.widget.impl.NoDoubleClickListener
            protected void onNoDoubleClick(View v) {
                if (X8FirmwareUpgradeController.this.listener != null) {
                    X8FirmwareUpgradeController.this.listener.onFirmwareUpgradeClick();
                }
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        int i = v.getId();
        if (i == C0885R.C0889id.btn_return) {
            closeItem();
            if (this.listener != null) {
                this.listener.onFirmwareUpgradeReturn();
            }
        }
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void initViews(View rootView) {
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void initActions() {
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void defaultVal() {
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8Controllers
    public void showItem() {
        super.showItem();
        this.contentView.setVisibility(0);
        EventBus.getDefault().register(this);
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8Controllers
    public void closeItem() {
        super.closeItem();
        this.contentView.setVisibility(8);
        EventBus.getDefault().unregister(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void eventBusUI(EventMessage eventMessage) {
        if (eventMessage.getKey() == Constants.X8_UPDATE_EVENT_KEY) {
            onVersionChange();
            this.adapter.notifyDataSetChanged();
        }
    }

    public void setOnFirmwareClickListener(IX8FirmwareUpgradeControllerListener listener) {
        this.listener = listener;
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x0331, code lost:
        r22.setHasNewVersion(true);
        r32.availableUpgrades = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x02d1, code lost:
        r4.setHasNewVersion(true);
        r32.availableUpgrades = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0274, code lost:
        r5.setHasNewVersion(true);
        r32.availableUpgrades = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0264, code lost:
        if (r26.getModel() != r11.getModel()) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0272, code lost:
        if (r26.getType() != r11.getType()) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x02c1, code lost:
        if (r26.getModel() != r10.getModel()) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x02cf, code lost:
        if (r26.getType() != r10.getType()) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0321, code lost:
        if (r26.getModel() != r18.getModel()) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x032f, code lost:
        if (r26.getType() != r18.getType()) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0381, code lost:
        if (r26.getModel() != r19.getModel()) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x038f, code lost:
        if (r26.getType() != r19.getType()) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x03e1, code lost:
        if (r26.getModel() != r16.getModel()) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x03ef, code lost:
        if (r26.getType() != r16.getType()) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x03f1, code lost:
        r21.setHasNewVersion(true);
        r32.availableUpgrades = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0391, code lost:
        r8.setHasNewVersion(true);
        r32.availableUpgrades = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void initData() {
        this.items.clear();
        VersionState versionState = StateManager.getInstance().getVersionState();
        AckVersion moduleFcAckVersion = versionState.getModuleFcAckVersion();
        AckVersion moduleRcVersion = versionState.getModuleRcVersion();
        AckVersion moduleCvVersion = versionState.getModuleCvVersion();
        AckVersion moduleRepeaterRcVersion = versionState.getModuleRepeaterRcVersion();
        AckVersion moduleRepeaterVehicleVersion = versionState.getModuleRepeaterVehicleVersion();
        AckVersion moduleEscVersion = versionState.getModuleEscVersion();
        AckVersion moduleGimbalVersion = versionState.getModuleGimbalVersion();
        AckVersion moduleBatteryVersion = versionState.getModuleBatteryVersion();
        AckVersion moduleNfzVersion = versionState.getModuleNfzVersion();
        AckVersion moduleCameraVersion = versionState.getModuleCameraVersion();
        AckVersion moduleUltrasonic = versionState.getModuleUltrasonic();
        VersionEntity flyControllerVersion = new VersionEntity(this.contentView.getContext(), this.contentView.getContext().getString(C0885R.string.x8_fw_fc_name), versionState.getModuleFcAckVersion());
        VersionEntity cameraVersion = new VersionEntity(this.contentView.getContext(), this.contentView.getContext().getString(C0885R.string.x8_fw_camera_name), versionState.getModuleCameraVersion());
        VersionEntity cloudTerraceVersion = new VersionEntity(this.contentView.getContext(), this.contentView.getContext().getString(C0885R.string.x8_fw_gimbal_name), versionState.getModuleGimbalVersion());
        VersionEntity batteryVersion = new VersionEntity(this.contentView.getContext(), this.contentView.getContext().getString(C0885R.string.x8_fw_battery_name), versionState.getModuleBatteryVersion());
        VersionEntity remoteControlVersion = new VersionEntity(this.contentView.getContext(), this.contentView.getContext().getString(C0885R.string.x8_fw_rc_name), versionState.getModuleRcVersion());
        VersionEntity remoteControlRepeaterVersion = new VersionEntity(this.contentView.getContext(), this.contentView.getContext().getString(C0885R.string.x8_fw_rc_rl_name), versionState.getModuleRepeaterRcVersion());
        VersionEntity cv = new VersionEntity(this.contentView.getContext(), this.contentView.getContext().getString(C0885R.string.x8_fw_vc_name), versionState.getModuleCvVersion());
        VersionEntity fcRl = new VersionEntity(this.contentView.getContext(), this.contentView.getContext().getString(C0885R.string.x8_fw_fc_rl_name), versionState.getModuleRepeaterVehicleVersion());
        VersionEntity servoVersion = new VersionEntity(this.contentView.getContext(), this.contentView.getContext().getString(C0885R.string.x8_fw_esc_name), versionState.getModuleEscVersion());
        VersionEntity noFlyZoneVersion = new VersionEntity(this.contentView.getContext(), this.contentView.getContext().getString(C0885R.string.x8_fw_noflyzone_name), versionState.getModuleNfzVersion());
        VersionEntity ultrasonicVersion = new VersionEntity(this.contentView.getContext(), this.contentView.getContext().getString(C0885R.string.x8_fw_ultrasonic_name), versionState.getModuleUltrasonic());
        List<UpfirewareDto> upfirewareDtos = UpdateUtil.getUpfireDtos();
        this.availableUpgrades = false;
        Iterator<UpfirewareDto> it = upfirewareDtos.iterator();
        while (it.hasNext()) {
            UpfirewareDto upfirewareDto = it.next();
            if (versionState != null) {
                if (moduleFcAckVersion != null && upfirewareDto.getModel() == moduleFcAckVersion.getModel() && upfirewareDto.getType() == moduleFcAckVersion.getType()) {
                    flyControllerVersion.setHasNewVersion(true);
                    this.availableUpgrades = true;
                } else if (moduleGimbalVersion != null && upfirewareDto.getModel() == moduleGimbalVersion.getModel() && upfirewareDto.getType() == moduleGimbalVersion.getType()) {
                    cloudTerraceVersion.setHasNewVersion(true);
                    this.availableUpgrades = true;
                } else if (moduleRcVersion != null && upfirewareDto.getModel() == moduleRcVersion.getModel() && upfirewareDto.getType() == moduleRcVersion.getType()) {
                    remoteControlVersion.setHasNewVersion(true);
                    this.availableUpgrades = true;
                } else if (moduleCvVersion != null && upfirewareDto.getModel() == moduleCvVersion.getModel() && upfirewareDto.getType() == moduleCvVersion.getType()) {
                    cv.setHasNewVersion(true);
                    this.availableUpgrades = true;
                } else if (moduleEscVersion != null && upfirewareDto.getModel() == moduleEscVersion.getModel() && upfirewareDto.getType() == moduleEscVersion.getType()) {
                    servoVersion.setHasNewVersion(true);
                    this.availableUpgrades = true;
                } else if (moduleUltrasonic != null && upfirewareDto.getModel() == versionState.getModuleUltrasonic().getModel() && upfirewareDto.getType() == versionState.getModuleUltrasonic().getType()) {
                    ultrasonicVersion.setHasNewVersion(true);
                    this.availableUpgrades = true;
                } else {
                    this.availableUpgrades = false;
                }
            } else {
                this.availableUpgrades = false;
            }
        }
        this.items.add(flyControllerVersion);
        this.items.add(cameraVersion);
        this.items.add(cloudTerraceVersion);
        this.items.add(batteryVersion);
        this.items.add(remoteControlVersion);
        this.items.add(remoteControlRepeaterVersion);
        this.items.add(cv);
        this.items.add(fcRl);
        this.items.add(servoVersion);
        this.items.add(noFlyZoneVersion);
        this.items.add(ultrasonicVersion);
        showNewUpdate(this.availableUpgrades);
    }

    private void showNewUpdate(boolean isShow) {
        if (isShow) {
            this.tvFirmwareUpgrade.setAlpha(1.0f);
            this.tvFirmwareUpgrade.setEnabled(true);
            return;
        }
        this.tvFirmwareUpgrade.setAlpha(0.6f);
        this.tvFirmwareUpgrade.setEnabled(false);
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8Controllers
    public void onDroneConnected(boolean b) {
        super.onDroneConnected(b);
        if (this.currentConnectedState != b) {
            this.currentConnectedState = b;
            if (b && StateManager.getInstance().getCamera().getToken() > 0) {
                initData();
                this.adapter.notifyDataSetChanged();
                return;
            }
            showNewUpdate(b);
            if (StateManager.getInstance().getConectState().isConnectRelay()) {
                this.items.clear();
                initData();
                this.adapter.changeDatas(this.items);
            }
        }
    }

    public void onVersionChange() {
        if (this.contentView != null && this.adapter != null) {
            this.items.clear();
            initData();
            this.adapter.changeDatas(this.items);
        }
    }
}
