package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSON;
/* loaded from: classes.dex */
public class SymbolTable {
    private final int indexMask;
    private final Entry[] symbols;

    public SymbolTable(int tableSize) {
        this.indexMask = tableSize - 1;
        this.symbols = new Entry[tableSize];
        addSymbol("$ref", 0, 4, "$ref".hashCode());
        addSymbol(JSON.DEFAULT_TYPE_KEY, 0, JSON.DEFAULT_TYPE_KEY.length(), JSON.DEFAULT_TYPE_KEY.hashCode());
    }

    public String addSymbol(char[] buffer, int offset, int len, int hash) {
        int bucket = hash & this.indexMask;
        Entry entry = this.symbols[bucket];
        if (entry != null) {
            boolean eq = true;
            if (hash == entry.hashCode && len == entry.chars.length) {
                int i = 0;
                while (true) {
                    if (i >= len) {
                        break;
                    } else if (buffer[offset + i] == entry.chars[i]) {
                        i++;
                    } else {
                        eq = false;
                        break;
                    }
                }
            } else {
                eq = false;
            }
            if (eq) {
                return entry.value;
            }
            return new String(buffer, offset, len);
        }
        String strVal = new String(buffer, offset, len).intern();
        this.symbols[bucket] = new Entry(strVal, hash);
        return strVal;
    }

    public String addSymbol(String buffer, int offset, int len, int hash) {
        int bucket = hash & this.indexMask;
        Entry entry = this.symbols[bucket];
        if (entry != null) {
            if (hash == entry.hashCode && len == entry.chars.length && buffer.regionMatches(offset, entry.value, 0, len)) {
                return entry.value;
            }
            return subString(buffer, offset, len);
        }
        String symbol = (len == buffer.length() ? buffer : subString(buffer, offset, len)).intern();
        this.symbols[bucket] = new Entry(symbol, hash);
        return symbol;
    }

    private static String subString(String src, int offset, int len) {
        char[] chars = new char[len];
        src.getChars(offset, offset + len, chars, 0);
        return new String(chars);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Entry {
        final char[] chars;
        final int hashCode;
        final String value;

        Entry(String value, int hashCode) {
            this.value = value;
            this.chars = value.toCharArray();
            this.hashCode = hashCode;
        }
    }
}
