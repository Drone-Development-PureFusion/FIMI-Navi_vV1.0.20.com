package org.apache.mina.core.filterchain;

import ch.qos.logback.core.CoreConstants;
import com.facebook.share.internal.ShareConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.CopyOnWriteArrayList;
import org.apache.mina.core.filterchain.IoFilter;
import org.apache.mina.core.filterchain.IoFilterChain;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
/* loaded from: classes2.dex */
public class DefaultIoFilterChainBuilder implements IoFilterChainBuilder {
    private static final Logger LOGGER = LoggerFactory.getLogger(DefaultIoFilterChainBuilder.class);
    private final List<IoFilterChain.Entry> entries;

    public DefaultIoFilterChainBuilder() {
        this.entries = new CopyOnWriteArrayList();
    }

    public DefaultIoFilterChainBuilder(DefaultIoFilterChainBuilder filterChain) {
        if (filterChain == null) {
            throw new IllegalArgumentException("filterChain");
        }
        this.entries = new CopyOnWriteArrayList(filterChain.entries);
    }

    public IoFilterChain.Entry getEntry(String name) {
        for (IoFilterChain.Entry e : this.entries) {
            if (e.getName().equals(name)) {
                return e;
            }
        }
        return null;
    }

    public IoFilterChain.Entry getEntry(IoFilter filter) {
        for (IoFilterChain.Entry e : this.entries) {
            if (e.getFilter() == filter) {
                return e;
            }
        }
        return null;
    }

    public IoFilterChain.Entry getEntry(Class<? extends IoFilter> filterType) {
        for (IoFilterChain.Entry e : this.entries) {
            if (filterType.isAssignableFrom(e.getFilter().getClass())) {
                return e;
            }
        }
        return null;
    }

    public IoFilter get(String name) {
        IoFilterChain.Entry e = getEntry(name);
        if (e == null) {
            return null;
        }
        return e.getFilter();
    }

    public IoFilter get(Class<? extends IoFilter> filterType) {
        IoFilterChain.Entry e = getEntry(filterType);
        if (e == null) {
            return null;
        }
        return e.getFilter();
    }

    public List<IoFilterChain.Entry> getAll() {
        return new ArrayList(this.entries);
    }

    public List<IoFilterChain.Entry> getAllReversed() {
        List<IoFilterChain.Entry> result = getAll();
        Collections.reverse(result);
        return result;
    }

    public boolean contains(String name) {
        return getEntry(name) != null;
    }

    public boolean contains(IoFilter filter) {
        return getEntry(filter) != null;
    }

    public boolean contains(Class<? extends IoFilter> filterType) {
        return getEntry(filterType) != null;
    }

    public synchronized void addFirst(String name, IoFilter filter) {
        register(0, new EntryImpl(name, filter));
    }

