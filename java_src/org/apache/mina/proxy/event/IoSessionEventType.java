package org.apache.mina.proxy.event;
/* loaded from: classes2.dex */
public enum IoSessionEventType {
    CREATED(1),
    OPENED(2),
    IDLE(3),
    CLOSED(4);
    

    /* renamed from: id */
    private final int f1476id;

    IoSessionEventType(int id) {
        this.f1476id = id;
    }

    public int getId() {
        return this.f1476id;
    }

    @Override // java.lang.Enum
    public String toString() {
        switch (this) {
            case CREATED:
                return "- CREATED event -";
            case OPENED:
                return "- OPENED event -";
            case IDLE:
                return "- IDLE event -";
            case CLOSED:
                return "- CLOSED event -";
            default:
                return "- Event Id=" + this.f1476id + " -";
        }
    }
}
