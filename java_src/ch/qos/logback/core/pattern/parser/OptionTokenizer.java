package ch.qos.logback.core.pattern.parser;

import android.support.p001v4.view.PointerIconCompat;
import ch.qos.logback.core.pattern.parser.TokenStream;
import ch.qos.logback.core.pattern.util.AsIsEscapeUtil;
import ch.qos.logback.core.pattern.util.IEscapeUtil;
import ch.qos.logback.core.spi.ScanException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class OptionTokenizer {
    private static final int EXPECTING_STATE = 0;
    private static final int QUOTED_COLLECTING_STATE = 2;
    private static final int RAW_COLLECTING_STATE = 1;
    final IEscapeUtil escapeUtil;
    final String pattern;
    final int patternLength;
    char quoteChar;
    int state;
    final TokenStream tokenStream;

    /* JADX INFO: Access modifiers changed from: package-private */
    public OptionTokenizer(TokenStream tokenStream) {
        this(tokenStream, new AsIsEscapeUtil());
    }

    OptionTokenizer(TokenStream tokenStream, IEscapeUtil iEscapeUtil) {
        this.state = 0;
        this.tokenStream = tokenStream;
        this.pattern = tokenStream.pattern;
        this.patternLength = tokenStream.patternLength;
        this.escapeUtil = iEscapeUtil;
    }

    void emitOptionToken(List<Token> list, List<String> list2) {
        list.add(new Token(PointerIconCompat.TYPE_CELL, list2));
        this.tokenStream.state = TokenStream.TokenizerState.LITERAL_STATE;
    }

    void escape(String str, StringBuffer stringBuffer) {
        if (this.tokenStream.pointer < this.patternLength) {
            String str2 = this.pattern;
            TokenStream tokenStream = this.tokenStream;
            int i = tokenStream.pointer;
            tokenStream.pointer = i + 1;
            this.escapeUtil.escape(str, stringBuffer, str2.charAt(i), this.tokenStream.pointer);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void tokenize(char c, List<Token> list) throws ScanException {
        StringBuffer stringBuffer = new StringBuffer();
        ArrayList arrayList = new ArrayList();
        while (this.tokenStream.pointer < this.patternLength) {
            switch (this.state) {
                case 0:
                    switch (c) {
                        case '\t':
                        case '\n':
                        case '\r':
                        case ' ':
                        case ',':
                            break;
                        case '\"':
                        case '\'':
                            this.state = 2;
                            this.quoteChar = c;
                            continue;
                        case '}':
                            emitOptionToken(list, arrayList);
                            return;
                        default:
                            stringBuffer.append(c);
                            this.state = 1;
                            continue;
                    }
                case 1:
                    switch (c) {
                        case ',':
                            arrayList.add(stringBuffer.toString().trim());
                            stringBuffer.setLength(0);
                            this.state = 0;
                            continue;
                        case '}':
                            arrayList.add(stringBuffer.toString().trim());
                            emitOptionToken(list, arrayList);
                            return;
                        default:
                            stringBuffer.append(c);
                            continue;
                    }
                case 2:
                    if (c != this.quoteChar) {
                        if (c != '\\') {
                            stringBuffer.append(c);
                            break;
                        } else {
                            escape(String.valueOf(this.quoteChar), stringBuffer);
                            break;
                        }
                    } else {
                        arrayList.add(stringBuffer.toString());
                        stringBuffer.setLength(0);
                        this.state = 0;
                        break;
                    }
            }
            c = this.pattern.charAt(this.tokenStream.pointer);
            this.tokenStream.pointer++;
        }
        if (c == '}') {
            if (this.state == 0) {
                emitOptionToken(list, arrayList);
                return;
            } else if (this.state != 1) {
                throw new ScanException("Unexpected end of pattern string in OptionTokenizer");
            } else {
                arrayList.add(stringBuffer.toString().trim());
                emitOptionToken(list, arrayList);
                return;
            }
        }
        throw new ScanException("Unexpected end of pattern string in OptionTokenizer");
    }
}
