package ch.qos.logback.core.util;

import ch.qos.logback.core.Context;
import ch.qos.logback.core.rolling.RolloverFailure;
import ch.qos.logback.core.spi.ContextAwareBase;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
/* loaded from: classes.dex */
public class FileUtil extends ContextAwareBase {
    static final int BUF_SIZE = 32768;

    public FileUtil(Context context) {
        setContext(context);
    }

    public static boolean createMissingParentDirectories(File file) {
        File parentFile = file.getParentFile();
        if (parentFile == null) {
            throw new IllegalStateException(file + " should not have a null parent");
        }
        if (!parentFile.exists()) {
            return parentFile.mkdirs();
        }
        throw new IllegalStateException(file + " should not have existing parent directory");
    }

    public static URL fileToURL(File file) {
        try {
            return file.toURI().toURL();
        } catch (MalformedURLException e) {
            throw new RuntimeException("Unexpected exception on file [" + file + "]", e);
        }
    }

    public static boolean isParentDirectoryCreationRequired(File file) {
        File parentFile = file.getParentFile();
        return parentFile != null && !parentFile.exists();
    }

    public static String prefixRelativePath(String str, String str2) {
        return (str == null || OptionHelper.isEmpty(str.trim()) || new File(str2).isAbsolute()) ? str2 : str + "/" + str2;
    }

    public void copy(String str, String str2) throws RolloverFailure {
        BufferedOutputStream bufferedOutputStream;
        BufferedInputStream bufferedInputStream;
        BufferedInputStream bufferedInputStream2;
        try {
            try {
                bufferedInputStream = new BufferedInputStream(new FileInputStream(str));
                try {
                    bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(str2));
                    try {
                        byte[] bArr = new byte[32768];
                        while (true) {
                            int read = bufferedInputStream.read(bArr);
                            if (read == -1) {
                                break;
                            }
                            bufferedOutputStream.write(bArr, 0, read);
                        }
                        bufferedInputStream.close();
                        bufferedInputStream2 = null;
                    } catch (IOException e) {
                        e = e;
                    }
                    try {
                        bufferedOutputStream.close();
                        BufferedOutputStream bufferedOutputStream2 = null;
                        if (0 != 0) {
                            try {
                                bufferedInputStream2.close();
                            } catch (IOException e2) {
                            }
                        }
                        if (0 == 0) {
                            return;
                        }
                        try {
                            bufferedOutputStream2.close();
                        } catch (IOException e3) {
                        }
                    } catch (IOException e4) {
                        e = e4;
                        String str3 = "Failed to copy [" + str + "] to [" + str2 + "]";
                        addError(str3, e);
                        throw new RolloverFailure(str3);
                    } catch (Throwable th) {
                        th = th;
                        bufferedInputStream = null;
                        if (bufferedInputStream != null) {
                            try {
                                bufferedInputStream.close();
                            } catch (IOException e5) {
                            }
                        }
                        if (bufferedOutputStream != null) {
                            try {
                                bufferedOutputStream.close();
                            } catch (IOException e6) {
                            }
                        }
                        throw th;
                    }
                } catch (IOException e7) {
                    e = e7;
                } catch (Throwable th2) {
                    th = th2;
                    bufferedOutputStream = null;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (IOException e8) {
            e = e8;
        } catch (Throwable th4) {
            th = th4;
            bufferedOutputStream = null;
            bufferedInputStream = null;
        }
    }
}
