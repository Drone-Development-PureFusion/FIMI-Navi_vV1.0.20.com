package org.slf4j.helpers;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;
import org.slf4j.Marker;
/* loaded from: classes2.dex */
public class BasicMarker implements Marker {
    private static final long serialVersionUID = 1803952589649545191L;
    private final String name;
    private List<Marker> referenceList;
    private static String OPEN = "[ ";
    private static String CLOSE = " ]";
    private static String SEP = ", ";

    /* JADX INFO: Access modifiers changed from: package-private */
    public BasicMarker(String name) {
        if (name == null) {
            throw new IllegalArgumentException("A marker name cannot be null");
        }
        this.name = name;
    }

    @Override // org.slf4j.Marker
    public String getName() {
        return this.name;
    }

    @Override // org.slf4j.Marker
    public synchronized void add(Marker reference) {
        if (reference == null) {
            throw new IllegalArgumentException("A null value cannot be added to a Marker as reference.");
        }
        if (!contains(reference) && !reference.contains(this)) {
            if (this.referenceList == null) {
                this.referenceList = new Vector();
            }
            this.referenceList.add(reference);
        }
    }

    @Override // org.slf4j.Marker
    public synchronized boolean hasReferences() {
        boolean z;
        if (this.referenceList != null) {
            if (this.referenceList.size() > 0) {
                z = true;
            }
        }
        z = false;
        return z;
    }

    @Override // org.slf4j.Marker
    public boolean hasChildren() {
        return hasReferences();
    }

    @Override // org.slf4j.Marker
    public synchronized Iterator<Marker> iterator() {
        Iterator<Marker> it;
        if (this.referenceList != null) {
            it = this.referenceList.iterator();
        } else {
            List<Marker> emptyList = Collections.emptyList();
            it = emptyList.iterator();
        }
        return it;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x001f, code lost:
        r5.referenceList.remove(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0024, code lost:
        r3 = true;
     */
    @Override // org.slf4j.Marker
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized boolean remove(Marker referenceToRemove) {
        boolean z = false;
        synchronized (this) {
            if (this.referenceList != null) {
                int size = this.referenceList.size();
                int i = 0;
                while (true) {
                    if (i >= size) {
                        break;
                    }
                    Marker m = this.referenceList.get(i);
                    if (referenceToRemove.equals(m)) {
                        break;
                    }
                    i++;
                }
            }
        }
        return z;
    }

    @Override // org.slf4j.Marker
    public boolean contains(Marker other) {
        if (other == null) {
            throw new IllegalArgumentException("Other cannot be null");
        }
        if (equals(other)) {
            return true;
        }
        if (hasReferences()) {
            for (Marker ref : this.referenceList) {
                if (ref.contains(other)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // org.slf4j.Marker
    public boolean contains(String name) {
        if (name == null) {
            throw new IllegalArgumentException("Other cannot be null");
        }
        if (this.name.equals(name)) {
            return true;
        }
        if (hasReferences()) {
            for (Marker ref : this.referenceList) {
                if (ref.contains(name)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // org.slf4j.Marker
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof Marker)) {
            return false;
        }
        Marker other = (Marker) obj;
        return this.name.equals(other.getName());
    }

    @Override // org.slf4j.Marker
    public int hashCode() {
        return this.name.hashCode();
    }

    public String toString() {
        if (!hasReferences()) {
            return getName();
        }
        Iterator<Marker> it = iterator();
        StringBuilder sb = new StringBuilder(getName());
        sb.append(' ').append(OPEN);
        while (it.hasNext()) {
            Marker reference = it.next();
            sb.append(reference.getName());
            if (it.hasNext()) {
                sb.append(SEP);
            }
        }
        sb.append(CLOSE);
        return sb.toString();
    }
}
