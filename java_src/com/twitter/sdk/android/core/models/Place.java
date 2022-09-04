package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.SerializedName;
import com.umeng.commonsdk.proguard.C2354g;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class Place {
    @SerializedName("attributes")
    public final Map<String, String> attributes;
    @SerializedName("bounding_box")
    public final BoundingBox boundingBox;
    @SerializedName(C2354g.f976N)
    public final String country;
    @SerializedName("country_code")
    public final String countryCode;
    @SerializedName("full_name")
    public final String fullName;
    @SerializedName("id")

    /* renamed from: id */
    public final String f311id;
    @SerializedName("name")
    public final String name;
    @SerializedName("place_type")
    public final String placeType;
    @SerializedName("url")
    public final String url;

    public Place(Map<String, String> attributes, BoundingBox boundingBox, String country, String countryCode, String fullName, String id, String name, String placeType, String url) {
        this.attributes = ModelUtils.getSafeMap(attributes);
        this.boundingBox = boundingBox;
        this.country = country;
        this.countryCode = countryCode;
        this.fullName = fullName;
        this.f311id = id;
        this.name = name;
        this.placeType = placeType;
        this.url = url;
    }

    /* loaded from: classes.dex */
    public static class BoundingBox {
        @SerializedName("coordinates")
        public final List<List<List<Double>>> coordinates;
        @SerializedName("type")
        public final String type;

        private BoundingBox() {
            this(null, null);
        }

        public BoundingBox(List<List<List<Double>>> coordinates, String type) {
            this.coordinates = ModelUtils.getSafeList(coordinates);
            this.type = type;
        }
    }
}
