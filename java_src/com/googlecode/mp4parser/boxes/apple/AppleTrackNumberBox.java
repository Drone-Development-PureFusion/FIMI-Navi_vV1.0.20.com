package com.googlecode.mp4parser.boxes.apple;

import com.googlecode.mp4parser.RequiresParseDetailAspect;
import com.umeng.commonsdk.proguard.C2354g;
import java.nio.ByteBuffer;
import org.mp4parser.aspectj.lang.JoinPoint;
import org.mp4parser.aspectj.runtime.internal.Conversions;
import org.mp4parser.aspectj.runtime.reflect.Factory;
/* loaded from: classes2.dex */
public class AppleTrackNumberBox extends AppleDataBox {
    private static final JoinPoint.StaticPart ajc$tjp_0 = null;
    private static final JoinPoint.StaticPart ajc$tjp_1 = null;
    private static final JoinPoint.StaticPart ajc$tjp_2 = null;
    private static final JoinPoint.StaticPart ajc$tjp_3 = null;

    /* renamed from: a */
    int f275a;

    /* renamed from: b */
    int f276b;

    static {
        ajc$preClinit();
    }

    private static void ajc$preClinit() {
        Factory factory = new Factory("AppleTrackNumberBox.java", AppleTrackNumberBox.class);
        ajc$tjp_0 = factory.makeSJP(JoinPoint.METHOD_EXECUTION, factory.makeMethodSig("1", "getA", "com.googlecode.mp4parser.boxes.apple.AppleTrackNumberBox", "", "", "", "int"), 16);
        ajc$tjp_1 = factory.makeSJP(JoinPoint.METHOD_EXECUTION, factory.makeMethodSig("1", "setA", "com.googlecode.mp4parser.boxes.apple.AppleTrackNumberBox", "int", C2354g.f1001al, "", "void"), 20);
        ajc$tjp_2 = factory.makeSJP(JoinPoint.METHOD_EXECUTION, factory.makeMethodSig("1", "getB", "com.googlecode.mp4parser.boxes.apple.AppleTrackNumberBox", "", "", "", "int"), 24);
        ajc$tjp_3 = factory.makeSJP(JoinPoint.METHOD_EXECUTION, factory.makeMethodSig("1", "setB", "com.googlecode.mp4parser.boxes.apple.AppleTrackNumberBox", "int", "b", "", "void"), 28);
    }

    public AppleTrackNumberBox() {
        super("trkn", 0);
    }

    public int getA() {
        RequiresParseDetailAspect.aspectOf().before(Factory.makeJP(ajc$tjp_0, this, this));
        return this.f275a;
    }

    public void setA(int a) {
        RequiresParseDetailAspect.aspectOf().before(Factory.makeJP(ajc$tjp_1, this, this, Conversions.intObject(a)));
        this.f275a = a;
    }

    public int getB() {
        RequiresParseDetailAspect.aspectOf().before(Factory.makeJP(ajc$tjp_2, this, this));
        return this.f276b;
    }

    public void setB(int b) {
        RequiresParseDetailAspect.aspectOf().before(Factory.makeJP(ajc$tjp_3, this, this, Conversions.intObject(b)));
        this.f276b = b;
    }

    @Override // com.googlecode.mp4parser.boxes.apple.AppleDataBox
    protected byte[] writeData() {
        ByteBuffer bb = ByteBuffer.allocate(8);
        bb.putInt(this.f275a);
        bb.putInt(this.f276b);
        return bb.array();
    }

    @Override // com.googlecode.mp4parser.boxes.apple.AppleDataBox
    protected void parseData(ByteBuffer data) {
        this.f275a = data.getInt();
        this.f276b = data.getInt();
    }

    @Override // com.googlecode.mp4parser.boxes.apple.AppleDataBox
    protected int getDataLength() {
        return 8;
    }
}
