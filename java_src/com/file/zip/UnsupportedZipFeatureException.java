package com.file.zip;

import java.util.zip.ZipException;
/* loaded from: classes.dex */
public class UnsupportedZipFeatureException extends ZipException {
    private static final long serialVersionUID = 4430521921766595597L;
    private final ZipEntry entry;
    private final Feature reason;

    public UnsupportedZipFeatureException(Feature reason, ZipEntry entry) {
        super("unsupported feature " + reason + " used in entry " + entry.getName());
        this.reason = reason;
        this.entry = entry;
    }

    public Feature getFeature() {
        return this.reason;
    }

    public ZipEntry getEntry() {
        return this.entry;
    }

    /* loaded from: classes.dex */
    public static class Feature {
        private final String name;
        public static final Feature ENCRYPTION = new Feature("encryption");
        public static final Feature METHOD = new Feature("compression method");
        public static final Feature DATA_DESCRIPTOR = new Feature("data descriptor");

        private Feature(String name) {
            this.name = name;
        }

        public String toString() {
            return this.name;
        }
    }
}
