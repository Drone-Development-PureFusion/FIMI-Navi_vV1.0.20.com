package com.fimi.network;

import ch.qos.logback.core.joran.action.Action;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.fimi.host.HostConstants;
import com.fimi.host.HostLogBack;
import com.fimi.kernel.network.okhttp.CommonOkHttpClient;
import com.fimi.kernel.network.okhttp.listener.DisposeDataHandle;
import com.fimi.kernel.network.okhttp.listener.DisposeDataListener;
import com.fimi.kernel.network.okhttp.request.CommonRequest;
import com.fimi.kernel.network.okhttp.request.RequestParams;
import com.fimi.network.entity.NetModel;
import java.util.HashMap;
import java.util.Iterator;
/* loaded from: classes.dex */
public class ApkVersionManager extends BaseManager {
    public final String OPEN_SIXPOINT_CALIBRATE = "open_sixpoint_calibrate";
    public final String OPEN_FLY_LOG = "open_fly_log";
    public final String OPEN_FORMATTED_MEMORY = "open_Formatted_memory";
    public final String OPEN_STATE = "on";
    public HashMap<String, String> appSettingHashMap = new HashMap<>();

    /* loaded from: classes.dex */
    public interface AppSettingListener {
        void onAppSettingListener();
    }

    public void getOnlineNewApkFileInfo(String packageName, DisposeDataHandle disposeDataHandle) {
        RequestParams requestParams = getRequestParams();
        requestParams.put("pkgName", packageName);
        String url = HostConstants.NEW_APK_URL + "getApkDetail2";
        CommonOkHttpClient.get(CommonRequest.createGetRequest(url, getRequestParams(requestParams)), disposeDataHandle);
    }

    public void getAppSetting(final AppSettingListener appSettingListener) {
        String url = HostConstants.GET_APP_SETTING + "getAppSetting";
        CommonOkHttpClient.get(CommonRequest.createGetRequest(url, getRequestParams()), new DisposeDataHandle(new DisposeDataListener() { // from class: com.fimi.network.ApkVersionManager.1
            @Override // com.fimi.kernel.network.okhttp.listener.DisposeDataListener
            public void onSuccess(Object responseObj) {
                NetModel netModel = (NetModel) JSON.parseObject(responseObj.toString(), NetModel.class);
                if (netModel.getData() != null) {
                    ApkVersionManager.this.appSettingHashMap.clear();
                    try {
                        JSONArray jsonArray = JSON.parseArray(netModel.getData().toString());
                        Iterator<Object> iterator = jsonArray.iterator();
                        while (iterator.hasNext()) {
                            JSONObject jsonObjectData = (JSONObject) iterator.next();
                            String key = jsonObjectData.getString(Action.KEY_ATTRIBUTE);
                            String value = jsonObjectData.getString("value");
                            ApkVersionManager.this.appSettingHashMap.put(key, value);
                        }
                        appSettingListener.onAppSettingListener();
                    } catch (Exception e) {
                        HostLogBack.getInstance().writeLog("Alanqiu  ==============getAppSetting:" + e.getMessage());
                    }
                }
            }

            @Override // com.fimi.kernel.network.okhttp.listener.DisposeDataListener
            public void onFailure(Object reasonObj) {
            }
        }));
    }

    public boolean isOpen(String key) {
        String value;
        return (this.appSettingHashMap == null || (value = this.appSettingHashMap.get(key)) == null || !value.equalsIgnoreCase("on")) ? false : true;
    }
}
