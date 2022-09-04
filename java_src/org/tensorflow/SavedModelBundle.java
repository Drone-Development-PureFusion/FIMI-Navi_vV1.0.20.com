package org.tensorflow;
/* loaded from: classes2.dex */
public class SavedModelBundle implements AutoCloseable {
    private final Graph graph;
    private final byte[] metaGraphDef;
    private final Session session;

    /* JADX INFO: Access modifiers changed from: private */
    public static native SavedModelBundle load(String str, String[] strArr, byte[] bArr, byte[] bArr2);

    /* loaded from: classes2.dex */
    public static final class Loader {
        private byte[] configProto;
        private String exportDir;
        private byte[] runOptions;
        private String[] tags;

        public SavedModelBundle load() {
            return SavedModelBundle.load(this.exportDir, this.tags, this.configProto, this.runOptions);
        }

        public Loader withRunOptions(byte[] options) {
            this.runOptions = options;
            return this;
        }

        public Loader withConfigProto(byte[] configProto) {
            this.configProto = configProto;
            return this;
        }

        public Loader withTags(String... tags) {
            this.tags = tags;
            return this;
        }

        private Loader(String exportDir) {
            this.exportDir = null;
            this.tags = null;
            this.configProto = null;
            this.runOptions = null;
            this.exportDir = exportDir;
        }
    }

    public static SavedModelBundle load(String exportDir, String... tags) {
        return loader(exportDir).withTags(tags).load();
    }

    public static Loader loader(String exportDir) {
        return new Loader(exportDir);
    }

    public byte[] metaGraphDef() {
        return this.metaGraphDef;
    }

    public Graph graph() {
        return this.graph;
    }

    public Session session() {
        return this.session;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.session.close();
        this.graph.close();
    }

    private SavedModelBundle(Graph graph, Session session, byte[] metaGraphDef) {
        this.graph = graph;
        this.session = session;
        this.metaGraphDef = metaGraphDef;
    }

    private static SavedModelBundle fromHandle(long graphHandle, long sessionHandle, byte[] metaGraphDef) {
        Graph graph = new Graph(graphHandle);
        Session session = new Session(graph, sessionHandle);
        return new SavedModelBundle(graph, session, metaGraphDef);
    }

    static {
        TensorFlow.init();
    }
}
