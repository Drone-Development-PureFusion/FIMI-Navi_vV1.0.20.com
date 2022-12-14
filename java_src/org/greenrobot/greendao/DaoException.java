package org.greenrobot.greendao;

import android.database.SQLException;
/* loaded from: classes2.dex */
public class DaoException extends SQLException {
    private static final long serialVersionUID = -5877937327907457779L;

    public DaoException() {
    }

    public DaoException(String error) {
        super(error);
    }

    public DaoException(String error, Throwable cause) {
        super(error);
        safeInitCause(cause);
    }

    public DaoException(Throwable th) {
        safeInitCause(th);
    }

    protected void safeInitCause(Throwable cause) {
        try {
            initCause(cause);
        } catch (Throwable e) {
            DaoLog.m24e("Could not set initial cause", e);
            DaoLog.m24e("Initial cause is:", cause);
        }
    }
}
