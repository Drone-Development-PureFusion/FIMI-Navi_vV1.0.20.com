package com.alibaba.fastjson;

import android.support.p001v4.view.PointerIconCompat;
import com.alibaba.fastjson.serializer.JSONSerializer;
import com.alibaba.fastjson.serializer.SerializeWriter;
import com.alibaba.fastjson.serializer.SerializerFeature;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
/* loaded from: classes.dex */
public class JSONWriter implements Closeable, Flushable {
    private JSONStreamContext context;
    private JSONSerializer serializer;
    private SerializeWriter writer;

    public JSONWriter(Writer out) {
        this.writer = new SerializeWriter(out);
        this.serializer = new JSONSerializer(this.writer);
    }

    public void config(SerializerFeature feature, boolean state) {
        this.writer.config(feature, state);
    }

    public void startObject() {
        if (this.context != null) {
            beginStructure();
        }
        this.context = new JSONStreamContext(this.context, 1001);
        this.writer.write(123);
    }

    public void endObject() {
        this.writer.write(125);
        endStructure();
    }

    public void writeKey(String key) {
        writeObject(key);
    }

    public void writeValue(Object object) {
        writeObject(object);
    }

    public void writeObject(String object) {
        beforeWrite();
        this.serializer.write(object);
        afterWriter();
    }

    public void writeObject(Object object) {
        beforeWrite();
        this.serializer.write(object);
        afterWriter();
    }

    public void startArray() {
        if (this.context != null) {
            beginStructure();
        }
        this.context = new JSONStreamContext(this.context, PointerIconCompat.TYPE_WAIT);
        this.writer.write(91);
    }

    private void beginStructure() {
        int state = this.context.state;
        switch (this.context.state) {
            case 1001:
            case PointerIconCompat.TYPE_WAIT /* 1004 */:
                return;
            case 1002:
                this.writer.write(58);
                return;
            case PointerIconCompat.TYPE_HELP /* 1003 */:
            default:
                throw new JSONException("illegal state : " + state);
            case 1005:
                this.writer.write(44);
                return;
        }
    }

    public void endArray() {
        this.writer.write(93);
        endStructure();
    }

    private void endStructure() {
        this.context = this.context.parent;
        if (this.context != null) {
            int newState = -1;
            switch (this.context.state) {
                case 1001:
                    newState = 1002;
                    break;
                case 1002:
                    newState = PointerIconCompat.TYPE_HELP;
                    break;
                case PointerIconCompat.TYPE_WAIT /* 1004 */:
                    newState = 1005;
                    break;
            }
            if (newState != -1) {
                this.context.state = newState;
            }
        }
    }

    private void beforeWrite() {
        if (this.context == null) {
            return;
        }
        switch (this.context.state) {
            case 1001:
            case PointerIconCompat.TYPE_WAIT /* 1004 */:
            default:
                return;
            case 1002:
                this.writer.write(58);
                return;
            case PointerIconCompat.TYPE_HELP /* 1003 */:
                this.writer.write(44);
                return;
            case 1005:
                this.writer.write(44);
                return;
        }
    }

    private void afterWriter() {
        if (this.context != null) {
            int state = this.context.state;
            int newState = -1;
            switch (state) {
                case 1001:
                case PointerIconCompat.TYPE_HELP /* 1003 */:
                    newState = 1002;
                    break;
                case 1002:
                    newState = PointerIconCompat.TYPE_HELP;
                    break;
                case PointerIconCompat.TYPE_WAIT /* 1004 */:
                    newState = 1005;
                    break;
            }
            if (newState != -1) {
                this.context.state = newState;
            }
        }
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        this.writer.flush();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.writer.close();
    }
}
