package ch.qos.logback.classic.android;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteStatement;
import ch.qos.logback.classic.p005db.SQLBuilder;
import ch.qos.logback.classic.p005db.names.DBNameResolver;
import ch.qos.logback.classic.p005db.names.DefaultDBNameResolver;
import ch.qos.logback.classic.spi.ILoggingEvent;
import ch.qos.logback.classic.spi.IThrowableProxy;
import ch.qos.logback.classic.spi.StackTraceElementProxy;
import ch.qos.logback.classic.spi.ThrowableProxyUtil;
import ch.qos.logback.core.CoreConstants;
import ch.qos.logback.core.UnsynchronizedAppenderBase;
import ch.qos.logback.core.android.CommonPathUtil;
import java.io.File;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class SQLiteAppender extends UnsynchronizedAppenderBase<ILoggingEvent> {
    private static final int ARG0_INDEX = 7;
    private static final int CALLER_CLASS_INDEX = 12;
    private static final int CALLER_FILENAME_INDEX = 11;
    private static final int CALLER_LINE_INDEX = 14;
    private static final int CALLER_METHOD_INDEX = 13;
    private static final short EXCEPTION_EXISTS = 2;
    private static final int FORMATTED_MESSAGE_INDEX = 2;
    private static final int LEVEL_STRING_INDEX = 4;
    private static final int LOGGER_NAME_INDEX = 3;
    private static final short PROPERTIES_EXIST = 1;
    private static final int REFERENCE_FLAG_INDEX = 6;
    private static final int THREAD_NAME_INDEX = 5;
    private static final int TIMESTMP_INDEX = 1;

    /* renamed from: db */
    private SQLiteDatabase f33db;
    private DBNameResolver dbNameResolver;
    private String insertExceptionSQL;
    private String insertPropertiesSQL;
    private String insertSQL;

    private String asStringTruncatedTo254(Object obj) {
        String str = null;
        if (obj != null) {
            str = obj.toString();
        }
        if (str != null && str.length() > 254) {
            str = str.substring(0, 254);
        }
        return str == null ? "" : str;
    }

    private void bindCallerData(SQLiteStatement sQLiteStatement, StackTraceElement[] stackTraceElementArr) throws SQLException {
        StackTraceElement stackTraceElement;
        if (stackTraceElementArr == null || stackTraceElementArr.length <= 0 || (stackTraceElement = stackTraceElementArr[0]) == null) {
            return;
        }
        sQLiteStatement.bindString(11, stackTraceElement.getFileName());
        sQLiteStatement.bindString(12, stackTraceElement.getClassName());
        sQLiteStatement.bindString(13, stackTraceElement.getMethodName());
        sQLiteStatement.bindString(14, Integer.toString(stackTraceElement.getLineNumber()));
    }

    private void bindLoggingEvent(SQLiteStatement sQLiteStatement, ILoggingEvent iLoggingEvent) throws SQLException {
        sQLiteStatement.bindLong(1, iLoggingEvent.getTimeStamp());
        sQLiteStatement.bindString(2, iLoggingEvent.getFormattedMessage());
        sQLiteStatement.bindString(3, iLoggingEvent.getLoggerName());
        sQLiteStatement.bindString(4, iLoggingEvent.getLevel().toString());
        sQLiteStatement.bindString(5, iLoggingEvent.getThreadName());
        sQLiteStatement.bindLong(6, computeReferenceMask(iLoggingEvent));
    }

    private void bindLoggingEventArguments(SQLiteStatement sQLiteStatement, Object[] objArr) throws SQLException {
        int length = objArr != null ? objArr.length : 0;
        for (int i = 0; i < length && i < 4; i++) {
            sQLiteStatement.bindString(i + 7, asStringTruncatedTo254(objArr[i]));
        }
    }

    private static short computeReferenceMask(ILoggingEvent iLoggingEvent) {
        short s = 0;
        int size = iLoggingEvent.getMDCPropertyMap() != null ? iLoggingEvent.getMDCPropertyMap().keySet().size() : 0;
        int size2 = iLoggingEvent.getLoggerContextVO().getPropertyMap() != null ? iLoggingEvent.getLoggerContextVO().getPropertyMap().size() : 0;
        if (size > 0 || size2 > 0) {
            s = 1;
        }
        return iLoggingEvent.getThrowableProxy() != null ? (short) (s | 2) : s;
    }

    private void insertException(SQLiteStatement sQLiteStatement, String str, short s, long j) throws SQLException {
        sQLiteStatement.bindLong(1, j);
        sQLiteStatement.bindLong(2, s);
        sQLiteStatement.bindString(3, str);
        sQLiteStatement.executeInsert();
    }

    private void insertProperties(Map<String, String> map, long j) throws SQLException {
        if (map.size() > 0) {
            SQLiteStatement compileStatement = this.f33db.compileStatement(this.insertPropertiesSQL);
            try {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    compileStatement.bindLong(1, j);
                    compileStatement.bindString(2, entry.getKey());
                    compileStatement.bindString(3, entry.getValue());
                    compileStatement.executeInsert();
                }
            } finally {
                compileStatement.close();
            }
        }
    }

    private void insertThrowable(IThrowableProxy iThrowableProxy, long j) throws SQLException {
        SQLiteStatement compileStatement = this.f33db.compileStatement(this.insertExceptionSQL);
        short s = 0;
        while (iThrowableProxy != null) {
            try {
                StringBuilder sb = new StringBuilder();
                ThrowableProxyUtil.subjoinFirstLine(sb, iThrowableProxy);
                insertException(compileStatement, sb.toString(), s, j);
                int commonFrames = iThrowableProxy.getCommonFrames();
                StackTraceElementProxy[] stackTraceElementProxyArray = iThrowableProxy.getStackTraceElementProxyArray();
                int i = 0;
                s = (short) (s + 1);
                while (i < stackTraceElementProxyArray.length - commonFrames) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append('\t');
                    ThrowableProxyUtil.subjoinSTEP(sb2, stackTraceElementProxyArray[i]);
                    insertException(compileStatement, sb2.toString(), s, j);
                    i++;
                    s = (short) (s + 1);
                }
                if (commonFrames > 0) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append('\t').append("... ").append(commonFrames).append(" common frames omitted");
                    insertException(compileStatement, sb3.toString(), s, j);
                    s = (short) (s + 1);
                }
                iThrowableProxy = iThrowableProxy.getCause();
            } finally {
                compileStatement.close();
            }
        }
    }

    private Map<String, String> mergePropertyMaps(ILoggingEvent iLoggingEvent) {
        HashMap hashMap = new HashMap();
        Map<String, String> propertyMap = iLoggingEvent.getLoggerContextVO().getPropertyMap();
        if (propertyMap != null) {
            hashMap.putAll(propertyMap);
        }
        Map<String, String> mDCPropertyMap = iLoggingEvent.getMDCPropertyMap();
        if (mDCPropertyMap != null) {
            hashMap.putAll(mDCPropertyMap);
        }
        return hashMap;
    }

    private void secondarySubAppend(ILoggingEvent iLoggingEvent, long j) throws SQLException {
        insertProperties(mergePropertyMaps(iLoggingEvent), j);
        if (iLoggingEvent.getThrowableProxy() != null) {
            insertThrowable(iLoggingEvent.getThrowableProxy(), j);
        }
    }

    private long subAppend(ILoggingEvent iLoggingEvent, SQLiteStatement sQLiteStatement) throws SQLException {
        bindLoggingEvent(sQLiteStatement, iLoggingEvent);
        bindLoggingEventArguments(sQLiteStatement, iLoggingEvent.getArgumentArray());
        bindCallerData(sQLiteStatement, iLoggingEvent.getCallerData());
        try {
            return sQLiteStatement.executeInsert();
        } catch (SQLiteException e) {
            addWarn("Failed to insert loggingEvent", e);
            return -1L;
        }
    }

    @Override // ch.qos.logback.core.UnsynchronizedAppenderBase
    public void append(ILoggingEvent iLoggingEvent) {
        if (isStarted()) {
            try {
                SQLiteStatement compileStatement = this.f33db.compileStatement(this.insertSQL);
                this.f33db.beginTransaction();
                long subAppend = subAppend(iLoggingEvent, compileStatement);
                if (subAppend != -1) {
                    secondarySubAppend(iLoggingEvent, subAppend);
                    this.f33db.setTransactionSuccessful();
                }
                if (this.f33db.inTransaction()) {
                    this.f33db.endTransaction();
                }
                compileStatement.close();
            } catch (Throwable th) {
                addError("Cannot append event", th);
            }
        }
    }

    protected void finalize() throws Throwable {
        this.f33db.close();
    }

    public void setDbNameResolver(DBNameResolver dBNameResolver) {
        this.dbNameResolver = dBNameResolver;
    }

    @Override // ch.qos.logback.core.UnsynchronizedAppenderBase, ch.qos.logback.core.spi.LifeCycle
    public void start() {
        String str = null;
        boolean z = true;
        this.started = false;
        if (getContext() != null) {
            str = getContext().getProperty(CoreConstants.PACKAGE_NAME_KEY);
        }
        if (str == null || str.length() == 0) {
            addError("Cannot create database without package name");
            return;
        }
        try {
            File file = new File(CommonPathUtil.getDatabaseDirectoryPath(str), "logback.db");
            file.getParentFile().mkdirs();
            this.f33db = SQLiteDatabase.openOrCreateDatabase(file.getPath(), (SQLiteDatabase.CursorFactory) null);
        } catch (SQLiteException e) {
            addError("Cannot open database", e);
            z = false;
        }
        if (!z) {
            return;
        }
        if (this.dbNameResolver == null) {
            this.dbNameResolver = new DefaultDBNameResolver();
        }
        this.insertExceptionSQL = SQLBuilder.buildInsertExceptionSQL(this.dbNameResolver);
        this.insertPropertiesSQL = SQLBuilder.buildInsertPropertiesSQL(this.dbNameResolver);
        this.insertSQL = SQLBuilder.buildInsertSQL(this.dbNameResolver);
        try {
            this.f33db.execSQL(SQLBuilder.buildCreateLoggingEventTableSQL(this.dbNameResolver));
            this.f33db.execSQL(SQLBuilder.buildCreatePropertyTableSQL(this.dbNameResolver));
            this.f33db.execSQL(SQLBuilder.buildCreateExceptionTableSQL(this.dbNameResolver));
            super.start();
            this.started = true;
        } catch (SQLiteException e2) {
            addError("Cannot create database tables", e2);
        }
    }

    @Override // ch.qos.logback.core.UnsynchronizedAppenderBase, ch.qos.logback.core.spi.LifeCycle
    public void stop() {
        this.f33db.close();
    }
}
