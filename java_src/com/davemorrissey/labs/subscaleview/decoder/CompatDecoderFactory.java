package com.davemorrissey.labs.subscaleview.decoder;

import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes.dex */
public class CompatDecoderFactory<T> implements DecoderFactory<T> {
    private Bitmap.Config bitmapConfig;
    private Class<? extends T> clazz;

    public CompatDecoderFactory(@NonNull Class<? extends T> clazz) {
        this(clazz, null);
    }

    public CompatDecoderFactory(@NonNull Class<? extends T> clazz, Bitmap.Config bitmapConfig) {
        this.clazz = clazz;
        this.bitmapConfig = bitmapConfig;
    }

    @Override // com.davemorrissey.labs.subscaleview.decoder.DecoderFactory
    public T make() throws IllegalAccessException, InstantiationException, NoSuchMethodException, InvocationTargetException {
        if (this.bitmapConfig == null) {
            return this.clazz.newInstance();
        }
        Constructor<? extends T> ctor = this.clazz.getConstructor(Bitmap.Config.class);
        return ctor.newInstance(this.bitmapConfig);
    }
}
