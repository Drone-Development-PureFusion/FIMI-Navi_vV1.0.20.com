package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.SerializedName;
/* loaded from: classes.dex */
public class MentionEntity extends C2139Entity {
    @SerializedName("id")

    /* renamed from: id */
    public final long f310id;
    @SerializedName("id_str")
    public final String idStr;
    @SerializedName("name")
    public final String name;
    @SerializedName("screen_name")
    public final String screenName;

    @Override // com.twitter.sdk.android.core.models.C2139Entity
    public /* bridge */ /* synthetic */ int getEnd() {
        return super.getEnd();
    }

    @Override // com.twitter.sdk.android.core.models.C2139Entity
    public /* bridge */ /* synthetic */ int getStart() {
        return super.getStart();
    }

    public MentionEntity(long id, String idStr, String name, String screenName, int start, int end) {
        super(start, end);
        this.f310id = id;
        this.idStr = idStr;
        this.name = name;
        this.screenName = screenName;
    }
}
