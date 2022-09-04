package p021rx.exceptions;

import ch.qos.logback.classic.net.SyslogAppender;
import com.fimi.kernel.animutils.IOUtils;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
/* renamed from: rx.exceptions.CompositeException */
/* loaded from: classes2.dex */
public final class CompositeException extends RuntimeException {
    private static final long serialVersionUID = 3026362227162912146L;
    private Throwable cause;
    private final List<Throwable> exceptions;
    private final String message;

    public CompositeException(String messagePrefix, Collection<? extends Throwable> errors) {
        this.cause = null;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        List<Throwable> _exceptions = new ArrayList<>();
        if (errors != null) {
            for (Throwable ex : errors) {
                if (ex instanceof CompositeException) {
                    linkedHashSet.addAll(((CompositeException) ex).getExceptions());
                } else if (ex != null) {
                    linkedHashSet.add(ex);
                } else {
                    linkedHashSet.add(new NullPointerException());
                }
            }
        } else {
            linkedHashSet.add(new NullPointerException());
        }
        _exceptions.addAll(linkedHashSet);
        this.exceptions = Collections.unmodifiableList(_exceptions);
        this.message = this.exceptions.size() + " exceptions occurred. ";
    }

    public CompositeException(Collection<? extends Throwable> errors) {
        this(null, errors);
    }

    public List<Throwable> getExceptions() {
        return this.exceptions;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.message;
    }

    @Override // java.lang.Throwable
    public synchronized Throwable getCause() {
        if (this.cause == null) {
            Throwable _cause = new CompositeExceptionCausalChain();
            Set<Throwable> seenCauses = new HashSet<>();
            Throwable chain = _cause;
            Iterator<Throwable> it = this.exceptions.iterator();
            while (it.hasNext()) {
                Throwable e = it.next();
                if (!seenCauses.contains(e)) {
                    seenCauses.add(e);
                    List<Throwable> listOfCauses = getListOfCauses(e);
                    for (Throwable child : listOfCauses) {
                        if (seenCauses.contains(child)) {
                            e = new RuntimeException("Duplicate found in causal chain so cropping to prevent loop ...");
                        } else {
                            seenCauses.add(child);
                        }
                    }
                    try {
                        chain.initCause(e);
                        chain = chain.getCause();
                    } catch (Throwable th) {
                        chain = e;
                    }
                }
            }
            this.cause = _cause;
        }
        return this.cause;
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        printStackTrace(System.err);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream s) {
        printStackTrace(new WrappedPrintStream(s));
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter s) {
        printStackTrace(new WrappedPrintWriter(s));
    }

    private void printStackTrace(PrintStreamOrWriter s) {
        StringBuilder bldr = new StringBuilder();
        bldr.append(this).append(IOUtils.LINE_SEPARATOR_UNIX);
        StackTraceElement[] arr$ = getStackTrace();
        for (StackTraceElement myStackElement : arr$) {
            bldr.append("\tat ").append(myStackElement).append(IOUtils.LINE_SEPARATOR_UNIX);
        }
        int i = 1;
        for (Throwable ex : this.exceptions) {
            bldr.append("  ComposedException ").append(i).append(" :").append(IOUtils.LINE_SEPARATOR_UNIX);
            appendStackTrace(bldr, ex, SyslogAppender.DEFAULT_STACKTRACE_PATTERN);
            i++;
        }
        synchronized (s.lock()) {
            s.println(bldr.toString());
        }
    }

    private void appendStackTrace(StringBuilder bldr, Throwable ex, String prefix) {
        bldr.append(prefix).append(ex).append(IOUtils.LINE_SEPARATOR_UNIX);
        StackTraceElement[] arr$ = ex.getStackTrace();
        for (StackTraceElement stackElement : arr$) {
            bldr.append("\t\tat ").append(stackElement).append(IOUtils.LINE_SEPARATOR_UNIX);
        }
        if (ex.getCause() != null) {
            bldr.append("\tCaused by: ");
            appendStackTrace(bldr, ex.getCause(), "");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rx.exceptions.CompositeException$PrintStreamOrWriter */
    /* loaded from: classes2.dex */
    public static abstract class PrintStreamOrWriter {
        abstract Object lock();

        abstract void println(Object obj);

        private PrintStreamOrWriter() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rx.exceptions.CompositeException$WrappedPrintStream */
    /* loaded from: classes2.dex */
    public static class WrappedPrintStream extends PrintStreamOrWriter {
        private final PrintStream printStream;

        WrappedPrintStream(PrintStream printStream) {
            super();
            this.printStream = printStream;
        }

        @Override // p021rx.exceptions.CompositeException.PrintStreamOrWriter
        Object lock() {
            return this.printStream;
        }

        @Override // p021rx.exceptions.CompositeException.PrintStreamOrWriter
        void println(Object o) {
            this.printStream.println(o);
        }
    }

    /* renamed from: rx.exceptions.CompositeException$WrappedPrintWriter */
    /* loaded from: classes2.dex */
    private static class WrappedPrintWriter extends PrintStreamOrWriter {
        private final PrintWriter printWriter;

        WrappedPrintWriter(PrintWriter printWriter) {
            super();
            this.printWriter = printWriter;
        }

        @Override // p021rx.exceptions.CompositeException.PrintStreamOrWriter
        Object lock() {
            return this.printWriter;
        }

        @Override // p021rx.exceptions.CompositeException.PrintStreamOrWriter
        void println(Object o) {
            this.printWriter.println(o);
        }
    }

    /* renamed from: rx.exceptions.CompositeException$CompositeExceptionCausalChain */
    /* loaded from: classes2.dex */
    static final class CompositeExceptionCausalChain extends RuntimeException {
        static String MESSAGE = "Chain of Causes for CompositeException In Order Received =>";
        private static final long serialVersionUID = 3875212506787802066L;

        CompositeExceptionCausalChain() {
        }

        @Override // java.lang.Throwable
        public String getMessage() {
            return MESSAGE;
        }
    }

    private List<Throwable> getListOfCauses(Throwable ex) {
        List<Throwable> list = new ArrayList<>();
        Throwable root = ex.getCause();
        if (root != null) {
            while (true) {
                list.add(root);
                if (root.getCause() == null) {
                    break;
                }
                root = root.getCause();
            }
        }
        return list;
    }
}
