package com.fimi.app.x8s.p011ui.presenter;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Message;
import android.support.p001v4.content.LocalBroadcastManager;
import android.support.p004v7.widget.GridLayoutManager;
import android.support.p004v7.widget.RecyclerView;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import com.fimi.album.biz.DataManager;
import com.fimi.album.entity.MediaModel;
import com.fimi.album.handler.HandlerManager;
import com.fimi.album.iview.ISelectData;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.adapter.BodyRecycleViewHolder;
import com.fimi.app.x8s.adapter.HeadRecyleViewHolder;
import com.fimi.app.x8s.adapter.PanelRecycleViewHolder;
import com.fimi.app.x8s.adapter.X8sPanelRecycleAdapter;
import com.fimi.app.x8s.p011ui.album.x8s.X8BaseMediaFragmentPresenter;
import com.fimi.kernel.utils.ByteUtil;
import com.fimi.kernel.utils.DateFormater;
import com.fimi.kernel.utils.FrescoUtils;
import com.fimi.kernel.utils.VideoDuration;
import java.io.File;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: com.fimi.app.x8s.ui.presenter.X8LocalFragmentPresenter */
/* loaded from: classes.dex */
public class X8LocalFragmentPresenter<T extends MediaModel> extends X8BaseMediaFragmentPresenter {
    private static final String TAG = "X9LocalFragmentPresente";
    public static final String UPDATELOCALITEM = "UPDATELOCALITEM";
    public static final String UPDATELOCALITEMRECEIVER = "UPDATELOCALITEMRECEIVER";
    private X8LocalFragmentPresenter<T>.UpdateLocalItemReceiver mUpdateLocalItemReceiver;
    private int defaultBound = 50;
    private Handler durationHandler = HandlerManager.obtain().getHandlerInOtherThread(this);
    private Handler mainHandler = HandlerManager.obtain().getHandlerInMainThread(this);

    public X8LocalFragmentPresenter(RecyclerView mRecyclerView, X8sPanelRecycleAdapter mPanelRecycleAdapter, ISelectData mISelectData, Context context) {
        super(mRecyclerView, mPanelRecycleAdapter, mISelectData, context, false);
        doTrans();
        RecyclerView.LayoutManager manager = mRecyclerView.getLayoutManager();
        if (manager instanceof GridLayoutManager) {
            this.mGridLayoutManager = (GridLayoutManager) manager;
        }
        registerReciver();
    }

    private void doTrans() {
        this.mRecyclerView.setRecyclerListener(new RecyclerView.RecyclerListener() { // from class: com.fimi.app.x8s.ui.presenter.X8LocalFragmentPresenter.1
            @Override // android.support.p004v7.widget.RecyclerView.RecyclerListener
            public void onViewRecycled(RecyclerView.ViewHolder holder) {
                if (holder instanceof BodyRecycleViewHolder) {
                    BodyRecycleViewHolder mBodyRecycleViewHolder = (BodyRecycleViewHolder) holder;
                    mBodyRecycleViewHolder.tvDuringdate.setVisibility(4);
                    mBodyRecycleViewHolder.ivSelect.setVisibility(8);
                }
            }
        });
        this.mRecyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.fimi.app.x8s.ui.presenter.X8LocalFragmentPresenter.2
            @Override // android.support.p004v7.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
                super.onScrollStateChanged(recyclerView, newState);
                X8LocalFragmentPresenter.this.isScrollRecycle = false;
                X8LocalFragmentPresenter.this.durationHandler.sendEmptyMessage(1);
            }

