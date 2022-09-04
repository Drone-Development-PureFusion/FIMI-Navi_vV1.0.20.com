package ch.qos.logback.core.subst;

import ch.qos.logback.core.CoreConstants;
import ch.qos.logback.core.spi.ScanException;
import ch.qos.logback.core.subst.Node;
import ch.qos.logback.core.subst.Token;
import java.util.List;
/* loaded from: classes.dex */
public class Parser {
    int pointer = 0;
    final List<Token> tokenList;

    public Parser(List<Token> list) {
        this.tokenList = list;
    }

    /* renamed from: C */
    private Node m1430C() throws ScanException {
        Node m1429E = m1429E();
        if (isDefaultToken(peekAtCurentToken())) {
            advanceTokenPointer();
            m1429E.append(makeNewLiteralNode(CoreConstants.DEFAULT_VALUE_SEPARATOR));
            m1429E.append(m1429E());
        }
        return m1429E;
    }

    /* renamed from: E */
    private Node m1429E() throws ScanException {
        Node m1428T = m1428T();
        if (m1428T == null) {
            return null;
        }
        Node Eopt = Eopt();
        if (Eopt == null) {
            return m1428T;
        }
        m1428T.append(Eopt);
        return m1428T;
    }

    private Node Eopt() throws ScanException {
        if (peekAtCurentToken() == null) {
            return null;
        }
        return m1429E();
    }

    /* renamed from: T */
    private Node m1428T() throws ScanException {
        Token peekAtCurentToken = peekAtCurentToken();
        if (peekAtCurentToken == null) {
            return null;
        }
        switch (peekAtCurentToken.type) {
            case LITERAL:
                advanceTokenPointer();
                return makeNewLiteralNode(peekAtCurentToken.payload);
            case CURLY_LEFT:
                advanceTokenPointer();
                Node m1430C = m1430C();
                expectCurlyRight(peekAtCurentToken());
                advanceTokenPointer();
                Node makeNewLiteralNode = makeNewLiteralNode(CoreConstants.LEFT_ACCOLADE);
                makeNewLiteralNode.append(m1430C);
                makeNewLiteralNode.append(makeNewLiteralNode(CoreConstants.RIGHT_ACCOLADE));
                return makeNewLiteralNode;
            case START:
                advanceTokenPointer();
                Node m1427V = m1427V();
                expectCurlyRight(peekAtCurentToken());
                advanceTokenPointer();
                return m1427V;
            default:
                return null;
        }
    }

    /* renamed from: V */
    private Node m1427V() throws ScanException {
        Node node = new Node(Node.Type.VARIABLE, m1429E());
        if (isDefaultToken(peekAtCurentToken())) {
            advanceTokenPointer();
            node.defaultPart = m1429E();
        }
        return node;
    }

    private boolean isDefaultToken(Token token) {
        return token != null && token.type == Token.Type.DEFAULT;
    }

    private Node makeNewLiteralNode(String str) {
        return new Node(Node.Type.LITERAL, str);
    }

    void advanceTokenPointer() {
        this.pointer++;
    }

    void expectCurlyRight(Token token) throws ScanException {
        expectNotNull(token, "}");
        if (token.type != Token.Type.CURLY_RIGHT) {
            throw new ScanException("Expecting }");
        }
    }

    void expectNotNull(Token token, String str) {
        if (token == null) {
            throw new IllegalArgumentException("All tokens consumed but was expecting \"" + str + "\"");
        }
    }

    public Node parse() throws ScanException {
        return m1429E();
    }

    Token peekAtCurentToken() {
        if (this.pointer < this.tokenList.size()) {
            return this.tokenList.get(this.pointer);
        }
        return null;
    }
}
