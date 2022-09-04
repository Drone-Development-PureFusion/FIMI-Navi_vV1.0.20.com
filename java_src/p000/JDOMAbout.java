package p000;

import com.facebook.internal.ServerProtocol;
import com.facebook.share.internal.ShareConstants;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.LinkedList;
import java.util.List;
import java.util.StringTokenizer;
import java.util.jar.JarFile;
import java.util.zip.ZipEntry;
import org.jdom.Document;
import org.jdom.Element;
import org.jdom.input.SAXBuilder;
/* renamed from: JDOMAbout */
/* loaded from: classes.dex */
public class JDOMAbout {
    public static void main(String[] args) throws Exception {
        JDOMAbout jDOMAbout = new JDOMAbout();
        jDOMAbout.getClass();
        Info info = new Info(jDOMAbout);
        String title = info.title;
        System.out.println(new StringBuffer(String.valueOf(title)).append(" version ").append(info.version).toString());
        System.out.println(new StringBuffer("Copyright ").append(info.copyright).toString());
        System.out.println();
        System.out.println(info.description);
        System.out.println();
        System.out.println("Authors:");
        for (Author author : info.authors) {
            System.out.print(new StringBuffer("  ").append(author.name).toString());
            if (author.email == null) {
                System.out.println();
            } else {
                System.out.println(new StringBuffer(" <").append(author.email).append(">").toString());
            }
        }
        System.out.println();
        System.out.println(new StringBuffer(String.valueOf(title)).append(" license:").toString());
        System.out.println(info.license);
        System.out.println();
        System.out.println(new StringBuffer(String.valueOf(title)).append(" support:").toString());
        System.out.println(info.support);
        System.out.println();
        System.out.println(new StringBuffer(String.valueOf(title)).append(" web site: ").append(info.website).toString());
        System.out.println();
    }

    /* renamed from: JDOMAbout$Info */
    /* loaded from: classes.dex */
    private class Info {
        List authors;
        String copyright;
        String description;
        String license;
        String support;
        private final JDOMAbout this$0;
        String title;
        String version;
        String website;

        Info(JDOMAbout this$0) throws Exception {
            this.this$0 = this$0;
            SAXBuilder builder = new SAXBuilder();
            JarFile jarFile = null;
            ZipEntry zipEntry = null;
            String classpath = System.getProperty("java.class.path");
            StringTokenizer tokenizer = new StringTokenizer(classpath, ";:");
            while (tokenizer.hasMoreTokens() && zipEntry == null) {
                String token = tokenizer.nextToken();
                try {
                    JarFile jarFile2 = new JarFile(token);
                    try {
                        zipEntry = jarFile2.getEntry("META-INF/info.xml");
                        jarFile = jarFile2;
                    } catch (Exception e) {
                        jarFile = jarFile2;
                    }
                } catch (Exception e2) {
                }
            }
            if (zipEntry == null) {
                throw new FileNotFoundException("META-INF/info.xml not found; it should be within the JDOM JAR but isn't");
            }
            InputStream in = jarFile.getInputStream(zipEntry);
            Document doc = builder.build(in);
            Element root = doc.getRootElement();
            this.title = root.getChildTextTrim(ShareConstants.WEB_DIALOG_PARAM_TITLE);
            this.version = root.getChildTextTrim(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION);
            this.copyright = root.getChildTextTrim("copyright");
            this.description = root.getChildTextTrim("description");
            this.license = root.getChildTextTrim("license");
            this.support = root.getChildTextTrim("support");
            this.website = root.getChildTextTrim("web-site");
            List<Element> authorElements = root.getChildren("author");
            this.authors = new LinkedList();
            for (Element element : authorElements) {
                this$0.getClass();
                Author author = new Author(this$0);
                author.name = element.getChildTextTrim("name");
                author.email = element.getChildTextTrim("e-mail");
                this.authors.add(author);
            }
        }
    }

    /* renamed from: JDOMAbout$Author */
    /* loaded from: classes.dex */
    private class Author {
        String email;
        String name;
        private final JDOMAbout this$0;

        Author(JDOMAbout this$0) {
            this.this$0 = this$0;
        }
    }
}
