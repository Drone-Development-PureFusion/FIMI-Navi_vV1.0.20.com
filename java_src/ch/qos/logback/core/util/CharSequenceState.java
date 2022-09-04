package ch.qos.logback.core.util;
/* loaded from: classes.dex */
class CharSequenceState {

    /* renamed from: c */
    final char f50c;
    int occurrences = 1;

    public CharSequenceState(char c) {
        this.f50c = c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void incrementOccurrences() {
        this.occurrences++;
    }
}
