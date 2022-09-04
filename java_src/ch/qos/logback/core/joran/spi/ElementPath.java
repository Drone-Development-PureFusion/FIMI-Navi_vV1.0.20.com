package ch.qos.logback.core.joran.spi;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class ElementPath {
    ArrayList<String> partList = new ArrayList<>();

    public ElementPath() {
    }

    public ElementPath(String str) {
        String[] split;
        if (str == null || (split = str.split("/")) == null) {
            return;
        }
        for (String str2 : split) {
            if (str2.length() > 0) {
                this.partList.add(str2);
            }
        }
    }

    public ElementPath(List<String> list) {
        this.partList.addAll(list);
    }

    private boolean equalityCheck(String str, String str2) {
        return str.equalsIgnoreCase(str2);
    }

    public ElementPath duplicate() {
        ElementPath elementPath = new ElementPath();
        elementPath.partList.addAll(this.partList);
        return elementPath;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof ElementPath)) {
            return false;
        }
        ElementPath elementPath = (ElementPath) obj;
        if (elementPath.size() != size()) {
            return false;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (!equalityCheck(get(i), elementPath.get(i))) {
                return false;
            }
        }
        return true;
    }

    public String get(int i) {
        return this.partList.get(i);
    }

    public List<String> getCopyOfPartList() {
        return new ArrayList(this.partList);
    }

    public String peekLast() {
        if (!this.partList.isEmpty()) {
            return this.partList.get(this.partList.size() - 1);
        }
        return null;
    }

    public void pop() {
        if (!this.partList.isEmpty()) {
            this.partList.remove(this.partList.size() - 1);
        }
    }

    public void push(String str) {
        this.partList.add(str);
    }

    public int size() {
        return this.partList.size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String toStableString() {
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = this.partList.iterator();
        while (it.hasNext()) {
            sb.append("[").append(it.next()).append("]");
        }
        return sb.toString();
    }

    public String toString() {
        return toStableString();
    }
}
