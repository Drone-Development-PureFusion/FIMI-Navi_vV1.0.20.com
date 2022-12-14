package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import java.io.IOException;
import java.io.Writer;
import java.lang.reflect.Type;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes.dex */
public class JSONSerializer {
    protected List<AfterFilter> afterFilters;
    protected List<BeforeFilter> beforeFilters;
    public final SerializeConfig config;
    protected SerialContext context;
    private DateFormat dateFormat;
    private String dateFormatPattern;
    private int indentCount;
    public Locale locale;
    protected List<NameFilter> nameFilters;
    public final SerializeWriter out;
    protected List<PropertyFilter> propertyFilters;
    protected List<PropertyPreFilter> propertyPreFilters;
    protected IdentityHashMap<Object, SerialContext> references;
    public TimeZone timeZone;
    protected List<ValueFilter> valueFilters;

    public JSONSerializer() {
        this(new SerializeWriter(null, JSON.DEFAULT_GENERATE_FEATURE, SerializerFeature.EMPTY), SerializeConfig.globalInstance);
    }

    public JSONSerializer(SerializeWriter out) {
        this(out, SerializeConfig.globalInstance);
    }

    public JSONSerializer(SerializeConfig config) {
        this(new SerializeWriter(null, JSON.DEFAULT_GENERATE_FEATURE, SerializerFeature.EMPTY), config);
    }

    public JSONSerializer(SerializeWriter out, SerializeConfig config) {
        this.beforeFilters = null;
        this.afterFilters = null;
        this.propertyFilters = null;
        this.valueFilters = null;
        this.nameFilters = null;
        this.propertyPreFilters = null;
        this.indentCount = 0;
        this.references = null;
        this.timeZone = JSON.defaultTimeZone;
        this.locale = JSON.defaultLocale;
        this.out = out;
        this.config = config;
        this.timeZone = JSON.defaultTimeZone;
    }

    public String getDateFormatPattern() {
        return this.dateFormat instanceof SimpleDateFormat ? ((SimpleDateFormat) this.dateFormat).toPattern() : this.dateFormatPattern;
    }

    public DateFormat getDateFormat() {
        if (this.dateFormat == null && this.dateFormatPattern != null) {
            this.dateFormat = new SimpleDateFormat(this.dateFormatPattern, this.locale);
            this.dateFormat.setTimeZone(this.timeZone);
        }
        return this.dateFormat;
    }

    public void setDateFormat(DateFormat dateFormat) {
        this.dateFormat = dateFormat;
        if (this.dateFormatPattern != null) {
            this.dateFormatPattern = null;
        }
    }

    public void setDateFormat(String dateFormat) {
        this.dateFormatPattern = dateFormat;
        if (this.dateFormat != null) {
            this.dateFormat = null;
        }
    }

    public void setContext(SerialContext parent, Object object, Object fieldName, int features) {
        if ((this.out.features & SerializerFeature.DisableCircularReferenceDetect.mask) == 0) {
            this.context = new SerialContext(parent, object, fieldName, features);
            if (this.references == null) {
                this.references = new IdentityHashMap<>();
            }
            this.references.put(object, this.context);
        }
    }

    public void writeReference(Object object) {
        SerialContext context = this.context;
        Object current = context.object;
        if (object == current) {
            this.out.write("{\"$ref\":\"@\"}");
            return;
        }
        SerialContext parentContext = context.parent;
        if (parentContext != null && object == parentContext.object) {
            this.out.write("{\"$ref\":\"..\"}");
            return;
        }
        SerialContext rootContext = context;
        while (rootContext.parent != null) {
            rootContext = rootContext.parent;
        }
        if (object == rootContext.object) {
            this.out.write("{\"$ref\":\"$\"}");
            return;
        }
        SerialContext refContext = this.references.get(object);
        String path = refContext.toString();
        this.out.write("{\"$ref\":\"");
        this.out.write(path);
        this.out.write("\"}");
    }

    public List<ValueFilter> getValueFilters() {
        if (this.valueFilters == null) {
            this.valueFilters = new ArrayList();
        }
        return this.valueFilters;
    }

    public void incrementIndent() {
        this.indentCount++;
    }

    public void decrementIdent() {
        this.indentCount--;
    }

    public void println() {
        this.out.write(10);
        for (int i = 0; i < this.indentCount; i++) {
            this.out.write(9);
        }
    }

    public List<BeforeFilter> getBeforeFilters() {
        if (this.beforeFilters == null) {
            this.beforeFilters = new ArrayList();
        }
        return this.beforeFilters;
    }

    public List<AfterFilter> getAfterFilters() {
        if (this.afterFilters == null) {
            this.afterFilters = new ArrayList();
        }
        return this.afterFilters;
    }

    public List<NameFilter> getNameFilters() {
        if (this.nameFilters == null) {
            this.nameFilters = new ArrayList();
        }
        return this.nameFilters;
    }

    public List<PropertyPreFilter> getPropertyPreFilters() {
        if (this.propertyPreFilters == null) {
            this.propertyPreFilters = new ArrayList();
        }
        return this.propertyPreFilters;
    }

