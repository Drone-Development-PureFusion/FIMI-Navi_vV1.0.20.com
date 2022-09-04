package org.mp4parser.aspectj.runtime.reflect;

import java.lang.reflect.Method;
import java.util.StringTokenizer;
import org.mp4parser.aspectj.lang.reflect.AdviceSignature;
/* loaded from: classes2.dex */
class AdviceSignatureImpl extends CodeSignatureImpl implements AdviceSignature {
    private Method adviceMethod = null;
    Class returnType;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdviceSignatureImpl(int modifiers, String name, Class declaringType, Class[] parameterTypes, String[] parameterNames, Class[] exceptionTypes, Class returnType) {
        super(modifiers, name, declaringType, parameterTypes, parameterNames, exceptionTypes);
        this.returnType = returnType;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdviceSignatureImpl(String stringRep) {
        super(stringRep);
    }

    @Override // org.mp4parser.aspectj.lang.reflect.AdviceSignature
    public Class getReturnType() {
        if (this.returnType == null) {
            this.returnType = extractType(6);
        }
        return this.returnType;
    }

    @Override // org.mp4parser.aspectj.runtime.reflect.SignatureImpl
    protected String createToString(StringMaker sm) {
        StringBuffer buf = new StringBuffer();
        if (sm.includeArgs) {
            buf.append(sm.makeTypeName(getReturnType()));
        }
        if (sm.includeArgs) {
            buf.append(" ");
        }
        buf.append(sm.makePrimaryTypeName(getDeclaringType(), getDeclaringTypeName()));
        buf.append(".");
        buf.append(toAdviceName(getName()));
        sm.addSignature(buf, getParameterTypes());
        sm.addThrows(buf, getExceptionTypes());
        return buf.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String toAdviceName(String methodName) {
        if (methodName.indexOf(36) != -1) {
            StringTokenizer strTok = new StringTokenizer(methodName, "$");
            while (strTok.hasMoreTokens()) {
                String token = strTok.nextToken();
                if (token.startsWith("before") || token.startsWith("after") || token.startsWith("around")) {
                    return token;
                }
                while (strTok.hasMoreTokens()) {
                }
            }
            return methodName;
        }
        return methodName;
    }

    @Override // org.mp4parser.aspectj.lang.reflect.AdviceSignature
    public Method getAdvice() {
        if (this.adviceMethod == null) {
            try {
                this.adviceMethod = getDeclaringType().getDeclaredMethod(getName(), getParameterTypes());
            } catch (Exception e) {
            }
        }
        return this.adviceMethod;
    }
}
