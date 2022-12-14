package ch.qos.logback.core.net.ssl;

import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
/* loaded from: classes.dex */
public class SecureRandomFactoryBean {
    private String algorithm;
    private String provider;

    public SecureRandom createSecureRandom() throws NoSuchProviderException, NoSuchAlgorithmException {
        try {
            return getProvider() != null ? SecureRandom.getInstance(getAlgorithm(), getProvider()) : SecureRandom.getInstance(getAlgorithm());
        } catch (NoSuchAlgorithmException e) {
            throw new NoSuchAlgorithmException("no such secure random algorithm: " + getAlgorithm());
        } catch (NoSuchProviderException e2) {
            throw new NoSuchProviderException("no such secure random provider: " + getProvider());
        }
    }

    public String getAlgorithm() {
        return this.algorithm == null ? SSL.DEFAULT_SECURE_RANDOM_ALGORITHM : this.algorithm;
    }

    public String getProvider() {
        return this.provider;
    }

    public void setAlgorithm(String str) {
        this.algorithm = str;
    }

    public void setProvider(String str) {
        this.provider = str;
    }
}
