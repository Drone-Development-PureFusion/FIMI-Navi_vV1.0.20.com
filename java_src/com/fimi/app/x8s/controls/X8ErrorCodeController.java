package com.fimi.app.x8s.controls;

import android.text.TextUtils;
import android.view.View;
import com.alibaba.fastjson.JSON;
import com.fimi.TcpClient;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.entity.X8ErrorCode;
import com.fimi.app.x8s.enums.X8ErrorCodeEnum;
import com.fimi.app.x8s.interfaces.AbsX8Controllers;
import com.fimi.app.x8s.interfaces.IX8ErrorTextIsFinishShow;
import com.fimi.app.x8s.manager.X8ErrerCodeSpeakFlashManager;
import com.fimi.app.x8s.widget.X8ErrorCodeLayout;
import com.fimi.kernel.GlobalConfig;
import com.fimi.kernel.animutils.IOUtils;
import com.fimi.kernel.language.LanguageModel;
import com.fimi.kernel.utils.FileUtil;
import com.fimi.x8sdk.entity.ErrorCodeBean;
import com.fimi.x8sdk.entity.X8ErrorCodeInfo;
import com.fimi.x8sdk.modulestate.StateManager;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class X8ErrorCodeController extends AbsX8Controllers {
    private ErrorCodeBean bean;
    private X8ErrorCodeLayout errorCodeLayout;
    private boolean isGetData;
    private List<X8ErrorCodeInfo> list;
    private X8ErrerCodeSpeakFlashManager mX8ErrerCodeSpeakFlashManager;
    private List<ErrorCodeBean.ActionBean> seriousMap = new ArrayList();
    private List<ErrorCodeBean.ActionBean> mediumMap = new ArrayList();
    public List<ErrorCodeBean.ActionBean> currentMap = new ArrayList();
    private Map<String, String> errCodeDesc = new HashMap();

    public X8ErrorCodeController(View rootView) {
        super(rootView);
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void initViews(View rootView) {
        this.errorCodeLayout = (X8ErrorCodeLayout) rootView.findViewById(C0885R.C0889id.v_error_code);
        this.bean = getLocalError();
        this.mX8ErrerCodeSpeakFlashManager = new X8ErrerCodeSpeakFlashManager(rootView.getContext(), this);
    }

    private void initErrCodeDes() {
        LanguageModel model = GlobalConfig.getInstance().getLanguageModel();
        InputStreamReader inputStream = null;
        BufferedReader bufr = null;
        try {
            try {
                inputStream = "cn".equalsIgnoreCase(model.getInternalCoutry()) ? new InputStreamReader(this.rootView.getContext().getResources().getAssets().open("zh.txt")) : "ko".equalsIgnoreCase(model.getInternalCoutry()) ? new InputStreamReader(this.rootView.getContext().getResources().getAssets().open("ko.txt")) : "es".equalsIgnoreCase(model.getInternalCoutry()) ? new InputStreamReader(this.rootView.getContext().getResources().getAssets().open("es.txt")) : new InputStreamReader(this.rootView.getContext().getResources().getAssets().open("en.txt"));
                BufferedReader bufr2 = new BufferedReader(inputStream);
                while (true) {
                    try {
                        String line = bufr2.readLine();
                        if (line == null) {
                            break;
                        } else if (!TextUtils.isEmpty(line) && line.matches("(\\d+)\\s*=\\s*(.*)\\s*")) {
                            int key = Integer.valueOf(line.substring(0, line.indexOf("=")).trim()).intValue();
                            String value = line.substring(line.indexOf("=") + 1, line.length()).replace("\"", "").replace(";", "");
                            if (this.errCodeDesc == null) {
                                this.errCodeDesc = new HashMap();
                            }
                            this.errCodeDesc.put(key + "", value);
                        }
                    } catch (IOException e) {
                        e = e;
                        bufr = bufr2;
                        e.printStackTrace();
                        if (inputStream != null) {
                            IOUtils.closeQuietly((Reader) inputStream);
                        }
                        if (bufr == null) {
                            return;
                        }
                        IOUtils.closeQuietly((Reader) bufr);
                        return;
                    } catch (Throwable th) {
                        th = th;
                        bufr = bufr2;
                        if (inputStream != null) {
                            IOUtils.closeQuietly((Reader) inputStream);
                        }
                        if (bufr != null) {
                            IOUtils.closeQuietly((Reader) bufr);
                        }
                        throw th;
                    }
                }
                if (inputStream != null) {
                    IOUtils.closeQuietly((Reader) inputStream);
                }
                if (bufr2 == null) {
                    return;
                }
                IOUtils.closeQuietly((Reader) bufr2);
            } catch (IOException e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void initActions() {
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void defaultVal() {
    }

    public void onInteruptForUdating() {
        onDismissErrorCode();
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8Controllers
    public void onDroneConnected(boolean b) {
        if (!b) {
            onDismissErrorCode();
        }
    }

    public void onDismissErrorCode() {
        this.isGetData = false;
        if (this.list != null && this.list.size() > 0) {
            this.errorCodeLayout.cleanAll();
            resetSpeakFlag1();
            resetSpeakFlag2();
            this.mX8ErrerCodeSpeakFlashManager.disconnect();
            this.list.clear();
        }
    }

    public void resetSpeakFlag1() {
        for (ErrorCodeBean.ActionBean actionBean : this.seriousMap) {
            actionBean.setSpeaking(false);
            actionBean.setVibrating(false);
        }
        this.seriousMap.clear();
    }

    public void resetSpeakFlag2() {
        for (ErrorCodeBean.ActionBean actionBean : this.mediumMap) {
            actionBean.setSpeaking(false);
            actionBean.setVibrating(false);
            TcpClient.getIntance().sendLog(actionBean.toString());
        }
        this.mediumMap.clear();
    }

    public void onErrorCode(List<X8ErrorCodeInfo> list) {
        if (!this.isGetData) {
            this.list = list;
            if (this.errCodeDesc == null || this.errCodeDesc.size() == 0) {
                initErrCodeDes();
            }
            this.mX8ErrerCodeSpeakFlashManager.start();
        }
    }

    public synchronized void onErrorCode3(List<X8ErrorCodeInfo> list) {
        this.isGetData = true;
        if (list.size() > 0) {
            this.currentMap.clear();
            for (int i = 0; i < list.size(); i++) {
                X8ErrorCodeInfo info = list.get(i);
                ErrorCodeBean.ActionBean action = getErrorDesBean(info, StateManager.getInstance().getX8Drone().isInSky(), StateManager.getInstance().getX8Drone().getCtrlMode(), StateManager.getInstance().getX8Drone().getAutoFcHeart().getFlightPhase(), list);
                if (action != null) {
                    this.currentMap.add(action);
                    if (action.getSeverity() == 2) {
                        if (!this.seriousMap.contains(action)) {
                            this.seriousMap.add(action);
                        }
                    } else if (!this.mediumMap.contains(action)) {
                        this.mediumMap.add(action);
                    }
                }
            }
            removeSeriousDismissCode();
            removeMediumDismissCode();
        } else {
            resetSpeakFlag1();
            resetSpeakFlag2();
        }
        this.isGetData = false;
    }

    public void removeSeriousDismissCode() {
        Iterator<ErrorCodeBean.ActionBean> iterator = this.seriousMap.iterator();
        while (iterator.hasNext()) {
            ErrorCodeBean.ActionBean actionBean = iterator.next();
            boolean isFind = false;
            int i = 0;
            while (true) {
                if (i >= this.currentMap.size()) {
                    break;
                } else if (!actionBean.equals(this.currentMap.get(i))) {
                    i++;
                } else {
                    isFind = true;
                    break;
                }
            }
            if (!isFind) {
                this.mX8ErrerCodeSpeakFlashManager.removeSeriousMap(actionBean);
                iterator.remove();
            }
        }
    }

    public void removeMediumDismissCode() {
        Iterator<ErrorCodeBean.ActionBean> iterator = this.mediumMap.iterator();
        while (iterator.hasNext()) {
            ErrorCodeBean.ActionBean actionBean = iterator.next();
            boolean isFind = false;
            int i = 0;
            while (true) {
                if (i >= this.currentMap.size()) {
                    break;
                } else if (!actionBean.equals(this.currentMap.get(i))) {
                    i++;
                } else {
                    isFind = true;
                    break;
                }
            }
            if (!isFind) {
                this.mX8ErrerCodeSpeakFlashManager.removeMediumMap(actionBean);
                iterator.remove();
            }
        }
    }

    public String getErrorCodeString(int key) {
        return this.errCodeDesc.get(key + "");
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8Controllers
    public String getString(int id) {
        return this.rootView.getContext().getString(id);
    }

    private ErrorCodeBean getLocalError() {
        ErrorCodeBean errorCodeBean;
        String jsonStr = null;
        try {
            jsonStr = FileUtil.fileToString(this.rootView.getContext().getResources().getAssets().open("Alarms.json"));
        } catch (IOException e) {
            e.printStackTrace();
        }
        if (jsonStr == null || (errorCodeBean = (ErrorCodeBean) JSON.parseObject(jsonStr, ErrorCodeBean.class)) == null) {
            return null;
        }
        return errorCodeBean;
    }

    private String getErrorType(int type) {
        switch (type) {
            case 0:
                return "FCS-A";
            case 1:
                return "FCS-B";
            case 2:
                return "FCS-C";
            case 3:
                return "MTC";
            case 4:
                return "ATC";
            case 5:
                return "RCS";
            case 6:
                return "NFZS";
            default:
                return "";
        }
    }

    public int getMacthType(int type) {
        switch (type) {
            case 0:
                return 0;
            case 1:
                return 0;
            case 2:
                return 0;
            case 3:
                return 1;
            case 4:
                return 1;
            case 5:
                return 0;
            case 6:
                return 1;
            default:
                return -1;
        }
    }

    public ErrorCodeBean.ActionBean getErrorDesBean(X8ErrorCodeInfo info, boolean isInSky, int ctrlMode, int flightPhasw, List<X8ErrorCodeInfo> list) {
        ErrorCodeBean.ActionBean b = null;
        List<ErrorCodeBean.ActionBean> result = new ArrayList<>();
        int matchType = getMacthType(info.getType());
        if (matchType == -1) {
            return null;
        }
        if (matchType == 0) {
            for (ErrorCodeBean.ActionBean action : this.bean.getConfigs()) {
                if (getErrorType(info.getType()).equals(action.getGroupID()) && action.getOffsetBit() == info.getIndex() && action.isInFlight() == isInSky) {
                    result.add(action);
                }
            }
        } else if (matchType == 1) {
            for (ErrorCodeBean.ActionBean action2 : this.bean.getConfigs()) {
                if (getErrorType(info.getType()).equals(action2.getGroupID()) && action2.getValue() == info.getValue() && action2.isInFlight() == isInSky) {
                    result.add(action2);
                }
            }
        }
        Iterator<ErrorCodeBean.ActionBean> it = result.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            ErrorCodeBean.ActionBean action3 = it.next();
            boolean isFind = false;
            if (action3.getCtrlMode().size() > 0) {
                if (action3.getCtrlMode().get(0).isEqual()) {
                    if (action3.getCtrlMode().get(0).getValue() == ctrlMode) {
                        b = action3;
                    }
                } else if (checkCtrlModeNotEqual(action3.getCtrlMode(), ctrlMode)) {
                    b = action3;
                }
            } else if (action3.getFlightPhase().size() > 0) {
                if (action3.getFlightPhase().get(0).isEqual()) {
                    if (action3.getFlightPhase().get(0).getValue() == flightPhasw) {
                        b = action3;
                    }
                } else if (checkFlightPhaseNotEqual(action3.getFlightPhase(), flightPhasw)) {
                    b = action3;
                }
            } else {
                if (action3.getConstraintBits().size() > 0) {
                    isFind = true;
                    if (checkConstraintBitBeans(action3.getConstraintBits(), list)) {
                        b = action3;
                        break;
                    }
                }
                if (action3.getConditionValues().size() > 0) {
                    isFind = true;
                    if (checkConditionValueBeans(action3.getConditionValues(), list)) {
                        b = action3;
                        break;
                    }
                }
                if (!isFind) {
                    b = action3;
                }
            }
        }
        return b;
    }

    private boolean checkConditionValueBeans(List<ErrorCodeBean.ConditionValuesBean> conditionValues, List<X8ErrorCodeInfo> list) {
        int size = conditionValues.size();
        int k = 0;
        for (ErrorCodeBean.ConditionValuesBean m : conditionValues) {
            boolean isEqual = m.isEqual();
            for (int i = 0; i < list.size(); i++) {
                X8ErrorCodeInfo c = list.get(i);
                if (isEqual) {
                    if (getErrorType(c.getType()).equals(m.getGroupID())) {
                        boolean b = m.getValue() == c.getIndex();
                        if (b) {
                            k++;
                        }
                    }
                } else if (!getErrorType(c.getType()).equals(m.getGroupID())) {
                    k++;
                }
            }
        }
        if (k != size) {
            return false;
        }
        return true;
    }

    public boolean checkCtrlModeNotEqual(List<ErrorCodeBean.CtrlModeBean> ctrlMode, int mode) {
        for (ErrorCodeBean.CtrlModeBean m : ctrlMode) {
            if (mode == m.getValue()) {
                return false;
            }
        }
        return true;
    }

    public boolean checkFlightPhaseNotEqual(List<ErrorCodeBean.FlightPhase> flightPhases, int flightPhasw) {
        for (ErrorCodeBean.FlightPhase m : flightPhases) {
            if (flightPhasw == m.getValue()) {
                return false;
            }
        }
        return true;
    }

    public boolean checkConstraintBitBeans(List<ErrorCodeBean.ConstraintBitBean> constraintBits, List<X8ErrorCodeInfo> list) {
        int k = 0;
        for (ErrorCodeBean.ConstraintBitBean m : constraintBits) {
            boolean isValue = m.isValue();
            boolean isFind = false;
            int i = 0;
            while (true) {
                if (i >= list.size()) {
                    break;
                }
                X8ErrorCodeInfo c = list.get(i);
                if (!getErrorType(c.getType()).equals(m.getGroupID()) || m.getBitOffset() != c.getIndex()) {
                    i++;
                } else {
                    isFind = true;
                    break;
                }
            }
            if (isValue == isFind) {
                k++;
            }
        }
        if (k != constraintBits.size()) {
            return false;
        }
        return true;
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public boolean onClickBackKey() {
        return false;
    }

    public boolean hasErrorCode() {
        return hasSeriousCode() || hasMediumCode();
    }

    public boolean hasSeriousCode() {
        onErrorCode3(this.list);
        return this.seriousMap.size() > 0;
    }

    public boolean hasSeriousCode2() {
        return this.seriousMap.size() > 0;
    }

    public boolean hasMediumCode() {
        onErrorCode3(this.list);
        return this.mediumMap.size() > 0;
    }

    public boolean hasMediumCode2() {
        return this.mediumMap.size() > 0;
    }

    public List<ErrorCodeBean.ActionBean> getSeriousCode() {
        List<ErrorCodeBean.ActionBean> actions = new ArrayList<>();
        actions.clear();
        for (ErrorCodeBean.ActionBean entry : this.seriousMap) {
            actions.add(entry);
        }
        return actions;
    }

    public List<ErrorCodeBean.ActionBean> getMediumCode() {
        List<ErrorCodeBean.ActionBean> actions = new ArrayList<>();
        actions.clear();
        for (ErrorCodeBean.ActionBean entry : this.mediumMap) {
            actions.add(entry);
        }
        return actions;
    }

    public void showTextByCode(List<X8ErrorCode> codeList, IX8ErrorTextIsFinishShow isFinishShow) {
        this.errorCodeLayout.addErrorCode(codeList, isFinishShow);
        TcpClient.getIntance().sendLog("addErrorCode ");
    }

    public void runEnd(X8ErrorCodeEnum type) {
        TcpClient.getIntance().sendLog("runEnd " + type);
        if (X8ErrorCodeEnum.serious == type) {
            this.errorCodeLayout.cleanLevel1();
            resetSpeakFlag1();
        } else if (X8ErrorCodeEnum.medium == type) {
            this.errorCodeLayout.cleanLevel0();
            resetSpeakFlag2();
        }
    }

    public void initSpeak() {
    }

    public boolean isDroneStateErrorByLable(String flag) {
        if (this.seriousMap.size() > 0) {
            for (ErrorCodeBean.ActionBean entry : this.seriousMap) {
                String lable = entry.getLabel();
                if (lable != null && lable.equals(flag)) {
                    return true;
                }
            }
        }
        if (this.mediumMap.size() <= 0) {
            return false;
        }
        for (ErrorCodeBean.ActionBean entry2 : this.mediumMap) {
            String lable2 = entry2.getLabel();
            if (lable2 != null && lable2.equals(flag)) {
                return true;
            }
        }
        return false;
    }

    public X8ErrorCodeLayout getErrorCodeLayout() {
        return this.errorCodeLayout;
    }
}
