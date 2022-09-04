package org.jdom;

import ch.qos.logback.core.CoreConstants;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.rmi.RemoteException;
import java.sql.SQLException;
import org.xml.sax.SAXException;
/* loaded from: classes2.dex */
public class JDOMException extends Exception {
    private static final String CVS_ID = "@(#) $RCSfile: JDOMException.java,v $ $Revision: 1.23 $ $Date: 2004/02/27 11:32:57 $ $Name: jdom_1_0 $";
    private Throwable cause;

    public JDOMException() {
        super("Error occurred in JDOM application.");
    }

    public JDOMException(String message) {
        super(message);
    }

    public JDOMException(String message, Throwable cause) {
        super(message);
        this.cause = cause;
    }

    @Override // java.lang.Throwable
    public Throwable initCause(Throwable cause) {
        this.cause = cause;
        return this;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        Throwable grandchild;
        String msg = super.getMessage();
        Throwable parent = this;
        while (true) {
            Throwable child = getNestedException(parent);
            if (child != null) {
                String msg2 = child.getMessage();
                if ((child instanceof SAXException) && (grandchild = ((SAXException) child).getException()) != null && msg2 != null && msg2.equals(grandchild.getMessage())) {
                    msg2 = null;
                }
                if (msg2 != null) {
                    if (msg != null) {
                        msg = new StringBuffer(String.valueOf(msg)).append(": ").append(msg2).toString();
                    } else {
                        msg = msg2;
                    }
                }
                if (child instanceof JDOMException) {
                    break;
                }
                parent = child;
            } else {
                break;
            }
        }
        return msg;
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        super.printStackTrace();
        Throwable parent = this;
        while (true) {
            Throwable child = getNestedException(parent);
            if (child == null) {
                return;
            }
            System.err.print(CoreConstants.CAUSED_BY);
            child.printStackTrace();
            if (child instanceof JDOMException) {
                return;
            }
            parent = child;
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream s) {
        super.printStackTrace(s);
        Throwable parent = this;
        while (true) {
            Throwable child = getNestedException(parent);
            if (child == null) {
                return;
            }
            s.print(CoreConstants.CAUSED_BY);
            child.printStackTrace(s);
            if (child instanceof JDOMException) {
                return;
            }
            parent = child;
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter w) {
        super.printStackTrace(w);
        Throwable parent = this;
        while (true) {
            Throwable child = getNestedException(parent);
            if (child == null) {
                return;
            }
            w.print(CoreConstants.CAUSED_BY);
            child.printStackTrace(w);
            if (child instanceof JDOMException) {
                return;
            }
            parent = child;
        }
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }

    private static Throwable getNestedException(Throwable parent) {
        if (parent instanceof JDOMException) {
            return ((JDOMException) parent).getCause();
        }
        if (parent instanceof SAXException) {
            return ((SAXException) parent).getException();
        }
        if (parent instanceof SQLException) {
            return ((SQLException) parent).getNextException();
        }
        if (parent instanceof InvocationTargetException) {
            return ((InvocationTargetException) parent).getTargetException();
        }
        if (parent instanceof ExceptionInInitializerError) {
            return ((ExceptionInInitializerError) parent).getException();
        }
        if (parent instanceof RemoteException) {
            return ((RemoteException) parent).detail;
        }
        Throwable nestedException = getNestedException(parent, "javax.naming.NamingException", "getRootCause");
        if (nestedException == null) {
            Throwable nestedException2 = getNestedException(parent, "javax.servlet.ServletException", "getRootCause");
            if (nestedException2 == null) {
                return null;
            }
            return nestedException2;
        }
        return nestedException;
    }

    private static Throwable getNestedException(Throwable parent, String className, String methodName) {
        try {
            Class testClass = Class.forName(className);
            Class objectClass = parent.getClass();
            if (testClass.isAssignableFrom(objectClass)) {
                Class[] argClasses = new Class[0];
                Method method = testClass.getMethod(methodName, argClasses);
                Object[] args = new Object[0];
                return (Throwable) method.invoke(parent, args);
            }
        } catch (Exception e) {
        }
        return null;
    }
}
