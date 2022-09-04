package com.google.android.gms.internal;
/* loaded from: classes2.dex */
final class zzfkh {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzbd(zzfgs zzfgsVar) {
        zzfki zzfkiVar = new zzfki(zzfgsVar);
        StringBuilder sb = new StringBuilder(zzfkiVar.size());
        for (int i = 0; i < zzfkiVar.size(); i++) {
            byte zzld = zzfkiVar.zzld(i);
            switch (zzld) {
                case 7:
                    sb.append("\\a");
                    break;
                case 8:
                    sb.append("\\b");
                    break;
                case 9:
                    sb.append("\\t");
                    break;
                case 10:
                    sb.append("\\n");
                    break;
                case 11:
                    sb.append("\\v");
                    break;
                case 12:
                    sb.append("\\f");
                    break;
                case 13:
                    sb.append("\\r");
                    break;
                case 34:
                    sb.append("\\\"");
                    break;
                case 39:
                    sb.append("\\'");
                    break;
                case 92:
                    sb.append("\\\\");
                    break;
                default:
                    if (zzld < 32 || zzld > 126) {
                        sb.append('\\');
                        sb.append((char) (((zzld >>> 6) & 3) + 48));
                        sb.append((char) (((zzld >>> 3) & 7) + 48));
                        sb.append((char) ((zzld & 7) + 48));
                        break;
                    } else {
                        sb.append((char) zzld);
                        break;
                    }
            }
        }
        return sb.toString();
    }
}
