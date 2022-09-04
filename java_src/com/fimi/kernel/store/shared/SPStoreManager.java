package com.fimi.kernel.store.shared;

import android.content.SharedPreferences;
import com.alibaba.fastjson.JSON;
import com.fimi.kernel.security.SharePrefernceSec;
import java.util.List;
/* loaded from: classes.dex */
public class SPStoreManager implements IKeyValueStoreManager {
    private static SPStoreManager manager = null;
    private SharedPreferences settings;

    public static synchronized SPStoreManager getInstance(String key_storeName) {
        SPStoreManager sPStoreManager;
        synchronized (SPStoreManager.class) {
            if (manager == null) {
                manager = new SPStoreManager(key_storeName);
            }
            sPStoreManager = manager;
        }
        return sPStoreManager;
    }

    public static synchronized SPStoreManager getInstance() {
        SPStoreManager sPStoreManager;
        synchronized (SPStoreManager.class) {
            if (manager == null) {
                manager = new SPStoreManager();
            }
            sPStoreManager = manager;
        }
        return sPStoreManager;
    }

    private SPStoreManager(String key_storeName) {
        this.settings = SharePrefernceSec.getSharedPreferences(key_storeName);
    }

    private SPStoreManager() {
        this.settings = SharePrefernceSec.getSharedPreferences();
    }

    @Override // com.fimi.kernel.store.shared.IKeyValueStoreManager
    public void saveObject(String key, Object obj) {
        SharedPreferences.Editor edit = this.settings.edit();
        String str = JSON.toJSONString(obj);
        edit.putString(key, str);
        edit.commit();
    }

    @Override // com.fimi.kernel.store.shared.IKeyValueStoreManager
    public <T> T getObject(String key, Class<?> classItem) {
        try {
            String str = this.settings.getString(key, null);
            if (str == null) {
                return null;
            }
            return (T) JSON.parseObject(str, classItem);
        } catch (Exception e) {
            return null;
        }
    }

    @Override // com.fimi.kernel.store.shared.IKeyValueStoreManager
    public String getString(String key) {
        return this.settings.getString(key, null);
    }

    public String getString(String key, String defValue) {
        return this.settings.getString(key, defValue);
    }

    @Override // com.fimi.kernel.store.shared.IKeyValueStoreManager
    public void saveString(String key, String value) {
        SharedPreferences.Editor edit = this.settings.edit();
        edit.putString(key, value);
        edit.commit();
    }

    @Override // com.fimi.kernel.store.shared.IKeyValueStoreManager
    public int getInt(String key) {
        return this.settings.getInt(key, 0);
    }

    @Override // com.fimi.kernel.store.shared.IKeyValueStoreManager
    public int getInt(String key, int defaultValue) {
        return this.settings.getInt(key, defaultValue);
    }

    @Override // com.fimi.kernel.store.shared.IKeyValueStoreManager
    public void saveInt(String key, int value) {
        SharedPreferences.Editor edit = this.settings.edit();
        edit.putInt(key, value);
        edit.commit();
    }

    @Override // com.fimi.kernel.store.shared.IKeyValueStoreManager
    public void saveLong(String key, long value) {
        SharedPreferences.Editor edit = this.settings.edit();
        edit.putLong(key, value);
        edit.commit();
    }

    @Override // com.fimi.kernel.store.shared.IKeyValueStoreManager
    public long getLong(String key) {
        return this.settings.getLong(key, 0L);
    }

    @Override // com.fimi.kernel.store.shared.IKeyValueStoreManager
    public boolean getBoolean(String key) {
        return this.settings.getBoolean(key, false);
    }

    public boolean getBoolean(String key, boolean def) {
        return this.settings.getBoolean(key, def);
    }

    @Override // com.fimi.kernel.store.shared.IKeyValueStoreManager
    public void saveBoolean(String key, boolean value) {
        SharedPreferences.Editor edit = this.settings.edit();
        edit.putBoolean(key, value);
        edit.commit();
    }

    @Override // com.fimi.kernel.store.shared.IKeyValueStoreManager
    public List getListObject(String key, Class<?> classItem) {
        try {
            String str = this.settings.getString(key, null);
            if (str == null) {
                return null;
            }
            return JSON.parseArray(str, classItem);
        } catch (Exception e) {
            return null;
        }
    }

    @Override // com.fimi.kernel.store.shared.IKeyValueStoreManager
    public void removeKey(String key) {
        this.settings.edit().remove(key).commit();
    }

    @Override // com.fimi.kernel.store.shared.IKeyValueStoreManager
    public boolean contain(String key) {
        return this.settings.contains(key);
    }

    @Override // com.fimi.kernel.store.shared.IKeyValueStoreManager
    public <T> void saveListObject(String key, List<T> list) {
        SharedPreferences.Editor edit = this.settings.edit();
        String str = JSON.toJSONString(list);
        edit.putString(key, str);
        edit.commit();
    }
}
