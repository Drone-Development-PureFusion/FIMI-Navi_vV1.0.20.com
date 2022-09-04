package ch.qos.logback.core.util;
/* loaded from: classes.dex */
class CharSequenceToRegexMapper {
    private String number(int i) {
        return "\\d{" + i + "}";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String toRegex(CharSequenceState charSequenceState) {
        int i = charSequenceState.occurrences;
        char c = charSequenceState.f50c;
        switch (charSequenceState.f50c) {
            case '\'':
                if (i != 1) {
                    throw new IllegalStateException("Too many single quotes");
                }
                return "";
            case '.':
                return "\\.";
            case 'D':
            case 'F':
            case 'H':
            case 'K':
            case 'S':
            case 'W':
            case 'd':
            case 'h':
            case 'k':
            case 'm':
            case 's':
            case 'w':
            case 'y':
                return number(i);
            case 'E':
                return ".{2,12}";
            case 'G':
            case 'z':
                return ".*";
            case 'M':
                return i >= 3 ? ".{3,12}" : number(i);
            case 'Z':
                return "(\\+|-)\\d{4}";
            case '\\':
                throw new IllegalStateException("Forward slashes are not allowed");
            case 'a':
                return ".{2}";
            default:
                return i == 1 ? "" + c : c + "{" + i + "}";
        }
    }
}
