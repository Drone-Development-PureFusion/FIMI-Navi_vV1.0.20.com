package com.fimi.app.x8s.map.model;

import com.fimi.app.x8s.map.interfaces.AbsMapNoFlyZone;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.model.Circle;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.Polygon;
import com.google.android.gms.maps.model.PolygonOptions;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class GglMapNoFlyZone extends AbsMapNoFlyZone {

    /* renamed from: A3 */
    private LatLng f120A3;

    /* renamed from: A4 */
    private LatLng f121A4;

    /* renamed from: B3 */
    private LatLng f122B3;

    /* renamed from: B4 */
    private LatLng f123B4;

    /* renamed from: C3 */
    private LatLng f124C3;

    /* renamed from: C4 */
    private LatLng f125C4;

    /* renamed from: D3 */
    private LatLng f126D3;

    /* renamed from: D4 */
    private LatLng f127D4;
    private PolygonOptions candyPolygonOptions;
    private CircleOptions circleOptions;
    private GoogleMap googleMap;
    private PolygonOptions options;
    private double[][] pointArcs1;
    private double[][] pointArcs2;
    private double[][] pointArcs3;
    private double[][] pointArcs4;
    private PolygonOptions polygonOptions;
    private List<Polygon> polygonList = new ArrayList();
    private List<Circle> circleList = new ArrayList();
    private List<LatLng> latLngsNofly = new ArrayList();
    private List<LatLng> latLngs = new ArrayList();

    public GglMapNoFlyZone(GoogleMap map) {
        this.googleMap = map;
    }

    public void drawCandyNoFlyZone(LatLng[] lats) {
        this.latLngsNofly.clear();
        this.latLngs.clear();
        LatLng center = lats[0];
        LatLng D1 = lats[1];
        LatLng B1 = lats[2];
        LatLng C1 = lats[3];
        LatLng A1 = lats[4];
        LatLng A2 = lats[5];
        LatLng C2 = lats[6];
        LatLng B2 = lats[7];
        LatLng D2 = lats[8];
        if (this.f120A3 == null) {
            double[] sysPoint = this.mGpsPointTools.getSymmetryPoint(A1.latitude, A1.longitude, center.latitude, center.longitude);
            this.f120A3 = new LatLng(sysPoint[0], sysPoint[1]);
        }
        if (this.f124C3 == null) {
            double[] sysPoint2 = this.mGpsPointTools.getSymmetryPoint(C1.latitude, C1.longitude, center.latitude, center.longitude);
            this.f124C3 = new LatLng(sysPoint2[0], sysPoint2[1]);
        }
        if (this.f122B3 == null) {
            double[] sysPoint3 = this.mGpsPointTools.getSymmetryPoint(B1.latitude, B1.longitude, center.latitude, center.longitude);
            this.f122B3 = new LatLng(sysPoint3[0], sysPoint3[1]);
        }
        if (this.f123B4 == null) {
            double[] sysPoint4 = this.mGpsPointTools.getSymmetryPoint(B2.latitude, B2.longitude, center.latitude, center.longitude);
            this.f123B4 = new LatLng(sysPoint4[0], sysPoint4[1]);
        }
        if (this.f125C4 == null) {
            double[] sysPoint5 = this.mGpsPointTools.getSymmetryPoint(C2.latitude, C2.longitude, center.latitude, center.longitude);
            this.f125C4 = new LatLng(sysPoint5[0], sysPoint5[1]);
        }
        if (this.f121A4 == null) {
            double[] sysPoint6 = this.mGpsPointTools.getSymmetryPoint(A2.latitude, A2.longitude, center.latitude, center.longitude);
            this.f121A4 = new LatLng(sysPoint6[0], sysPoint6[1]);
        }
        if (this.f126D3 == null) {
            double[] sysPoint7 = this.mGpsPointTools.getSymmetryPoint(D1.latitude, D1.longitude, center.latitude, center.longitude);
            this.f126D3 = new LatLng(sysPoint7[0], sysPoint7[1]);
        }
        if (this.f127D4 == null) {
            double[] sysPoint8 = this.mGpsPointTools.getSymmetryPoint(D2.latitude, D2.longitude, center.latitude, center.longitude);
            this.f127D4 = new LatLng(sysPoint8[0], sysPoint8[1]);
        }
        this.latLngsNofly.add(A1);
        this.latLngsNofly.add(A2);
        this.latLngsNofly.add(C2);
        if (this.pointArcs1 == null) {
            this.pointArcs1 = this.mGpsPointTools.gpsPointDrawArc(C2.latitude, C2.longitude, B2.latitude, B2.longitude, center.latitude, center.longitude);
        }
        for (int i = 0; i < this.pointArcs1.length; i++) {
            this.latLngsNofly.add(new LatLng(this.pointArcs1[i][0], this.pointArcs1[i][1]));
        }
        this.latLngsNofly.add(B2);
        this.latLngsNofly.add(this.f122B3);
        if (this.pointArcs2 == null) {
            this.pointArcs2 = this.mGpsPointTools.gpsPointDrawArc(this.f122B3.latitude, this.f122B3.longitude, this.f124C3.latitude, this.f124C3.longitude, center.latitude, center.longitude);
        }
        for (int i2 = 0; i2 < this.pointArcs2.length; i2++) {
            this.latLngsNofly.add(new LatLng(this.pointArcs2[i2][0], this.pointArcs2[i2][1]));
        }
        this.latLngsNofly.add(this.f124C3);
        this.latLngsNofly.add(this.f120A3);
        this.latLngsNofly.add(this.f121A4);
        this.latLngsNofly.add(this.f125C4);
        if (this.pointArcs3 == null) {
            this.pointArcs3 = this.mGpsPointTools.gpsPointDrawArc(this.f125C4.latitude, this.f125C4.longitude, this.f123B4.latitude, this.f123B4.longitude, center.latitude, center.longitude);
        }
        for (int i3 = 0; i3 < this.pointArcs3.length; i3++) {
            this.latLngsNofly.add(new LatLng(this.pointArcs3[i3][0], this.pointArcs3[i3][1]));
        }
        this.latLngsNofly.add(this.f123B4);
        this.latLngsNofly.add(B1);
        if (this.pointArcs4 == null) {
            this.pointArcs4 = this.mGpsPointTools.gpsPointDrawArc(B1.latitude, B1.longitude, C1.latitude, C1.longitude, center.latitude, center.longitude);
        }
        for (int i4 = 0; i4 < this.pointArcs4.length; i4++) {
            this.latLngsNofly.add(new LatLng(this.pointArcs4[i4][0], this.pointArcs4[i4][1]));
        }
        if (this.candyPolygonOptions == null) {
            this.candyPolygonOptions = new PolygonOptions().addAll(this.latLngsNofly).fillColor(this.fillColor).strokeWidth(0.0f);
        }
        this.googleMap.addPolygon(this.candyPolygonOptions);
        this.latLngs.add(D1);
        this.latLngs.add(this.f127D4);
        this.latLngs.add(this.f126D3);
        this.latLngs.add(D2);
        if (this.polygonOptions == null) {
            this.polygonOptions = new PolygonOptions().addAll(this.latLngs).fillColor(this.fillColorHeightLimit).strokeWidth(0.0f);
        }
        this.googleMap.addPolygon(this.polygonOptions);
    }

    public void drawCircleNoFlyZone(LatLng centerLatLng, int radius) {
        if (this.circleOptions == null) {
            this.circleOptions = new CircleOptions().center(centerLatLng).fillColor(this.fillColor).strokeWidth(0.0f).radius(radius);
        }
        this.googleMap.addCircle(this.circleOptions);
    }

    public void drawIrregularNoFlyZone(LatLng[] lats, boolean isNoFly) {
        if (this.options == null) {
            this.options = new PolygonOptions();
            this.options.strokeWidth(0.0f).strokeColor(this.strokeColor);
            if (isNoFly) {
                this.options.fillColor(this.fillColor);
            } else {
                this.options.fillColor(this.fillColorHeightLimit);
            }
            for (LatLng latLng : lats) {
                this.options.add(latLng);
            }
        }
        this.googleMap.addPolygon(this.options);
    }

    public void clearNoFlightZone() {
        if (this.polygonList != null) {
            for (Polygon polygon : this.polygonList) {
                polygon.remove();
            }
            this.polygonList.clear();
        }
        if (this.circleList != null) {
            for (Circle circle : this.circleList) {
                circle.remove();
            }
            this.circleList.clear();
        }
        if (this.latLngsNofly != null) {
            this.latLngsNofly.clear();
        }
    }
}
