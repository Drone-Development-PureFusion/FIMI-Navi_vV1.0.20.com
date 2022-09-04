package org.jdom;
/* loaded from: classes2.dex */
public class IllegalTargetException extends IllegalArgumentException {
    private static final String CVS_ID = "@(#) $RCSfile: IllegalTargetException.java,v $ $Revision: 1.14 $ $Date: 2004/02/06 09:28:30 $ $Name: jdom_1_0 $";

    /* JADX INFO: Access modifiers changed from: package-private */
    public IllegalTargetException(String target, String reason) {
        super(new StringBuffer().append("The target \"").append(target).append("\" is not legal for JDOM/XML Processing Instructions: ").append(reason).append(".").toString());
    }

    public IllegalTargetException(String reason) {
        super(reason);
    }
}
