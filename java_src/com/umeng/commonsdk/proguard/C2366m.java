package com.umeng.commonsdk.proguard;

import java.nio.ByteBuffer;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
/* compiled from: TBaseHelper.java */
/* renamed from: com.umeng.commonsdk.proguard.m */
/* loaded from: classes2.dex */
public final class C2366m {

    /* renamed from: a */
    private static final Comparator f1100a = new C2368a();

    private C2366m() {
    }

    /* renamed from: a */
    public static int m590a(Object obj, Object obj2) {
        if (obj instanceof Comparable) {
            return m591a((Comparable) obj, (Comparable) obj2);
        }
        if (obj instanceof List) {
            return m585a((List) obj, (List) obj2);
        }
        if (obj instanceof Set) {
            return m583a((Set) obj, (Set) obj2);
        }
        if (obj instanceof Map) {
            return m584a((Map) obj, (Map) obj2);
        }
        if (obj instanceof byte[]) {
            return m579a((byte[]) obj, (byte[]) obj2);
        }
        throw new IllegalArgumentException("Cannot compare objects of type " + obj.getClass());
    }

    /* renamed from: a */
    public static int m581a(boolean z, boolean z2) {
        return Boolean.valueOf(z).compareTo(Boolean.valueOf(z2));
    }

    /* renamed from: a */
    public static int m595a(byte b, byte b2) {
        if (b < b2) {
            return -1;
        }
        if (b2 < b) {
            return 1;
        }
        return 0;
    }

    /* renamed from: a */
    public static int m582a(short s, short s2) {
        if (s < s2) {
            return -1;
        }
        if (s2 < s) {
            return 1;
        }
        return 0;
    }

    /* renamed from: a */
    public static int m593a(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        if (i2 < i) {
            return 1;
        }
        return 0;
    }

    /* renamed from: a */
    public static int m592a(long j, long j2) {
        if (j < j2) {
            return -1;
        }
        if (j2 < j) {
            return 1;
        }
        return 0;
    }

    /* renamed from: a */
    public static int m594a(double d, double d2) {
        if (d < d2) {
            return -1;
        }
        if (d2 < d) {
            return 1;
        }
        return 0;
    }

    /* renamed from: a */
    public static int m589a(String str, String str2) {
        return str.compareTo(str2);
    }

    /* renamed from: a */
    public static int m579a(byte[] bArr, byte[] bArr2) {
        int m593a = m593a(bArr.length, bArr2.length);
        if (m593a != 0) {
            return m593a;
        }
        for (int i = 0; i < bArr.length; i++) {
            int m595a = m595a(bArr[i], bArr2[i]);
            if (m595a != 0) {
                return m595a;
            }
        }
        return 0;
    }

    /* renamed from: a */
    public static int m591a(Comparable comparable, Comparable comparable2) {
        return comparable.compareTo(comparable2);
    }

    /* renamed from: a */
    public static int m585a(List list, List list2) {
        int m593a = m593a(list.size(), list2.size());
        if (m593a != 0) {
            return m593a;
        }
        for (int i = 0; i < list.size(); i++) {
            int compare = f1100a.compare(list.get(i), list2.get(i));
            if (compare != 0) {
                return compare;
            }
        }
        return 0;
    }

    /* renamed from: a */
    public static int m583a(Set set, Set set2) {
        int m593a = m593a(set.size(), set2.size());
        if (m593a == 0) {
            TreeSet treeSet = new TreeSet(f1100a);
            treeSet.addAll(set);
            TreeSet treeSet2 = new TreeSet(f1100a);
            treeSet2.addAll(set2);
            Iterator it = treeSet.iterator();
            Iterator it2 = treeSet2.iterator();
            while (it.hasNext() && it2.hasNext()) {
                int compare = f1100a.compare(it.next(), it2.next());
                if (compare != 0) {
                    return compare;
                }
            }
            return 0;
        }
        return m593a;
    }

