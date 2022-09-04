package ch.qos.logback.core.net;

import ch.qos.logback.core.AppenderBase;
import ch.qos.logback.core.Layout;
import ch.qos.logback.core.boolex.EvaluationException;
import ch.qos.logback.core.boolex.EventEvaluator;
import ch.qos.logback.core.helpers.CyclicBuffer;
import ch.qos.logback.core.pattern.PatternLayoutBase;
import ch.qos.logback.core.sift.DefaultDiscriminator;
import ch.qos.logback.core.sift.Discriminator;
import ch.qos.logback.core.spi.CyclicBufferTracker;
import ch.qos.logback.core.util.ContentTypeUtil;
import ch.qos.logback.core.util.OptionHelper;
import com.facebook.internal.ServerProtocol;
import com.fimi.kernel.connect.tcp.SocketOption;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
/* loaded from: classes.dex */
public abstract class SMTPAppenderBase<E> extends AppenderBase<E> {
    static InternetAddress[] EMPTY_IA_ARRAY = new InternetAddress[0];
    static final int MAX_DELAY_BETWEEN_STATUS_MESSAGES = 1228800000;
    protected CyclicBufferTracker<E> cbTracker;
    protected EventEvaluator<E> eventEvaluator;
    private String from;
    protected Layout<E> layout;
    String localhost;
    protected MimeMessage mimeMsg;
    String password;
    private String smtpHost;
    protected Layout<E> subjectLayout;
    String username;
    long lastTrackerStatusPrint = 0;
    int delayBetweenStatusMessages = 300000;
    private List<PatternLayoutBase<E>> toPatternLayoutList = new ArrayList();
    private String subjectStr = null;
    private int smtpPort = 25;
    private boolean starttls = false;
    private boolean ssl = false;
    boolean asynchronousSending = true;
    private String charsetEncoding = SocketOption.DEFAULT_CHARSET;
    protected Discriminator<E> discriminator = new DefaultDiscriminator();
    private int errorCount = 0;

    /* loaded from: classes.dex */
    class SenderRunnable implements Runnable {
        final CyclicBuffer<E> cyclicBuffer;

        /* renamed from: e */
        final E f41e;

        SenderRunnable(CyclicBuffer<E> cyclicBuffer, E e) {
            this.cyclicBuffer = cyclicBuffer;
            this.f41e = e;
        }

        @Override // java.lang.Runnable
        public void run() {
            SMTPAppenderBase.this.sendBuffer(this.cyclicBuffer, this.f41e);
        }
    }

