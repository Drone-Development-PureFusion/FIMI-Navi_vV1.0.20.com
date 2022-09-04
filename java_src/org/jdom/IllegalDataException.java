package org.jdom;
/* loaded from: classes2.dex */
public class IllegalDataException extends IllegalArgumentException {
    private static final String CVS_ID = "@(#) $RCSfile: IllegalDataException.java,v $ $Revision: 1.13 $ $Date: 2004/02/06 09:28:30 $ $Name: jdom_1_0 $";

    /* JADX INFO: Access modifiers changed from: package-private */
    public IllegalDataException(String data, String construct, String reason) {
        super(new StringBuffer().append("The data \"").append(data).append("\" is not legal for a JDOM ").append(construct).append(": ").append(reason).append(".").toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IllegalDataException(String data, String construct) {
        super(new StringBuffer().append("The data \"").append(data).append("\" is not legal for a JDOM ").append(construct).append(".").toString());
    }

    public IllegalDataException(String reason) {
        super(reason);
    }
}
