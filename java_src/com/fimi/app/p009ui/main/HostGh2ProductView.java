package com.fimi.app.p009ui.main;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import com.fimi.android.app.R;
/* renamed from: com.fimi.app.ui.main.HostGh2ProductView */
/* loaded from: classes.dex */
public class HostGh2ProductView extends FrameLayout {
    public HostGh2ProductView(@NonNull Context context) {
        super(context);
    }

    public HostGh2ProductView(@NonNull Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        LayoutInflater.from(context).inflate(R.layout.item_main_gh2_product, this);
    }
}
