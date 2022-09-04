package org.jdom;

import ch.qos.logback.core.CoreConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.jdom.output.XMLOutputter;
/* loaded from: classes2.dex */
public class ProcessingInstruction extends Content {
    private static final String CVS_ID = "@(#) $RCSfile: ProcessingInstruction.java,v $ $Revision: 1.46 $ $Date: 2004/02/27 11:32:57 $ $Name: jdom_1_0 $";
    protected Map mapData;
    protected String rawData;
    protected String target;

    /* JADX INFO: Access modifiers changed from: protected */
    public ProcessingInstruction() {
    }

    public ProcessingInstruction(String target, Map data) {
        setTarget(target);
        setData(data);
    }

    public ProcessingInstruction(String target, String data) {
        setTarget(target);
        setData(data);
    }

    public ProcessingInstruction setTarget(String newTarget) {
        String reason = Verifier.checkProcessingInstructionTarget(newTarget);
        if (reason != null) {
            throw new IllegalTargetException(newTarget, reason);
        }
        this.target = newTarget;
        return this;
    }

    @Override // org.jdom.Content
    public String getValue() {
        return this.rawData;
    }

    public String getTarget() {
        return this.target;
    }

    public String getData() {
        return this.rawData;
    }

    public List getPseudoAttributeNames() {
        Set<Object> mapDataSet = this.mapData.entrySet();
        List nameList = new ArrayList();
        for (Object obj : mapDataSet) {
            String wholeSet = obj.toString();
            String attrName = wholeSet.substring(0, wholeSet.indexOf("="));
            nameList.add(attrName);
        }
        return nameList;
    }

    public ProcessingInstruction setData(String data) {
        String reason = Verifier.checkProcessingInstructionData(data);
        if (reason != null) {
            throw new IllegalDataException(data, reason);
        }
        this.rawData = data;
        this.mapData = parseData(data);
        return this;
    }

    public ProcessingInstruction setData(Map data) {
        String temp = toString(data);
        String reason = Verifier.checkProcessingInstructionData(temp);
        if (reason != null) {
            throw new IllegalDataException(temp, reason);
        }
        this.rawData = temp;
        this.mapData = data;
        return this;
    }

    public String getPseudoAttributeValue(String name) {
        return (String) this.mapData.get(name);
    }

    public ProcessingInstruction setPseudoAttribute(String name, String value) {
        String reason = Verifier.checkProcessingInstructionData(name);
        if (reason != null) {
            throw new IllegalDataException(name, reason);
        }
        String reason2 = Verifier.checkProcessingInstructionData(value);
        if (reason2 != null) {
            throw new IllegalDataException(value, reason2);
        }
        this.mapData.put(name, value);
        this.rawData = toString(this.mapData);
        return this;
    }

    public boolean removePseudoAttribute(String name) {
        if (this.mapData.remove(name) != null) {
            this.rawData = toString(this.mapData);
            return true;
        }
        return false;
    }

    private String toString(Map mapData) {
        StringBuffer rawData = new StringBuffer();
        for (String name : mapData.keySet()) {
            String value = (String) mapData.get(name);
            rawData.append(name).append("=\"").append(value).append("\" ");
        }
        if (rawData.length() > 0) {
            rawData.setLength(rawData.length() - 1);
        }
        return rawData.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0027, code lost:
        r3 = r3.substring(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x002f, code lost:
        if (r4.length() <= 0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0031, code lost:
        if (r8 == null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0033, code lost:
        r2.put(r4, r8);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Map parseData(String rawData) {
        Map data = new HashMap();
        String inputData = rawData.trim();
        while (!inputData.trim().equals("")) {
            String name = "";
            String value = "";
            int startName = 0;
            char previousChar = inputData.charAt(0);
            int pos = 1;
            while (true) {
                if (pos >= inputData.length()) {
                    break;
                }
                char currentChar = inputData.charAt(pos);
                if (currentChar == '=') {
                    name = inputData.substring(startName, pos).trim();
                    int[] bounds = extractQuotedString(inputData.substring(pos + 1));
                    if (bounds == null) {
                        return new HashMap();
                    }
                    value = inputData.substring(bounds[0] + pos + 1, bounds[1] + pos + 1);
                    pos += bounds[1] + 1;
                } else {
                    if (Character.isWhitespace(previousChar) && !Character.isWhitespace(currentChar)) {
                        startName = pos;
                    }
                    previousChar = currentChar;
                    pos++;
                }
            }
        }
        return data;
    }

    private static int[] extractQuotedString(String rawData) {
        boolean inQuotes = false;
        char quoteChar = CoreConstants.DOUBLE_QUOTE_CHAR;
        int start = 0;
        for (int pos = 0; pos < rawData.length(); pos++) {
            char currentChar = rawData.charAt(pos);
            if (currentChar == '\"' || currentChar == '\'') {
                if (!inQuotes) {
                    quoteChar = currentChar;
                    inQuotes = true;
                    start = pos + 1;
                } else if (quoteChar == currentChar) {
                    return new int[]{start, pos};
                }
            }
        }
        return null;
    }

    public String toString() {
        return new StringBuffer().append("[ProcessingInstruction: ").append(new XMLOutputter().outputString(this)).append("]").toString();
    }

    @Override // org.jdom.Content, org.jdom.Parent
    public Object clone() {
        ProcessingInstruction pi = (ProcessingInstruction) super.clone();
        if (this.mapData != null) {
            pi.mapData = parseData(this.rawData);
        }
        return pi;
    }
}
