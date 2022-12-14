package com.securepreferences;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.facebook.imageutils.JfifUtil;
import com.fimi.kernel.connect.tcp.SocketOption;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;
@Deprecated
/* loaded from: classes.dex */
public class SecurePreferencesOld implements SharedPreferences {
    private static final String AES_KEY_ALG = "AES";
    private static final String BACKUP_PBE_KEY_ALG = "PBEWithMD5AndDES";
    private static final int ITERATIONS = 2000;
    private static final int KEY_SIZE = 256;
    private static final String PRIMARY_PBE_KEY_ALG = "PBKDF2WithHmacSHA1";
    private static final String PROVIDER = "BC";
    private static SharedPreferences sFile;
    private static byte[] sKey;
    private static HashMap<SharedPreferences.OnSharedPreferenceChangeListener, SharedPreferences.OnSharedPreferenceChangeListener> sOnSharedPreferenceChangeListeners;
    private static boolean sLoggingEnabled = false;
    private static final String TAG = SecurePreferencesOld.class.getName();

    public SecurePreferencesOld(Context context) {
        if (sFile == null) {
            sFile = PreferenceManager.getDefaultSharedPreferences(context);
        }
        try {
            String key = generateAesKeyName(context);
            String value = sFile.getString(key, null);
            if (value == null) {
                value = generateAesKeyValue();
                sFile.edit().putString(key, value).commit();
            }
            sKey = decode(value);
            sOnSharedPreferenceChangeListeners = new HashMap<>(10);
        } catch (Exception e) {
            if (sLoggingEnabled) {
                Log.e(TAG, "Error init:" + e.getMessage());
            }
            throw new IllegalStateException(e);
        }
    }

    private static String encode(byte[] input) {
        return Base64.encodeToString(input, 3);
    }

    private static byte[] decode(String input) {
        return Base64.decode(input, 3);
    }

    private static String generateAesKeyName(Context context) throws InvalidKeySpecException, NoSuchAlgorithmException, NoSuchProviderException {
        SecretKey key;
        char[] password = context.getPackageName().toCharArray();
        byte[] salt = getDeviceSerialNumber(context).getBytes();
        try {
            key = generatePBEKey(password, salt, PRIMARY_PBE_KEY_ALG, 2000, 256);
        } catch (NoSuchAlgorithmException e) {
            key = generatePBEKey(password, salt, BACKUP_PBE_KEY_ALG, 2000, 256);
        }
        return encode(key.getEncoded());
    }

    @Deprecated
    private static SecretKey generatePBEKey(char[] passphraseOrPin, byte[] salt, String algorthm, int iterations, int keyLength) throws NoSuchAlgorithmException, InvalidKeySpecException, NoSuchProviderException {
        if (iterations == 0) {
            iterations = 1000;
        }
        SecretKeyFactory secretKeyFactory = SecretKeyFactory.getInstance(algorthm, PROVIDER);
        KeySpec keySpec = new PBEKeySpec(passphraseOrPin, salt, iterations, keyLength);
        SecretKey secretKey = secretKeyFactory.generateSecret(keySpec);
        return secretKey;
    }

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

