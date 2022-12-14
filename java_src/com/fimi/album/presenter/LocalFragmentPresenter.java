package com.fimi.album.presenter;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.support.p004v7.widget.GridLayoutManager;
import android.support.p004v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.View;
import com.example.album.C0522R;
import com.fimi.album.adapter.BodyRecycleViewHolder;
import com.fimi.album.adapter.PanelRecycleAdapter;
import com.fimi.album.adapter.PanelRecycleViewHolder;
import com.fimi.album.entity.MediaModel;
import com.fimi.album.handler.HandlerManager;
import com.fimi.album.iview.IHandlerCallback;
import com.fimi.album.iview.ISelectData;
import com.fimi.kernel.utils.DateFormater;
import com.fimi.kernel.utils.FrescoUtils;
import com.fimi.kernel.utils.VideoDuration;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes.dex */
public class LocalFragmentPresenter<T extends MediaModel> extends BaseFragmentPresenter implements IHandlerCallback {
    private GridLayoutManager mGridLayoutManager;
    private int defaultBound = 50;
    private Handler durationHandler = HandlerManager.obtain().getHandlerInOtherThread(this);
    private Handler mainHandler = HandlerManager.obtain().getHandlerInMainThread(this);

    public LocalFragmentPresenter(RecyclerView mRecyclerView, PanelRecycleAdapter mPanelRecycleAdapter, ISelectData mISelectData, Context context) {
        super(mRecyclerView, mPanelRecycleAdapter, mISelectData, context);
        doTrans();
        RecyclerView.LayoutManager manager = mRecyclerView.getLayoutManager();
        if (manager instanceof GridLayoutManager) {
            this.mGridLayoutManager = (GridLayoutManager) manager;
        }
    }

    private void doTrans() {
        this.mRecyclerView.setRecyclerListener(new RecyclerView.RecyclerListener() { // from class: com.fimi.album.presenter.LocalFragmentPresenter.1
            @Override // android.support.p004v7.widget.RecyclerView.RecyclerListener
            public void onViewRecycled(RecyclerView.ViewHolder holder) {
                if (holder instanceof BodyRecycleViewHolder) {
                    BodyRecycleViewHolder mBodyRecycleViewHolder = (BodyRecycleViewHolder) holder;
                    mBodyRecycleViewHolder.tvDuringdate.setVisibility(8);
                    mBodyRecycleViewHolder.ivSelect.setVisibility(8);
                }
            }
        });
        this.mRecyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.fimi.album.presenter.LocalFragmentPresenter.2
            @Override // android.support.p004v7.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
                super.onScrollStateChanged(recyclerView, newState);
                BaseFragmentPresenter.isScrollRecycle = false;
                LocalFragmentPresenter.this.durationHandler.sendEmptyMessage(1);
            }

