package com.fimi.app.x8s.map.model;

import com.fimi.app.x8s.enums.NoFlyZoneEnum;
import com.google.android.gms.maps.model.LatLng;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class GoogleMapPoint {

    /* renamed from: A1 */
    LatLng f128A1;

    /* renamed from: A2 */
    LatLng f129A2;

    /* renamed from: B1 */
    LatLng f130B1;

    /* renamed from: B2 */
    LatLng f131B2;

    /* renamed from: C1 */
    LatLng f132C1;

    /* renamed from: C2 */
    LatLng f133C2;

    /* renamed from: D1 */
    LatLng f134D1;

    /* renamed from: D2 */
    LatLng f135D2;
    LatLng center;
    private boolean isNoFly;
    List<LatLng> latLngs = new ArrayList();
    private int limitHight;
    int nfzType;
    private MapPointLatLng[] points;
    private int radius;
    private NoFlyZoneEnum type;

    public boolean isNoFly() {
        return this.isNoFly;
    }

    public void setNoFly(boolean noFly) {
        this.isNoFly = noFly;
    }

    public int getNfzType() {
        return this.nfzType;
    }

    public void setNfzType(int nfzType) {
        this.nfzType = nfzType;
    }

    public NoFlyZoneEnum getType() {
        return this.type;
    }

    public void setType(NoFlyZoneEnum type) {
        this.type = type;
    }

    public int getLimitHight() {
        return this.limitHight;
    }

    public void setLimitHight(int limitHight) {
        this.limitHight = limitHight;
    }

    public int getRadius() {
        return this.radius;
    }

    public void setRadius(int radius) {
        this.radius = radius;
    }

    public MapPointLatLng[] getPoints() {
        return this.points;
    }

    public void setPoints(MapPointLatLng[] points) {
        this.points = points;
    }

    public LatLng getA1() {
        return this.f128A1;
    }

    public void setA1(LatLng a1) {
        this.f128A1 = a1;
    }

    public LatLng getA2() {
        return this.f129A2;
    }

    public void setA2(LatLng a2) {
        this.f129A2 = a2;
    }

    public LatLng getC1() {
        return this.f132C1;
    }

    public void setC1(LatLng c1) {
        this.f132C1 = c1;
    }

    public LatLng getC2() {
        return this.f133C2;
    }

    public void setC2(LatLng c2) {
        this.f133C2 = c2;
    }

    public LatLng getB1() {
        return this.f130B1;
    }

    public void setB1(LatLng b1) {
        this.f130B1 = b1;
    }

    public LatLng getB2() {
        return this.f131B2;
    }

    public void setB2(LatLng b2) {
        this.f131B2 = b2;
    }

    public LatLng getD1() {
        return this.f134D1;
    }

    public void setD1(LatLng d1) {
        this.f134D1 = d1;
    }

    public LatLng getD2() {
        return this.f135D2;
    }

    public void setD2(LatLng d2) {
        this.f135D2 = d2;
    }

    public LatLng getCenter() {
        return this.center;
    }

    public void setCenter(LatLng center) {
        this.center = center;
    }

    public List<LatLng> getLatLngs() {
        return this.latLngs;
    }

    public void setLatLngs(List<LatLng> latLngs) {
        this.latLngs = latLngs;
    }
}