            @Override // android.support.p004v7.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
                super.onScrolled(recyclerView, dx, dy);
                if (Math.abs(dy) <= X8LocalFragmentPresenter.this.defaultBound) {
                    X8LocalFragmentPresenter.this.isScrollRecycle = false;
                    X8LocalFragmentPresenter.this.durationHandler.sendEmptyMessage(1);
                    return;
                }
                X8LocalFragmentPresenter.this.isScrollRecycle = true;
            }
        });
    }

    @Override // com.fimi.album.iview.IHandlerCallback, android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        try {
            if (message.what == 1 && this.modelList.size() > 0 && this.mGridLayoutManager != null) {
                int firstVisibleItem = this.mGridLayoutManager.findFirstVisibleItemPosition();
                int lastVisibleItem = this.mGridLayoutManager.findLastVisibleItemPosition();
                if (firstVisibleItem != -1) {
                    while (true) {
                        if (firstVisibleItem <= lastVisibleItem) {
                            MediaModel mediaModel = getModel(firstVisibleItem);
                            if (mediaModel != null && !mediaModel.isCategory() && TextUtils.isEmpty(mediaModel.getVideoDuration())) {
                                String time = DateFormater.dateString(VideoDuration.getVideoDuration(this.context, mediaModel.getFileLocalPath()), "mm:ss");
                                mediaModel.setVideoDuration(time);
                                Message updateMessage = new Message();
                                updateMessage.what = 2;
                                updateMessage.arg1 = firstVisibleItem;
                                this.mainHandler.sendMessage(updateMessage);
                            }
                            firstVisibleItem++;
                            if (this.isScrollRecycle) {
                                this.durationHandler.removeMessages(1);
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                }
            } else if (message.what == 2) {
                int currentPsition = message.arg1;
                this.mPanelRecycleAdapter.notifyItemChanged(currentPsition);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }

    @Override // com.fimi.album.iview.IRecycleAdapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int position) {
        if (holder instanceof HeadRecyleViewHolder) {
            doHeadTrans((HeadRecyleViewHolder) holder, position);
        } else if (holder instanceof BodyRecycleViewHolder) {
            doBodyTrans((BodyRecycleViewHolder) holder, position);
        } else {
            doPanelTrans((PanelRecycleViewHolder) holder, position);
        }
    }

    private void doHeadTrans(HeadRecyleViewHolder headRecyleViewHolder, int position) {
        headRecyleViewHolder.mTvHeard.setText(this.context.getString(C0885R.string.x8_album_head_title, DataManager.obtain().getLocalVideoCount() + "", DataManager.obtain().getLocalPhotoCount() + ""));
    }

    private void doPanelTrans(final PanelRecycleViewHolder holder, final int position) {
        final MediaModel mediaModel = getModel(position);
        if (mediaModel != null) {
            holder.tvTitleDescription.setText(getModel(position).getFormatDate().split(" ")[0]);
            if (mediaModel.isSelect()) {
                holder.mBtnAllSelect.setImageResource(C0885R.C0888drawable.x8_ablum_select);
            } else {
                holder.mBtnAllSelect.setImageResource(C0885R.C0888drawable.x8_ablum_unselect);
                holder.mBtnAllSelect.setSelected(false);
            }
        }
        holder.mBtnAllSelect.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.ui.presenter.X8LocalFragmentPresenter.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                X8LocalFragmentPresenter.this.onItemCategoryClick(holder, position, mediaModel);
            }
        });
        if (this.isEnterSelectMode) {
            holder.mBtnAllSelect.setVisibility(0);
        } else {
            holder.mBtnAllSelect.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onItemCategoryClick(PanelRecycleViewHolder holder, int position, MediaModel mediaModel) {
        if (mediaModel != null) {
            String formatDate = mediaModel.getFormatDate().split(" ")[0];
            CopyOnWriteArrayList<MediaModel> internalList = this.stateHashMap.get(formatDate);
            Log.i("moweiru", "(mediaModel.isSelect():" + mediaModel.isSelect());
            if (mediaModel.isSelect()) {
                perfomSelectCategory(internalList, false);
            } else {
                perfomSelectCategory(internalList, true);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void perfomSelectCategory(CopyOnWriteArrayList<MediaModel> internalList, boolean isSelect) {
        Iterator<MediaModel> it = internalList.iterator();
        while (it.hasNext()) {
            MediaModel mMediaModel = it.next();
            if (isSelect) {
                if (!mMediaModel.isSelect()) {
                    mMediaModel.setSelect(true);
                    addSelectModel(mMediaModel);
                }
            } else if (mMediaModel.isSelect()) {
                mMediaModel.setSelect(false);
                removeSelectModel(mMediaModel);
            }
        }
        notifyAllVisible();
        callBackSelectSize(this.selectList.size());
        if (this.selectList.size() == (this.modelList.size() - this.stateHashMap.size()) - 1) {
            callAllSelectMode(true);
        } else {
            callAllSelectMode(false);
        }
    }

    private void doBodyTrans(final BodyRecycleViewHolder holder, final int position) {
        MediaModel mediaModel = getModel(position);
        if (mediaModel != null) {
            mediaModel.setItemPosition(position);
            String photoUrl = null;
            String currentFilePath = mediaModel.getFileLocalPath();
            if (!TextUtils.isEmpty(mediaModel.getThumLocalFilePath())) {
                File file = new File(mediaModel.getThumLocalFilePath());
                if (file.exists()) {
                    photoUrl = mediaModel.getThumLocalFilePath();
                }
            } else {
                photoUrl = currentFilePath;
            }
            if (!TextUtils.isEmpty(currentFilePath) && !TextUtils.isEmpty(photoUrl)) {
                if (mediaModel.isVideo()) {
                    holder.sdvImageView.setBackgroundResource(C0885R.C0888drawable.album_video_loading);
                } else {
                    holder.sdvImageView.setBackgroundResource(C0885R.C0888drawable.album_photo_loading);
                }
                if (mediaModel.getFileSize() > 0) {
                    holder.mFileSize.setText(ByteUtil.getNetFileSizeDescription(mediaModel.getFileSize()));
                } else {
                    holder.mFileSize.setVisibility(8);
                }
                if (!currentFilePath.equals(holder.sdvImageView.getTag()) && !mediaModel.isLoadThulm()) {
                    holder.sdvImageView.setTag(currentFilePath);
                    FrescoUtils.displayPhoto(holder.sdvImageView, this.perfix + photoUrl, this.defaultPhtotWidth, this.defaultPhtotHeight);
                    mediaModel.setLoadThulm(true);
                } else if (!currentFilePath.equals(holder.sdvImageView.getTag())) {
                    holder.sdvImageView.setTag(currentFilePath);
                    FrescoUtils.displayPhoto(holder.sdvImageView, this.perfix + photoUrl, this.defaultPhtotWidth, this.defaultPhtotHeight);
                }
                if (mediaModel.isVideo()) {
                    holder.mIvVideoFlag.setImageResource(C0885R.C0888drawable.x8_ablumn_normal_vedio_mark);
                    holder.tvDuringdate.setTag(currentFilePath);
                    if (!TextUtils.isEmpty(mediaModel.getVideoDuration())) {
                        holder.tvDuringdate.setVisibility(0);
                        holder.tvDuringdate.setText(mediaModel.getVideoDuration());
                    }
                } else {
                    holder.mIvVideoFlag.setImageResource(C0885R.C0888drawable.x8_ablumn_normal_photo_mark);
                    holder.tvDuringdate.setVisibility(4);
                }
                if (this.isEnterSelectMode) {
                    if (mediaModel.isSelect()) {
                        changeSelectViewState(mediaModel, holder, 0);
                    } else {
                        changeSelectViewState(mediaModel, holder, 8);
                    }
                } else if (mediaModel.isSelect()) {
                    changeSelectViewState(mediaModel, holder, 0);
                } else {
                    changeSelectViewState(mediaModel, holder, 8);
                }
                holder.sdvImageView.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.ui.presenter.X8LocalFragmentPresenter.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        X8LocalFragmentPresenter.this.onItemClick(holder, view, position);
                    }
                });
                holder.sdvImageView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.fimi.app.x8s.ui.presenter.X8LocalFragmentPresenter.5
                    @Override // android.view.View.OnLongClickListener
                    public boolean onLongClick(View view) {
                        X8LocalFragmentPresenter.this.onItemLongClick(holder, view, position);
                        return true;
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onItemLongClick(BodyRecycleViewHolder holder, View view, int position) {
        if (!this.isEnterSelectMode) {
            this.isEnterSelectMode = true;
            callBackEnterSelectMode();
        }
        preformMode(getModel(position), holder);
        callBackSelectSize(this.selectList.size());
    }

    public void onItemClick(BodyRecycleViewHolder holder, View view, int position) {
        T model = getModel(position);
        if (this.isEnterSelectMode) {
            preformMode(model, holder);
            callBackSelectSize(this.selectList.size());
            return;
        }
        goMediaDetailActivity(this.modelList.indexOf(model));
    }

    @Override // com.fimi.app.x8s.p011ui.album.x8s.X8BaseMediaFragmentPresenter
    public void showCategorySelectView(boolean state) {
        int firstVisibleItem = this.mGridLayoutManager.findFirstVisibleItemPosition();
        int lastVisibleItem = this.mGridLayoutManager.findLastVisibleItemPosition();
        if (firstVisibleItem != -1) {
            while (firstVisibleItem <= lastVisibleItem) {
                MediaModel mediaModel = getModel(firstVisibleItem);
                if (mediaModel != null && mediaModel.isCategory()) {
                    this.mPanelRecycleAdapter.notifyItemChanged(firstVisibleItem);
                }
                firstVisibleItem++;
            }
        }
    }

    @Override // com.fimi.app.x8s.p011ui.album.x8s.X8BaseMediaFragmentPresenter
    public void registerReciver() {
        this.mUpdateLocalItemReceiver = new UpdateLocalItemReceiver();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(UPDATELOCALITEMRECEIVER);
        LocalBroadcastManager.getInstance(this.context).registerReceiver(this.mUpdateLocalItemReceiver, intentFilter);
    }

    @Override // com.fimi.app.x8s.p011ui.album.x8s.X8BaseMediaFragmentPresenter
    public void registerDownloadListerner() {
    }

    @Override // com.fimi.app.x8s.p011ui.album.x8s.X8BaseMediaFragmentPresenter
    public void unRegisterReciver() {
        LocalBroadcastManager.getInstance(this.context).unregisterReceiver(this.mUpdateLocalItemReceiver);
    }

    /* renamed from: com.fimi.app.x8s.ui.presenter.X8LocalFragmentPresenter$UpdateLocalItemReceiver */
    /* loaded from: classes.dex */
    public class UpdateLocalItemReceiver extends BroadcastReceiver {
        public UpdateLocalItemReceiver() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MediaModel mediaModel;
            String action = intent.getAction();
            if (action.equals(X8LocalFragmentPresenter.UPDATELOCALITEMRECEIVER) && (mediaModel = (MediaModel) intent.getSerializableExtra(X8LocalFragmentPresenter.UPDATELOCALITEM)) != null) {
                X8LocalFragmentPresenter.this.mPanelRecycleAdapter.addNewItem(mediaModel);
            }
        }
    }
}
