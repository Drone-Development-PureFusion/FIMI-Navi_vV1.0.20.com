package ch.qos.logback.core.pattern.color;
@Deprecated
/* loaded from: classes.dex */
public class BlueCompositeConverter<E> extends ForegroundCompositeConverterBase<E> {
    @Override // ch.qos.logback.core.pattern.color.ForegroundCompositeConverterBase
    protected String getForegroundColorCode(E e) {
        return ANSIConstants.BLUE_FG;
    }
}
