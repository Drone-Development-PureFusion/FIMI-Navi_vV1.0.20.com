package org.jdom.input;
/* loaded from: classes2.dex */
class TextBuffer {
    private static final String CVS_ID = "@(#) $RCSfile: TextBuffer.java,v $ $Revision: 1.8 $ $Date: 2004/02/06 09:28:31 $ $Name: jdom_1_0 $";
    private char[] array = new char[4096];
    private int arraySize = 0;
    private String prefixString;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void append(char[] source, int start, int count) {
        if (this.prefixString == null) {
            this.prefixString = new String(source, start, count);
            return;
        }
        ensureCapacity(this.arraySize + count);
        System.arraycopy(source, start, this.array, this.arraySize, count);
        this.arraySize += count;
    }

    int size() {
        if (this.prefixString == null) {
            return 0;
        }
        return this.prefixString.length() + this.arraySize;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clear() {
        this.arraySize = 0;
        this.prefixString = null;
    }

    public String toString() {
        if (this.prefixString == null) {
            return "";
        }
        if (this.arraySize == 0) {
            String str = this.prefixString;
            return str;
        }
        String str2 = new StringBuffer(this.prefixString.length() + this.arraySize).append(this.prefixString).append(this.array, 0, this.arraySize).toString();
        return str2;
    }

    private void ensureCapacity(int csize) {
        int capacity = this.array.length;
        if (csize <= capacity) {
            return;
        }
        char[] old = this.array;
        int nsize = capacity;
        while (csize > nsize) {
            nsize += capacity / 2;
        }
        this.array = new char[nsize];
        System.arraycopy(old, 0, this.array, 0, this.arraySize);
    }
}
