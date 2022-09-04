package router.exception;
/* loaded from: classes2.dex */
public class NotRouteException extends RuntimeException {
    public NotRouteException(String name, String pattern) {
        super(String.format("%s cannot be resolved with pattern %s, have you declared it in your Router?", name, pattern));
    }
}
