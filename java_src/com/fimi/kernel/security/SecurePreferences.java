package com.fimi.kernel.security;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.fimi.kernel.connect.tcp.SocketOption;
import com.fimi.kernel.security.AesCbcWithIntegrity;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public class SecurePreferences implements SharedPreferences {
    private static final int ORIGINAL_ITERATION_COUNT = 10000;
    private AesCbcWithIntegrity.SecretKeys keys;
    private String salt;
    private String sharedPrefFilename;
    private SharedPreferences sharedPreferences;
    private static boolean sLoggingEnabled = false;
    private static final String TAG = SecurePreferences.class.getName();

    public SecurePreferences(Context context) {
        this(context, "", (String) null);
    }

    public SecurePreferences(Context context, int iterationCount) {
        this(context, "", null, iterationCount);
    }

    public SecurePreferences(Context context, String password, String sharedPrefFilename) {
        this(context, password, null, sharedPrefFilename, 10000);
    }

    public SecurePreferences(Context context, String password, String sharedPrefFilename, int iterationCount) {
        this(context, null, password, null, sharedPrefFilename, iterationCount);
    }

    public SecurePreferences(Context context, AesCbcWithIntegrity.SecretKeys secretKey, String sharedPrefFilename) {
        this(context, secretKey, null, null, sharedPrefFilename, 0);
    }

    public SecurePreferences(Context context, String password, String salt, String sharedPrefFilename, int iterationCount) {
        this(context, null, password, salt, sharedPrefFilename, iterationCount);
    }

    private SecurePreferences(Context context, AesCbcWithIntegrity.SecretKeys secretKey, String password, String salt, String sharedPrefFilename, int iterationCount) {
        if (this.sharedPreferences == null) {
            this.sharedPreferences = getSharedPreferenceFile(context, sharedPrefFilename);
        }
        this.salt = salt;
        if (secretKey != null) {
            this.keys = secretKey;
        } else if (TextUtils.isEmpty(password)) {
            try {
                String key = generateAesKeyName(context, iterationCount);
                String keyAsString = this.sharedPreferences.getString(key, null);
                if (keyAsString == null) {
                    this.keys = AesCbcWithIntegrity.generateKey();
                    boolean committed = this.sharedPreferences.edit().putString(key, this.keys.toString()).commit();
                    if (!committed) {
                        Log.w(TAG, "Key not committed to prefs");
                    }
                } else {
                    this.keys = AesCbcWithIntegrity.keys(keyAsString);
                }
                if (this.keys == null) {
                    throw new GeneralSecurityException("Problem generating Key");
                }
            } catch (GeneralSecurityException e) {
                if (sLoggingEnabled) {
                    Log.e(TAG, "Error init:" + e.getMessage());
                }
                throw new IllegalStateException(e);
            }
        } else {
            try {
                byte[] saltBytes = getSalt(context).getBytes();
                this.keys = AesCbcWithIntegrity.generateKeyFromPassword(password, saltBytes, iterationCount);
                if (this.keys == null) {
                    throw new GeneralSecurityException("Problem generating Key From Password");
                }
            } catch (GeneralSecurityException e2) {
                if (sLoggingEnabled) {
                    Log.e(TAG, "Error init using user password:" + e2.getMessage());
                }
                throw new IllegalStateException(e2);
            }
        }
    }

    private SharedPreferences getSharedPreferenceFile(Context context, String prefFilename) {
        this.sharedPrefFilename = prefFilename;
        return TextUtils.isEmpty(prefFilename) ? PreferenceManager.getDefaultSharedPreferences(context) : context.getSharedPreferences(prefFilename, 0);
    }

    public void destroyKeys() {
        this.keys = null;
    }

    private String generateAesKeyName(Context context, int iterationCount) throws GeneralSecurityException {
        String password = context.getPackageName();
        byte[] salt = getSalt(context).getBytes();
        AesCbcWithIntegrity.SecretKeys generatedKeyName = AesCbcWithIntegrity.generateKeyFromPassword(password, salt, iterationCount);
        return hashPrefKey(generatedKeyName.toString());
    }

    @SuppressLint({"HardwareIds"})
    private static String getDeviceSerialNumber(Context context) {
        try {
            String deviceSerial = (String) Build.class.getField("SERIAL").get(null);
            if (TextUtils.isEmpty(deviceSerial)) {
                return Settings.Secure.getString(context.getContentResolver(), "android_id");
            }
            return deviceSerial;
        } catch (Exception e) {
            return Settings.Secure.getString(context.getContentResolver(), "android_id");
        }
    }

    private String getSalt(Context context) {
        return TextUtils.isEmpty(this.salt) ? getDeviceSerialNumber(context) : this.salt;
    }

    public static String hashPrefKey(String prefKey) {
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            byte[] bytes = prefKey.getBytes(SocketOption.DEFAULT_CHARSET);
            digest.update(bytes, 0, bytes.length);
            return Base64.encodeToString(digest.digest(), 2);
        } catch (UnsupportedEncodingException | NoSuchAlgorithmException e) {
            if (sLoggingEnabled) {
                Log.w(TAG, "Problem generating hash", e);
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String encrypt(String cleartext) {
        if (!TextUtils.isEmpty(cleartext)) {
            try {
                return AesCbcWithIntegrity.encrypt(cleartext, this.keys).toString();
            } catch (UnsupportedEncodingException e) {
                if (sLoggingEnabled) {
                    Log.w(TAG, "encrypt", e);
                }
                return null;
            } catch (GeneralSecurityException e2) {
                if (sLoggingEnabled) {
                    Log.w(TAG, "encrypt", e2);
                }
                return null;
            }
        }
        return cleartext;
    }

    private String decrypt(String ciphertext) {
        if (!TextUtils.isEmpty(ciphertext)) {
            try {
                AesCbcWithIntegrity.CipherTextIvMac cipherTextIvMac = new AesCbcWithIntegrity.CipherTextIvMac(ciphertext);
                return AesCbcWithIntegrity.decryptString(cipherTextIvMac, this.keys);
            } catch (UnsupportedEncodingException | GeneralSecurityException e) {
                if (sLoggingEnabled) {
                    Log.w(TAG, "decrypt", e);
                }
                return null;
            }
        }
        return ciphertext;
    }

    @Override // android.content.SharedPreferences
    public Map<String, String> getAll() {
        Map<String, ?> encryptedMap = this.sharedPreferences.getAll();
        Map<String, String> decryptedMap = new HashMap<>(encryptedMap.size());
        for (Map.Entry<String, ?> entry : encryptedMap.entrySet()) {
            try {
                Object cipherText = entry.getValue();
                if (cipherText != null && !cipherText.equals(this.keys.toString())) {
                    decryptedMap.put(entry.getKey(), decrypt(cipherText.toString()));
                }
            } catch (Exception e) {
                if (sLoggingEnabled) {
                    Log.w(TAG, "error during getAll", e);
                }
                decryptedMap.put(entry.getKey(), entry.getValue().toString());
            }
        }
        return decryptedMap;
    }

    @Override // android.content.SharedPreferences
    public String getString(String key, String defaultValue) {
        String encryptedValue = this.sharedPreferences.getString(hashPrefKey(key), null);
        String decryptedValue = decrypt(encryptedValue);
        return (encryptedValue == null || decryptedValue == null) ? defaultValue : decryptedValue;
    }

    public String getEncryptedString(String key, String defaultValue) {
        String encryptedValue = this.sharedPreferences.getString(hashPrefKey(key), null);
        return encryptedValue != null ? encryptedValue : defaultValue;
    }

    @Override // android.content.SharedPreferences
    @TargetApi(11)
    public Set<String> getStringSet(String key, Set<String> defaultValues) {
        Set<String> encryptedSet = this.sharedPreferences.getStringSet(hashPrefKey(key), null);
        if (encryptedSet != null) {
            Set<String> decryptedSet = new HashSet<>(encryptedSet.size());
            for (String encryptedValue : encryptedSet) {
                decryptedSet.add(decrypt(encryptedValue));
            }
            return decryptedSet;
        }
        return defaultValues;
    }

    @Override // android.content.SharedPreferences
    public int getInt(String key, int defaultValue) {
        String encryptedValue = this.sharedPreferences.getString(hashPrefKey(key), null);
        if (encryptedValue != null) {
            try {
                return Integer.parseInt(decrypt(encryptedValue));
            } catch (Exception e) {
                return defaultValue;
            }
        }
        return defaultValue;
    }

    @Override // android.content.SharedPreferences
    public long getLong(String key, long defaultValue) {
        String encryptedValue = this.sharedPreferences.getString(hashPrefKey(key), null);
        if (encryptedValue == null) {
            return defaultValue;
        }
        try {
            long defaultValue2 = Long.parseLong(decrypt(encryptedValue));
            return defaultValue2;
        } catch (NumberFormatException e) {
            throw new ClassCastException(e.getMessage());
        }
    }

    @Override // android.content.SharedPreferences
    public float getFloat(String key, float defaultValue) {
        String encryptedValue = this.sharedPreferences.getString(hashPrefKey(key), null);
        if (encryptedValue == null) {
            return defaultValue;
        }
        try {
            float defaultValue2 = Float.parseFloat(decrypt(encryptedValue));
            return defaultValue2;
        } catch (NumberFormatException e) {
            throw new ClassCastException(e.getMessage());
        }
    }

    @Override // android.content.SharedPreferences
    public boolean getBoolean(String key, boolean defaultValue) {
        String encryptedValue = this.sharedPreferences.getString(hashPrefKey(key), null);
        if (encryptedValue == null) {
            return defaultValue;
        }
        try {
            boolean defaultValue2 = Boolean.parseBoolean(decrypt(encryptedValue));
            return defaultValue2;
        } catch (NumberFormatException e) {
            throw new ClassCastException(e.getMessage());
        }
    }

    @Override // android.content.SharedPreferences
    public boolean contains(String key) {
        return this.sharedPreferences.contains(hashPrefKey(key));
    }

    @SuppressLint({"CommitPrefEdits"})
    public void handlePasswordChange(String newPassword, Context context, int iterationCount) throws GeneralSecurityException {
        byte[] salt = getSalt(context).getBytes();
        AesCbcWithIntegrity.SecretKeys newKey = AesCbcWithIntegrity.generateKeyFromPassword(newPassword, salt, iterationCount);
        Map<String, ?> allOfThePrefs = this.sharedPreferences.getAll();
        Map<String, String> unencryptedPrefs = new HashMap<>(allOfThePrefs.size());
        for (String prefKey : allOfThePrefs.keySet()) {
            Object prefValue = allOfThePrefs.get(prefKey);
            if (prefValue instanceof String) {
                String prefValueString = (String) prefValue;
                String plainTextPrefValue = decrypt(prefValueString);
                unencryptedPrefs.put(prefKey, plainTextPrefValue);
            }
        }
        destroyKeys();
        SharedPreferences.Editor editor = this.sharedPreferences.edit();
        editor.clear();
        editor.commit();
        this.sharedPreferences = null;
        this.sharedPreferences = getSharedPreferenceFile(context, this.sharedPrefFilename);
        this.keys = newKey;
        SharedPreferences.Editor updatedEditor = this.sharedPreferences.edit();
        for (String prefKey2 : unencryptedPrefs.keySet()) {
            String prefPlainText = unencryptedPrefs.get(prefKey2);
            updatedEditor.putString(prefKey2, encrypt(prefPlainText));
        }
        updatedEditor.commit();
    }

    public void handlePasswordChange(String newPassword, Context context) throws GeneralSecurityException {
        handlePasswordChange(newPassword, context, 10000);
    }

    @Override // android.content.SharedPreferences
    public Editor edit() {
        return new Editor();
    }

    /* loaded from: classes.dex */
    public final class Editor implements SharedPreferences.Editor {
        private SharedPreferences.Editor mEditor;

        private Editor() {
            this.mEditor = SecurePreferences.this.sharedPreferences.edit();
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putString(String key, String value) {
            this.mEditor.putString(SecurePreferences.hashPrefKey(key), SecurePreferences.this.encrypt(value));
            return this;
        }

        public SharedPreferences.Editor putUnencryptedString(String key, String value) {
            this.mEditor.putString(SecurePreferences.hashPrefKey(key), value);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        @TargetApi(11)
        public SharedPreferences.Editor putStringSet(String key, Set<String> values) {
            Set<String> encryptedValues = new HashSet<>(values.size());
            for (String value : values) {
                encryptedValues.add(SecurePreferences.this.encrypt(value));
            }
            this.mEditor.putStringSet(SecurePreferences.hashPrefKey(key), encryptedValues);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putInt(String key, int value) {
            this.mEditor.putString(SecurePreferences.hashPrefKey(key), SecurePreferences.this.encrypt(Integer.toString(value)));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putLong(String key, long value) {
            this.mEditor.putString(SecurePreferences.hashPrefKey(key), SecurePreferences.this.encrypt(Long.toString(value)));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putFloat(String key, float value) {
            this.mEditor.putString(SecurePreferences.hashPrefKey(key), SecurePreferences.this.encrypt(Float.toString(value)));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putBoolean(String key, boolean value) {
            this.mEditor.putString(SecurePreferences.hashPrefKey(key), SecurePreferences.this.encrypt(Boolean.toString(value)));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor remove(String key) {
            this.mEditor.remove(SecurePreferences.hashPrefKey(key));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor clear() {
            this.mEditor.clear();
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public boolean commit() {
            return this.mEditor.commit();
        }

        @Override // android.content.SharedPreferences.Editor
        @TargetApi(9)
        public void apply() {
            if (Build.VERSION.SDK_INT >= 9) {
                this.mEditor.apply();
            } else {
                commit();
            }
        }
    }

    public static boolean isLoggingEnabled() {
        return sLoggingEnabled;
    }

    public static void setLoggingEnabled(boolean loggingEnabled) {
        sLoggingEnabled = loggingEnabled;
    }

    @Override // android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener listener) {
        this.sharedPreferences.registerOnSharedPreferenceChangeListener(listener);
    }

    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener listener, boolean decryptKeys) {
        if (!decryptKeys) {
            registerOnSharedPreferenceChangeListener(listener);
        }
    }

    @Override // android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener listener) {
        this.sharedPreferences.unregisterOnSharedPreferenceChangeListener(listener);
    }
}
