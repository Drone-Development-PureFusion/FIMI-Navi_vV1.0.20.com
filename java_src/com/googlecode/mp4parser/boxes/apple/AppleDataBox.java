package com.googlecode.mp4parser.boxes.apple;

import ch.qos.logback.core.pattern.color.ANSIConstants;
import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.fimi.thirdpartysdk.ThirdPartyConstants;
import com.googlecode.mp4parser.AbstractBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import com.googlecode.mp4parser.annotations.DoNotParseDetail;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Locale;
import org.mp4parser.aspectj.lang.JoinPoint;
import org.mp4parser.aspectj.runtime.internal.Conversions;
import org.mp4parser.aspectj.runtime.reflect.Factory;
/* loaded from: classes.dex */
public abstract class AppleDataBox extends AbstractBox {
    private static final JoinPoint.StaticPart ajc$tjp_0 = null;
    private static final JoinPoint.StaticPart ajc$tjp_1 = null;
    private static final JoinPoint.StaticPart ajc$tjp_2 = null;
    private static final JoinPoint.StaticPart ajc$tjp_3 = null;
    private static final JoinPoint.StaticPart ajc$tjp_4 = null;
    private static final JoinPoint.StaticPart ajc$tjp_5 = null;
    private static HashMap<String, String> language = new HashMap<>();
    int dataCountry;
    int dataLanguage;
    int dataType;

    private static void ajc$preClinit() {
        Factory factory = new Factory("AppleDataBox.java", AppleDataBox.class);
        ajc$tjp_0 = factory.makeSJP(JoinPoint.METHOD_EXECUTION, factory.makeMethodSig("1", "getLanguageString", "com.googlecode.mp4parser.boxes.apple.AppleDataBox", "", "", "", "java.lang.String"), 25);
        ajc$tjp_1 = factory.makeSJP(JoinPoint.METHOD_EXECUTION, factory.makeMethodSig("1", "getDataType", "com.googlecode.mp4parser.boxes.apple.AppleDataBox", "", "", "", "int"), 43);
        ajc$tjp_2 = factory.makeSJP(JoinPoint.METHOD_EXECUTION, factory.makeMethodSig("1", "getDataCountry", "com.googlecode.mp4parser.boxes.apple.AppleDataBox", "", "", "", "int"), 47);
        ajc$tjp_3 = factory.makeSJP(JoinPoint.METHOD_EXECUTION, factory.makeMethodSig("1", "setDataCountry", "com.googlecode.mp4parser.boxes.apple.AppleDataBox", "int", "dataCountry", "", "void"), 51);
        ajc$tjp_4 = factory.makeSJP(JoinPoint.METHOD_EXECUTION, factory.makeMethodSig("1", "getDataLanguage", "com.googlecode.mp4parser.boxes.apple.AppleDataBox", "", "", "", "int"), 55);
        ajc$tjp_5 = factory.makeSJP(JoinPoint.METHOD_EXECUTION, factory.makeMethodSig("1", "setDataLanguage", "com.googlecode.mp4parser.boxes.apple.AppleDataBox", "int", "dataLanguage", "", "void"), 59);
    }

    protected abstract int getDataLength();

    protected abstract void parseData(ByteBuffer byteBuffer);

    protected abstract byte[] writeData();

    /* JADX INFO: Access modifiers changed from: protected */
    public AppleDataBox(String type, int dataType) {
        super(type);
        this.dataType = dataType;
    }