            @Override // android.support.p004v7.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
                super.onScrolled(recyclerView, dx, dy);
                if (Math.abs(dy) <= LocalFragmentPresenter.this.defaultBound) {
                    BaseFragmentPresenter.isScrollRecycle = false;
                    LocalFragmentPresenter.this.durationHandler.sendEmptyMessage(1);
                    return;
                }
                BaseFragmentPresenter.isScrollRecycle = true;
            }
        });
    }

    @Override // com.fimi.album.iview.IHandlerCallback, android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 1) {
            int firstVisibleItem = this.mGridLayoutManager.findFirstVisibleItemPosition();
            int lastVisibleItem = this.mGridLayoutManager.findLastVisibleItemPosition();
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
                    if (isScrollRecycle) {
                        this.durationHandler.removeMessages(1);
                        break;
                    }
                } else {
                    break;
                }
            }
        } else if (message.what == 2) {
            int currentPsition = message.arg1;
            this.mPanelRecycleAdapter.notifyItemChanged(currentPsition);
        }
        return true;
    }

    @Override // com.fimi.album.iview.IRecycleAdapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int position) {
        if (holder instanceof BodyRecycleViewHolder) {
            doBodyTrans((BodyRecycleViewHolder) holder, position);
        } else {
            doPanelTrans((PanelRecycleViewHolder) holder, position);
        }
    }

    private void doPanelTrans(final PanelRecycleViewHolder holder, final int position) {
        final MediaModel mediaModel = getModel(position);
        if (mediaModel != null) {
            holder.tvTitleDescription.setText(getModel(position).getFormatDate());
            if (mediaModel.isSelect()) {
                holder.ivIconSelect.setImageResource(C0522R.C0525drawable.album_btn_category_select_press);
                holder.tvAllSelect.setText(C0522R.string.media_select_all_no);
            } else {
                holder.ivIconSelect.setImageResource(C0522R.C0525drawable.album_btn_category_select_normal);
                holder.tvAllSelect.setText(C0522R.string.media_select_all);
            }
        }
        holder.rlRightSelect.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.album.presenter.LocalFragmentPresenter.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LocalFragmentPresenter.this.onItemCategoryClick(holder, position, mediaModel);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onItemCategoryClick(PanelRecycleViewHolder holder, int position, MediaModel mediaModel) {
        if (mediaModel != null) {
            String formatDate = mediaModel.getFormatDate();
            CopyOnWriteArrayList<MediaModel> internalList = this.stateHashMap.get(formatDate);
            if (this.context.getString(C0522R.string.media_select_all).equals(holder.tvAllSelect.getText())) {
                perfomSelectCategory(internalList, true);
            } else {
                perfomSelectCategory(internalList, false);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void perfomSelectCategory(CopyOnWriteArrayList<MediaModel> internalList, boolean isSelect) {
        Iterator<MediaModel> it = internalList.iterator();
        while (it.hasNext()) {
            MediaModel mMediaModel = it.next();
            if (isSelect) {
                mMediaModel.setSelect(true);
                addSelectModel(mMediaModel);
            } else {
                mMediaModel.setSelect(false);
                removeSelectModel(mMediaModel);
            }
        }
        int firstVisibleItem = this.mGridLayoutManager.findFirstVisibleItemPosition();
        int lastVisibleItem = this.mGridLayoutManager.findLastVisibleItemPosition();
        this.mPanelRecycleAdapter.notifyItemRangeChanged(firstVisibleItem, lastVisibleItem);
    }

    private void doBodyTrans(final BodyRecycleViewHolder holder, final int position) {
        MediaModel mediaModel = getModel(position);
        mediaModel.setItemPosition(position);
        if (mediaModel != null) {
            String currentFilePath = mediaModel.getFileLocalPath();
            if (!TextUtils.isEmpty(currentFilePath)) {
                if (!currentFilePath.equals(holder.sdvImageView.getTag()) && !mediaModel.isLoadThulm()) {
                    holder.sdvImageView.setTag(currentFilePath);
                    FrescoUtils.displayPhoto(holder.sdvImageView, this.perfix + currentFilePath, this.defaultPhtotWidth, this.defaultPhtotHeight);
                    mediaModel.setLoadThulm(true);
                } else if (!currentFilePath.equals(holder.sdvImageView.getTag())) {
                    FrescoUtils.displayPhoto(holder.sdvImageView, this.perfix + currentFilePath, this.defaultPhtotWidth, this.defaultPhtotHeight);
                }
                if (mediaModel.isVideo()) {
                    holder.tvDuringdate.setTag(currentFilePath);
                    if (!TextUtils.isEmpty(mediaModel.getVideoDuration())) {
                        holder.tvDuringdate.setVisibility(0);
                        holder.tvDuringdate.setText(mediaModel.getVideoDuration());
                    }
                } else {
                    holder.tvDuringdate.setVisibility(8);
                }
                if (this.isEnterSelectMode) {
                    if (mediaModel.isSelect()) {
                        changeViewState(holder.ivSelect, 0, C0522R.C0525drawable.album_icon_share_media_active);
                    } else {
                        changeViewState(holder.ivSelect, 0, C0522R.C0525drawable.album_icon_share_media_nomal);
                    }
                } else if (mediaModel.isSelect()) {
                    changeViewState(holder.ivSelect, 0, C0522R.C0525drawable.album_icon_share_media_active);
                } else {
                    changeViewState(holder.ivSelect, 8, C0522R.C0525drawable.album_icon_share_media_nomal);
                }
                holder.sdvImageView.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.album.presenter.LocalFragmentPresenter.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        LocalFragmentPresenter.this.onItemClick(holder, view, position);
                    }
                });
                holder.sdvImageView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.fimi.album.presenter.LocalFragmentPresenter.5
                    @Override // android.view.View.OnLongClickListener
                    public boolean onLongClick(View view) {
                        LocalFragmentPresenter.this.onItemLongClick(holder, view, position);
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
        preformMode(getModel(position), holder.ivSelect, 0, C0522R.C0525drawable.album_icon_share_media_active, C0522R.C0525drawable.album_icon_share_media_nomal);
        callBackSelectSize(this.selectList.size());
    }

    public void onItemClick(BodyRecycleViewHolder holder, View view, int position) {
        T model = getModel(position);
        if (this.isEnterSelectMode) {
            preformMode(model, holder.ivSelect, 0, C0522R.C0525drawable.album_icon_share_media_active, C0522R.C0525drawable.album_icon_share_media_nomal);
            callBackSelectSize(this.selectList.size());
            return;
        }
        goMediaDetailActivity(this.modelList.indexOf(model));
    }
}
