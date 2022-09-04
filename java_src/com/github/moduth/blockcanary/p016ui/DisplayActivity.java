package com.github.moduth.blockcanary.p016ui;

import android.app.ActionBar;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.github.moduth.blockcanary.BlockCanaryContext;
import com.github.moduth.blockcanary.BlockCanaryInternals;
import com.github.moduth.blockcanary.C1917R;
import com.github.moduth.blockcanary.LogWriter;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import org.apache.mina.proxy.handlers.http.ntlm.NTLMConstants;
/* renamed from: com.github.moduth.blockcanary.ui.DisplayActivity */
/* loaded from: classes2.dex */
public class DisplayActivity extends Activity {
    private static final String SHOW_BLOCK_EXTRA = "show_latest";
    public static final String SHOW_BLOCK_EXTRA_KEY = "BlockStartTime";
    private static final String TAG = "DisplayActivity";
    private Button mActionButton;
    private List<BlockInfoEx> mBlockInfoEntries = new ArrayList();
    private String mBlockStartTime;
    private TextView mFailureView;
    private ListView mListView;
    private int mMaxStoredBlockCount;

    public static PendingIntent createPendingIntent(Context context, String blockStartTime) {
        Intent intent = new Intent(context, DisplayActivity.class);
        intent.putExtra(SHOW_BLOCK_EXTRA, blockStartTime);
        intent.setFlags(335544320);
        return PendingIntent.getActivity(context, 1, intent, NTLMConstants.FLAG_UNIDENTIFIED_10);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (savedInstanceState != null) {
            this.mBlockStartTime = savedInstanceState.getString(SHOW_BLOCK_EXTRA_KEY);
        } else {
            Intent intent = getIntent();
            if (intent.hasExtra(SHOW_BLOCK_EXTRA)) {
                this.mBlockStartTime = intent.getStringExtra(SHOW_BLOCK_EXTRA);
            }
        }
        setContentView(C1917R.layout.block_canary_display_leak);
        this.mListView = (ListView) findViewById(C1917R.C1919id.__leak_canary_display_leak_list);
        this.mFailureView = (TextView) findViewById(C1917R.C1919id.__leak_canary_display_leak_failure);
        this.mActionButton = (Button) findViewById(C1917R.C1919id.__leak_canary_action);
        this.mMaxStoredBlockCount = getResources().getInteger(C1917R.integer.block_canary_max_stored_count);
        updateUi();
    }

