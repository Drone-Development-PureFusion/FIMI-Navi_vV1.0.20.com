package com.github.moduth.blockcanary;

import android.content.Context;
import com.github.moduth.blockcanary.internal.BlockInfo;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public interface BlockInterceptor {
    void onBlock(Context context, BlockInfo blockInfo);
}
