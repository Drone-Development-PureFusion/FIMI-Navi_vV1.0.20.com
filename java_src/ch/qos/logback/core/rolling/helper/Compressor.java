package ch.qos.logback.core.rolling.helper;

import ch.qos.logback.core.spi.ContextAwareBase;
import ch.qos.logback.core.status.ErrorStatus;
import ch.qos.logback.core.status.WarnStatus;
import ch.qos.logback.core.util.FileUtil;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.zip.GZIPOutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
/* loaded from: classes.dex */
public class Compressor extends ContextAwareBase {
    static final int BUFFER_SIZE = 8192;
    final CompressionMode compressionMode;

    public Compressor(CompressionMode compressionMode) {
        this.compressionMode = compressionMode;
    }

    public static String computeFileNameStr_WCS(String str, CompressionMode compressionMode) {
        int length = str.length();
        switch (compressionMode) {
            case GZ:
                return str.endsWith(".gz") ? str.substring(0, length - 3) : str;
            case ZIP:
                return str.endsWith(".zip") ? str.substring(0, length - 4) : str;
            case NONE:
                return str;
            default:
                throw new IllegalStateException("Execution should not reach this point");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12, types: [java.util.zip.GZIPOutputStream] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, java.io.File] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.util.zip.GZIPOutputStream] */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.util.zip.GZIPOutputStream] */
    /* JADX WARN: Type inference failed for: r3v10, types: [java.io.BufferedInputStream] */
    /* JADX WARN: Type inference failed for: r3v11, types: [java.io.BufferedInputStream] */
    /* JADX WARN: Type inference failed for: r3v12, types: [java.io.BufferedInputStream] */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r7v0, types: [ch.qos.logback.core.rolling.helper.Compressor, java.lang.Object] */
    private void gzCompress(String str, String str2) {
        BufferedInputStream bufferedInputStream;
        File file = new File(str);
        if (!file.exists()) {
            addStatus(new WarnStatus("The file to compress named [" + str + "] does not exist.", this));
            return;
        }
        if (!str2.endsWith(".gz")) {
            str2 = str2 + ".gz";
        }
        ?? file2 = new File(str2);
        if (file2.exists()) {
            addWarn("The target compressed file named [" + str2 + "] exist already. Aborting file compression.");
            return;
        }
        ?? r3 = "GZ compressing [" + file + "] as [" + ((Object) file2) + "]";
        addInfo(r3);
        createMissingTargetDirsIfNecessary(file2);
        try {
            try {
                r3 = new BufferedInputStream(new FileInputStream(str));
                try {
                    file2 = new GZIPOutputStream(new FileOutputStream(str2));
                    try {
                        byte[] bArr = new byte[8192];
                        while (true) {
                            int read = r3.read(bArr);
                            if (read == -1) {
                                break;
                            }
                            file2.write(bArr, 0, read);
                        }
                        r3.close();
                        bufferedInputStream = null;
                    } catch (Exception e) {
                        e = e;
                    }
                } catch (Exception e2) {
                    e = e2;
                    file2 = 0;
                } catch (Throwable th) {
                    th = th;
                    file2 = 0;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e3) {
            e = e3;
            file2 = 0;
            r3 = 0;
        } catch (Throwable th3) {
            th = th3;
            file2 = 0;
            r3 = 0;
        }
        try {
            file2.close();
            GZIPOutputStream gZIPOutputStream = null;
            if (!file.delete()) {
                addStatus(new WarnStatus("Could not delete [" + str + "].", this));
            }
            if (0 != 0) {
                try {
                    bufferedInputStream.close();
                } catch (IOException e4) {
                }
            }
            if (0 == 0) {
                return;
            }
            try {
                gZIPOutputStream.close();
            } catch (IOException e5) {
            }
        } catch (Exception e6) {
            e = e6;
            r3 = 0;
            addStatus(new ErrorStatus("Error occurred while compressing [" + str + "] into [" + str2 + "].", this, e));
            if (r3 != 0) {
                try {
                    r3.close();
                } catch (IOException e7) {
                }
            }
            if (file2 == 0) {
                return;
            }
            try {
                file2.close();
            } catch (IOException e8) {
            }
        } catch (Throwable th4) {
            th = th4;
            r3 = 0;
            if (r3 != 0) {
                try {
                    r3.close();
                } catch (IOException e9) {
                }
            }
            if (file2 != 0) {
                try {
                    file2.close();
                } catch (IOException e10) {
                }
            }
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12, types: [java.util.zip.ZipOutputStream] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, java.io.File] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.util.zip.ZipOutputStream] */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.util.zip.ZipOutputStream] */
    /* JADX WARN: Type inference failed for: r3v10, types: [java.io.BufferedInputStream] */
    /* JADX WARN: Type inference failed for: r3v11, types: [java.io.BufferedInputStream] */
    /* JADX WARN: Type inference failed for: r3v12, types: [java.io.BufferedInputStream] */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r7v0, types: [ch.qos.logback.core.rolling.helper.Compressor, java.lang.Object] */
    private void zipCompress(String str, String str2, String str3) {
        BufferedInputStream bufferedInputStream;
        File file = new File(str);
        if (!file.exists()) {
            addStatus(new WarnStatus("The file to compress named [" + str + "] does not exist.", this));
        } else if (str3 == null) {
            addStatus(new WarnStatus("The innerEntryName parameter cannot be null", this));
        } else {
            if (!str2.endsWith(".zip")) {
                str2 = str2 + ".zip";
            }
            ?? file2 = new File(str2);
            if (file2.exists()) {
                addStatus(new WarnStatus("The target compressed file named [" + str2 + "] exist already.", this));
                return;
            }
            ?? r3 = "ZIP compressing [" + file + "] as [" + ((Object) file2) + "]";
            addInfo(r3);
            createMissingTargetDirsIfNecessary(file2);
            try {
                try {
                    r3 = new BufferedInputStream(new FileInputStream(str));
                    try {
                        file2 = new ZipOutputStream(new FileOutputStream(str2));
                        try {
                            file2.putNextEntry(computeZipEntry(str3));
                            byte[] bArr = new byte[8192];
                            while (true) {
                                int read = r3.read(bArr);
                                if (read == -1) {
                                    break;
                                }
                                file2.write(bArr, 0, read);
                            }
                            r3.close();
                            bufferedInputStream = null;
                        } catch (Exception e) {
                            e = e;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        file2 = 0;
                    } catch (Throwable th) {
                        th = th;
                        file2 = 0;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e3) {
                e = e3;
                file2 = 0;
                r3 = 0;
            } catch (Throwable th3) {
                th = th3;
                file2 = 0;
                r3 = 0;
            }
            try {
                file2.close();
                ZipOutputStream zipOutputStream = null;
                if (!file.delete()) {
                    addStatus(new WarnStatus("Could not delete [" + str + "].", this));
                }
                if (0 != 0) {
                    try {
                        bufferedInputStream.close();
                    } catch (IOException e4) {
                    }
                }
                if (0 == 0) {
                    return;
                }
                try {
                    zipOutputStream.close();
                } catch (IOException e5) {
                }
            } catch (Exception e6) {
                e = e6;
                r3 = 0;
                addStatus(new ErrorStatus("Error occurred while compressing [" + str + "] into [" + str2 + "].", this, e));
                if (r3 != 0) {
                    try {
                        r3.close();
                    } catch (IOException e7) {
                    }
                }
                if (file2 == 0) {
                    return;
                }
                try {
                    file2.close();
                } catch (IOException e8) {
                }
            } catch (Throwable th4) {
                th = th4;
                r3 = 0;
                if (r3 != 0) {
                    try {
                        r3.close();
                    } catch (IOException e9) {
                    }
                }
                if (file2 != 0) {
                    try {
                        file2.close();
                    } catch (IOException e10) {
                    }
                }
                throw th;
            }
        }
    }

    public void compress(String str, String str2, String str3) {
        switch (this.compressionMode) {
            case GZ:
                gzCompress(str, str2);
                return;
            case ZIP:
                zipCompress(str, str2, str3);
                return;
            case NONE:
                throw new UnsupportedOperationException("compress method called in NONE compression mode");
            default:
                return;
        }
    }

    ZipEntry computeZipEntry(File file) {
        return computeZipEntry(file.getName());
    }

    ZipEntry computeZipEntry(String str) {
        return new ZipEntry(computeFileNameStr_WCS(str, this.compressionMode));
    }

    void createMissingTargetDirsIfNecessary(File file) {
        if (FileUtil.isParentDirectoryCreationRequired(file)) {
            if (!FileUtil.createMissingParentDirectories(file)) {
                addError("Failed to create parent directories for [" + file.getAbsolutePath() + "]");
            } else {
                addInfo("Created missing parent directories for [" + file.getAbsolutePath() + "]");
            }
        }
    }

    public String toString() {
        return getClass().getName();
    }
}