    /* renamed from: a */
    public static int m584a(Map map, Map map2) {
        int m593a = m593a(map.size(), map2.size());
        if (m593a == 0) {
            TreeMap treeMap = new TreeMap(f1100a);
            treeMap.putAll(map);
            Iterator it = treeMap.entrySet().iterator();
            TreeMap treeMap2 = new TreeMap(f1100a);
            treeMap2.putAll(map2);
            Iterator it2 = treeMap2.entrySet().iterator();
            while (it.hasNext() && it2.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                Map.Entry entry2 = (Map.Entry) it2.next();
                int compare = f1100a.compare(entry.getKey(), entry2.getKey());
                if (compare != 0) {
                    return compare;
                }
                int compare2 = f1100a.compare(entry.getValue(), entry2.getValue());
                if (compare2 != 0) {
                    return compare2;
                }
            }
            return 0;
        }
        return m593a;
    }

    /* compiled from: TBaseHelper.java */
    /* renamed from: com.umeng.commonsdk.proguard.m$a */
    /* loaded from: classes2.dex */
    private static class C2368a implements Comparator {
        private C2368a() {
        }

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            if (obj == null && obj2 == null) {
                return 0;
            }
            if (obj == null) {
                return -1;
            }
            if (obj2 == null) {
                return 1;
            }
            if (obj instanceof List) {
                return C2366m.m585a((List) obj, (List) obj2);
            }
            if (obj instanceof Set) {
                return C2366m.m583a((Set) obj, (Set) obj2);
            }
            if (obj instanceof Map) {
                return C2366m.m584a((Map) obj, (Map) obj2);
            }
            if (obj instanceof byte[]) {
                return C2366m.m579a((byte[]) obj, (byte[]) obj2);
            }
            return C2366m.m591a((Comparable) obj, (Comparable) obj2);
        }
    }

    /* renamed from: a */
    public static void m587a(ByteBuffer byteBuffer, StringBuilder sb) {
        byte[] array = byteBuffer.array();
        int arrayOffset = byteBuffer.arrayOffset();
        int position = arrayOffset + byteBuffer.position();
        int limit = byteBuffer.limit() + arrayOffset;
        int i = limit - position > 128 ? position + 128 : limit;
        for (int i2 = position; i2 < i; i2++) {
            if (i2 > position) {
                sb.append(" ");
            }
            sb.append(m596a(array[i2]));
        }
        if (limit != i) {
            sb.append("...");
        }
    }

    /* renamed from: a */
    public static String m596a(byte b) {
        return Integer.toHexString((b | 256) & 511).toUpperCase().substring(1);
    }

    /* renamed from: a */
    public static byte[] m588a(ByteBuffer byteBuffer) {
        if (m578b(byteBuffer)) {
            return byteBuffer.array();
        }
        byte[] bArr = new byte[byteBuffer.remaining()];
        m586a(byteBuffer, bArr, 0);
        return bArr;
    }

    /* renamed from: b */
    public static boolean m578b(ByteBuffer byteBuffer) {
        return byteBuffer.hasArray() && byteBuffer.position() == 0 && byteBuffer.arrayOffset() == 0 && byteBuffer.remaining() == byteBuffer.capacity();
    }

    /* renamed from: a */
    public static int m586a(ByteBuffer byteBuffer, byte[] bArr, int i) {
        int remaining = byteBuffer.remaining();
        System.arraycopy(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), bArr, i, remaining);
        return remaining;
    }

    /* renamed from: c */
    public static ByteBuffer m577c(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            return null;
        }
        return !m578b(byteBuffer) ? ByteBuffer.wrap(m588a(byteBuffer)) : byteBuffer;
    }

    /* renamed from: d */
    public static ByteBuffer m576d(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            return null;
        }
        ByteBuffer wrap = ByteBuffer.wrap(new byte[byteBuffer.remaining()]);
        if (byteBuffer.hasArray()) {
            System.arraycopy(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), wrap.array(), 0, byteBuffer.remaining());
            return wrap;
        }
        byteBuffer.slice().get(wrap.array());
        return wrap;
    }

    /* renamed from: a */
    public static byte[] m580a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }
}
