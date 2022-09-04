package org.jdom;
/* loaded from: classes2.dex */
public class CDATA extends Text {
    private static final String CVS_ID = "@(#) $RCSfile: CDATA.java,v $ $Revision: 1.30 $ $Date: 2004/02/27 11:32:57 $ $Name: jdom_1_0 $";

    /* JADX INFO: Access modifiers changed from: protected */
    public CDATA() {
    }

    public CDATA(String str) {
        setText(str);
    }

    @Override // org.jdom.Text
    public Text setText(String str) {
        if (str == null) {
            this.value = "";
        } else {
            String reason = Verifier.checkCDATASection(str);
            if (reason != null) {
                throw new IllegalDataException(str, "CDATA section", reason);
            }
            this.value = str;
        }
        return this;
    }

    @Override // org.jdom.Text
    public void append(String str) {
        if (str == null) {
            return;
        }
        String reason = Verifier.checkCDATASection(str);
        if (reason != null) {
            throw new IllegalDataException(str, "CDATA section", reason);
        }
        if (this.value == "") {
            this.value = str;
        } else {
            this.value = new StringBuffer(String.valueOf(this.value)).append(str).toString();
        }
    }

    @Override // org.jdom.Text
    public String toString() {
        return new StringBuffer(64).append("[CDATA: ").append(getText()).append("]").toString();
    }
}