    @Deprecated
    private static String generateAesKeyValue() throws NoSuchAlgorithmException {
        SecureRandom random = new SecureRandom();
        KeyGenerator generator = KeyGenerator.getInstance(AES_KEY_ALG);
        try {
            generator.init(256, random);
        } catch (Exception e) {
            try {
                generator.init(JfifUtil.MARKER_SOFn, random);
            } catch (Exception e2) {
                generator.init(128, random);
            }
        }
        return encode(generator.generateKey().getEncoded());
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Deprecated
    public static String encrypt(String cleartext) {
        if (cleartext != null && cleartext.length() != 0) {
            try {
                Cipher cipher = Cipher.getInstance(AES_KEY_ALG, PROVIDER);
                cipher.init(1, new SecretKeySpec(sKey, AES_KEY_ALG));
                return encode(cipher.doFinal(cleartext.getBytes(SocketOption.DEFAULT_CHARSET)));
            } catch (Exception e) {
                if (sLoggingEnabled) {
                    Log.w(TAG, "encrypt", e);
                }
                return null;
            }
        }
        return cleartext;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Deprecated
    public static String decrypt(String ciphertext) {
        if (ciphertext != null && ciphertext.length() != 0) {
            try {
                Cipher cipher = Cipher.getInstance(AES_KEY_ALG, PROVIDER);
                cipher.init(2, new SecretKeySpec(sKey, AES_KEY_ALG));
                return new String(cipher.doFinal(decode(ciphertext)), SocketOption.DEFAULT_CHARSET);
            } catch (Exception e) {
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
        Map<String, ?> encryptedMap = sFile.getAll();
        Map<String, String> decryptedMap = new HashMap<>(encryptedMap.size());
        for (Map.Entry<String, ?> entry : encryptedMap.entrySet()) {
            try {
                decryptedMap.put(decrypt(entry.getKey()), decrypt(entry.getValue().toString()));
            } catch (Exception e) {
            }
        }
        return decryptedMap;
    }

    @Override // android.content.SharedPreferences
    public String getString(String key, String defaultValue) {
        String encryptedValue = sFile.getString(encrypt(key), null);
        if (encryptedValue != null) {
            String defaultValue2 = decrypt(encryptedValue);
            return defaultValue2;
        }
        return defaultValue;
    }

    public String getStringUnencrypted(String key, String defaultValue) {
        String nonEncryptedValue = sFile.getString(encrypt(key), null);
        return nonEncryptedValue != null ? nonEncryptedValue : defaultValue;
    }

    @Override // android.content.SharedPreferences
    @TargetApi(11)
    public Set<String> getStringSet(String key, Set<String> defaultValues) {
        Set<String> encryptedSet = sFile.getStringSet(encrypt(key), null);
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
        String encryptedValue = sFile.getString(encrypt(key), null);
        if (encryptedValue == null) {
            return defaultValue;
        }
        try {
            int defaultValue2 = Integer.parseInt(decrypt(encryptedValue));
            return defaultValue2;
        } catch (NumberFormatException e) {
            throw new ClassCastException(e.getMessage());
        }
    }

    @Override // android.content.SharedPreferences
    public long getLong(String key, long defaultValue) {
        String encryptedValue = sFile.getString(encrypt(key), null);
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
        String encryptedValue = sFile.getString(encrypt(key), null);
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
        String encryptedValue = sFile.getString(encrypt(key), null);
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
        return sFile.contains(encrypt(key));
    }

    @Override // android.content.SharedPreferences
    public Editor edit() {
        return new Editor();
    }

    /* loaded from: classes2.dex */
    public static class Editor implements SharedPreferences.Editor {
        private SharedPreferences.Editor mEditor;

        private Editor() {
            this.mEditor = SecurePreferencesOld.sFile.edit();
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putString(String key, String value) {
            this.mEditor.putString(SecurePreferencesOld.encrypt(key), SecurePreferencesOld.encrypt(value));
            return this;
        }

        public SharedPreferences.Editor putStringNoEncrypted(String key, String value) {
            this.mEditor.putString(SecurePreferencesOld.encrypt(key), value);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        @TargetApi(11)
        public SharedPreferences.Editor putStringSet(String key, Set<String> values) {
            Set<String> encryptedValues = new HashSet<>(values.size());
            for (String value : values) {
                encryptedValues.add(SecurePreferencesOld.encrypt(value));
            }
            this.mEditor.putStringSet(SecurePreferencesOld.encrypt(key), encryptedValues);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putInt(String key, int value) {
            this.mEditor.putString(SecurePreferencesOld.encrypt(key), SecurePreferencesOld.encrypt(Integer.toString(value)));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putLong(String key, long value) {
            this.mEditor.putString(SecurePreferencesOld.encrypt(key), SecurePreferencesOld.encrypt(Long.toString(value)));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putFloat(String key, float value) {
            this.mEditor.putString(SecurePreferencesOld.encrypt(key), SecurePreferencesOld.encrypt(Float.toString(value)));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putBoolean(String key, boolean value) {
            this.mEditor.putString(SecurePreferencesOld.encrypt(key), SecurePreferencesOld.encrypt(Boolean.toString(value)));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor remove(String key) {
            this.mEditor.remove(SecurePreferencesOld.encrypt(key));
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
        sFile.registerOnSharedPreferenceChangeListener(listener);
    }

    public void registerOnSharedPreferenceChangeListener(final SharedPreferences.OnSharedPreferenceChangeListener listener, boolean decryptKeys) {
        if (!decryptKeys) {
            registerOnSharedPreferenceChangeListener(listener);
            return;
        }
        SharedPreferences.OnSharedPreferenceChangeListener secureListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.securepreferences.SecurePreferencesOld.1
            private SharedPreferences.OnSharedPreferenceChangeListener mInsecureListener;

            {
                this.mInsecureListener = listener;
            }

            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
            public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String key) {
                try {
                    String decryptedKey = SecurePreferencesOld.decrypt(key);
                    if (decryptedKey != null) {
                        this.mInsecureListener.onSharedPreferenceChanged(sharedPreferences, decryptedKey);
                    }
                } catch (Exception e) {
                    Log.w(SecurePreferencesOld.TAG, "Unable to decrypt key: " + key);
                }
            }
        };
        sOnSharedPreferenceChangeListeners.put(listener, secureListener);
        sFile.registerOnSharedPreferenceChangeListener(secureListener);
    }

    @Override // android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener listener) {
        if (sOnSharedPreferenceChangeListeners.containsKey(listener)) {
            SharedPreferences.OnSharedPreferenceChangeListener secureListener = sOnSharedPreferenceChangeListeners.remove(listener);
            sFile.unregisterOnSharedPreferenceChangeListener(secureListener);
            return;
        }
        sFile.unregisterOnSharedPreferenceChangeListener(listener);
    }
}