    public List<PropertyFilter> getPropertyFilters() {
        if (this.propertyFilters == null) {
            this.propertyFilters = new ArrayList();
        }
        return this.propertyFilters;
    }

    public String toString() {
        return this.out.toString();
    }

    public void config(SerializerFeature feature, boolean state) {
        this.out.config(feature, state);
    }

    public static final void write(Writer out, Object object) {
        SerializeWriter writer = new SerializeWriter(null, JSON.DEFAULT_GENERATE_FEATURE, SerializerFeature.EMPTY);
        try {
            try {
                JSONSerializer serializer = new JSONSerializer(writer, SerializeConfig.globalInstance);
                serializer.write(object);
                writer.writeTo(out);
            } catch (IOException ex) {
                throw new JSONException(ex.getMessage(), ex);
            }
        } finally {
            writer.close();
        }
    }

    public static final void write(SerializeWriter out, Object object) {
        JSONSerializer serializer = new JSONSerializer(out, SerializeConfig.globalInstance);
        serializer.write(object);
    }

    public final void write(Object object) {
        if (object == null) {
            this.out.writeNull();
            return;
        }
        Class<?> clazz = object.getClass();
        ObjectSerializer writer = this.config.get(clazz);
        try {
            writer.write(this, object, null, null);
        } catch (IOException e) {
            throw new JSONException(e.getMessage(), e);
        }
    }

    public final void writeWithFieldName(Object object, Object fieldName) {
        writeWithFieldName(object, fieldName, null, 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void writeKeyValue(char seperator, String key, Object value) {
        if (seperator != 0) {
            this.out.write(seperator);
        }
        this.out.writeFieldName(key, true);
        write(value);
    }

    public final void writeWithFieldName(Object object, Object fieldName, Type fieldType, int features) {
        try {
            if (object == null) {
                this.out.writeNull();
                return;
            }
            Class<?> clazz = object.getClass();
            ObjectSerializer writer = this.config.get(clazz);
            writer.write(this, object, fieldName, fieldType);
        } catch (IOException e) {
            throw new JSONException(e.getMessage(), e);
        }
    }

    public final void writeWithFormat(Object object, String format) {
        if (object instanceof Date) {
            DateFormat dateFormat = getDateFormat();
            if (dateFormat == null) {
                dateFormat = new SimpleDateFormat(format, this.locale);
                dateFormat.setTimeZone(this.timeZone);
            }
            String text = dateFormat.format((Date) object);
            this.out.writeString(text);
            return;
        }
        write(object);
    }

    public final void write(String value) {
        if (value == null) {
            if ((this.out.features & SerializerFeature.WriteNullStringAsEmpty.mask) != 0) {
                this.out.writeString("");
            } else {
                this.out.writeNull();
            }
        } else if ((this.out.features & SerializerFeature.UseSingleQuotes.mask) != 0) {
            this.out.writeStringWithSingleQuote(value);
        } else {
            this.out.writeStringWithDoubleQuote(value, (char) 0, true);
        }
    }

    public void close() {
        this.out.close();
    }

    public static Object processValue(JSONSerializer serializer, Object object, Object key, Object propertyValue) {
        List<ValueFilter> valueFilters = serializer.valueFilters;
        if (valueFilters != null) {
            if (key != null && !(key instanceof String)) {
                key = JSON.toJSONString(key);
            }
            for (ValueFilter valueFilter : valueFilters) {
                propertyValue = valueFilter.process(object, (String) key, propertyValue);
            }
        }
        return propertyValue;
    }

    public Object processKey(Object object, Object key, Object propertyValue) {
        List<NameFilter> nameFilters = this.nameFilters;
        if (nameFilters != null) {
            if (key != null && !(key instanceof String)) {
                key = JSON.toJSONString(key);
            }
            Iterator<NameFilter> it = nameFilters.iterator();
            while (true) {
                Object obj = key;
                if (it.hasNext()) {
                    NameFilter nameFilter = it.next();
                    key = nameFilter.process(object, (String) obj, propertyValue);
                } else {
                    return obj;
                }
            }
        } else {
            return key;
        }
    }

    public boolean applyName(Object object, Object key) {
        List<PropertyPreFilter> filters = this.propertyPreFilters;
        if (filters == null) {
            return true;
        }
        for (PropertyPreFilter filter : filters) {
            String jSONString = (key == null || (key instanceof String)) ? key : JSON.toJSONString(key);
            if (!filter.apply(this, object, (String) jSONString)) {
                return false;
            }
            key = jSONString;
        }
        return true;
    }

    public boolean apply(Object object, Object key, Object propertyValue) {
        List<PropertyFilter> propertyFilters = this.propertyFilters;
        if (propertyFilters == null) {
            return true;
        }
        if (key != null && !(key instanceof String)) {
            key = JSON.toJSONString(key);
        }
        for (PropertyFilter propertyFilter : propertyFilters) {
            if (!propertyFilter.apply(object, (String) key, propertyValue)) {
                return false;
            }
        }
        return true;
    }

    public SerializeWriter getWriter() {
        return this.out;
    }

    public SerialContext getContext() {
        return this.context;
    }
}
