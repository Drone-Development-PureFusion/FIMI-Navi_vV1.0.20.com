package ch.qos.logback.core.pattern.parser;

import android.support.p001v4.view.PointerIconCompat;
import ch.qos.logback.core.pattern.Converter;
import ch.qos.logback.core.pattern.FormatInfo;
import ch.qos.logback.core.pattern.IdentityCompositeConverter;
import ch.qos.logback.core.pattern.ReplacingCompositeConverter;
import ch.qos.logback.core.pattern.util.IEscapeUtil;
import ch.qos.logback.core.pattern.util.RegularEscapeUtil;
import ch.qos.logback.core.spi.ContextAwareBase;
import ch.qos.logback.core.spi.ScanException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class Parser<E> extends ContextAwareBase {
    public static final Map<String, String> DEFAULT_COMPOSITE_CONVERTER_MAP = new HashMap();
    public static final String MISSING_RIGHT_PARENTHESIS = "http://logback.qos.ch/codes.html#missingRightParenthesis";
    public static final String REPLACE_CONVERTER_WORD = "replace";
    int pointer;
    final List tokenList;

    static {
        DEFAULT_COMPOSITE_CONVERTER_MAP.put(Token.BARE_COMPOSITE_KEYWORD_TOKEN.getValue().toString(), IdentityCompositeConverter.class.getName());
        DEFAULT_COMPOSITE_CONVERTER_MAP.put(REPLACE_CONVERTER_WORD, ReplacingCompositeConverter.class.getName());
    }

    Parser(TokenStream tokenStream) throws ScanException {
        this.pointer = 0;
        this.tokenList = tokenStream.tokenize();
    }

    public Parser(String str) throws ScanException {
        this(str, new RegularEscapeUtil());
    }

    public Parser(String str, IEscapeUtil iEscapeUtil) throws ScanException {
        this.pointer = 0;
        try {
            this.tokenList = new TokenStream(str, iEscapeUtil).tokenize();
        } catch (IllegalArgumentException e) {
            throw new ScanException("Failed to initialize Parser", e);
        }
    }

    /* renamed from: C */
    FormattingNode m1433C() throws ScanException {
        Token curentToken = getCurentToken();
        expectNotNull(curentToken, "a LEFT_PARENTHESIS or KEYWORD");
        switch (curentToken.getType()) {
            case PointerIconCompat.TYPE_WAIT /* 1004 */:
                return SINGLE();
            case 1005:
                advanceTokenPointer();
                return COMPOSITE(curentToken.getValue().toString());
            default:
                throw new IllegalStateException("Unexpected token " + curentToken);
        }
    }

    FormattingNode COMPOSITE(String str) throws ScanException {
        CompositeNode compositeNode = new CompositeNode(str);
        compositeNode.setChildNode(m1432E());
        Token nextToken = getNextToken();
        if (nextToken == null || nextToken.getType() != 41) {
            String str2 = "Expecting RIGHT_PARENTHESIS token but got " + nextToken;
            addError(str2);
            addError("See also http://logback.qos.ch/codes.html#missingRightParenthesis");
            throw new ScanException(str2);
        }
        Token curentToken = getCurentToken();
        if (curentToken != null && curentToken.getType() == 1006) {
            compositeNode.setOptions((List) curentToken.getValue());
            advanceTokenPointer();
        }
        return compositeNode;
    }

    /* renamed from: E */
    Node m1432E() throws ScanException {
        Node m1431T = m1431T();
        if (m1431T == null) {
            return null;
        }
        Node Eopt = Eopt();
        if (Eopt == null) {
            return m1431T;
        }
        m1431T.setNext(Eopt);
        return m1431T;
    }

    Node Eopt() throws ScanException {
        if (getCurentToken() == null) {
            return null;
        }
        return m1432E();
    }

    FormattingNode SINGLE() throws ScanException {
        SimpleKeywordNode simpleKeywordNode = new SimpleKeywordNode(getNextToken().getValue());
        Token curentToken = getCurentToken();
        if (curentToken != null && curentToken.getType() == 1006) {
            simpleKeywordNode.setOptions((List) curentToken.getValue());
            advanceTokenPointer();
        }
        return simpleKeywordNode;
    }

    /* renamed from: T */
    Node m1431T() throws ScanException {
        Token curentToken = getCurentToken();
        expectNotNull(curentToken, "a LITERAL or '%'");
        switch (curentToken.getType()) {
            case 37:
                advanceTokenPointer();
                Token curentToken2 = getCurentToken();
                expectNotNull(curentToken2, "a FORMAT_MODIFIER, SIMPLE_KEYWORD or COMPOUND_KEYWORD");
                if (curentToken2.getType() != 1002) {
                    return m1433C();
                }
                FormatInfo valueOf = FormatInfo.valueOf((String) curentToken2.getValue());
                advanceTokenPointer();
                FormattingNode m1433C = m1433C();
                m1433C.setFormatInfo(valueOf);
                return m1433C;
            case 1000:
                advanceTokenPointer();
                return new Node(0, curentToken.getValue());
            default:
                return null;
        }
    }

    void advanceTokenPointer() {
        this.pointer++;
    }

    public Converter<E> compile(Node node, Map map) {
        Compiler compiler = new Compiler(node, map);
        compiler.setContext(this.context);
        return compiler.compile();
    }

    void expectNotNull(Token token, String str) {
        if (token == null) {
            throw new IllegalStateException("All tokens consumed but was expecting " + str);
        }
    }

    Token getCurentToken() {
        if (this.pointer < this.tokenList.size()) {
            return (Token) this.tokenList.get(this.pointer);
        }
        return null;
    }

    Token getNextToken() {
        if (this.pointer < this.tokenList.size()) {
            List list = this.tokenList;
            int i = this.pointer;
            this.pointer = i + 1;
            return (Token) list.get(i);
        }
        return null;
    }

    public Node parse() throws ScanException {
        return m1432E();
    }
}
