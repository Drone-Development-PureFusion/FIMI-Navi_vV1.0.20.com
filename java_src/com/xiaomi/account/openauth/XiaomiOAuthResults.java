package com.xiaomi.account.openauth;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
/* loaded from: classes2.dex */
public class XiaomiOAuthResults {
    private static final String TAG = "XiaomiOAuthResults";
    private final Bundle contentBundle;
    private final Error errorResult;
    private final Success successResult;

    private XiaomiOAuthResults(Bundle contentBundle, Error error) {
        this.contentBundle = contentBundle;
        this.successResult = null;
        this.errorResult = error;
    }

    private XiaomiOAuthResults(Bundle contentBundle, Success success) {
        this.contentBundle = contentBundle;
        this.successResult = success;
        this.errorResult = null;
    }

    public Bundle getContentBundle() {
        return this.contentBundle;
    }

    public String getAccessToken() {
        if (this.successResult != null) {
            return this.successResult.accessToken;
        }
        return null;
    }

    public String getExpiresIn() {
        if (this.successResult != null) {
            return this.successResult.expiresIn;
        }
        return null;
    }

    public String getScopes() {
        if (this.successResult != null) {
            return this.successResult.scopes;
        }
        return null;
    }

    public String getState() {
        if (this.successResult != null) {
            return this.successResult.state;
        }
        return null;
    }

    public String getTokenType() {
        if (this.successResult != null) {
            return this.successResult.tokenType;
        }
        return null;
    }

    public String getMacKey() {
        if (this.successResult != null) {
            return this.successResult.macKey;
        }
        return null;
    }

    public String getMacAlgorithm() {
        if (this.successResult != null) {
            return this.successResult.macAlgorithm;
        }
        return null;
    }

    public String getCode() {
        if (this.successResult != null) {
            return this.successResult.code;
        }
        return null;
    }

    public int getErrorCode() {
        if (this.errorResult != null) {
            return this.errorResult.errorCode;
        }
        return 0;
    }

    public String getErrorMessage() {
        if (this.errorResult != null) {
            return this.errorResult.errorMessage;
        }
        return null;
    }

    public boolean hasError() {
        return this.errorResult != null;
    }

    /* loaded from: classes2.dex */
    private static class Success {
        public final String accessToken;
        public final String code;
        public final String expiresIn;
        public final String macAlgorithm;
        public final String macKey;
        public final String scopes;
        public final String state;
        public final String tokenType;

        public Success(String accessToken, String expiresIn, String scopes, String state, String tokenType, String macKey, String macAlgorithm, String code) {
            this.accessToken = accessToken;
            this.expiresIn = expiresIn;
            this.scopes = scopes;
            this.state = state;
            this.tokenType = tokenType;
            this.macKey = macKey;
            this.macAlgorithm = macAlgorithm;
            this.code = code;
        }

        public String toString() {
            String text = "accessToken=" + this.accessToken + ",expiresIn=" + this.expiresIn + ",scope=" + this.scopes + ",state=" + this.state + ",tokenType=" + this.tokenType + ",macKey=" + this.macKey + ",macAlogorithm=" + this.macAlgorithm + ",code=" + this.code;
            return text;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Success parseBundle(Bundle bundle) {
            String accessToken = XiaomiOAuthResults.getStringCompatibly(bundle, "access_token", XiaomiOAuthConstants.EXTRA_ACCESS_TOKEN);
            String macKey = XiaomiOAuthResults.getStringCompatibly(bundle, XiaomiOAuthConstants.EXTRA_MAC_KEY_2, XiaomiOAuthConstants.EXTRA_MAC_KEY);
            String macAlgorithm = XiaomiOAuthResults.getStringCompatibly(bundle, XiaomiOAuthConstants.EXTRA_MAC_ALGORITHM_2, XiaomiOAuthConstants.EXTRA_MAC_ALGORITHM);
            String expiresIn = XiaomiOAuthResults.getIntOrStringCompatibly(bundle, "expires_in", XiaomiOAuthConstants.EXTRA_EXPIRES_IN);
            String scope = XiaomiOAuthResults.getStringCompatibly(bundle, "scope", XiaomiOAuthConstants.EXTRA_SCOPE);
            String state = XiaomiOAuthResults.getStringCompatibly(bundle, XiaomiOAuthConstants.EXTRA_STATE_2, XiaomiOAuthConstants.EXTRA_STATE);
            String tokenType = XiaomiOAuthResults.getStringCompatibly(bundle, XiaomiOAuthConstants.EXTRA_TOKEN_TYPE_2, XiaomiOAuthConstants.EXTRA_TOKEN_TYPE);
            String code = XiaomiOAuthResults.getStringCompatibly(bundle, "code", XiaomiOAuthConstants.EXTRA_CODE);
            return new Success(accessToken, expiresIn, scope, state, tokenType, macKey, macAlgorithm, code);
        }
    }

    /* loaded from: classes2.dex */
    public static class Error {
        public final int errorCode;
        public final String errorMessage;

        public Error(int errorCode, String errorMessage) {
            this.errorCode = errorCode;
            this.errorMessage = errorMessage;
        }

        public String toString() {
            String text = "errorCode=" + this.errorCode + ",errorMessage=" + this.errorMessage;
            return text;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Error parseBundle(Bundle bundle) {
            int errorCode = XiaomiOAuthResults.getIntCompatibly(bundle, XiaomiOAuthConstants.EXTRA_ERROR_CODE, "error");
            String errorMessage = XiaomiOAuthResults.getStringCompatibly(bundle, XiaomiOAuthConstants.EXTRA_ERROR_DESCRIPTION, "error_description");
            return new Error(errorCode, errorMessage);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getStringCompatibly(Bundle bundle, String key1, String key2) {
        return bundle.containsKey(key1) ? bundle.getString(key1) : bundle.getString(key2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getIntCompatibly(Bundle bundle, String key1, String key2) {
        String s = getIntOrStringCompatibly(bundle, key1, key2);
        try {
            return Integer.parseInt(s);
        } catch (NumberFormatException e) {
            Log.w(TAG, "error, return 0 instead:", e);
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getIntOrStringCompatibly(Bundle bundle, String key1, String key2) {
        String[] strArr;
        Object obj;
        for (String key : new String[]{key1, key2}) {
            if (!TextUtils.isEmpty(key) && bundle.containsKey(key) && (obj = bundle.get(key)) != null) {
                if (obj instanceof Integer) {
                    return ((Integer) obj).toString();
                } else {
                    return obj.toString();
                }
            }
        }
        return null;
    }

    public String toString() {
        if (this.successResult != null) {
            return this.successResult.toString();
        }
        if (this.errorResult != null) {
            return this.errorResult.toString();
        }
        throw new IllegalStateException("should not be here.");
    }

    public static XiaomiOAuthResults parseBundle(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        int errorCode = getIntCompatibly(bundle, XiaomiOAuthConstants.EXTRA_ERROR_CODE, "error");
        if (errorCode != 0) {
            return new XiaomiOAuthResults(bundle, Error.parseBundle(bundle));
        }
        return new XiaomiOAuthResults(bundle, Success.parseBundle(bundle));
    }
}
