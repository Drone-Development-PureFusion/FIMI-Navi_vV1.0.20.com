package org.dom4j.p019io;

import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import org.dom4j.Document;
import org.xml.sax.InputSource;
/* renamed from: org.dom4j.io.DocumentInputSource */
/* loaded from: classes2.dex */
class DocumentInputSource extends InputSource {
    private Document document;

    public DocumentInputSource() {
    }

    public DocumentInputSource(Document document) {
        this.document = document;
        setSystemId(document.getName());
    }

    public Document getDocument() {
        return this.document;
    }

    public void setDocument(Document document) {
        this.document = document;
        setSystemId(document.getName());
    }

    @Override // org.xml.sax.InputSource
    public void setCharacterStream(Reader characterStream) throws UnsupportedOperationException {
        throw new UnsupportedOperationException();
    }

    @Override // org.xml.sax.InputSource
    public Reader getCharacterStream() {
        try {
            StringWriter out = new StringWriter();
            XMLWriter writer = new XMLWriter(out);
            writer.write(this.document);
            writer.flush();
            return new StringReader(out.toString());
        } catch (IOException e) {
            return new Reader(this, e) { // from class: org.dom4j.io.DocumentInputSource.1
                private final DocumentInputSource this$0;
                private final IOException val$e;

                @Override // java.io.Reader
                public int read(char[] ch2, int offset, int length) throws IOException {
                    throw this.val$e;
                }

                {
                    this.this$0 = this;
                    this.val$e = e;
                }

                @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                }
            };
        }
    }
}
