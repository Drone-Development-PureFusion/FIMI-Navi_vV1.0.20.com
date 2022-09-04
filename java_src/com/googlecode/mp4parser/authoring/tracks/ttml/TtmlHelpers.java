package com.googlecode.mp4parser.authoring.tracks.ttml;

import com.coremedia.iso.boxes.Container;
import com.fimi.kernel.animutils.IOUtils;
import com.fimi.kernel.connect.tcp.SocketOption;
import com.googlecode.mp4parser.authoring.Movie;
import com.googlecode.mp4parser.authoring.Track;
import com.googlecode.mp4parser.authoring.builder.DefaultMp4Builder;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.StringWriter;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.xml.namespace.NamespaceContext;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;
/* loaded from: classes2.dex */
public class TtmlHelpers {
    public static final String SMPTE_TT_NAMESPACE = "http://www.smpte-ra.org/schemas/2052-1/2010/smpte-tt";
    public static final String TTML_NAMESPACE = "http://www.w3.org/ns/ttml";
    static byte[] namespacesStyleSheet1 = "<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\n    <xsl:output method=\"text\"/>\n    <xsl:key name=\"kElemByNSURI\"\n             match=\"*[namespace::*[not(. = ../../namespace::*)]]\"\n              use=\"namespace::*[not(. = ../../namespace::*)]\"/>\n    <xsl:template match=\"/\">\n        <xsl:for-each select=\n            \"//namespace::*[not(. = ../../namespace::*)]\n                           [count(..|key('kElemByNSURI',.)[1])=1]\">\n            <xsl:value-of select=\"concat(.,'&#xA;')\"/>\n        </xsl:for-each>\n    </xsl:template>\n</xsl:stylesheet>".getBytes();
    public static final NamespaceContext NAMESPACE_CONTEXT = new TextTrackNamespaceContext(null);

    public static void main(String[] args) throws URISyntaxException, ParserConfigurationException, IOException, SAXException, XPathExpressionException, TransformerException {
        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
        dbf.setNamespaceAware(true);
        DocumentBuilder builder = dbf.newDocumentBuilder();
        Document doc = builder.parse("C:\\dev\\mp4parser\\a.xml");
        List<Document> split = TtmlSegmenter.split(doc, 60);
        Track t = new TtmlTrackImpl("a.xml", split);
        Movie m = new Movie();
        m.addTrack(t);
        Container c = new DefaultMp4Builder().build(m);
        c.writeContainer(new FileOutputStream("output.mp4").getChannel());
    }

