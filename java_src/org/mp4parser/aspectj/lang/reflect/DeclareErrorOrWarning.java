package org.mp4parser.aspectj.lang.reflect;
/* loaded from: classes2.dex */
public interface DeclareErrorOrWarning {
    AjType getDeclaringType();

    String getMessage();

    PointcutExpression getPointcutExpression();

    boolean isError();
}