    public synchronized void addLast(String name, IoFilter filter) {
        register(this.entries.size(), new EntryImpl(name, filter));
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0020, code lost:
        register(r1.previousIndex(), new org.apache.mina.core.filterchain.DefaultIoFilterChainBuilder.EntryImpl(r5, r7, r8, null));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized void addBefore(String baseName, String name, IoFilter filter) {
        checkBaseName(baseName);
        ListIterator<IoFilterChain.Entry> i = this.entries.listIterator();
        while (true) {
            if (!i.hasNext()) {
                break;
            }
            IoFilterChain.Entry base = i.next();
            if (base.getName().equals(baseName)) {
                break;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0020, code lost:
        register(r1.nextIndex(), new org.apache.mina.core.filterchain.DefaultIoFilterChainBuilder.EntryImpl(r5, r7, r8, null));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized void addAfter(String baseName, String name, IoFilter filter) {
        checkBaseName(baseName);
        ListIterator<IoFilterChain.Entry> i = this.entries.listIterator();
        while (true) {
            if (!i.hasNext()) {
                break;
            }
            IoFilterChain.Entry base = i.next();
            if (base.getName().equals(baseName)) {
                break;
            }
        }
    }

    public synchronized IoFilter remove(String name) {
        IoFilterChain.Entry e;
        if (name == null) {
            throw new IllegalArgumentException("name");
        }
        ListIterator<IoFilterChain.Entry> i = this.entries.listIterator();
        while (i.hasNext()) {
            e = i.next();
            if (e.getName().equals(name)) {
                this.entries.remove(i.previousIndex());
            }
        }
        throw new IllegalArgumentException("Unknown filter name: " + name);
        return e.getFilter();
    }

    public synchronized IoFilter remove(IoFilter filter) {
        IoFilterChain.Entry e;
        if (filter == null) {
            throw new IllegalArgumentException("filter");
        }
        ListIterator<IoFilterChain.Entry> i = this.entries.listIterator();
        while (i.hasNext()) {
            e = i.next();
            if (e.getFilter() == filter) {
                this.entries.remove(i.previousIndex());
            }
        }
        throw new IllegalArgumentException("Filter not found: " + filter.getClass().getName());
        return e.getFilter();
    }

    public synchronized IoFilter remove(Class<? extends IoFilter> filterType) {
        IoFilterChain.Entry e;
        if (filterType == null) {
            throw new IllegalArgumentException("filterType");
        }
        ListIterator<IoFilterChain.Entry> i = this.entries.listIterator();
        while (i.hasNext()) {
            e = i.next();
            if (filterType.isAssignableFrom(e.getFilter().getClass())) {
                this.entries.remove(i.previousIndex());
            }
        }
        throw new IllegalArgumentException("Filter not found: " + filterType.getName());
        return e.getFilter();
    }

    public synchronized IoFilter replace(String name, IoFilter newFilter) {
        IoFilter oldFilter;
        checkBaseName(name);
        EntryImpl e = (EntryImpl) getEntry(name);
        oldFilter = e.getFilter();
        e.setFilter(newFilter);
        return oldFilter;
    }

    public synchronized void replace(IoFilter oldFilter, IoFilter newFilter) {
        for (IoFilterChain.Entry e : this.entries) {
            if (e.getFilter() == oldFilter) {
                ((EntryImpl) e).setFilter(newFilter);
            }
        }
        throw new IllegalArgumentException("Filter not found: " + oldFilter.getClass().getName());
    }

    public synchronized void replace(Class<? extends IoFilter> oldFilterType, IoFilter newFilter) {
        for (IoFilterChain.Entry e : this.entries) {
            if (oldFilterType.isAssignableFrom(e.getFilter().getClass())) {
                ((EntryImpl) e).setFilter(newFilter);
            }
        }
        throw new IllegalArgumentException("Filter not found: " + oldFilterType.getName());
    }

    public synchronized void clear() {
        this.entries.clear();
    }

    public void setFilters(Map<String, ? extends IoFilter> filters) {
        if (filters == null) {
            throw new IllegalArgumentException(ShareConstants.WEB_DIALOG_PARAM_FILTERS);
        }
        if (!isOrderedMap(filters)) {
            throw new IllegalArgumentException("filters is not an ordered map. Please try " + LinkedHashMap.class.getName() + ".");
        }
        Map<String, ? extends IoFilter> filters2 = new LinkedHashMap<>(filters);
        for (Map.Entry<String, ? extends IoFilter> e : filters2.entrySet()) {
            if (e.getKey() == null) {
                throw new IllegalArgumentException("filters contains a null key.");
            }
            if (e.getValue() == null) {
                throw new IllegalArgumentException("filters contains a null value.");
            }
        }
        synchronized (this) {
            clear();
            for (Map.Entry<String, ? extends IoFilter> e2 : filters2.entrySet()) {
                addLast(e2.getKey(), (IoFilter) e2.getValue());
            }
        }
    }

    private boolean isOrderedMap(Map<String, ? extends IoFilter> map) {
        String filterName;
        Class<?>[] interfaces;
        Class<?> mapType = map.getClass();
        if (LinkedHashMap.class.isAssignableFrom(mapType)) {
            if (LOGGER.isDebugEnabled()) {
                LOGGER.debug("{} is an ordered map.", mapType.getSimpleName());
            }
            return true;
        }
        if (LOGGER.isDebugEnabled()) {
            LOGGER.debug("{} is not a {}", mapType.getName(), LinkedHashMap.class.getSimpleName());
        }
        for (Class<?> type = mapType; type != null; type = type.getSuperclass()) {
            for (Class<?> i : type.getInterfaces()) {
                if (i.getName().endsWith("OrderedMap")) {
                    if (LOGGER.isDebugEnabled()) {
                        LOGGER.debug("{} is an ordered map (guessed from that it implements OrderedMap interface.)", mapType.getSimpleName());
                    }
                    return true;
                }
            }
        }
        if (LOGGER.isDebugEnabled()) {
            LOGGER.debug("{} doesn't implement OrderedMap interface.", mapType.getName());
        }
        LOGGER.debug("Last resort; trying to create a new map instance with a default constructor and test if insertion order is maintained.");
        try {
            Map<String, IoFilter> newMap = (Map) mapType.newInstance();
            Random rand = new Random();
            List<String> expectedNames = new ArrayList<>();
            IoFilter dummyFilter = new IoFilterAdapter();
            for (int i2 = 0; i2 < 65536; i2++) {
                do {
                    filterName = String.valueOf(rand.nextInt());
                } while (newMap.containsKey(filterName));
                newMap.put(filterName, dummyFilter);
                expectedNames.add(filterName);
                Iterator<String> it = expectedNames.iterator();
                for (Object key : newMap.keySet()) {
                    if (!it.next().equals(key)) {
                        if (LOGGER.isDebugEnabled()) {
                            LOGGER.debug("The specified map didn't pass the insertion order test after {} tries.", Integer.valueOf(i2 + 1));
                        }
                        return false;
                    }
                }
            }
            LOGGER.debug("The specified map passed the insertion order test.");
            return true;
        } catch (Exception e) {
            if (LOGGER.isDebugEnabled()) {
                LOGGER.debug("Failed to create a new map instance of '{}'.", mapType.getName(), e);
            }
            return false;
        }
    }

    @Override // org.apache.mina.core.filterchain.IoFilterChainBuilder
    public void buildFilterChain(IoFilterChain chain) throws Exception {
        for (IoFilterChain.Entry e : this.entries) {
            chain.addLast(e.getName(), e.getFilter());
        }
    }

    public String toString() {
        StringBuilder buf = new StringBuilder();
        buf.append("{ ");
        boolean empty = true;
        for (IoFilterChain.Entry e : this.entries) {
            if (!empty) {
                buf.append(", ");
            } else {
                empty = false;
            }
            buf.append(CoreConstants.LEFT_PARENTHESIS_CHAR);
            buf.append(e.getName());
            buf.append(CoreConstants.COLON_CHAR);
            buf.append(e.getFilter());
            buf.append(CoreConstants.RIGHT_PARENTHESIS_CHAR);
        }
        if (empty) {
            buf.append("empty");
        }
        buf.append(" }");
        return buf.toString();
    }

    private void checkBaseName(String baseName) {
        if (baseName == null) {
            throw new IllegalArgumentException("baseName");
        }
        if (!contains(baseName)) {
            throw new IllegalArgumentException("Unknown filter name: " + baseName);
        }
    }

    private void register(int index, IoFilterChain.Entry e) {
        if (contains(e.getName())) {
            throw new IllegalArgumentException("Other filter is using the same name: " + e.getName());
        }
        this.entries.add(index, e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class EntryImpl implements IoFilterChain.Entry {
        private volatile IoFilter filter;
        private final String name;

        private EntryImpl(String name, IoFilter filter) {
            if (name == null) {
                throw new IllegalArgumentException("name");
            }
            if (filter == null) {
                throw new IllegalArgumentException("filter");
            }
            this.name = name;
            this.filter = filter;
        }

        @Override // org.apache.mina.core.filterchain.IoFilterChain.Entry
        public String getName() {
            return this.name;
        }

        @Override // org.apache.mina.core.filterchain.IoFilterChain.Entry
        public IoFilter getFilter() {
            return this.filter;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFilter(IoFilter filter) {
            this.filter = filter;
        }

        @Override // org.apache.mina.core.filterchain.IoFilterChain.Entry
        public IoFilter.NextFilter getNextFilter() {
            throw new IllegalStateException();
        }

        public String toString() {
            return "(" + getName() + CoreConstants.COLON_CHAR + this.filter + CoreConstants.RIGHT_PARENTHESIS_CHAR;
        }

        @Override // org.apache.mina.core.filterchain.IoFilterChain.Entry
        public void addAfter(String name, IoFilter filter) {
            DefaultIoFilterChainBuilder.this.addAfter(getName(), name, filter);
        }

        @Override // org.apache.mina.core.filterchain.IoFilterChain.Entry
        public void addBefore(String name, IoFilter filter) {
            DefaultIoFilterChainBuilder.this.addBefore(getName(), name, filter);
        }

        @Override // org.apache.mina.core.filterchain.IoFilterChain.Entry
        public void remove() {
            DefaultIoFilterChainBuilder.this.remove(getName());
        }

        @Override // org.apache.mina.core.filterchain.IoFilterChain.Entry
        public void replace(IoFilter newFilter) {
            DefaultIoFilterChainBuilder.this.replace(getName(), newFilter);
        }
    }
}
