package org.jdom;

import org.jdom.output.XMLOutputter;
/* loaded from: classes2.dex */
public class Comment extends Content {
    private static final String CVS_ID = "@(#) $RCSfile: Comment.java,v $ $Revision: 1.32 $ $Date: 2004/02/11 21:12:43 $ $Name: jdom_1_0 $";
    protected String text;

    /* JADX INFO: Access modifiers changed from: protected */
    public Comment() {
    }

    public Comment(String text) {
        setText(text);
    }

    @Override // org.jdom.Content
    public String getValue() {
        return this.text;
    }

    public String getText() {
        return this.text;
    }

    public Comment setText(String text) {
        String reason = Verifier.checkCommentData(text);
        if (reason != null) {
            throw new IllegalDataException(text, "comment", reason);
        }
        this.text = text;
        return this;
    }

    public String toString() {
        return new StringBuffer().append("[Comment: ").append(new XMLOutputter().outputString(this)).append("]").toString();
    }
}
