package org.dom4j;
/* loaded from: classes2.dex */
public interface Visitor {
    void visit(Attribute attribute);

    void visit(CDATA cdata);

    void visit(Comment comment);

    void visit(Document document);

    void visit(DocumentType documentType);

    void visit(Element element);

    void visit(AbstractC2649Entity abstractC2649Entity);

    void visit(Namespace namespace);

    void visit(ProcessingInstruction processingInstruction);

    void visit(Text text);
}
