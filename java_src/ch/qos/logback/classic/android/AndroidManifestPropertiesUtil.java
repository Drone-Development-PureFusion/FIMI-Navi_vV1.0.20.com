package ch.qos.logback.classic.android;

import ch.qos.logback.core.Context;
import ch.qos.logback.core.CoreConstants;
import ch.qos.logback.core.android.CommonPathUtil;
import ch.qos.logback.core.joran.spi.JoranException;
import ch.qos.logback.core.status.StatusManager;
import ch.qos.logback.core.status.WarnStatus;
import ch.qos.logback.core.util.Loader;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
/* loaded from: classes.dex */
public class AndroidManifestPropertiesUtil {
    public static void setAndroidProperties(Context context) throws JoranException {
        ASaxEventRecorder aSaxEventRecorder = new ASaxEventRecorder();
        aSaxEventRecorder.setFilter("-");
        aSaxEventRecorder.setAttributeWatch("manifest");
        StatusManager statusManager = context.getStatusManager();
        InputStream resourceAsStream = Loader.getClassLoaderOfObject(context).getResourceAsStream("AndroidManifest.xml");
        if (resourceAsStream == null) {
            statusManager.add(new WarnStatus("Could not find AndroidManifest.xml", context));
            return;
        }
        try {
            aSaxEventRecorder.recordEvents(resourceAsStream);
            context.putProperty(CoreConstants.EXT_DIR_KEY, CommonPathUtil.getMountedExternalStorageDirectoryPath());
            Map<String, String> attributeWatchValues = aSaxEventRecorder.getAttributeWatchValues();
            for (String str : attributeWatchValues.keySet()) {
                if (str.equals("android:versionName")) {
                    context.putProperty(CoreConstants.VERSION_NAME_KEY, attributeWatchValues.get(str));
                } else if (str.equals("android:versionCode")) {
                    context.putProperty(CoreConstants.VERSION_CODE_KEY, attributeWatchValues.get(str));
                } else if (str.equals("package")) {
                    context.putProperty(CoreConstants.PACKAGE_NAME_KEY, attributeWatchValues.get(str));
                }
            }
            String str2 = attributeWatchValues.get("package");
            if (str2 == null || str2.length() <= 0) {
                statusManager.add(new WarnStatus("Package name not found. Some properties cannot be set.", context));
            } else {
                context.putProperty(CoreConstants.DATA_DIR_KEY, CommonPathUtil.getFilesDirectoryPath(str2));
            }
        } finally {
            try {
                resourceAsStream.close();
            } catch (IOException e) {
            }
        }
    }
}