    private Session buildSessionFromProperties() {
        Properties properties = new Properties(OptionHelper.getSystemProperties());
        if (this.smtpHost != null) {
            properties.put("mail.smtp.host", this.smtpHost);
        }
        properties.put("mail.smtp.port", Integer.toString(this.smtpPort));
        if (this.localhost != null) {
            properties.put("mail.smtp.localhost", this.localhost);
        }
        LoginAuthenticator loginAuthenticator = null;
        if (this.username != null) {
            loginAuthenticator = new LoginAuthenticator(this.username, this.password);
            properties.put("mail.smtp.auth", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
        }
        if (!isSTARTTLS() || !isSSL()) {
            if (isSTARTTLS()) {
                properties.put("mail.smtp.starttls.enable", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
            }
            if (isSSL()) {
                properties.put("mail.smtp.socketFactory.port", Integer.toString(this.smtpPort));
                properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
                properties.put("mail.smtp.socketFactory.fallback", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
            }
        } else {
            addError("Both SSL and StartTLS cannot be enabled simultaneously");
        }
        return Session.getInstance(properties, loginAuthenticator);
    }

    private List<InternetAddress> parseAddress(E e) {
        int size = this.toPatternLayoutList.size();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < size; i++) {
            try {
                String doLayout = this.toPatternLayoutList.get(i).doLayout(e);
                if (doLayout != null && doLayout.length() != 0) {
                    arrayList.addAll(Arrays.asList(InternetAddress.parse(doLayout, true)));
                }
            } catch (AddressException e2) {
                addError("Could not parse email address for [" + this.toPatternLayoutList.get(i) + "] for event [" + e + "]", e2);
                return arrayList;
            }
        }
        return arrayList;
    }

    public void addTo(String str) {
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException("Null or empty <to> property");
        }
        PatternLayoutBase<E> makeNewToPatternLayout = makeNewToPatternLayout(str.trim());
        makeNewToPatternLayout.setContext(this.context);
        makeNewToPatternLayout.start();
        this.toPatternLayoutList.add(makeNewToPatternLayout);
    }

    @Override // ch.qos.logback.core.AppenderBase
    protected void append(E e) {
        if (!checkEntryConditions()) {
            return;
        }
        String discriminatingValue = this.discriminator.getDiscriminatingValue(e);
        long currentTimeMillis = System.currentTimeMillis();
        CyclicBuffer<E> orCreate = this.cbTracker.getOrCreate(discriminatingValue, currentTimeMillis);
        subAppend(orCreate, e);
        try {
            if (this.eventEvaluator.evaluate(e)) {
                CyclicBuffer<E> cyclicBuffer = new CyclicBuffer<>(orCreate);
                orCreate.clear();
                if (this.asynchronousSending) {
                    this.context.getExecutorService().execute(new SenderRunnable(cyclicBuffer, e));
                } else {
                    sendBuffer(cyclicBuffer, e);
                }
            }
        } catch (EvaluationException e2) {
            this.errorCount++;
            if (this.errorCount < 4) {
                addError("SMTPAppender's EventEvaluator threw an Exception-", e2);
            }
        }
        if (eventMarksEndOfLife(e)) {
            this.cbTracker.endOfLife(discriminatingValue);
        }
        this.cbTracker.removeStaleComponents(currentTimeMillis);
        if (this.lastTrackerStatusPrint + this.delayBetweenStatusMessages >= currentTimeMillis) {
            return;
        }
        addInfo("SMTPAppender [" + this.name + "] is tracking [" + this.cbTracker.getComponentCount() + "] buffers");
        this.lastTrackerStatusPrint = currentTimeMillis;
        if (this.delayBetweenStatusMessages >= MAX_DELAY_BETWEEN_STATUS_MESSAGES) {
            return;
        }
        this.delayBetweenStatusMessages *= 4;
    }

    public boolean checkEntryConditions() {
        if (!this.started) {
            addError("Attempting to append to a non-started appender: " + getName());
            return false;
        } else if (this.mimeMsg == null) {
            addError("Message object not configured.");
            return false;
        } else if (this.eventEvaluator == null) {
            addError("No EventEvaluator is set for appender [" + this.name + "].");
            return false;
        } else if (this.layout != null) {
            return true;
        } else {
            addError("No layout set for appender named [" + this.name + "]. For more information, please visit http://logback.qos.ch/codes.html#smtp_no_layout");
            return false;
        }
    }

    protected abstract boolean eventMarksEndOfLife(E e);

    protected abstract void fillBuffer(CyclicBuffer<E> cyclicBuffer, StringBuffer stringBuffer);

    InternetAddress getAddress(String str) {
        try {
            return new InternetAddress(str);
        } catch (AddressException e) {
            addError("Could not parse address [" + str + "].", e);
            return null;
        }
    }

    public String getCharsetEncoding() {
        return this.charsetEncoding;
    }

    public CyclicBufferTracker<E> getCyclicBufferTracker() {
        return this.cbTracker;
    }

    public Discriminator<E> getDiscriminator() {
        return this.discriminator;
    }

    public String getFrom() {
        return this.from;
    }

    public Layout<E> getLayout() {
        return this.layout;
    }

    public String getLocalhost() {
        return this.localhost;
    }

    public Message getMessage() {
        return this.mimeMsg;
    }

    public String getPassword() {
        return this.password;
    }

    public String getSMTPHost() {
        return getSmtpHost();
    }

    public int getSMTPPort() {
        return getSmtpPort();
    }

    public String getSmtpHost() {
        return this.smtpHost;
    }

    public int getSmtpPort() {
        return this.smtpPort;
    }

    public String getSubject() {
        return this.subjectStr;
    }

    public List<String> getToAsListOfString() {
        ArrayList arrayList = new ArrayList();
        for (PatternLayoutBase<E> patternLayoutBase : this.toPatternLayoutList) {
            arrayList.add(patternLayoutBase.getPattern());
        }
        return arrayList;
    }

    public List<PatternLayoutBase<E>> getToList() {
        return this.toPatternLayoutList;
    }

    public String getUsername() {
        return this.username;
    }

    public boolean isAsynchronousSending() {
        return this.asynchronousSending;
    }

    public boolean isSSL() {
        return this.ssl;
    }

    public boolean isSTARTTLS() {
        return this.starttls;
    }

    protected abstract PatternLayoutBase<E> makeNewToPatternLayout(String str);

    protected abstract Layout<E> makeSubjectLayout(String str);

    /* JADX WARN: Removed duplicated region for block: B:24:0x0067 A[Catch: Exception -> 0x00d8, TryCatch #0 {Exception -> 0x00d8, blocks: (B:3:0x0001, B:5:0x0013, B:6:0x0016, B:8:0x001e, B:9:0x0021, B:11:0x002c, B:12:0x002f, B:14:0x0037, B:15:0x003a, B:17:0x0040, B:19:0x0048, B:21:0x0050, B:22:0x0056, B:24:0x0067, B:27:0x006f, B:29:0x008a, B:30:0x0097, B:32:0x00df), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x006f A[Catch: Exception -> 0x00d8, TryCatch #0 {Exception -> 0x00d8, blocks: (B:3:0x0001, B:5:0x0013, B:6:0x0016, B:8:0x001e, B:9:0x0021, B:11:0x002c, B:12:0x002f, B:14:0x0037, B:15:0x003a, B:17:0x0040, B:19:0x0048, B:21:0x0050, B:22:0x0056, B:24:0x0067, B:27:0x006f, B:29:0x008a, B:30:0x0097, B:32:0x00df), top: B:2:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void sendBuffer(CyclicBuffer<E> cyclicBuffer, E e) {
        String str;
        List<InternetAddress> parseAddress;
        try {
            MimeBodyPart mimeBodyPart = new MimeBodyPart();
            StringBuffer stringBuffer = new StringBuffer();
            String fileHeader = this.layout.getFileHeader();
            if (fileHeader != null) {
                stringBuffer.append(fileHeader);
            }
            String presentationHeader = this.layout.getPresentationHeader();
            if (presentationHeader != null) {
                stringBuffer.append(presentationHeader);
            }
            fillBuffer(cyclicBuffer, stringBuffer);
            String presentationFooter = this.layout.getPresentationFooter();
            if (presentationFooter != null) {
                stringBuffer.append(presentationFooter);
            }
            String fileFooter = this.layout.getFileFooter();
            if (fileFooter != null) {
                stringBuffer.append(fileFooter);
            }
            String str2 = "Undefined subject";
            if (this.subjectLayout != null) {
                str2 = this.subjectLayout.doLayout(e);
                int indexOf = str2 != null ? str2.indexOf(10) : -1;
                if (indexOf > -1) {
                    str = str2.substring(0, indexOf);
                    this.mimeMsg.setSubject(str, this.charsetEncoding);
                    parseAddress = parseAddress(e);
                    if (!parseAddress.isEmpty()) {
                        addInfo("Empty destination address. Aborting email transmission");
                        return;
                    }
                    InternetAddress[] internetAddressArr = (InternetAddress[]) parseAddress.toArray(EMPTY_IA_ARRAY);
                    this.mimeMsg.setRecipients(Message.RecipientType.TO, internetAddressArr);
                    String contentType = this.layout.getContentType();
                    if (ContentTypeUtil.isTextual(contentType)) {
                        mimeBodyPart.setText(stringBuffer.toString(), this.charsetEncoding, ContentTypeUtil.getSubType(contentType));
                    } else {
                        mimeBodyPart.setContent(stringBuffer.toString(), this.layout.getContentType());
                    }
                    MimeMultipart mimeMultipart = new MimeMultipart();
                    mimeMultipart.addBodyPart(mimeBodyPart);
                    this.mimeMsg.setContent(mimeMultipart);
                    this.mimeMsg.setSentDate(new Date());
                    addInfo("About to send out SMTP message \"" + str + "\" to " + Arrays.toString(internetAddressArr));
                    Transport.send(this.mimeMsg);
                    return;
                }
            }
            str = str2;
            this.mimeMsg.setSubject(str, this.charsetEncoding);
            parseAddress = parseAddress(e);
            if (!parseAddress.isEmpty()) {
            }
        } catch (Exception e2) {
            addError("Error occurred while sending e-mail notification.", e2);
        }
    }

    public void setAsynchronousSending(boolean z) {
        this.asynchronousSending = z;
    }

    public void setCharsetEncoding(String str) {
        this.charsetEncoding = str;
    }

    public void setCyclicBufferTracker(CyclicBufferTracker<E> cyclicBufferTracker) {
        this.cbTracker = cyclicBufferTracker;
    }

    public void setDiscriminator(Discriminator<E> discriminator) {
        this.discriminator = discriminator;
    }

    public void setEvaluator(EventEvaluator<E> eventEvaluator) {
        this.eventEvaluator = eventEvaluator;
    }

    public void setFrom(String str) {
        this.from = str;
    }

    public void setLayout(Layout<E> layout) {
        this.layout = layout;
    }

    public void setLocalhost(String str) {
        this.localhost = str;
    }

    public void setMessage(MimeMessage mimeMessage) {
        this.mimeMsg = mimeMessage;
    }

    public void setPassword(String str) {
        this.password = str;
    }

    public void setSMTPHost(String str) {
        setSmtpHost(str);
    }

    public void setSMTPPort(int i) {
        setSmtpPort(i);
    }

    public void setSSL(boolean z) {
        this.ssl = z;
    }

    public void setSTARTTLS(boolean z) {
        this.starttls = z;
    }

    public void setSmtpHost(String str) {
        this.smtpHost = str;
    }

    public void setSmtpPort(int i) {
        this.smtpPort = i;
    }

    public void setSubject(String str) {
        this.subjectStr = str;
    }

    public void setUsername(String str) {
        this.username = str;
    }

    @Override // ch.qos.logback.core.AppenderBase, ch.qos.logback.core.spi.LifeCycle
    public void start() {
        if (this.cbTracker == null) {
            this.cbTracker = new CyclicBufferTracker<>();
        }
        Session buildSessionFromProperties = buildSessionFromProperties();
        if (buildSessionFromProperties == null) {
            addError("Failed to obtain javax.mail.Session. Cannot start.");
            return;
        }
        this.mimeMsg = new MimeMessage(buildSessionFromProperties);
        try {
            if (this.from != null) {
                this.mimeMsg.setFrom(getAddress(this.from));
            } else {
                this.mimeMsg.setFrom();
            }
            this.subjectLayout = makeSubjectLayout(this.subjectStr);
            this.started = true;
        } catch (MessagingException e) {
            addError("Could not activate SMTPAppender options.", e);
        }
    }

    @Override // ch.qos.logback.core.AppenderBase, ch.qos.logback.core.spi.LifeCycle
    public synchronized void stop() {
        this.started = false;
    }

    protected abstract void subAppend(CyclicBuffer<E> cyclicBuffer, E e);
}