    public String getLanguageString() {
        RequiresParseDetailAspect.aspectOf().before(Factory.makeJP(ajc$tjp_0, this, this));
        String lang = language.get(new StringBuilder().append(this.dataLanguage).toString());
        if (lang == null) {
            ByteBuffer b = ByteBuffer.wrap(new byte[2]);
            IsoTypeWriter.writeUInt16(b, this.dataLanguage);
            b.reset();
            return new Locale(IsoTypeReader.readIso639(b)).getDisplayLanguage();
        }
        return lang;
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    protected long getContentSize() {
        return getDataLength() + 16;
    }

    public int getDataType() {
        RequiresParseDetailAspect.aspectOf().before(Factory.makeJP(ajc$tjp_1, this, this));
        return this.dataType;
    }

    public int getDataCountry() {
        RequiresParseDetailAspect.aspectOf().before(Factory.makeJP(ajc$tjp_2, this, this));
        return this.dataCountry;
    }

    public void setDataCountry(int dataCountry) {
        RequiresParseDetailAspect.aspectOf().before(Factory.makeJP(ajc$tjp_3, this, this, Conversions.intObject(dataCountry)));
        this.dataCountry = dataCountry;
    }

    public int getDataLanguage() {
        RequiresParseDetailAspect.aspectOf().before(Factory.makeJP(ajc$tjp_4, this, this));
        return this.dataLanguage;
    }

    public void setDataLanguage(int dataLanguage) {
        RequiresParseDetailAspect.aspectOf().before(Factory.makeJP(ajc$tjp_5, this, this, Conversions.intObject(dataLanguage)));
        this.dataLanguage = dataLanguage;
    }

    @DoNotParseDetail
    protected ByteBuffer parseDataLength4ccTypeCountryLanguageAndReturnRest(ByteBuffer content) {
        int dataLength = content.getInt();
        content.getInt();
        this.dataType = content.getInt();
        this.dataCountry = content.getShort();
        if (this.dataCountry < 0) {
            this.dataCountry += 65536;
        }
        this.dataLanguage = content.getShort();
        if (this.dataLanguage < 0) {
            this.dataLanguage += 65536;
        }
        ByteBuffer data = (ByteBuffer) content.duplicate().slice().limit(dataLength - 16);
        content.position((dataLength - 16) + content.position());
        return data;
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    protected void _parseDetails(ByteBuffer content) {
        ByteBuffer data = parseDataLength4ccTypeCountryLanguageAndReturnRest(content);
        parseData(data);
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    protected void getContent(ByteBuffer byteBuffer) {
        writeDataLength4ccTypeCountryLanguage(byteBuffer);
        byteBuffer.put(writeData());
    }

    @DoNotParseDetail
    protected void writeDataLength4ccTypeCountryLanguage(ByteBuffer content) {
        content.putInt(getDataLength() + 16);
        content.put("data".getBytes());
        content.putInt(this.dataType);
        IsoTypeWriter.writeUInt16(content, this.dataCountry);
        IsoTypeWriter.writeUInt16(content, this.dataLanguage);
    }

    static {
        ajc$preClinit();
        language.put("0", "English");
        language.put("1", "French");
        language.put("2", "German");
        language.put(ThirdPartyConstants.LOGIN_CHANNEL_TW, "Italian");
        language.put("4", "Dutch");
        language.put("5", "Swedish");
        language.put("6", "Spanish");
        language.put("7", "Danish");
        language.put("8", "Portuguese");
        language.put("9", "Norwegian");
        language.put("10", "Hebrew");
        language.put("11", "Japanese");
        language.put("12", "Arabic");
        language.put("13", "Finnish");
        language.put("14", "Greek");
        language.put("15", "Icelandic");
        language.put("16", "Maltese");
        language.put("17", "Turkish");
        language.put("18", "Croatian");
        language.put("19", "Traditional_Chinese");
        language.put("20", "Urdu");
        language.put("21", "Hindi");
        language.put("22", "Thai");
        language.put("23", "Korean");
        language.put("24", "Lithuanian");
        language.put("25", "Polish");
        language.put("26", "Hungarian");
        language.put("27", "Estonian");
        language.put("28", "Lettish");
        language.put("29", "Sami");
        language.put(ANSIConstants.BLACK_FG, "Faroese");
        language.put(ANSIConstants.RED_FG, "Farsi");
        language.put(ANSIConstants.GREEN_FG, "Russian");
        language.put(ANSIConstants.YELLOW_FG, "Simplified_Chinese");
        language.put(ANSIConstants.BLUE_FG, "Flemish");
        language.put(ANSIConstants.MAGENTA_FG, "Irish");
        language.put(ANSIConstants.CYAN_FG, "Albanian");
        language.put(ANSIConstants.WHITE_FG, "Romanian");
        language.put("38", "Czech");
        language.put(ANSIConstants.DEFAULT_FG, "Slovak");
        language.put("40", "Slovenian");
        language.put("41", "Yiddish");
        language.put("42", "Serbian");
        language.put("43", "Macedonian");
        language.put("44", "Bulgarian");
        language.put("45", "Ukrainian");
        language.put("46", "Belarusian");
        language.put("47", "Uzbek");
        language.put("48", "Kazakh");
        language.put("49", "Azerbaijani");
        language.put("50", "AzerbaijanAr");
        language.put("51", "Armenian");
        language.put("52", "Georgian");
        language.put("53", "Moldavian");
        language.put("54", "Kirghiz");
        language.put("55", "Tajiki");
        language.put("56", "Turkmen");
        language.put("57", "Mongolian");
        language.put("58", "MongolianCyr");
        language.put("59", "Pashto");
        language.put("60", "Kurdish");
        language.put("61", "Kashmiri");
        language.put("62", "Sindhi");
        language.put("63", "Tibetan");
        language.put("64", "Nepali");
        language.put("65", "Sanskrit");
        language.put("66", "Marathi");
        language.put("67", "Bengali");
        language.put("68", "Assamese");
        language.put("69", "Gujarati");
        language.put("70", "Punjabi");
        language.put("71", "Oriya");
        language.put("72", "Malayalam");
        language.put("73", "Kannada");
        language.put("74", "Tamil");
        language.put("75", "Telugu");
        language.put("76", "Sinhala");
        language.put("77", "Burmese");
        language.put("78", "Khmer");
        language.put("79", "Lao");
        language.put("80", "Vietnamese");
        language.put("81", "Indonesian");
        language.put("82", "Tagalog");
        language.put("83", "MalayRoman");
        language.put("84", "MalayArabic");
        language.put("85", "Amharic");
        language.put("87", "Galla");
        language.put("87", "Oromo");
        language.put("88", "Somali");
        language.put("89", "Swahili");
        language.put("90", "Kinyarwanda");
        language.put("91", "Rundi");
        language.put("92", "Nyanja");
        language.put("93", "Malagasy");
        language.put("94", "Esperanto");
        language.put("128", "Welsh");
        language.put("129", "Basque");
        language.put("130", "Catalan");
        language.put("131", "Latin");
        language.put("132", "Quechua");
        language.put("133", "Guarani");
        language.put("134", "Aymara");
        language.put("135", "Tatar");
        language.put("136", "Uighur");
        language.put("137", "Dzongkha");
        language.put("138", "JavaneseRom");
        language.put("32767", "Unspecified");
    }
}
