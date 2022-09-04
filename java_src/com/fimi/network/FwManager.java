package com.fimi.network;

import com.fimi.host.HostConstants;
import com.fimi.kernel.network.okhttp.CommonOkHttpClient;
import com.fimi.kernel.network.okhttp.listener.DisposeDataHandle;
import com.fimi.kernel.network.okhttp.request.CommonRequest;
/* loaded from: classes.dex */
public class FwManager extends BaseManager {

    /* renamed from: V2 */
    private final String f217V2 = "v2";

    /* renamed from: V3 */
    private final String f218V3 = "v3";

    public void getX9FwNetDetail(DisposeDataHandle disposeDataHandle) {
        String url = HostConstants.HostURL + "v3/firmware/getFirmwareDetail";
        CommonOkHttpClient.get(CommonRequest.createGetRequest(url, getRequestParams()), disposeDataHandle);
    }

    public void getX9FwNetDetailV3(DisposeDataHandle disposeDataHandle) {
        String url = HostConstants.HostURL + "v3/firmware/getFirmwareDetail";
        CommonOkHttpClient.get(CommonRequest.createGetRequest(url, getRequestParams()), disposeDataHandle);
    }
}
