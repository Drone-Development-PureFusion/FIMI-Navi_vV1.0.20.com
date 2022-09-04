package com.github.moduth.blockcanary.p016ui;

import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.github.moduth.blockcanary.C1917R;
import com.github.moduth.blockcanary.internal.BlockInfo;
import com.github.moduth.blockcanary.p016ui.DisplayConnectorView;
import java.util.Arrays;
import java.util.Iterator;
/* renamed from: com.github.moduth.blockcanary.ui.DetailAdapter */
/* loaded from: classes2.dex */
final class DetailAdapter extends BaseAdapter {
    private static final int NORMAL_ROW = 1;
    private static final int POSITION_BASIC = 1;
    private static final int POSITION_CPU = 3;
    private static final int POSITION_THREAD_STACK = 4;
    private static final int POSITION_TIME = 2;
    private static final int TOP_ROW = 0;
    private BlockInfo mBlockInfo;
    private boolean[] mFoldings = new boolean[0];

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        boolean isThreadStackEntry = false;
        Context context = parent.getContext();
        if (getItemViewType(position) == 0) {
            if (convertView == null) {
                convertView = LayoutInflater.from(context).inflate(C1917R.layout.block_canary_ref_top_row, parent, false);
            }
            TextView textView = (TextView) findById(convertView, C1917R.C1919id.__leak_canary_row_text);
            textView.setText(context.getPackageName());
        } else {
            if (convertView == null) {
                convertView = LayoutInflater.from(context).inflate(C1917R.layout.block_canary_ref_row, parent, false);
            }
            TextView textView2 = (TextView) findById(convertView, C1917R.C1919id.__leak_canary_row_text);
            if (position == 5) {
                isThreadStackEntry = true;
            }
            String element = getItem(position);
            String htmlString = elementToHtmlString(element, position, this.mFoldings[position]);
            if (isThreadStackEntry && !this.mFoldings[position]) {
                htmlString = htmlString + " <font color='#919191'>blocked</font>";
            }
            textView2.setText(Html.fromHtml(htmlString));
            DisplayConnectorView connectorView = (DisplayConnectorView) findById(convertView, C1917R.C1919id.__leak_canary_row_connector);
            connectorView.setType(connectorViewType(position));
            MoreDetailsView moreDetailsView = (MoreDetailsView) findById(convertView, C1917R.C1919id.__leak_canary_row_more);
            moreDetailsView.setFolding(this.mFoldings[position]);
        }
        return convertView;
    }

    private DisplayConnectorView.Type connectorViewType(int position) {
        return position == 1 ? DisplayConnectorView.Type.START : position == getCount() + (-1) ? DisplayConnectorView.Type.END : DisplayConnectorView.Type.NODE;
    }

    private String elementToHtmlString(String element, int position, boolean folding) {
        String htmlString = element.replaceAll("\r\n", "<br>");
        switch (position) {
            case 1:
                if (folding) {
                    htmlString = htmlString.substring(htmlString.indexOf(BlockInfo.KEY_CPU_CORE));
                }
                return String.format("<font color='#c48a47'>%s</font> ", htmlString);
            case 2:
                if (folding) {
                    htmlString = htmlString.substring(0, htmlString.indexOf(BlockInfo.KEY_TIME_COST_START));
                }
                return String.format("<font color='#f3cf83'>%s</font> ", htmlString);
            case 3:
                String htmlString2 = element;
                if (folding) {
                    htmlString2 = htmlString2.substring(0, htmlString2.indexOf(BlockInfo.KEY_CPU_RATE));
                }
                return String.format("<font color='#998bb5'>%s</font> ", htmlString2.replace("cpurate = ", "<br>cpurate<br/>")).replaceAll("]", "]<br>");
            default:
                if (folding) {
                    Iterator<String> it = BlockCanaryUtils.getConcernPackages().iterator();
                    while (true) {
                        if (it.hasNext()) {
                            String concernPackage = it.next();
                            int index = htmlString.indexOf(concernPackage);
                            if (index > 0) {
                                htmlString = htmlString.substring(index);
                            }
                        }
                    }
                }
                return String.format("<font color='#ffffff'>%s</font> ", htmlString);
        }
    }

    public void update(BlockInfo blockInfo) {
        if (this.mBlockInfo == null || !blockInfo.timeStart.equals(this.mBlockInfo.timeStart)) {
            this.mBlockInfo = blockInfo;
            this.mFoldings = new boolean[this.mBlockInfo.threadStackEntries.size() + 4];
            Arrays.fill(this.mFoldings, true);
            notifyDataSetChanged();
        }
    }

    public void toggleRow(int position) {
        this.mFoldings[position] = !this.mFoldings[position];
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.mBlockInfo == null) {
            return 0;
        }
        return this.mBlockInfo.threadStackEntries.size() + 4;
    }

    @Override // android.widget.Adapter
    public String getItem(int position) {
        if (getItemViewType(position) == 0) {
            return null;
        }
        switch (position) {
            case 1:
                return this.mBlockInfo.getBasicString();
            case 2:
                return this.mBlockInfo.getTimeString();
            case 3:
                return this.mBlockInfo.getCpuString();
            default:
                return this.mBlockInfo.threadStackEntries.get(position - 4);
        }
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 2;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int position) {
        return position == 0 ? 0 : 1;
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    private static <T extends View> T findById(View view, int id) {
        return (T) view.findViewById(id);
    }
}
