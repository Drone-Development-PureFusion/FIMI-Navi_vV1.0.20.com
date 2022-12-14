package com.fimi.app.x8s.controls.fcsettting.flightlog;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Message;
import android.support.p004v7.widget.LinearLayoutManager;
import android.support.p004v7.widget.RecyclerView;
import android.support.p004v7.widget.SimpleItemAnimator;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.BounceInterpolator;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.login.widget.ToolTipPopup;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.adapter.X8FlightLogAdapter;
import com.fimi.app.x8s.interfaces.AbsX8MenuBoxControllers;
import com.fimi.app.x8s.interfaces.IX8FlightlogRenameFile;
import com.fimi.app.x8s.interfaces.IX8GeneraModifyModeControllerListener;
import com.fimi.app.x8s.widget.WrapContentLinearLayoutManager;
import com.fimi.app.x8s.widget.X8AiAutoPhotoLoadingView;
import com.fimi.app.x8s.widget.X8DoubleCustomDialog;
import com.fimi.app.x8s.widget.X8IMUCustomDialog;
import com.fimi.app.x8s.widget.X8PlaybackDoubleCustomDialog;
import com.fimi.app.x8s.widget.X8SingleCustomPlaybackSynDialog;
import com.fimi.kernel.Constants;
import com.fimi.kernel.base.EventMessage;
import com.fimi.kernel.fds.FdsCount;
import com.fimi.kernel.fds.FdsManager;
import com.fimi.kernel.percent.PercentRelativeLayout;
import com.fimi.kernel.utils.DNSLookupThread;
import com.fimi.network.DownFwService;
import com.fimi.widget.CustomLoadManage;
import com.fimi.widget.X8ToastUtil;
import com.fimi.widget.impl.NoDoubleClickListener;
import com.fimi.x8sdk.ivew.IX8FlightLogListAction;
import com.fimi.x8sdk.presenter.X8FlightLogListPresenter;
import com.fimi.x8sdk.service.DownFlightPlaybackService;
import org.greenrobot.eventbus.EventBus;
/* loaded from: classes.dex */
public class X8FlightLogListController extends AbsX8MenuBoxControllers implements IX8FlightLogListAction, IX8FlightlogRenameFile {
    private X8DoubleCustomDialog dialog;
    private View handleView;
    private Handler handler;
    private ImageView imgDelete;
    private boolean isShowNotDNSDialog;
    private IX8GeneraModifyModeControllerListener modeControllerListener;
    private int synType;
    private TextView tvNoFiles;
    private Button x8BtnPlayback;
    private X8FlightLogAdapter x8FlightLogAdapter;
    private X8FlightLogListPresenter x8FlightLogListPresenter;
    private X8IMUCustomDialog x8IMUCustomDialog;
    private ImageView x8ImgPlaybackReturn;
    private ImageView x8ImgPlaybackSyn;
    private X8PlaybackDoubleCustomDialog x8PlaybackDoubleCustomDialog;
    private PercentRelativeLayout x8PrlFlightLogListInfo;
    private PercentRelativeLayout x8RlFlightLogListContent;
    private X8SingleCustomPlaybackSynDialog x8SingleCustomPlaybackSynDialog;
    private TextView x8TvPlaybackDistanceValue;
    private TextView x8TvPlaybackNumberValue;
    private TextView x8TvPlaybackTotalTimeValue;
    private X8AiAutoPhotoLoadingView x8ViewAiAutoPhotoLoading;
    private FdsCount fdsCount = new FdsCount();
    private final int TEST_NET_WORK = 3;
    private final int FLIGHT_DATA_REFRESH = 4;

