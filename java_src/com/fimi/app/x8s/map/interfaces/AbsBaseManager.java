package com.fimi.app.x8s.map.interfaces;

import android.graphics.Color;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.tools.X8MapCalcAngle;
import com.google.android.gms.maps.model.Dash;
import com.google.android.gms.maps.model.Gap;
import com.google.android.gms.maps.model.PatternItem;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
public abstract class AbsBaseManager {
    public static final int MAX_DISTANCE = 1000;
    private boolean onMapClickValid;
    private static int PATTERN_DASH_LENGTH_PX = 50;
    private static int PATTERN_GAP_LENGTH_PX = 20;
    private static Dash DASH = new Dash(PATTERN_DASH_LENGTH_PX);
    private static Gap GAP = new Gap(PATTERN_GAP_LENGTH_PX);
    public static List<PatternItem> PATTERN_DASHED = Arrays.asList(DASH, GAP);
    protected X8MapCalcAngle mapCalcAngle = new X8MapCalcAngle();
    protected int strokeColor = Color.argb(99, 255, 79, 0);
    protected int fillColor = Color.argb(0, 0, 0, 0);
    protected int lineLimitColor = Color.argb(155, 255, 0, 0);
    protected int strokeWidth = 5;
    protected int lineDefaultColor = C0885R.C0887color.x8_ai_line_default;
    protected int lineRunningColor = C0885R.C0887color.x8_ai_line_runing;
    protected int lineRunColor = C0885R.C0887color.x8_ai_line_run;
    private boolean onMarkerClickValid = true;

    public abstract void drawAiLimit(double d, double d2, double d3);

    public abstract float getLineAngleByMapBealing(float f);

    public abstract void removeMapClickListener();

    public abstract void resetMapEvent();

    public abstract void setMarkerViewInfo(float f);

    public abstract void setOnMapClickListener();

    public boolean isOnMarkerClickValid() {
        return this.onMarkerClickValid;
    }

    public void setOnMarkerClickValid(boolean onMarkerClickValid) {
        this.onMarkerClickValid = onMarkerClickValid;
    }

    public boolean isOnMapClickValid() {
        return this.onMapClickValid;
    }

    public void setOnMapClickValid(boolean onMapClickValid) {
        this.onMapClickValid = onMapClickValid;
    }
}
