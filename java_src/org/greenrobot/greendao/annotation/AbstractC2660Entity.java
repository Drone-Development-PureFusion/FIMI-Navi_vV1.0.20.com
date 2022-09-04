package org.greenrobot.greendao.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.SOURCE)
/* renamed from: org.greenrobot.greendao.annotation.Entity */
/* loaded from: classes.dex */
public @interface AbstractC2660Entity {
    boolean active() default false;

    boolean createInDb() default true;

    boolean generateConstructors() default true;

    boolean generateGettersSetters() default true;

    Index[] indexes() default {};

    String nameInDb() default "";

    String schema() default "default";
}
