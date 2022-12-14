package com.google.android.gms.internal;

import java.io.IOException;
/* loaded from: classes2.dex */
public class zzfie extends IOException {
    private zzfjc zzpqo = null;

    public zzfie(String str) {
        super(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzfie zzdae() {
        return new zzfie("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzfie zzdaf() {
        return new zzfie("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzfie zzdag() {
        return new zzfie("CodedInputStream encountered a malformed varint.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzfie zzdah() {
        return new zzfie("Protocol message contained an invalid tag (zero).");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzfie zzdai() {
        return new zzfie("Protocol message end-group tag did not match expected tag.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzfif zzdaj() {
        return new zzfif("Protocol message tag had invalid wire type.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzfie zzdak() {
        return new zzfie("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzfie zzdal() {
        return new zzfie("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzfie zzdam() {
        return new zzfie("Protocol message had invalid UTF-8.");
    }

    public final zzfie zzi(zzfjc zzfjcVar) {
        this.zzpqo = zzfjcVar;
        return this;
    }
}
