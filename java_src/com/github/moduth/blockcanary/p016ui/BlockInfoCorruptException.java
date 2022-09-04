package com.github.moduth.blockcanary.p016ui;

import java.util.Locale;
/* renamed from: com.github.moduth.blockcanary.ui.BlockInfoCorruptException */
/* loaded from: classes2.dex */
public class BlockInfoCorruptException extends Exception {
    public BlockInfoCorruptException(BlockInfoEx blockInfo) {
        this(String.format(Locale.US, "BlockInfo (%s) is corrupt.", blockInfo.logFile.getName()));
    }

    public BlockInfoCorruptException(String detailMessage) {
        super(detailMessage);
    }
}
