package org.jdom;
/* loaded from: classes2.dex */
public class IllegalNameException extends IllegalArgumentException {
    private static final String CVS_ID = "@(#) $RCSfile: IllegalNameException.java,v $ $Revision: 1.13 $ $Date: 2004/02/06 09:28:30 $ $Name: jdom_1_0 $";

    /* JADX INFO: Access modifiers changed from: package-private */
    public IllegalNameException(String name, String construct, String reason) {
        super(new StringBuffer().append("The name \"").append(name).append("\" is not legal for JDOM/XML ").append(construct).append("s: ").append(reason).append(".").toString());
    }

    IllegalNameException(String name, String construct) {
        super(new StringBuffer().append("The name \"").append(name).append("\" is not legal for JDOM/XML ").append(construct).append("s.").toString());
    }

    public IllegalNameException(String reason) {
        super(reason);
    }
}