    public static String[] getAllNamespaces(Document doc) {
        TransformerFactory tf = TransformerFactory.newInstance();
        try {
            Transformer transformer = tf.newTransformer(new StreamSource(new ByteArrayInputStream(namespacesStyleSheet1)));
            StringWriter sw = new StringWriter();
            transformer.transform(new DOMSource(doc), new StreamResult(sw));
            List<String> r = new ArrayList<>(new LinkedHashSet(Arrays.asList(sw.getBuffer().toString().split(IOUtils.LINE_SEPARATOR_UNIX))));
            return (String[]) r.toArray(new String[r.size()]);
        } catch (TransformerConfigurationException e) {
            throw new RuntimeException(e);
        } catch (TransformerException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static String toTimeExpression(long ms) {
        return toTimeExpression(ms, -1);
    }

    public static String toTimeExpression(long ms, int frames) {
        String minus = ms >= 0 ? "" : "-";
        long ms2 = Math.abs(ms);
        long hours = ((ms2 / 1000) / 60) / 60;
        long ms3 = ms2 - (((1000 * hours) * 60) * 60);
        long minutes = (ms3 / 1000) / 60;
        long ms4 = ms3 - ((1000 * minutes) * 60);
        long seconds = ms4 / 1000;
        long ms5 = ms4 - (1000 * seconds);
        if (frames >= 0) {
            return String.format("%s%02d:%02d:%02d:%d", minus, Long.valueOf(hours), Long.valueOf(minutes), Long.valueOf(seconds), Integer.valueOf(frames));
        }
        return String.format("%s%02d:%02d:%02d.%03d", minus, Long.valueOf(hours), Long.valueOf(minutes), Long.valueOf(seconds), Long.valueOf(ms5));
    }

    public static long toTime(String expr) {
        long ms;
        Pattern p = Pattern.compile("(-?)([0-9][0-9]):([0-9][0-9]):([0-9][0-9])([\\.:][0-9][0-9]?[0-9]?)?");
        Matcher m = p.matcher(expr);
        if (m.matches()) {
            String minus = m.group(1);
            String hours = m.group(2);
            String minutes = m.group(3);
            String seconds = m.group(4);
            String fraction = m.group(5);
            if (fraction == null) {
                fraction = ".000";
            }
            String fraction2 = fraction.replace(":", ".");
            long ms2 = (Long.parseLong(hours) * 60 * 60 * 1000) + (Long.parseLong(minutes) * 60 * 1000) + (Long.parseLong(seconds) * 1000);
            if (fraction2.contains(":")) {
                ms = (long) (ms2 + (Double.parseDouble("0" + fraction2.replace(":", ".")) * 40.0d * 1000.0d));
            } else {
                ms = (long) (ms2 + (Double.parseDouble("0" + fraction2) * 1000.0d));
            }
            return ("-".equals(minus) ? -1 : 1) * ms;
        }
        throw new RuntimeException("Cannot match '" + expr + "' to time expression");
    }

    /* loaded from: classes2.dex */
    private static class TextTrackNamespaceContext implements NamespaceContext {
        private TextTrackNamespaceContext() {
        }

        /* synthetic */ TextTrackNamespaceContext(TextTrackNamespaceContext textTrackNamespaceContext) {
            this();
        }

        @Override // javax.xml.namespace.NamespaceContext
        public String getNamespaceURI(String prefix) {
            if (prefix.equals("ttml")) {
                return TtmlHelpers.TTML_NAMESPACE;
            }
            if (prefix.equals("smpte")) {
                return TtmlHelpers.SMPTE_TT_NAMESPACE;
            }
            return null;
        }

        @Override // javax.xml.namespace.NamespaceContext
        public Iterator getPrefixes(String val) {
            return Arrays.asList("ttml", "smpte").iterator();
        }

        @Override // javax.xml.namespace.NamespaceContext
        public String getPrefix(String uri) {
            if (uri.equals(TtmlHelpers.TTML_NAMESPACE)) {
                return "ttml";
            }
            if (uri.equals(TtmlHelpers.SMPTE_TT_NAMESPACE)) {
                return "smpte";
            }
            return null;
        }
    }

    public static void pretty(Document document, OutputStream outputStream, int indent) throws IOException {
        TransformerFactory transformerFactory = TransformerFactory.newInstance();
        try {
            Transformer transformer = transformerFactory.newTransformer();
            transformer.setOutputProperty("encoding", SocketOption.DEFAULT_CHARSET);
            if (indent > 0) {
                transformer.setOutputProperty("indent", "yes");
                transformer.setOutputProperty("{http://xml.apache.org/xslt}indent-amount", Integer.toString(indent));
            }
            Result result = new StreamResult(outputStream);
            Source source = new DOMSource(document);
            try {
                transformer.transform(source, result);
            } catch (TransformerException e) {
                throw new IOException(e);
            }
        } catch (TransformerConfigurationException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static long getStartTime(Node p) {
        long time = 0;
        Node current = p;
        while (true) {
            current = current.getParentNode();
            if (current == null) {
                break;
            } else if (current.getAttributes() != null && current.getAttributes().getNamedItem("begin") != null) {
                time += toTime(current.getAttributes().getNamedItem("begin").getNodeValue());
            }
        }
        if (p.getAttributes() != null && p.getAttributes().getNamedItem("begin") != null) {
            return time + toTime(p.getAttributes().getNamedItem("begin").getNodeValue());
        }
        return time;
    }

    public static long getEndTime(Node p) {
        long time = 0;
        Node current = p;
        while (true) {
            current = current.getParentNode();
            if (current == null) {
                break;
            } else if (current.getAttributes() != null && current.getAttributes().getNamedItem("begin") != null) {
                time += toTime(current.getAttributes().getNamedItem("begin").getNodeValue());
            }
        }
        if (p.getAttributes() != null && p.getAttributes().getNamedItem("end") != null) {
            return time + toTime(p.getAttributes().getNamedItem("end").getNodeValue());
        }
        return time;
    }

    public static void deepCopyDocument(Document ttml, File target) throws IOException {
        try {
            XPathFactory xPathfactory = XPathFactory.newInstance();
            XPath xpath = xPathfactory.newXPath();
            XPathExpression expr = xpath.compile("//*/@backgroundImage");
            NodeList nl = (NodeList) expr.evaluate(ttml, XPathConstants.NODESET);
            for (int i = 0; i < nl.getLength(); i++) {
                Node backgroundImage = nl.item(i);
                URI backgroundImageUri = URI.create(backgroundImage.getNodeValue());
                if (!backgroundImageUri.isAbsolute()) {
                    copyLarge(new URI(ttml.getDocumentURI()).resolve(backgroundImageUri).toURL().openStream(), new File(target.toURI().resolve(backgroundImageUri).toURL().getFile()));
                }
            }
            copyLarge(new URI(ttml.getDocumentURI()).toURL().openStream(), target);
        } catch (URISyntaxException e) {
            throw new IOException(e);
        } catch (XPathExpressionException e2) {
            throw new IOException(e2);
        }
    }

    private static long copyLarge(InputStream input, File outputFile) throws IOException {
        byte[] buffer = new byte[16384];
        long count = 0;
        outputFile.getParentFile().mkdirs();
        FileOutputStream output = new FileOutputStream(outputFile);
        while (true) {
            try {
                int n = input.read(buffer);
                if (-1 != n) {
                    output.write(buffer, 0, n);
                    count += n;
                } else {
                    return count;
                }
            } finally {
                output.close();
            }
        }
    }
}
