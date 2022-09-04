package com.twitter.sdk.android.tweetui;

import android.content.res.Resources;
import android.support.p001v4.util.SparseArrayCompat;
import ch.qos.logback.classic.turbo.ReconfigureOnChangeFilter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes2.dex */
final class TweetDateUtils {
    static final long INVALID_DATE = -1;
    static final SimpleDateFormat DATE_TIME_RFC822 = new SimpleDateFormat("EEE MMM dd HH:mm:ss Z yyyy", Locale.ENGLISH);
    static final DateFormatter RELATIVE_DATE_FORMAT = new DateFormatter();

    private TweetDateUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long apiTimeToLong(String apiTime) {
        if (apiTime == null) {
            return -1L;
        }
        try {
            return DATE_TIME_RFC822.parse(apiTime).getTime();
        } catch (ParseException e) {
            return -1L;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isValidTimestamp(String timestamp) {
        return apiTimeToLong(timestamp) != -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String dotPrefix(String timestamp) {
        return "• " + timestamp;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getRelativeTimeString(Resources res, long currentTimeMillis, long timestamp) {
        long diff = currentTimeMillis - timestamp;
        if (diff >= 0) {
            if (diff < ReconfigureOnChangeFilter.DEFAULT_REFRESH_PERIOD) {
                int secs = (int) (diff / 1000);
                return res.getQuantityString(C2168R.plurals.tw__time_secs, secs, Integer.valueOf(secs));
            } else if (diff < 3600000) {
                int mins = (int) (diff / ReconfigureOnChangeFilter.DEFAULT_REFRESH_PERIOD);
                return res.getQuantityString(C2168R.plurals.tw__time_mins, mins, Integer.valueOf(mins));
            } else if (diff < 86400000) {
                int hours = (int) (diff / 3600000);
                return res.getQuantityString(C2168R.plurals.tw__time_hours, hours, Integer.valueOf(hours));
            } else {
                Calendar now = Calendar.getInstance();
                now.setTimeInMillis(currentTimeMillis);
                Calendar c = Calendar.getInstance();
                c.setTimeInMillis(timestamp);
                Date d = new Date(timestamp);
                if (now.get(1) == c.get(1)) {
                    return RELATIVE_DATE_FORMAT.formatShortDateString(res, d);
                }
                return RELATIVE_DATE_FORMAT.formatLongDateString(res, d);
            }
        }
        return RELATIVE_DATE_FORMAT.formatLongDateString(res, new Date(timestamp));
    }

    /* loaded from: classes2.dex */
    static class DateFormatter {
        private Locale currentLocale;
        private final SparseArrayCompat<SimpleDateFormat> dateFormatArray = new SparseArrayCompat<>();

        DateFormatter() {
        }

        synchronized String formatLongDateString(Resources res, Date date) {
            return getDateFormat(res, C2168R.string.tw__relative_date_format_long).format(date);
        }

        synchronized String formatShortDateString(Resources res, Date date) {
            return getDateFormat(res, C2168R.string.tw__relative_date_format_short).format(date);
        }

        private synchronized DateFormat getDateFormat(Resources res, int patternId) {
            SimpleDateFormat format;
            if (this.currentLocale == null || this.currentLocale != res.getConfiguration().locale) {
                this.currentLocale = res.getConfiguration().locale;
                this.dateFormatArray.clear();
            }
            format = this.dateFormatArray.get(patternId);
            if (format == null) {
                String pattern = res.getString(patternId);
                format = new SimpleDateFormat(pattern, Locale.getDefault());
                this.dateFormatArray.put(patternId, format);
            }
            return format;
        }
    }
}
