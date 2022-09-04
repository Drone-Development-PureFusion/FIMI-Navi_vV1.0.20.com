package ch.qos.logback.core.pattern.color;
/* loaded from: classes.dex */
public class GrayCompositeConverter<E> extends ForegroundCompositeConverterBase<E> {
    @Override // ch.qos.logback.core.pattern.color.ForegroundCompositeConverterBase
    protected String getForegroundColorCode(E e) {
        return "1;30";
    }
}
