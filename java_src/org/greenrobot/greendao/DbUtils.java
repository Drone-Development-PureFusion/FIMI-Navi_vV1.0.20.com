package org.greenrobot.greendao;

import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import com.fimi.kernel.connect.tcp.SocketOption;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.greenrobot.greendao.database.Database;
/* loaded from: classes2.dex */
public class DbUtils {
    public static void vacuum(Database db) {
        db.execSQL("VACUUM");
    }

    public static int executeSqlScript(Context context, Database db, String assetFilename) throws IOException {
        return executeSqlScript(context, db, assetFilename, true);
    }

    public static int executeSqlScript(Context context, Database db, String assetFilename, boolean transactional) throws IOException {
        int count;
        byte[] bytes = readAsset(context, assetFilename);
        String sql = new String(bytes, SocketOption.DEFAULT_CHARSET);
        String[] lines = sql.split(";(\\s)*[\n\r]");
        if (transactional) {
            count = executeSqlStatementsInTx(db, lines);
        } else {
            count = executeSqlStatements(db, lines);
        }
        DaoLog.m23i("Executed " + count + " statements from SQL script '" + assetFilename + "'");
        return count;
    }

    public static int executeSqlStatementsInTx(Database db, String[] statements) {
        db.beginTransaction();
        try {
            int count = executeSqlStatements(db, statements);
            db.setTransactionSuccessful();
            return count;
        } finally {
            db.endTransaction();
        }
    }

    public static int executeSqlStatements(Database db, String[] statements) {
        int count = 0;
        for (String line : statements) {
            String line2 = line.trim();
            if (line2.length() > 0) {
                db.execSQL(line2);
                count++;
            }
        }
        return count;
    }

    public static int copyAllBytes(InputStream in, OutputStream out) throws IOException {
        int byteCount = 0;
        byte[] buffer = new byte[4096];
        while (true) {
            int read = in.read(buffer);
            if (read != -1) {
                out.write(buffer, 0, read);
                byteCount += read;
            } else {
                return byteCount;
            }
        }
    }

    public static byte[] readAllBytes(InputStream in) throws IOException {
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        copyAllBytes(in, out);
        return out.toByteArray();
    }

    public static byte[] readAsset(Context context, String filename) throws IOException {
        InputStream in = context.getResources().getAssets().open(filename);
        try {
            return readAllBytes(in);
        } finally {
            in.close();
        }
    }

    public static void logTableDump(SQLiteDatabase db, String tablename) {
        Cursor cursor = db.query(tablename, null, null, null, null, null, null);
        try {
            String dump = DatabaseUtils.dumpCursorToString(cursor);
            DaoLog.m27d(dump);
        } finally {
            cursor.close();
        }
    }
}
