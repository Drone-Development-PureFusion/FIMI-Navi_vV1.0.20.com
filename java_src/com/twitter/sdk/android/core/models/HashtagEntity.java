package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.SerializedName;
/* loaded from: classes.dex */
public class HashtagEntity extends C2139Entity {
    @SerializedName("text")
    public final String text;

    @Override // com.twitter.sdk.android.core.models.C2139Entity
    public /* bridge */ /* synthetic */ int getEnd() {
        return super.getEnd();
    }

    @Override // com.twitter.sdk.android.core.models.C2139Entity
    public /* bridge */ /* synthetic */ int getStart() {
        return super.getStart();
    }

    public HashtagEntity(String text, int start, int end) {
        super(start, end);
        this.text = text;
    }
}
