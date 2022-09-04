package ch.qos.logback.core.rolling.helper;

import com.fimi.kernel.animutils.IOUtils;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Comparator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public class FileFilterUtil {
    public static String afterLastSlash(String str) {
        int lastIndexOf = str.lastIndexOf(47);
        return lastIndexOf == -1 ? str : str.substring(lastIndexOf + 1);
    }

    public static int extractCounter(File file, String str) {
        Pattern compile = Pattern.compile(str);
        String name = file.getName();
        Matcher matcher = compile.matcher(name);
        if (!matcher.matches()) {
            throw new IllegalStateException("The regex [" + str + "] should match [" + name + "]");
        }
        return new Integer(matcher.group(1)).intValue();
    }

    public static File[] filesInFolderMatchingStemRegex(File file, final String str) {
        return file == null ? new File[0] : (!file.exists() || !file.isDirectory()) ? new File[0] : file.listFiles(new FilenameFilter() { // from class: ch.qos.logback.core.rolling.helper.FileFilterUtil.3
            @Override // java.io.FilenameFilter
            public boolean accept(File file2, String str2) {
                return str2.matches(str);
            }
        });
    }

    public static int findHighestCounter(File[] fileArr, String str) {
        int i = Integer.MIN_VALUE;
        int length = fileArr.length;
        int i2 = 0;
        while (i2 < length) {
            int extractCounter = extractCounter(fileArr[i2], str);
            if (i >= extractCounter) {
                extractCounter = i;
            }
            i2++;
            i = extractCounter;
        }
        return i;
    }

    public static boolean isEmptyDirectory(File file) {
        if (!file.isDirectory()) {
            throw new IllegalArgumentException("[" + file + "] must be a directory");
        }
        String[] list = file.list();
        return list == null || list.length == 0;
    }

    public static void removeEmptyParentDirectories(File file, int i) {
        if (i >= 3) {
            return;
        }
        File parentFile = file.getParentFile();
        if (!parentFile.isDirectory() || !isEmptyDirectory(parentFile)) {
            return;
        }
        parentFile.delete();
        removeEmptyParentDirectories(parentFile, i + 1);
    }

    public static void reverseSortFileArrayByName(File[] fileArr) {
        Arrays.sort(fileArr, new Comparator<File>() { // from class: ch.qos.logback.core.rolling.helper.FileFilterUtil.2
            @Override // java.util.Comparator
            public int compare(File file, File file2) {
                return file2.getName().compareTo(file.getName());
            }
        });
    }

    public static String slashify(String str) {
        return str.replace('\\', IOUtils.DIR_SEPARATOR_UNIX);
    }

    public static void sortFileArrayByName(File[] fileArr) {
        Arrays.sort(fileArr, new Comparator<File>() { // from class: ch.qos.logback.core.rolling.helper.FileFilterUtil.1
            @Override // java.util.Comparator
            public int compare(File file, File file2) {
                return file.getName().compareTo(file2.getName());
            }
        });
    }
}
