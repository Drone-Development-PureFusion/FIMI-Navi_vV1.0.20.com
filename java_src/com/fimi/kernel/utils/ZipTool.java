package com.fimi.kernel.utils;

import com.file.zip.ZipEntry;
import com.file.zip.ZipFile;
import com.file.zip.ZipOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
/* loaded from: classes.dex */
public class ZipTool {
    public static final int EXIST_UNZIPFILE = 2;
    public static final int EXIST_ZIPFILE = 4;
    public static final int NOTEXIST_ZIPFILE = 1;
    public static final int NULL_ZIPPATH = 0;
    public static final int ZIPOPTION_FAIL = 5;
    public static final int ZIPOPTION_SUCCESS = 3;

    public static int unzip(String zipFilePath, String unzipPath) {
        if (zipFilePath == null || "".equals(zipFilePath.trim())) {
            return 0;
        }
        File dirFile = new File(unzipPath);
        if (!dirFile.exists()) {
            dirFile.mkdirs();
        }
        File file = new File(zipFilePath);
        if (!file.exists()) {
            return 1;
        }
        try {
            ZipFile zipFile = new ZipFile(file, "GBK");
            Enumeration<? extends ZipEntry> entries = zipFile.getEntries();
            String unzipAbpath = dirFile.getAbsolutePath();
            while (entries.hasMoreElements()) {
                ZipEntry entry = entries.nextElement();
                unzipEachFile(zipFile, entry, unzipAbpath);
            }
            return 3;
        } catch (IOException e) {
            e.printStackTrace();
            return 5;
        }
    }

    private static void unzipEachFile(ZipFile zipFile, ZipEntry entry, String unzipAbpath) {
        byte[] buffer = new byte[5120];
        String name = entry.getName();
        String fileName = name;
        String tempDir = "";
        if (entry.isDirectory()) {
            File tempFile = new File(unzipAbpath + File.separator + name);
            if (!tempFile.exists()) {
                tempFile.mkdirs();
            }
        }
        int index = name.lastIndexOf(File.separator);
        if (index != -1) {
            fileName = name.substring(index, name.length());
            tempDir = name.substring(0, index);
            File tempDirFile = new File(unzipAbpath + File.separator + tempDir);
            if (!tempDirFile.exists()) {
                tempDirFile.mkdirs();
            }
        }
        String zipPath = unzipAbpath + File.separator + tempDir + fileName;
        File tempFile2 = new File(zipPath);
        InputStream is = null;
        FileOutputStream fos = null;
        try {
            try {
                is = zipFile.getInputStream(entry);
                if (!tempFile2.exists()) {
                    tempFile2.createNewFile();
                }
                FileOutputStream fos2 = new FileOutputStream(tempFile2);
                while (true) {
                    try {
                        int readSize = is.read(buffer);
                        if (readSize > 0) {
                            fos2.write(buffer, 0, readSize);
                        } else {
                            try {
                                is.close();
                                fos2.close();
                                return;
                            } catch (IOException e) {
                                new File(unzipAbpath).delete();
                                e.printStackTrace();
                                return;
                            }
                        }
                    } catch (Exception e2) {
                        e = e2;
                        fos = fos2;
                        new File(unzipAbpath).delete();
                        e.printStackTrace();
                        try {
                            is.close();
                            fos.close();
                            return;
                        } catch (IOException e3) {
                            new File(unzipAbpath).delete();
                            e3.printStackTrace();
                            return;
                        }
                    } catch (Throwable th) {
                        th = th;
                        fos = fos2;
                        try {
                            is.close();
                            fos.close();
                        } catch (IOException e4) {
                            new File(unzipAbpath).delete();
                            e4.printStackTrace();
                        }
                        throw th;
                    }
                }
            } catch (Exception e5) {
                e = e5;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static int zip(String newZipPath, File[] wantZipFile) {
        ZipOutputStream zos;
        File file = new File(newZipPath);
        if (file.exists()) {
            return 4;
        }
        String filePath = file.getAbsolutePath();
        String basePath = filePath.substring(0, filePath.lastIndexOf(File.separator));
        File dirFile = new File(basePath);
        if (!dirFile.exists()) {
            dirFile.mkdirs();
        }
        ZipOutputStream zos2 = null;
        try {
            try {
                if (!file.exists()) {
                    file.createNewFile();
                }
                FileOutputStream fos = new FileOutputStream(file);
                zos = new ZipOutputStream(fos);
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e) {
        }
        try {
            for (File tempFile : wantZipFile) {
                if (tempFile.exists()) {
                    zipEachFile(zos, tempFile, "");
                }
            }
            try {
                zos.close();
                return 3;
            } catch (IOException e2) {
                file.delete();
                e2.printStackTrace();
                return 5;
            }
        } catch (IOException e3) {
            zos2 = zos;
            file.delete();
            try {
                zos2.close();
                return 5;
            } catch (IOException e4) {
                file.delete();
                e4.printStackTrace();
                return 5;
            }
        } catch (Throwable th2) {
            th = th2;
            zos2 = zos;
            try {
                zos2.close();
                throw th;
            } catch (IOException e5) {
                file.delete();
                e5.printStackTrace();
                return 5;
            }
        }
    }

    private static void zipEachFile(ZipOutputStream zos, File zipFile, String baseDir) {
        FileInputStream fis;
        if (zipFile.isDirectory()) {
            String baseDir2 = baseDir + zipFile.getName() + File.separator;
            File[] tempFiles = zipFile.listFiles();
            for (File tempFile : tempFiles) {
                zipEachFile(zos, tempFile, baseDir2);
            }
            return;
        }
        FileInputStream fis2 = null;
        try {
            try {
                ZipEntry entry = new ZipEntry(baseDir + zipFile.getName());
                try {
                    zos.putNextEntry(entry);
                    fis = new FileInputStream(zipFile);
                } catch (IOException e) {
                    e = e;
                } catch (Throwable th) {
                    th = th;
                }
            } catch (IOException e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            byte[] buffer = new byte[5120];
            while (true) {
                int readSize = fis.read(buffer);
                if (readSize > 0) {
                    zos.write(buffer, 0, readSize);
                } else {
                    try {
                        fis.close();
                        zos.closeEntry();
                        return;
                    } catch (IOException e3) {
                        e3.printStackTrace();
                        return;
                    }
                }
            }
        } catch (IOException e4) {
            e = e4;
            fis2 = fis;
            e.printStackTrace();
            try {
                fis2.close();
                zos.closeEntry();
            } catch (IOException e5) {
                e5.printStackTrace();
            }
        } catch (Throwable th3) {
            th = th3;
            fis2 = fis;
            try {
                fis2.close();
                zos.closeEntry();
            } catch (IOException e6) {
                e6.printStackTrace();
            }
            throw th;
        }
    }
}
