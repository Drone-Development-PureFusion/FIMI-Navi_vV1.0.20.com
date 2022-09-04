package org.dom4j;

import java.io.PrintStream;
import java.io.PrintWriter;
/* loaded from: classes2.dex */
public class DocumentException extends Exception {
    private Throwable nestedException;

    public DocumentException() {
        super("Error occurred in DOM4J application.");
    }

    public DocumentException(String message) {
        super(message);
    }

    public DocumentException(Throwable nestedException) {
        super(nestedException.getMessage());
        this.nestedException = nestedException;
    }

    public DocumentException(String message, Throwable nestedException) {
        super(message);
        this.nestedException = nestedException;
    }

    public Throwable getNestedException() {
        return this.nestedException;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.nestedException != null ? new StringBuffer().append(super.getMessage()).append(" Nested exception: ").append(this.nestedException.getMessage()).toString() : super.getMessage();
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        super.printStackTrace();
        if (this.nestedException != null) {
            System.err.print("Nested exception: ");
            this.nestedException.printStackTrace();
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream out) {
        super.printStackTrace(out);
        if (this.nestedException != null) {
            out.println("Nested exception: ");
            this.nestedException.printStackTrace(out);
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter writer) {
        super.printStackTrace(writer);
        if (this.nestedException != null) {
            writer.println("Nested exception: ");
            this.nestedException.printStackTrace(writer);
        }
    }
}
