package com.google.android.gms.dynamic;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzew;
import com.google.android.gms.internal.zzex;
/* loaded from: classes2.dex */
public abstract class zzl extends zzew implements zzk {
    public zzl() {
        attachInterface(this, "com.google.android.gms.dynamic.IFragmentWrapper");
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        IObjectWrapper iObjectWrapper = null;
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 2:
                IObjectWrapper zzarh = zzarh();
                parcel2.writeNoException();
                zzex.zza(parcel2, zzarh);
                break;
            case 3:
                Bundle arguments = getArguments();
                parcel2.writeNoException();
                zzex.zzb(parcel2, arguments);
                break;
            case 4:
                int id = getId();
                parcel2.writeNoException();
                parcel2.writeInt(id);
                break;
            case 5:
                zzk zzari = zzari();
                parcel2.writeNoException();
                zzex.zza(parcel2, zzari);
                break;
            case 6:
                IObjectWrapper zzarj = zzarj();
                parcel2.writeNoException();
                zzex.zza(parcel2, zzarj);
                break;
            case 7:
                boolean retainInstance = getRetainInstance();
                parcel2.writeNoException();
                zzex.zza(parcel2, retainInstance);
                break;
            case 8:
                String tag = getTag();
                parcel2.writeNoException();
                parcel2.writeString(tag);
                break;
            case 9:
                zzk zzark = zzark();
                parcel2.writeNoException();
                zzex.zza(parcel2, zzark);
                break;
            case 10:
                int targetRequestCode = getTargetRequestCode();
                parcel2.writeNoException();
                parcel2.writeInt(targetRequestCode);
                break;
            case 11:
                boolean userVisibleHint = getUserVisibleHint();
                parcel2.writeNoException();
                zzex.zza(parcel2, userVisibleHint);
                break;
            case 12:
                IObjectWrapper view = getView();
                parcel2.writeNoException();
                zzex.zza(parcel2, view);
                break;
            case 13:
                boolean isAdded = isAdded();
                parcel2.writeNoException();
                zzex.zza(parcel2, isAdded);
                break;
            case 14:
                boolean isDetached = isDetached();
                parcel2.writeNoException();
                zzex.zza(parcel2, isDetached);
                break;
            case 15:
                boolean isHidden = isHidden();
                parcel2.writeNoException();
                zzex.zza(parcel2, isHidden);
                break;
            case 16:
                boolean isInLayout = isInLayout();
                parcel2.writeNoException();
                zzex.zza(parcel2, isInLayout);
                break;
            case 17:
                boolean isRemoving = isRemoving();
                parcel2.writeNoException();
                zzex.zza(parcel2, isRemoving);
                break;
            case 18:
                boolean isResumed = isResumed();
                parcel2.writeNoException();
                zzex.zza(parcel2, isResumed);
                break;
            case 19:
                boolean isVisible = isVisible();
                parcel2.writeNoException();
                zzex.zza(parcel2, isVisible);
                break;
            case 20:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
                    iObjectWrapper = queryLocalInterface instanceof IObjectWrapper ? (IObjectWrapper) queryLocalInterface : new zzm(readStrongBinder);
                }
                zzw(iObjectWrapper);
                parcel2.writeNoException();
                break;
            case 21:
                setHasOptionsMenu(zzex.zza(parcel));
                parcel2.writeNoException();
                break;
            case 22:
                setMenuVisibility(zzex.zza(parcel));
                parcel2.writeNoException();
                break;
            case 23:
                setRetainInstance(zzex.zza(parcel));
                parcel2.writeNoException();
                break;
            case 24:
                setUserVisibleHint(zzex.zza(parcel));
                parcel2.writeNoException();
                break;
            case 25:
                startActivity((Intent) zzex.zza(parcel, Intent.CREATOR));
                parcel2.writeNoException();
                break;
            case 26:
                startActivityForResult((Intent) zzex.zza(parcel, Intent.CREATOR), parcel.readInt());
                parcel2.writeNoException();
                break;
            case 27:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
                    iObjectWrapper = queryLocalInterface2 instanceof IObjectWrapper ? (IObjectWrapper) queryLocalInterface2 : new zzm(readStrongBinder2);
                }
                zzx(iObjectWrapper);
                parcel2.writeNoException();
                break;
            default:
                return false;
        }
        return true;
    }
}