    @SuppressLint({"HandlerLeak"})
    public X8FlightLogListController(View rootView, final CustomLoadManage customLoadManage) {
        super(rootView);
        this.x8FlightLogListPresenter = new X8FlightLogListPresenter(rootView.getContext(), this);
        this.x8FlightLogListPresenter.setFdsCount(this.fdsCount);
        this.handler = new Handler() { // from class: com.fimi.app.x8s.controls.fcsettting.flightlog.X8FlightLogListController.1
            @Override // android.os.Handler
            @SuppressLint({"SetTextI18n"})
            public void handleMessage(Message msg) {
                super.handleMessage(msg);
                CustomLoadManage customLoadManage2 = customLoadManage;
                CustomLoadManage.dismiss();
                switch (msg.what) {
                    case 0:
                        X8FlightLogListController.this.isShowNotDNSDialog = true;
                        X8FlightLogListController.this.tvNoFiles.setVisibility(8);
                        X8FlightLogListController.this.imgDelete.setEnabled(true);
                        X8FlightLogListController.this.fdsCount.setComplete(msg.arg1);
                        X8FlightLogListController.this.fdsCount.setTotal(msg.arg2);
                        X8FlightLogListController.this.x8TvPlaybackNumberValue.setText(X8FlightLogListController.this.x8FlightLogAdapter.getSection().getList().size() + "");
                        X8FlightLogListController.this.x8TvPlaybackTotalTimeValue.setText(X8FlightLogListController.this.x8FlightLogAdapter.getPlaybackTotalTime());
                        X8FlightLogListController.this.x8TvPlaybackDistanceValue.setText(X8FlightLogListController.this.x8FlightLogAdapter.getPlaybackDistance());
                        X8FlightLogListController.this.x8FlightLogAdapter.notifyDataSetChanged();
                        break;
                    case 1:
                        X8FlightLogListController.this.isShowNotDNSDialog = true;
                        X8FlightLogListController.this.tvNoFiles.setVisibility(0);
                        X8FlightLogListController.this.imgDelete.setEnabled(false);
                        X8FlightLogListController.this.x8FlightLogAdapter.clear();
                        X8FlightLogListController.this.x8TvPlaybackNumberValue.setText("0");
                        X8FlightLogListController.this.x8TvPlaybackTotalTimeValue.setText("0 s");
                        X8FlightLogListController.this.x8TvPlaybackDistanceValue.setText("0 m");
                        break;
                    case 2:
                        X8FlightLogListController.this.isShowNotDNSDialog = true;
                        X8FlightLogListController.this.x8ViewAiAutoPhotoLoading.stopLoading();
                        X8FlightLogListController.this.x8ViewAiAutoPhotoLoading.setVisibility(8);
                        break;
                    case 3:
                        X8FlightLogListController.this.testNetWorkOnSynProgress();
                        break;
                    case 4:
                        X8FlightLogListController.this.seachFile(((Boolean) msg.obj).booleanValue());
                        break;
                }
                X8FlightLogListController.this.handler.sendEmptyMessageDelayed(3, 2000L);
            }
        };
        seachFile(false);
    }

    public void setModeControllerListener(IX8GeneraModifyModeControllerListener modeControllerListener) {
        this.modeControllerListener = modeControllerListener;
    }

