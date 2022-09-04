package org.jdom;
/* loaded from: classes2.dex */
public class EntityRef extends Content {
    private static final String CVS_ID = "@(#) $RCSfile: EntityRef.java,v $ $Revision: 1.21 $ $Date: 2004/02/27 11:32:57 $ $Name: jdom_1_0 $";
    protected String name;
    protected String publicID;
    protected String systemID;

    /* JADX INFO: Access modifiers changed from: protected */
    public EntityRef() {
    }

    public EntityRef(String name) {
        this(name, null, null);
    }

    public EntityRef(String name, String systemID) {
        this(name, null, systemID);
    }

    public EntityRef(String name, String publicID, String systemID) {
        setName(name);
        setPublicID(publicID);
        setSystemID(systemID);
    }

    public String getName() {
        return this.name;
    }

    @Override // org.jdom.Content
    public String getValue() {
        return "";
    }

    public String getPublicID() {
        return this.publicID;
    }

    public String getSystemID() {
        return this.systemID;
    }

    public EntityRef setName(String name) {
        String reason = Verifier.checkXMLName(name);
        if (reason != null) {
            throw new IllegalNameException(name, "EntityRef", reason);
        }
        this.name = name;
        return this;
    }

    public EntityRef setPublicID(String publicID) {
        String reason = Verifier.checkPublicID(publicID);
        if (reason != null) {
            throw new IllegalDataException(publicID, "EntityRef", reason);
        }
        this.publicID = publicID;
        return this;
    }

    public EntityRef setSystemID(String systemID) {
        String reason = Verifier.checkSystemLiteral(systemID);
        if (reason != null) {
            throw new IllegalDataException(systemID, "EntityRef", reason);
        }
        this.systemID = systemID;
        return this;
    }

    public String toString() {
        return new StringBuffer().append("[EntityRef: ").append("&").append(this.name).append(";").append("]").toString();
    }
}
