package ch.qos.logback.core.pattern.color;
@Deprecated
/* loaded from: classes.dex */
public class BoldRedCompositeConverter<E> extends ForegroundCompositeConverterBase<E> {
    @Override // ch.qos.logback.core.pattern.color.ForegroundCompositeConverterBase
    protected String getForegroundColorCode(E e) {
        return "1;31";
    }
}