    private void initView(View handleView) {
        this.x8ImgPlaybackReturn = (ImageView) handleView.findViewById(C0885R.C0889id.x8_img_playback_return);
        this.imgDelete = (ImageView) handleView.findViewById(C0885R.C0889id.img_delete);
        this.tvNoFiles = (TextView) handleView.findViewById(C0885R.C0889id.tv_no_files);
        this.imgDelete.setEnabled(false);
        RecyclerView recyclerView = (RecyclerView) handleView.findViewById(C0885R.C0889id.x8_ryv_flight_log);
        LinearLayoutManager linearLayoutManager = new WrapContentLinearLayoutManager(handleView.getContext(), 1, false);
        recyclerView.setLayoutManager(linearLayoutManager);
        ((SimpleItemAnimator) recyclerView.getItemAnimator()).setSupportsChangeAnimations(false);
        recyclerView.setAdapter(this.x8FlightLogAdapter);
        this.x8BtnPlayback = (Button) handleView.findViewById(C0885R.C0889id.x8_btn_playback);
        this.x8RlFlightLogListContent = (PercentRelativeLayout) handleView.findViewById(C0885R.C0889id.x8_rl_flight_log_list_content);
        this.x8PrlFlightLogListInfo = (PercentRelativeLayout) handleView.findViewById(C0885R.C0889id.x8_prl_flight_log_list_info);
        this.x8TvPlaybackNumberValue = (TextView) handleView.findViewById(C0885R.C0889id.x8_tv_playback_number_value);
        this.x8TvPlaybackTotalTimeValue = (TextView) handleView.findViewById(C0885R.C0889id.x8_tv_playback_total_time_value);
        this.x8TvPlaybackDistanceValue = (TextView) handleView.findViewById(C0885R.C0889id.x8_tv_playback_distance_value);
        this.x8ViewAiAutoPhotoLoading = (X8AiAutoPhotoLoadingView) handleView.findViewById(C0885R.C0889id.x8_view_ai_auto_photo_loading);
        this.x8ViewAiAutoPhotoLoading.setX8TvLoadingHint(getString(C0885R.string.x8_playback_delete_loading_hint));
        this.x8ImgPlaybackSyn = (ImageView) handleView.findViewById(C0885R.C0889id.x8_img_playback_syn);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void testNetWorkOnSynProgress() {
        if (!DNSLookupThread.isDSNSuceess() && !this.isShowNotDNSDialog && this.handleView.getVisibility() == 0) {
            this.isShowNotDNSDialog = true;
            DownFlightPlaybackService.setState(DownFwService.DownState.StopDown);
            FdsManager.getInstance().stopAll();
            if (this.x8IMUCustomDialog == null) {
                this.x8IMUCustomDialog = new X8IMUCustomDialog(this.handleView.getContext(), getString(C0885R.string.x8_playback_syn_failure), getString(C0885R.string.x8_playback_syn_failure_hint), C0885R.C0888drawable.x8_calibration_fail_icon, new X8IMUCustomDialog.onDialogButtonClickListener() { // from class: com.fimi.app.x8s.controls.fcsettting.flightlog.X8FlightLogListController.2
                    @Override // com.fimi.app.x8s.widget.X8IMUCustomDialog.onDialogButtonClickListener
                    public void onSingleButtonClick() {
                        X8FlightLogListController.this.x8IMUCustomDialog = null;
                        X8FlightLogListController.this.seachFile(false);
                        if (X8FlightLogListController.this.x8SingleCustomPlaybackSynDialog != null) {
                            X8FlightLogListController.this.x8SingleCustomPlaybackSynDialog.dismiss();
                        }
                    }
                });
                this.x8IMUCustomDialog.show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void seachFile(boolean uploadSuccessfulAll) {
        new X8FlightLogFileSeachDeleteThread(this.x8FlightLogAdapter, this.handler, true, false, uploadSuccessfulAll).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deleteFile(boolean deleteAll) {
        new X8FlightLogFileSeachDeleteThread(this.x8FlightLogAdapter, this.handler, false, deleteAll, false).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showDeleteDialog() {
        String t = getString(C0885R.string.x8_playback_delete_title);
        String m = getString(C0885R.string.x8_playback_delete_messge);
        String checkStr = getString(C0885R.string.x8_playback_delete_hint);
        String l = getString(C0885R.string.x8_setting_fc_loastaction_tips_content_cancel);
        String r = getString(C0885R.string.x8_playback_delete);
        this.dialog = new X8DoubleCustomDialog(this.handleView.getContext(), t, m, l, r, checkStr, new X8DoubleCustomDialog.onDialogButtonClickListener() { // from class: com.fimi.app.x8s.controls.fcsettting.flightlog.X8FlightLogListController.3
            @Override // com.fimi.app.x8s.widget.X8DoubleCustomDialog.onDialogButtonClickListener
            public void onLeft() {
            }

            @Override // com.fimi.app.x8s.widget.X8DoubleCustomDialog.onDialogButtonClickListener
            public void onRight() {
                X8FlightLogListController.this.x8ViewAiAutoPhotoLoading.setVisibility(0);
                X8FlightLogListController.this.x8ViewAiAutoPhotoLoading.playLoading();
                X8FlightLogListController.this.deleteFile(X8FlightLogListController.this.dialog.x8CbSingDialog.isChecked());
            }
        });
        this.dialog.show();
        this.dialog.setCanceledOnTouchOutside(false);
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8Controllers
    public String getString(int id) {
        return this.handleView.getContext().getString(id);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showUploadingEixtDialog() {
        String t = getString(C0885R.string.x8_modify_black_box_upload_exit_title);
        String m = getString(C0885R.string.x8_modify_black_box_upload_exit_content);
        String l = getString(C0885R.string.x8_setting_fc_loastaction_tips_content_cancel);
        String r = getString(C0885R.string.x8_setting_fc_loastaction_tips_content_confirm);
        this.dialog = new X8DoubleCustomDialog(this.handleView.getContext(), t, m, l, r, new X8DoubleCustomDialog.onDialogButtonClickListener() { // from class: com.fimi.app.x8s.controls.fcsettting.flightlog.X8FlightLogListController.4
            @Override // com.fimi.app.x8s.widget.X8DoubleCustomDialog.onDialogButtonClickListener
            public void onLeft() {
            }

            @Override // com.fimi.app.x8s.widget.X8DoubleCustomDialog.onDialogButtonClickListener
            public void onRight() {
                FdsManager.getInstance().stopAll();
                X8FlightLogListController.this.handleView.setVisibility(8);
                X8FlightLogListController.this.x8IMUCustomDialog = null;
                X8FlightLogListController.this.modeControllerListener.returnBack();
            }
        });
        this.dialog.show();
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8MenuBoxControllers
    public boolean isRunningTask() {
        if (FdsManager.getInstance().hasUpload()) {
            showUploadingEixtDialog();
            return false;
        }
        return true;
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void initViews(View rootView) {
        LayoutInflater inflater = LayoutInflater.from(rootView.getContext());
        this.handleView = inflater.inflate(C0885R.layout.x8_flight_log_list_layout, (ViewGroup) rootView, true);
        this.x8FlightLogAdapter = new X8FlightLogAdapter(rootView.getContext(), this);
        initView(this.handleView);
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void initActions() {
        this.x8ImgPlaybackReturn.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.controls.fcsettting.flightlog.X8FlightLogListController.5
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (X8FlightLogListController.this.x8RlFlightLogListContent.getVisibility() == 0) {
                    X8FlightLogListController.this.x8RlFlightLogListContent.setVisibility(8);
                    X8FlightLogListController.this.x8PrlFlightLogListInfo.setVisibility(0);
                    X8FlightLogListController.this.x8PrlFlightLogListInfo.animate().translationYBy(0.0f).setDuration(500L).setInterpolator(new BounceInterpolator());
                    X8FlightLogListController.this.x8ImgPlaybackReturn.setImageResource(C0885R.C0888drawable.x8_playback_return);
                } else if (FdsManager.getInstance().hasUpload()) {
                    X8FlightLogListController.this.showUploadingEixtDialog();
                } else {
                    X8FlightLogListController.this.x8FlightLogAdapter.unregisterEventBus();
                    X8FlightLogListController.this.handleView.setVisibility(8);
                    X8FlightLogListController.this.x8IMUCustomDialog = null;
                    X8FlightLogListController.this.modeControllerListener.returnBack();
                }
            }
        });
        this.imgDelete.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.controls.fcsettting.flightlog.X8FlightLogListController.6
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (!FdsManager.getInstance().hasUpload()) {
                    X8FlightLogListController.this.showDeleteDialog();
                }
            }
        });
        this.x8BtnPlayback.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.controls.fcsettting.flightlog.X8FlightLogListController.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                X8FlightLogListController.this.x8RlFlightLogListContent.setVisibility(0);
                X8FlightLogListController.this.x8RlFlightLogListContent.animate().translationYBy(0.0f).setDuration(500L).setInterpolator(new BounceInterpolator());
                X8FlightLogListController.this.x8PrlFlightLogListInfo.setVisibility(8);
                X8FlightLogListController.this.x8ImgPlaybackReturn.setImageResource(C0885R.C0888drawable.x8_playback_close);
            }
        });
        this.x8ImgPlaybackSyn.setOnClickListener(new C13738(500));
    }

    /* renamed from: com.fimi.app.x8s.controls.fcsettting.flightlog.X8FlightLogListController$8 */
    /* loaded from: classes.dex */
    class C13738 extends NoDoubleClickListener {
        C13738(int x0) {
            super(x0);
        }

        @Override // com.fimi.widget.impl.NoDoubleClickListener
        protected void onNoDoubleClick(View v) {
            X8FlightLogListController.this.x8PlaybackDoubleCustomDialog = new X8PlaybackDoubleCustomDialog(X8FlightLogListController.this.handleView.getContext(), new X8PlaybackDoubleCustomDialog.onDialogButtonClickListener() { // from class: com.fimi.app.x8s.controls.fcsettting.flightlog.X8FlightLogListController.8.1
                @Override // com.fimi.app.x8s.widget.X8PlaybackDoubleCustomDialog.onDialogButtonClickListener
                public void onLeft() {
                }

                @Override // com.fimi.app.x8s.widget.X8PlaybackDoubleCustomDialog.onDialogButtonClickListener
                public void onRight() {
                    if (!DNSLookupThread.isDSNSuceess()) {
                        if (X8FlightLogListController.this.x8IMUCustomDialog == null) {
                            X8FlightLogListController.this.x8IMUCustomDialog = new X8IMUCustomDialog(X8FlightLogListController.this.handleView.getContext(), X8FlightLogListController.this.getString(C0885R.string.x8_playback_syn_failure), X8FlightLogListController.this.getString(C0885R.string.x8_playback_syn_failure_hint), C0885R.C0888drawable.x8_calibration_fail_icon, new X8IMUCustomDialog.onDialogButtonClickListener() { // from class: com.fimi.app.x8s.controls.fcsettting.flightlog.X8FlightLogListController.8.1.1
                                @Override // com.fimi.app.x8s.widget.X8IMUCustomDialog.onDialogButtonClickListener
                                public void onSingleButtonClick() {
                                    X8FlightLogListController.this.x8IMUCustomDialog = null;
                                }
                            });
                            X8FlightLogListController.this.x8IMUCustomDialog.show();
                            return;
                        }
                        return;
                    }
                    if (X8FlightLogListController.this.x8FlightLogAdapter.getSection() != null) {
                        X8FlightLogListController.this.x8FlightLogListPresenter.setX8FlightLogFiles(X8FlightLogListController.this.x8FlightLogAdapter.getSection().getList());
                    } else {
                        X8FlightLogListController.this.x8FlightLogListPresenter.setX8FlightLogFiles(null);
                    }
                    X8FlightLogListController.this.synType = X8FlightLogListController.this.x8PlaybackDoubleCustomDialog.getX8PlaybackSynType();
                    X8FlightLogListController.this.x8FlightLogListPresenter.synFlightPlaybackData(X8FlightLogListController.this.x8PlaybackDoubleCustomDialog.getX8PlaybackSynType());
                    X8FlightLogListController.this.isShowNotDNSDialog = false;
                }
            });
            X8FlightLogListController.this.x8PlaybackDoubleCustomDialog.show();
            X8FlightLogListController.this.x8PlaybackDoubleCustomDialog.setCanceledOnTouchOutside(false);
        }
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void defaultVal() {
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8Controllers
    public void showItem() {
        super.showItem();
        this.handleView.setVisibility(0);
    }

    @Override // com.fimi.x8sdk.ivew.IX8FlightLogListAction
    public void startSyn() {
        this.x8SingleCustomPlaybackSynDialog = new X8SingleCustomPlaybackSynDialog(this.handleView.getContext(), getString(C0885R.string.x8_playback_syn_are_title), new X8SingleCustomPlaybackSynDialog.onDialogButtonClickListener() { // from class: com.fimi.app.x8s.controls.fcsettting.flightlog.X8FlightLogListController.9
            @Override // com.fimi.app.x8s.widget.X8SingleCustomPlaybackSynDialog.onDialogButtonClickListener
            public void onSingleButtonClick() {
                DownFlightPlaybackService.setState(DownFwService.DownState.StopDown);
                FdsManager.getInstance().stopAll();
                if (X8FlightLogListController.this.x8IMUCustomDialog == null) {
                    X8FlightLogListController.this.x8IMUCustomDialog = new X8IMUCustomDialog(X8FlightLogListController.this.handleView.getContext(), X8FlightLogListController.this.getString(C0885R.string.x8_playback_syn_cancle), X8FlightLogListController.this.getString(C0885R.string.x8_playback_syn_end_cancle), C0885R.C0888drawable.x8_calibration_fail_icon, new X8IMUCustomDialog.onDialogButtonClickListener() { // from class: com.fimi.app.x8s.controls.fcsettting.flightlog.X8FlightLogListController.9.1
                        @Override // com.fimi.app.x8s.widget.X8IMUCustomDialog.onDialogButtonClickListener
                        public void onSingleButtonClick() {
                            X8FlightLogListController.this.x8IMUCustomDialog = null;
                            X8FlightLogListController.this.seachFile(false);
                        }
                    });
                    X8FlightLogListController.this.x8IMUCustomDialog.show();
                }
            }
        });
        this.x8SingleCustomPlaybackSynDialog.show();
        this.x8SingleCustomPlaybackSynDialog.setCanceledOnTouchOutside(false);
    }

    @Override // com.fimi.x8sdk.ivew.IX8FlightLogListAction
    public void synTotalProgress(int progrss) {
        if (this.x8SingleCustomPlaybackSynDialog != null) {
            this.x8SingleCustomPlaybackSynDialog.setX8PbPlaybackPlanValue(progrss);
        }
    }

    @Override // com.fimi.x8sdk.ivew.IX8FlightLogListAction
    public void synCompleteRefreshUI(final boolean isSucceed) {
        this.handler.postDelayed(new Runnable() { // from class: com.fimi.app.x8s.controls.fcsettting.flightlog.X8FlightLogListController.10
            @Override // java.lang.Runnable
            public void run() {
                if (X8FlightLogListController.this.handleView != null && X8FlightLogListController.this.handleView.getVisibility() == 0) {
                    if (X8FlightLogListController.this.x8SingleCustomPlaybackSynDialog != null) {
                        X8FlightLogListController.this.x8SingleCustomPlaybackSynDialog.dismiss();
                    }
                    if (X8FlightLogListController.this.x8IMUCustomDialog != null) {
                        X8FlightLogListController.this.x8IMUCustomDialog.dismiss();
                    }
                    if (!isSucceed) {
                        if (X8FlightLogListController.this.x8IMUCustomDialog == null) {
                            X8FlightLogListController.this.x8IMUCustomDialog = new X8IMUCustomDialog(X8FlightLogListController.this.handleView.getContext(), X8FlightLogListController.this.getString(C0885R.string.x8_playback_syn_failure), X8FlightLogListController.this.getString(C0885R.string.x8_playback_syn_failure_hint_one), C0885R.C0888drawable.x8_calibration_fail_icon, new X8IMUCustomDialog.onDialogButtonClickListener() { // from class: com.fimi.app.x8s.controls.fcsettting.flightlog.X8FlightLogListController.10.2
                                @Override // com.fimi.app.x8s.widget.X8IMUCustomDialog.onDialogButtonClickListener
                                public void onSingleButtonClick() {
                                    X8FlightLogListController.this.x8IMUCustomDialog = null;
                                    Message message = new Message();
                                    message.what = 4;
                                    message.obj = false;
                                    X8FlightLogListController.this.handler.sendMessageDelayed(message, 500L);
                                }
                            });
                        }
                    } else {
                        String synCompleteHint = "";
                        switch (X8FlightLogListController.this.synType) {
                            case 0:
                                synCompleteHint = String.format(X8FlightLogListController.this.getString(C0885R.string.x8_playback_syn_complete_hint), X8FlightLogListController.this.getString(C0885R.string.x8_playback_syn_type_one));
                                break;
                            case 1:
                                synCompleteHint = String.format(X8FlightLogListController.this.getString(C0885R.string.x8_playback_syn_complete_hint), X8FlightLogListController.this.getString(C0885R.string.x8_playback_syn_type_two));
                                break;
                            case 2:
                                synCompleteHint = String.format(X8FlightLogListController.this.getString(C0885R.string.x8_playback_syn_complete_hint), X8FlightLogListController.this.getString(C0885R.string.x8_playback_syn_type_three));
                                break;
                            case 3:
                                synCompleteHint = X8FlightLogListController.this.getString(C0885R.string.x8_playback_syn_complete_hint_all);
                                break;
                        }
                        if (X8FlightLogListController.this.x8IMUCustomDialog == null) {
                            X8FlightLogListController.this.x8IMUCustomDialog = new X8IMUCustomDialog(X8FlightLogListController.this.handleView.getContext(), X8FlightLogListController.this.getString(C0885R.string.x8_playback_syn_complete), synCompleteHint, C0885R.C0888drawable.x8_calibration_success_icon, new X8IMUCustomDialog.onDialogButtonClickListener() { // from class: com.fimi.app.x8s.controls.fcsettting.flightlog.X8FlightLogListController.10.1
                                @Override // com.fimi.app.x8s.widget.X8IMUCustomDialog.onDialogButtonClickListener
                                public void onSingleButtonClick() {
                                    X8FlightLogListController.this.x8IMUCustomDialog = null;
                                    Message message = new Message();
                                    message.what = 4;
                                    message.obj = true;
                                    X8FlightLogListController.this.handler.sendMessageDelayed(message, 500L);
                                }
                            });
                        }
                    }
                    if (!X8FlightLogListController.this.x8IMUCustomDialog.isShowing()) {
                        X8FlightLogListController.this.x8IMUCustomDialog.show();
                    }
                }
            }
        }, ToolTipPopup.DEFAULT_POPUP_DISPLAY_TIME);
    }

    @Override // com.fimi.x8sdk.ivew.IX8FlightLogListAction
    public void noDataHint() {
        X8ToastUtil.showToast(this.handleView.getContext(), getString(C0885R.string.x8_playback_syn_no_data_hint), 1);
        this.x8FlightLogAdapter.unregister();
    }

    @Override // com.fimi.app.x8s.interfaces.IX8FlightlogRenameFile
    public void onRenameFileSuccess() {
        EventBus.getDefault().post(new EventMessage(Constants.X8_FLIGHTLOG_RENAME_FILE_EVENT_KEY, false));
        seachFile(false);
    }

    public void remioveDownNoticeList() {
        this.x8FlightLogListPresenter.remioveDownNoticeList();
        this.x8FlightLogAdapter.unregister();
    }
}
