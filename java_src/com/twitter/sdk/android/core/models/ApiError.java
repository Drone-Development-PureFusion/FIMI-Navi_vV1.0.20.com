package com.twitter.sdk.android.core.models;

import com.facebook.share.internal.ShareConstants;
import com.google.gson.annotations.SerializedName;
/* loaded from: classes.dex */
public class ApiError {
    @SerializedName("code")
    public final int code;
    @SerializedName(ShareConstants.WEB_DIALOG_PARAM_MESSAGE)
    public final String message;

    public ApiError(String message, int code) {
        this.message = message;
        this.code = code;
    }
}
