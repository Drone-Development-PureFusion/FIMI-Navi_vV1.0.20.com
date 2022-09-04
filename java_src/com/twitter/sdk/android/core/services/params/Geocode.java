package com.twitter.sdk.android.core.services.params;
/* loaded from: classes2.dex */
public class Geocode {
    public final Distance distance;
    public final double latitude;
    public final double longitude;
    public final int radius;

    /* loaded from: classes2.dex */
    public enum Distance {
        MILES("mi"),
        KILOMETERS("km");
        
        public final String identifier;

        Distance(String identifier) {
            this.identifier = identifier;
        }
    }

    public Geocode(double latitude, double longitude, int radius, Distance distance) {
        this.latitude = latitude;
        this.longitude = longitude;
        this.radius = radius;
        this.distance = distance;
    }

    public String toString() {
        return this.latitude + "," + this.longitude + "," + this.radius + this.distance.identifier;
    }
}
