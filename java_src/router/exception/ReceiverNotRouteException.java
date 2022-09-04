package router.exception;
/* loaded from: classes2.dex */
public class ReceiverNotRouteException extends NotRouteException {
    public ReceiverNotRouteException(String pattern) {
        super("receiver", pattern);
    }
}
