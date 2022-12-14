package android.support.p001v4.content.res;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.ColorInt;
import android.support.annotation.ColorRes;
import android.support.annotation.DrawableRes;
import android.support.annotation.FontRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.p001v4.content.res.FontResourcesParserCompat;
import android.support.p001v4.graphics.TypefaceCompat;
import android.util.Log;
import android.util.TypedValue;
import android.widget.TextView;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: android.support.v4.content.res.ResourcesCompat */
/* loaded from: classes.dex */
public final class ResourcesCompat {
    private static final String TAG = "ResourcesCompat";

    @Nullable
    public static Drawable getDrawable(@NonNull Resources res, @DrawableRes int id, @Nullable Resources.Theme theme) throws Resources.NotFoundException {
        return Build.VERSION.SDK_INT >= 21 ? res.getDrawable(id, theme) : res.getDrawable(id);
    }

    @Nullable
    public static Drawable getDrawableForDensity(@NonNull Resources res, @DrawableRes int id, int density, @Nullable Resources.Theme theme) throws Resources.NotFoundException {
        if (Build.VERSION.SDK_INT >= 21) {
            return res.getDrawableForDensity(id, density, theme);
        }
        if (Build.VERSION.SDK_INT >= 15) {
            return res.getDrawableForDensity(id, density);
        }
        return res.getDrawable(id);
    }

    @ColorInt
    public static int getColor(@NonNull Resources res, @ColorRes int id, @Nullable Resources.Theme theme) throws Resources.NotFoundException {
        return Build.VERSION.SDK_INT >= 23 ? res.getColor(id, theme) : res.getColor(id);
    }

    @Nullable
    public static ColorStateList getColorStateList(@NonNull Resources res, @ColorRes int id, @Nullable Resources.Theme theme) throws Resources.NotFoundException {
        return Build.VERSION.SDK_INT >= 23 ? res.getColorStateList(id, theme) : res.getColorStateList(id);
    }

    @Nullable
    public static Typeface getFont(@NonNull Context context, @FontRes int id) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return loadFont(context, id, new TypedValue(), 0, null);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static Typeface getFont(@NonNull Context context, @FontRes int id, TypedValue value, int style, @Nullable TextView targetView) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return loadFont(context, id, value, style, targetView);
    }

    private static Typeface loadFont(@NonNull Context context, int id, TypedValue value, int style, @Nullable TextView targetView) {
        Resources resources = context.getResources();
        resources.getValue(id, value, true);
        Typeface typeface = loadFont(context, resources, value, id, style, targetView);
        if (typeface != null) {
            return typeface;
        }
        throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(id));
    }

    private static Typeface loadFont(@NonNull Context context, Resources wrapper, TypedValue value, int id, int style, @Nullable TextView targetView) {
        Typeface cached;
        if (value.string == null) {
            throw new Resources.NotFoundException("Resource \"" + wrapper.getResourceName(id) + "\" (" + Integer.toHexString(id) + ") is not a Font: " + value);
        }
        String file = value.string.toString();
        if (!file.startsWith("res/")) {
            return null;
        }
        Typeface cached2 = TypefaceCompat.findFromCache(wrapper, id, style);
        if (cached2 == null) {
            try {
                if (file.toLowerCase().endsWith(".xml")) {
                    XmlResourceParser rp = wrapper.getXml(id);
                    FontResourcesParserCompat.FamilyResourceEntry familyEntry = FontResourcesParserCompat.parse(rp, wrapper);
                    if (familyEntry == null) {
                        Log.e(TAG, "Failed to find font-family tag");
                        cached = null;
                    } else {
                        cached = TypefaceCompat.createFromResourcesFamilyXml(context, familyEntry, wrapper, id, style, targetView);
                    }
                } else {
                    cached = TypefaceCompat.createFromResourcesFontFile(context, wrapper, id, file, style);
                }
                return cached;
            } catch (IOException e) {
                Log.e(TAG, "Failed to read xml resource " + file, e);
                return null;
            } catch (XmlPullParserException e2) {
                Log.e(TAG, "Failed to parse xml resource " + file, e2);
                return null;
            }
        }
        return cached2;
    }

    private ResourcesCompat() {
    }
}
