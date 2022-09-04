package com.xiaomi.account;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.xiaomi.account.IXiaomiAuthResponse;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
/* loaded from: classes2.dex */
public class XiaomiOAuthResponse implements Parcelable {
    private IXiaomiAuthResponse mResponse;
    private static final String TAG = XiaomiOAuthResponse.class.getName();
    public static final Parcelable.Creator<XiaomiOAuthResponse> CREATOR = new Parcelable.Creator<XiaomiOAuthResponse>() { // from class: com.xiaomi.account.XiaomiOAuthResponse.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        /* renamed from: createFromParcel */
        public XiaomiOAuthResponse mo1874createFromParcel(Parcel source) {
            return new XiaomiOAuthResponse(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        /* renamed from: newArray */
        public XiaomiOAuthResponse[] mo1875newArray(int size) {
            return new XiaomiOAuthResponse[size];
        }
    };

    public XiaomiOAuthResponse(IXiaomiAuthResponse response) {
        this.mResponse = response;
    }

    public XiaomiOAuthResponse(Parcel parcel) {
        this.mResponse = IXiaomiAuthResponse.Stub.asInterface(parcel.readStrongBinder());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeStrongBinder(this.mResponse.asBinder());
    }

    public void onResult(Bundle bundle) {
        setIXiaomiAuthResponseResult(this.mResponse, bundle);
    }

    public void onError(int errorCode, String errorMessage) {
        Bundle bundle = new Bundle();
        bundle.putInt(XiaomiOAuthConstants.EXTRA_ERROR_CODE, errorCode);
        bundle.putString(XiaomiOAuthConstants.EXTRA_ERROR_DESCRIPTION, errorMessage);
        setIXiaomiAuthResponseResult(this.mResponse, bundle);
    }

    public void onCancel() {
        setIXiaomiAuthResponseCancel(this.mResponse);
    }

    public static void setIXiaomiAuthResponseResult(IXiaomiAuthResponse response, Bundle bundle) {
        if (response != null && bundle != null) {
            try {
                response.onResult(bundle);
            } catch (RemoteException e) {
                Log.e(TAG, "RemoteException", e);
            } catch (RuntimeException e2) {
                Log.e(TAG, "RemoteException", e2);
                Bundle bundle1 = new Bundle();
                bundle1.putInt(XiaomiOAuthConstants.EXTRA_ERROR_CODE, -1);
                bundle1.putString(XiaomiOAuthConstants.EXTRA_ERROR_DESCRIPTION, e2.getMessage());
                try {
                    response.onResult(bundle1);
                } catch (RemoteException e1) {
                    Log.e(TAG, "RemoteException", e1);
                } catch (RuntimeException e12) {
                    Log.e(TAG, "RuntimeException", e12);
                }
            }
        }
    }

    public static void setIXiaomiAuthResponseCancel(IXiaomiAuthResponse response) {
        if (response != null) {
            try {
                response.onCancel();
            } catch (RemoteException e) {
                Log.e(TAG, "RemoteException", e);
            } catch (RuntimeException e2) {
                Log.e(TAG, "RuntimeException", e2);
            }
        }
    }
}
