package ch.qos.logback.core.net.ssl;

import ch.qos.logback.core.util.LocationUtil;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
/* loaded from: classes.dex */
public class KeyStoreFactoryBean {
    private String location;
    private String password;
    private String provider;
    private String type;

    private KeyStore newKeyStore() throws NoSuchAlgorithmException, NoSuchProviderException, KeyStoreException {
        return getProvider() != null ? KeyStore.getInstance(getType(), getProvider()) : KeyStore.getInstance(getType());
    }

    public KeyStore createKeyStore() throws NoSuchProviderException, NoSuchAlgorithmException, KeyStoreException {
        if (getLocation() == null) {
            throw new IllegalArgumentException("location is required");
        }
        InputStream inputStream = null;
        try {
            try {
                try {
                    try {
                        inputStream = LocationUtil.urlForResource(getLocation()).openStream();
                        KeyStore newKeyStore = newKeyStore();
                        newKeyStore.load(inputStream, getPassword().toCharArray());
                        return newKeyStore;
                    } finally {
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e) {
                                e.printStackTrace(System.err);
                            }
                        }
                    }
                } catch (NoSuchAlgorithmException e2) {
                    throw new NoSuchAlgorithmException("no such keystore type: " + getType());
                }
            } catch (FileNotFoundException e3) {
                throw new KeyStoreException(getLocation() + ": file not found");
            }
        } catch (NoSuchProviderException e4) {
            throw new NoSuchProviderException("no such keystore provider: " + getProvider());
        } catch (Exception e5) {
            throw new KeyStoreException(getLocation() + ": " + e5.getMessage(), e5);
        }
    }

    public String getLocation() {
        return this.location;
    }

    public String getPassword() {
        return this.password == null ? SSL.DEFAULT_KEYSTORE_PASSWORD : this.password;
    }

    public String getProvider() {
        return this.provider;
    }

    public String getType() {
        return this.type == null ? SSL.DEFAULT_KEYSTORE_TYPE : this.type;
    }

    public void setLocation(String str) {
        this.location = str;
    }

    public void setPassword(String str) {
        this.password = str;
    }

    public void setProvider(String str) {
        this.provider = str;
    }

    public void setType(String str) {
        this.type = str;
    }
}
