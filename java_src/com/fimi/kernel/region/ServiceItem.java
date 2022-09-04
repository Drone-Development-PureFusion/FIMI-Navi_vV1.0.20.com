package com.fimi.kernel.region;

import com.fimi.host.common.ProductEnum;
import com.fimi.kernel.C1583R;
import com.fimi.kernel.Constants;
import java.io.Serializable;
/* loaded from: classes.dex */
public class ServiceItem implements Serializable {
    public static final String chinaService = "https://paas-beijing6.fimi.com/";
    public static final String frankfurtService = "https://paas-frankfurt.fimi.com/fimi-cms-web-interface/";
    public static final String moscowService = "https://paas-moscow.fimi.com/fimi-cms-web-interface/";
    public static final String newusService = "https://fimiservice-newus.mi-ae.com/";
    public static final String singaporeService = "https://paas-singapore.fimi.com/fimi-cms-web-interface/";
    private int code;
    private String countryCode;
    private int info;
    private boolean isSelect;
    private String serviceUrl;
    private static final int[] SERVICENAME = {C1583R.string.region_Argentina, C1583R.string.region_United_Arab_Emirates, C1583R.string.region_Poland, C1583R.string.region_germany, C1583R.string.region_Russia, C1583R.string.region_France, C1583R.string.region_Philippines, C1583R.string.region_Malaysia, C1583R.string.region_The_US, C1583R.string.region_Burma, C1583R.string.region_Mexico, C1583R.string.region_Saudi_Arabia, C1583R.string.region_Slovakia, C1583R.string.region_Thailand, C1583R.string.region_Turkey, C1583R.string.region_Ukraine, C1583R.string.region_Spain, C1583R.string.region_hk, C1583R.string.region_Singapore, C1583R.string.region_Iran, C1583R.string.region_italy, C1583R.string.region_Indonesia, C1583R.string.region_Vietnam, C1583R.string.region_Mainland_China};
    private static final int[] SERVICENAME_X8 = {C1583R.string.region_Argentina, C1583R.string.region_United_Arab_Emirates, C1583R.string.region_egpyt, C1583R.string.region_pakistan, C1583R.string.region_belarus, C1583R.string.region_Poland, C1583R.string.region_germany, C1583R.string.region_Russia, C1583R.string.region_France, C1583R.string.region_Philippines, C1583R.string.region_colombia, C1583R.string.region_korea, C1583R.string.region_Malaysia, C1583R.string.region_The_US, C1583R.string.region_maroc, C1583R.string.region_Burma, C1583R.string.region_Mexico, C1583R.string.region_portugal, C1583R.string.region_japan, C1583R.string.region_Saudi_Arabia, C1583R.string.region_Slovakia, C1583R.string.region_tw, C1583R.string.region_Thailand, C1583R.string.region_Turkey, C1583R.string.region_Ukraine, C1583R.string.region_Spain, C1583R.string.region_greco, C1583R.string.region_hk, C1583R.string.region_Singapore, C1583R.string.region_Iran, C1583R.string.region_israel, C1583R.string.region_italy, C1583R.string.region_Indonesia, C1583R.string.region_uk, C1583R.string.region_Vietnam, C1583R.string.region_Mainland_China, C1583R.string.region_other};
    private static final int[] SERVICENAME_GH2 = {C1583R.string.region_Argentina, C1583R.string.region_United_Arab_Emirates, C1583R.string.region_egpyt, C1583R.string.region_pakistan, C1583R.string.region_belarus, C1583R.string.region_Poland, C1583R.string.region_germany, C1583R.string.region_Russia, C1583R.string.region_France, C1583R.string.region_Philippines, C1583R.string.region_colombia, C1583R.string.region_korea, C1583R.string.region_Malaysia, C1583R.string.region_The_US, C1583R.string.region_maroc, C1583R.string.region_Mexico, C1583R.string.region_portugal, C1583R.string.region_japan, C1583R.string.region_Saudi_Arabia, C1583R.string.region_Thailand, C1583R.string.region_Turkey, C1583R.string.region_Ukraine, C1583R.string.region_Spain, C1583R.string.region_greco, C1583R.string.region_hk, C1583R.string.region_Singapore, C1583R.string.region_Iran, C1583R.string.region_israel, C1583R.string.region_italy, C1583R.string.region_Indonesia, C1583R.string.region_uk, C1583R.string.region_Vietnam, C1583R.string.region_Mainland_China};
    public static final int[] THE_US_SERVICE = {C1583R.string.region_United_Arab_Emirates, C1583R.string.region_Saudi_Arabia, C1583R.string.region_Iran, C1583R.string.region_Argentina, C1583R.string.region_Mexico, C1583R.string.region_The_US};
    public static final int[] THE_EUROPE_SERVICE = {C1583R.string.region_Spain, C1583R.string.region_Poland, C1583R.string.region_Ukraine, C1583R.string.region_Slovakia, C1583R.string.region_France, C1583R.string.region_Turkey, C1583R.string.region_Europe};
    public static final int[] THE_SINGAPORE_SERVICE = {C1583R.string.region_Indonesia, C1583R.string.region_Malaysia, C1583R.string.region_Burma, C1583R.string.region_Thailand, C1583R.string.region_Vietnam, C1583R.string.region_Singapore, C1583R.string.region_Philippines, C1583R.string.region_taiwan};
    public static final int[] SERVICECODE = {1, 2, 3, 4, 5, 6, 7};

    public static int[] getServicename() {
        if (Constants.productType == ProductEnum.GH2) {
            return SERVICENAME_GH2;
        }
        if (Constants.productType == ProductEnum.X9) {
            return SERVICENAME;
        }
        return SERVICENAME_X8;
    }

    public String getCountryCode() {
        return this.countryCode;
    }

    public void setCountryCode(String countryCode) {
        this.countryCode = countryCode;
    }

    public String getServiceUrl() {
        return this.serviceUrl;
    }

    public void setServiceUrl(String serviceUrl) {
        this.serviceUrl = serviceUrl;
    }

    public int getInfo() {
        return this.info;
    }

    public void setInfo(int info) {
        this.info = info;
    }

    public int getCode() {
        return this.code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public boolean isSelect() {
        return this.isSelect;
    }

    public void setSelect(boolean select) {
        this.isSelect = select;
    }
}
