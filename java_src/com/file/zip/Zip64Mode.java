package com.file.zip;
/* loaded from: classes.dex */
public enum Zip64Mode {
    Always,
    Never,
    AsNeeded;

    /* renamed from: values  reason: to resolve conflict with enum method */
    public static Zip64Mode[] valuesCustom() {
        Zip64Mode[] valuesCustom = values();
        int length = valuesCustom.length;
        Zip64Mode[] zip64ModeArr = new Zip64Mode[length];
        System.arraycopy(valuesCustom, 0, zip64ModeArr, 0, length);
        return zip64ModeArr;
    }
}