    @Override // android.app.Activity
    public Object onRetainNonConfigurationInstance() {
        return this.mBlockInfoEntries;
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        outState.putString(SHOW_BLOCK_EXTRA_KEY, this.mBlockStartTime);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        LoadBlocks.load(this);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int resid) {
        if (resid == C1917R.style.block_canary_BlockCanary_Base) {
            super.setTheme(resid);
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        LoadBlocks.forgetActivity();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        final BlockInfoEx blockInfo = getBlock(this.mBlockStartTime);
        if (blockInfo != null) {
            menu.add(C1917R.string.block_canary_share_leak).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.github.moduth.blockcanary.ui.DisplayActivity.1
                @Override // android.view.MenuItem.OnMenuItemClickListener
                public boolean onMenuItemClick(MenuItem item) {
                    DisplayActivity.this.shareBlock(blockInfo);
                    return true;
                }
            });
            menu.add(C1917R.string.block_canary_share_stack_dump).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.github.moduth.blockcanary.ui.DisplayActivity.2
                @Override // android.view.MenuItem.OnMenuItemClickListener
                public boolean onMenuItemClick(MenuItem item) {
                    DisplayActivity.this.shareHeapDump(blockInfo);
                    return true;
                }
            });
            return true;
        }
        return false;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == 16908332) {
            this.mBlockStartTime = null;
            updateUi();
            return true;
        }
        return true;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.mBlockStartTime != null) {
            this.mBlockStartTime = null;
            updateUi();
            return;
        }
        super.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void shareBlock(BlockInfoEx blockInfo) {
        String leakInfo = blockInfo.toString();
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.TEXT", leakInfo);
        startActivity(Intent.createChooser(intent, getString(C1917R.string.block_canary_share_with)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void shareHeapDump(BlockInfoEx blockInfo) {
        File heapDumpFile = blockInfo.logFile;
        if (Build.VERSION.SDK_INT >= 9) {
            heapDumpFile.setReadable(true, false);
        }
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("application/octet-stream");
        intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(heapDumpFile));
        startActivity(Intent.createChooser(intent, getString(C1917R.string.block_canary_share_with)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateUi() {
        BlockInfoEx blockInfo = getBlock(this.mBlockStartTime);
        if (blockInfo == null) {
            this.mBlockStartTime = null;
        }
        this.mListView.setVisibility(0);
        this.mFailureView.setVisibility(8);
        if (blockInfo != null) {
            renderBlockDetail(blockInfo);
        } else {
            renderBlockList();
        }
    }

    private void renderBlockList() {
        int i = 0;
        ListAdapter listAdapter = this.mListView.getAdapter();
        if (listAdapter instanceof BlockListAdapter) {
            ((BlockListAdapter) listAdapter).notifyDataSetChanged();
        } else {
            BlockListAdapter adapter = new BlockListAdapter();
            this.mListView.setAdapter((ListAdapter) adapter);
            this.mListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.github.moduth.blockcanary.ui.DisplayActivity.3
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                    DisplayActivity.this.mBlockStartTime = ((BlockInfoEx) DisplayActivity.this.mBlockInfoEntries.get(position)).timeStart;
                    DisplayActivity.this.updateUi();
                }
            });
            if (Build.VERSION.SDK_INT >= 11) {
                invalidateOptionsMenu();
                ActionBar actionBar = getActionBar();
                if (actionBar != null) {
                    actionBar.setDisplayHomeAsUpEnabled(false);
                }
            }
            setTitle(getString(C1917R.string.block_canary_block_list_title, new Object[]{getPackageName()}));
            this.mActionButton.setText(C1917R.string.block_canary_delete_all);
            this.mActionButton.setOnClickListener(new View.OnClickListener() { // from class: com.github.moduth.blockcanary.ui.DisplayActivity.4
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    DialogInterface.OnClickListener okListener = new DialogInterface.OnClickListener() { // from class: com.github.moduth.blockcanary.ui.DisplayActivity.4.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i2) {
                            LogWriter.deleteAll();
                            DisplayActivity.this.mBlockInfoEntries = Collections.emptyList();
                            DisplayActivity.this.updateUi();
                        }
                    };
                    new AlertDialog.Builder(DisplayActivity.this).setTitle(DisplayActivity.this.getString(C1917R.string.block_canary_delete)).setMessage(DisplayActivity.this.getString(C1917R.string.block_canary_delete_all_dialog_content)).setPositiveButton(DisplayActivity.this.getString(C1917R.string.block_canary_yes), okListener).setNegativeButton(DisplayActivity.this.getString(C1917R.string.block_canary_no), (DialogInterface.OnClickListener) null).show();
                }
            });
        }
        Button button = this.mActionButton;
        if (this.mBlockInfoEntries.isEmpty()) {
            i = 8;
        }
        button.setVisibility(i);
    }

    private void renderBlockDetail(final BlockInfoEx blockInfo) {
        final DetailAdapter adapter;
        ListAdapter listAdapter = this.mListView.getAdapter();
        if (listAdapter instanceof DetailAdapter) {
            adapter = (DetailAdapter) listAdapter;
        } else {
            adapter = new DetailAdapter();
            this.mListView.setAdapter((ListAdapter) adapter);
            this.mListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.github.moduth.blockcanary.ui.DisplayActivity.5
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                    adapter.toggleRow(position);
                }
            });
            if (Build.VERSION.SDK_INT >= 11) {
                invalidateOptionsMenu();
                ActionBar actionBar = getActionBar();
                if (actionBar != null) {
                    actionBar.setDisplayHomeAsUpEnabled(true);
                }
            }
            this.mActionButton.setVisibility(0);
            this.mActionButton.setText(C1917R.string.block_canary_delete);
        }
        this.mActionButton.setOnClickListener(new View.OnClickListener() { // from class: com.github.moduth.blockcanary.ui.DisplayActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (blockInfo != null) {
                    blockInfo.logFile.delete();
                    DisplayActivity.this.mBlockStartTime = null;
                    DisplayActivity.this.mBlockInfoEntries.remove(blockInfo);
                    DisplayActivity.this.updateUi();
                }
            }
        });
        adapter.update(blockInfo);
        setTitle(getString(C1917R.string.block_canary_class_has_blocked, new Object[]{Long.valueOf(blockInfo.timeCost)}));
    }

    private BlockInfoEx getBlock(String startTime) {
        if (this.mBlockInfoEntries == null || TextUtils.isEmpty(startTime)) {
            return null;
        }
        for (BlockInfoEx blockInfo : this.mBlockInfoEntries) {
            if (blockInfo.timeStart != null && startTime.equals(blockInfo.timeStart)) {
                return blockInfo;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.github.moduth.blockcanary.ui.DisplayActivity$BlockListAdapter */
    /* loaded from: classes2.dex */
    public class BlockListAdapter extends BaseAdapter {
        BlockListAdapter() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return DisplayActivity.this.mBlockInfoEntries.size();
        }

        @Override // android.widget.Adapter
        /* renamed from: getItem */
        public BlockInfoEx mo1801getItem(int position) {
            return (BlockInfoEx) DisplayActivity.this.mBlockInfoEntries.get(position);
        }

        @Override // android.widget.Adapter
        public long getItemId(int position) {
            return position;
        }

        @Override // android.widget.Adapter
        public View getView(int position, View convertView, ViewGroup parent) {
            String index;
            if (convertView == null) {
                convertView = LayoutInflater.from(DisplayActivity.this).inflate(C1917R.layout.block_canary_block_row, parent, false);
            }
            TextView titleView = (TextView) convertView.findViewById(C1917R.C1919id.__leak_canary_row_text);
            TextView timeView = (TextView) convertView.findViewById(C1917R.C1919id.__leak_canary_row_time);
            BlockInfoEx blockInfo = mo1801getItem(position);
            if (position != 0 || DisplayActivity.this.mBlockInfoEntries.size() != DisplayActivity.this.mMaxStoredBlockCount) {
                index = (DisplayActivity.this.mBlockInfoEntries.size() - position) + ". ";
            } else {
                index = "MAX. ";
            }
            String keyStackString = BlockCanaryUtils.concernStackString(blockInfo);
            String title = index + keyStackString + " " + DisplayActivity.this.getString(C1917R.string.block_canary_class_has_blocked, new Object[]{Long.valueOf(blockInfo.timeCost)});
            titleView.setText(title);
            String time = DateUtils.formatDateTime(DisplayActivity.this, blockInfo.logFile.lastModified(), 17);
            timeView.setText(time);
            return convertView;
        }
    }

    /* renamed from: com.github.moduth.blockcanary.ui.DisplayActivity$LoadBlocks */
    /* loaded from: classes2.dex */
    static class LoadBlocks implements Runnable {
        private DisplayActivity activityOrNull;
        private final Handler mainHandler = new Handler(Looper.getMainLooper());
        static final List<LoadBlocks> inFlight = new ArrayList();
        static final Executor backgroundExecutor = Executors.newSingleThreadExecutor();

        LoadBlocks(DisplayActivity activity) {
            this.activityOrNull = activity;
        }

        static void load(DisplayActivity activity) {
            LoadBlocks loadBlocks = new LoadBlocks(activity);
            inFlight.add(loadBlocks);
            backgroundExecutor.execute(loadBlocks);
        }

        static void forgetActivity() {
            for (LoadBlocks loadBlocks : inFlight) {
                loadBlocks.activityOrNull = null;
            }
            inFlight.clear();
        }

        @Override // java.lang.Runnable
        public void run() {
            BlockInfoEx blockInfo;
            final List<BlockInfoEx> blockInfoList = new ArrayList<>();
            File[] files = BlockCanaryInternals.getLogFiles();
            if (files != null) {
                for (File blockFile : files) {
                    try {
                        blockInfo = BlockInfoEx.newInstance(blockFile);
                    } catch (Exception e) {
                        blockFile.delete();
                        Log.e(DisplayActivity.TAG, "Could not read block log file, deleted :" + blockFile, e);
                    }
                    if (!BlockCanaryUtils.isBlockInfoValid(blockInfo)) {
                        throw new BlockInfoCorruptException(blockInfo);
                        break;
                    }
                    boolean needAddToList = true;
                    if (BlockCanaryUtils.isInWhiteList(blockInfo)) {
                        if (BlockCanaryContext.get().deleteFilesInWhiteList()) {
                            blockFile.delete();
                            blockFile = null;
                        }
                        needAddToList = false;
                    }
                    blockInfo.concernStackString = BlockCanaryUtils.concernStackString(blockInfo);
                    if (BlockCanaryContext.get().filterNonConcernStack() && TextUtils.isEmpty(blockInfo.concernStackString)) {
                        needAddToList = false;
                    }
                    if (needAddToList && blockFile != null) {
                        blockInfoList.add(blockInfo);
                    }
                }
                Collections.sort(blockInfoList, new Comparator<BlockInfoEx>() { // from class: com.github.moduth.blockcanary.ui.DisplayActivity.LoadBlocks.1
                    @Override // java.util.Comparator
                    public int compare(BlockInfoEx lhs, BlockInfoEx rhs) {
                        return Long.valueOf(rhs.logFile.lastModified()).compareTo(Long.valueOf(lhs.logFile.lastModified()));
                    }
                });
            }
            this.mainHandler.post(new Runnable() { // from class: com.github.moduth.blockcanary.ui.DisplayActivity.LoadBlocks.2
                @Override // java.lang.Runnable
                public void run() {
                    LoadBlocks.inFlight.remove(LoadBlocks.this);
                    if (LoadBlocks.this.activityOrNull != null) {
                        LoadBlocks.this.activityOrNull.mBlockInfoEntries = blockInfoList;
                        Log.d(DisplayActivity.TAG, "load block entries: " + blockInfoList.size());
                        LoadBlocks.this.activityOrNull.updateUi();
                    }
                }
            });
        }
    }
}
