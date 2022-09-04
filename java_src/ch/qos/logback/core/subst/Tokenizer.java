package ch.qos.logback.core.subst;

import ch.qos.logback.core.CoreConstants;
import ch.qos.logback.core.spi.ScanException;
import ch.qos.logback.core.subst.Token;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class Tokenizer {
    final String pattern;
    final int patternLength;
    TokenizerState state = TokenizerState.LITERAL_STATE;
    int pointer = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum TokenizerState {
        LITERAL_STATE,
        START_STATE,
        DEFAULT_VAL_STATE
    }

    public Tokenizer(String str) {
        this.pattern = str;
        this.patternLength = str.length();
    }

    private void addLiteralToken(List<Token> list, StringBuilder sb) {
        if (sb.length() == 0) {
            return;
        }
        list.add(new Token(Token.Type.LITERAL, sb.toString()));
    }

    private void handleDefaultValueState(char c, List<Token> list, StringBuilder sb) {
        switch (c) {
            case '$':
                sb.append(CoreConstants.COLON_CHAR);
                addLiteralToken(list, sb);
                sb.setLength(0);
                this.state = TokenizerState.START_STATE;
                return;
            case '-':
                list.add(Token.DEFAULT_SEP_TOKEN);
                this.state = TokenizerState.LITERAL_STATE;
                return;
            default:
                sb.append(CoreConstants.COLON_CHAR).append(c);
                this.state = TokenizerState.LITERAL_STATE;
                return;
        }
    }

    private void handleLiteralState(char c, List<Token> list, StringBuilder sb) {
        if (c == '$') {
            addLiteralToken(list, sb);
            sb.setLength(0);
            this.state = TokenizerState.START_STATE;
        } else if (c == ':') {
            addLiteralToken(list, sb);
            sb.setLength(0);
            this.state = TokenizerState.DEFAULT_VAL_STATE;
        } else if (c == '{') {
            addLiteralToken(list, sb);
            list.add(Token.CURLY_LEFT_TOKEN);
            sb.setLength(0);
        } else if (c != '}') {
            sb.append(c);
        } else {
            addLiteralToken(list, sb);
            list.add(Token.CURLY_RIGHT_TOKEN);
            sb.setLength(0);
        }
    }

    private void handleStartState(char c, List<Token> list, StringBuilder sb) {
        if (c == '{') {
            list.add(Token.START_TOKEN);
        } else {
            sb.append(CoreConstants.DOLLAR).append(c);
        }
        this.state = TokenizerState.LITERAL_STATE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<Token> tokenize() throws ScanException {
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        while (this.pointer < this.patternLength) {
            char charAt = this.pattern.charAt(this.pointer);
            this.pointer++;
            switch (this.state) {
                case LITERAL_STATE:
                    handleLiteralState(charAt, arrayList, sb);
                    break;
                case START_STATE:
                    handleStartState(charAt, arrayList, sb);
                    break;
                case DEFAULT_VAL_STATE:
                    handleDefaultValueState(charAt, arrayList, sb);
                    break;
            }
        }
        switch (this.state) {
            case START_STATE:
                throw new ScanException("Unexpected end of pattern string");
            case LITERAL_STATE:
                addLiteralToken(arrayList, sb);
                break;
        }
        return arrayList;
    }
}
