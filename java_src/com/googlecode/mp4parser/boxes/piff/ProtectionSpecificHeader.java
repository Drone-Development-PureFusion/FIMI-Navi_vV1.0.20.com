package com.googlecode.mp4parser.boxes.piff;

import ch.qos.logback.core.CoreConstants;
import com.coremedia.iso.Hex;
import com.googlecode.mp4parser.contentprotection.GenericHeader;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes2.dex */
public abstract class ProtectionSpecificHeader {
    protected static Map<UUID, Class<? extends ProtectionSpecificHeader>> uuidRegistry = new HashMap();

    public abstract ByteBuffer getData();

    public abstract UUID getSystemId();

    public abstract void parse(ByteBuffer byteBuffer);

    public boolean equals(Object obj) {
        throw new RuntimeException("somebody called equals on me but that's not supposed to happen.");
    }

    public static ProtectionSpecificHeader createFor(UUID systemId, ByteBuffer bufferWrapper) {
        Class<? extends ProtectionSpecificHeader> aClass = uuidRegistry.get(systemId);
        ProtectionSpecificHeader protectionSpecificHeader = null;
        if (aClass != null) {
            try {
                ProtectionSpecificHeader protectionSpecificHeader2 = aClass.newInstance();
                protectionSpecificHeader = protectionSpecificHeader2;
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            } catch (InstantiationException e2) {
                throw new RuntimeException(e2);
            }
        }
        if (protectionSpecificHeader == null) {
            protectionSpecificHeader = new GenericHeader();
        }
        protectionSpecificHeader.parse(bufferWrapper);
        return protectionSpecificHeader;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ProtectionSpecificHeader");
        sb.append("{data=");
        ByteBuffer data = getData().duplicate();
        data.rewind();
        byte[] bytes = new byte[data.limit()];
        data.get(bytes);
        sb.append(Hex.encodeHex(bytes));
        sb.append(CoreConstants.CURLY_RIGHT);
        return sb.toString();
    }
}
