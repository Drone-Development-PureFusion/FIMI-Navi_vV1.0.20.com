package com.fimi.kernel.language;

import com.fimi.kernel.C1583R;
import java.util.Locale;
/* loaded from: classes.dex */
public class LanguageItem {
    private String code;
    private int info;
    private boolean isSelect;
    public static final LanguageModel[] languageModels = {new LanguageModel(C1583R.string.kernal_simplified_chinese, Locale.SIMPLIFIED_CHINESE, "cn"), new LanguageModel(C1583R.string.kernal_english, Locale.US, "en"), new LanguageModel(C1583R.string.kernal_korean, Locale.KOREA, "ko"), new LanguageModel(C1583R.string.kernal_spanish, new Locale("es", "ES"), "es")};
    public static final LanguageModel defaultLanguage = new LanguageModel(C1583R.string.kernal_english, Locale.US, "en");

    public String getCode() {
        return this.code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public int getInfo() {
        return this.info;
    }

    public void setInfo(int info) {
        this.info = info;
    }

    public boolean isSelect() {
        return this.isSelect;
    }

    public void setSelect(boolean select) {
        this.isSelect = select;
    }
}
