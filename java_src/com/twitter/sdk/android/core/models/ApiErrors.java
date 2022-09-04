package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.SerializedName;
import java.util.List;
/* loaded from: classes.dex */
public class ApiErrors {
    @SerializedName("errors")
    public final List<ApiError> errors;

    private ApiErrors() {
        this(null);
    }

    public ApiErrors(List<ApiError> errors) {
        this.errors = ModelUtils.getSafeList(errors);
    }
}
