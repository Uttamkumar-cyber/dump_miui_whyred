PK
     ���K��?j�   �      description.xml<?xml version="1.0" encoding="utf-8" standalone="no"?>
<MIUI-Theme category="clock" size="3:4">
    <autoChange>true</autoChange>
</MIUI-Theme>
PK
     k��K�7w�'  '     manifest.xml<?xml version="1.0" encoding="utf-8"?>
<Clock version="1" frameRate="0" type="awesome" useVariableUpdater="DateTime.Minute" resDensity="440" pivotX="0.25" pivotY="0.3">
    <VariableBinders>
         <ContentProviderBinder
            uri="content://weather/weather"
            columns="city_name,weather_type,temperature"
            countName="hasweather">
             <Variable name="weather_id" type="int" column="weather_type"/>
             <Variable name="weather_temperature" type="int" column="temperature"/>
             <Variable name="weather_temperature_str" type="string" column="temperature"/>
         </ContentProviderBinder>
    </VariableBinders>
    <Var name="weather_description" expression="eval('@weather_type_'+#weather_id)" type="string"/>
    <Var name="weather_description_null" expression="eval(@weather_type_null)" type="string"/>
	<Var name="color_time" type="string" expression="ifelse(#applied_light_wallpaper,'#b3000000','#ffffffff')" />
	<Var name="color_date" type="string" expression="ifelse(#applied_light_wallpaper,'#80000000','#ffffffff')" />
	<Var name="not_null" expression="#hasweather*len(@weather_temperature_str)*not(isnull(#weather_id))" />
	
	<DateTime x="#view_width/2" y="108" align="center" size="210" color="@color_time" format="HH" fontPath="clock17-Regular.ttf" visibility="#time_format"/>
	<DateTime x="#view_width/2" y="108" align="center" size="210" color="@color_time" format="hh" fontPath="clock17-Regular.ttf" visibility="not(#time_format)"/>
	<DateTime x="#view_width/2" y="293" align="center" size="210" color="@color_time" format="mm" fontPath="clock17-Regular.ttf" />	
    
	<DateTime enableFontScale="true" x="#view_width/2" y="549" w="450" align="center" marqueeSpeed="30" format="@date_time" size="36" bold="true" color="@color_date" contentDescriptionFormat="@desc_date_format" visibility="#time_format"/>
    <DateTime enableFontScale="true" x="#view_width/2" y="549" w="450" align="center" marqueeSpeed="30" format="@date_time_12" size="36" bold="true" color="@color_date" contentDescriptionFormat="@desc_date_format_12" visibility="not(#time_format)"/>
    
	
	<Text name="weather" enableFontScale="true" x="#view_width/2" y="610" w="450" align="center" marqueeSpeed="30" textExp="@weather_description + '  ' +#weather_temperature + '°'" size="32" bold="true" color="@color_date" visibility="#not_null"/>
	    
	<Text name="weather_degree" enableFontScale="true" x="#view_width/2" y="610" w="450" align="center" textExp="@weather_description_null" size="32" bold="true" color="@color_date" visibility="not(#not_null)"/>
	
	<Button name="clock_button" x="0" y="0" width="#view_width" height="500" contentDescriptionExp="eval(@desc_time)"/>
	<Button x="0" y="520" width="#view_width" height="80" >
		<Triggers>
			<Trigger action="up">
				<IntentCommand action="android.intent.action.MAIN" package="com.android.calendar" class="com.android.calendar.AllInOneActivity"/>
			</Trigger>
		</Triggers>
	</Button>
	<Button x="0" y="610" width="#view_width" height="70" contentDescriptionExp="eval(@desc_weather)">
            <Triggers>
                <Trigger action="up">
                    <IntentCommand action="android.intent.action.MAIN" package="com.miui.weather2" class="com.miui.weather2.ActivityWeatherMain"/>
                </Trigger>
            </Triggers>
        </Button>
</Clock>
PK
     |8N               strings/PK
     �R�MI�49~  ~     strings/strings_km_KH.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE dd MMMM</string>
    <string name="date_time_12">EEE dd MMMM</string>
    <string name="desc_date_format">EEEE dd MMM</string>
    <string name="desc_date_format_12">EEEE dd MMM</string>
    <string name="desc_time">'ពេលវេលាបច្ចុប្បន្ន\' + #hour12+\' \'+ifelse(#minute,#minute,\'oclock\')+\', ប៉ះពីរដងដើម្បីបញ្ចូលកម្មវិធីនាឡិកា'</string>
    <string name="weather_type_null">'មិនមានទិន្នន័យ'</string>
    <string name="weather_type_0">ស្រឡះ</string>
    <string name="weather_type_1">មានពពក</string>
    <string name="weather_type_2">ចុះអ័ភ្រ</string>
    <string name="weather_type_3">ចុះអាប់ខ្លាំង</string>
    <string name="weather_type_4">ព្យុះភ្លៀង​ខ្លាំង</string>
    <string name="weather_type_5">ព្យុះភ្លៀង</string>
    <string name="weather_type_6">ភ្លៀងធ្លាក់​យ៉ាង​ខ្លាំង</string>
    <string name="weather_type_7">ព្យុះមានផ្គររន្ទះ</string>
    <string name="weather_type_8">ភ្លៀងរលឹម</string>
    <string name="weather_type_9">ភ្លៀងធ្លាក់​ខ្លាំង</string>
    <string name="weather_type_10">ភ្លៀង</string>
    <string name="weather_type_11">រលឹមរោយស្បៃ</string>
    <string name="weather_type_12">ភ្លៀងលាយព្រិល</string>
    <string name="weather_type_13">ព្យុះមានធ្លាក់ទឹកកកសំឡី</string>
    <string name="weather_type_14">កំណក​នៃ​ការធ្លាក់ទឹកកកសំឡី​ជា​អន្លើៗ</string>
    <string name="weather_type_15">ការធ្លាក់ទឹកកកសំឡី​ខ្លាំង</string>
    <string name="weather_type_16">ការធ្លាក់ទឹកកកសំឡី</string>
    <string name="weather_type_17">ការធ្លាក់ទឹកកកសំឡី​រ៉ុយៗ</string>
    <string name="weather_type_18">ព្យុះខ្សាច់​ខ្លាំង</string>
    <string name="weather_type_19">ព្យុះខ្សាច់</string>
    <string name="weather_type_20">ព្យុះខ្សាច់​ស្រាលៗ</string>
    <string name="weather_type_21">ព្យុះខ្សាច់</string>
    <string name="weather_type_22">ធ្លាក់ព្រិល</string>
    <string name="weather_type_23">ធូលី​អណ្ដែត</string>
    <string name="weather_type_24">ចុះអ័ភ្រ</string>
    <string name="weather_type_25">ភ្លៀង​ត្រជាក់កក</string>
</resources>
PK
     �R�M����	  �	     strings/strings_pa_IN.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, dd MMM</string>
    <string name="desc_date_format_12">EEEE, dd MMM</string>
    <string name="desc_time">'ਵਰਤਮਾਨ ਸਮਾਂ\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', ਘੜੀ ਐਪ ਵਿੱਚ ਦਾਖਲ ਹੋਣ ਲਈ ਦੋ ਵਾਰ ਟੈਪ ਕਰੋ'</string>
    <string name="weather_type_null">'ਕੋਈ ਡਾਟਾ ਨਹੀਂ'</string>
    <string name="weather_type_0">ਸਾਫ਼</string>
    <string name="weather_type_1">ਬੱਦਲਵਾਈ ਵਾਲਾ</string>
    <string name="weather_type_2">ਧੁੰਦਲਾ</string>
    <string name="weather_type_3">ਧੁੰਦ ਵਾਲਾ</string>
    <string name="weather_type_4">ਭਾਰੀ ਤੂਫ਼ਾਨੀ ਵਰਖਾ</string>
    <string name="weather_type_5">ਤੂਫ਼ਾਨੀ ਵਰਖਾ</string>
    <string name="weather_type_6">ਬਹੁਤ ਭਾਰੀ ਵਰਖਾ</string>
    <string name="weather_type_7">ਗਰਜਨ ਵਾਲਾ ਤੂਫ਼ਾਨ</string>
    <string name="weather_type_8">ਵਰਖਾ ਦੀ ਝੜੀ</string>
    <string name="weather_type_9">ਭਾਰੀ ਵਰਖਾ</string>
    <string name="weather_type_10">ਵਰਖਾ</string>
    <string name="weather_type_11">ਬੂੰਦਾਬਾਂਦੀ</string>
    <string name="weather_type_12">ਗੜਿਆਂ ਦੇ ਨਾਲ ਵਰਖਾ</string>
    <string name="weather_type_13">ਬਰਫ਼ੀਲਾ ਤੂਫ਼ਾਨ</string>
    <string name="weather_type_14">ਕਿਤੇ-ਕਿਤੇ ਬਰਫ਼ਬਾਰੀ</string>
    <string name="weather_type_15">ਭਾਰੀ ਬਰਫ਼ਬਾਰੀ</string>
    <string name="weather_type_16">ਬਰਫ਼ਬਾਰੀ</string>
    <string name="weather_type_17">ਹਲਕੀ ਬਰਫ਼ਬਾਰੀ</string>
    <string name="weather_type_18">ਭਾਰੀ ਰੇਤਲੀ ਹਨੇਰੀ</string>
    <string name="weather_type_19">ਰੇਤਲੀ ਹਨੇਰੀ</string>
    <string name="weather_type_20">ਹਲਕੀ ਰੇਤਲੀ ਹਨੇਰੀ</string>
    <string name="weather_type_21">ਰੇਤਲੀ ਹਨੇਰੀ</string>
    <string name="weather_type_22">ਗੜੇ</string>
    <string name="weather_type_23">ਅਸਥਾਈ ਧੂੜ</string>
    <string name="weather_type_24">ਧੁੰਦ</string>
    <string name="weather_type_25">ਬਹੁਤ ਠੰਡੀ ਬਾਰਸ਼</string>
</resources>
PK
     �R�M+�
  
     strings/strings_ne_NP.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, dd MMM</string>
    <string name="desc_date_format_12">EEEE, dd MMM</string>
    <string name="desc_time">'हालको समय\' + #hour12+\' \'+ifelse(#minute,#minute,\'oclock\')+\', घडी एप भित्र जान दुईपटक ट्याप गर्नुहोस्'</string>
    <string name="weather_type_null">'डाटा छैन'</string>
    <string name="weather_type_0">खाली गर्नुहोस्</string>
    <string name="weather_type_1">बादल लागेको</string>
    <string name="weather_type_2">धमिलो</string>
    <string name="weather_type_3">तुवाँलो लागेको</string>
    <string name="weather_type_4">तेज तूफान</string>
    <string name="weather_type_5">आँधी</string>
    <string name="weather_type_6">ठुलो भारी बर्षा</string>
    <string name="weather_type_7">चट्याङ्</string>
    <string name="weather_type_8">बर्सा</string>
    <string name="weather_type_9">भारी बर्षा</string>
    <string name="weather_type_10">बर्षा</string>
    <string name="weather_type_11">हल्का बर्षा</string>
    <string name="weather_type_12">असिना सहितको बर्षा</string>
    <string name="weather_type_13">हिमपात</string>
    <string name="weather_type_14">हिमपातको खण्डहरू</string>
    <string name="weather_type_15">भारी हिमपात</string>
    <string name="weather_type_16">हिमपात</string>
    <string name="weather_type_17">हलुका हिमपात</string>
    <string name="weather_type_18">बलियो बालुवाको आँधी</string>
    <string name="weather_type_19">धुलो सहितको तूफान</string>
    <string name="weather_type_20">हलुका धुलो सहितको तूफान</string>
    <string name="weather_type_21">तूफान</string>
    <string name="weather_type_22">असिना</string>
    <string name="weather_type_23">तैरिरहेको फोहोर</string>
    <string name="weather_type_24">तुवाँलो</string>
    <string name="weather_type_25">कठ्याँग्रिने वर्षा</string>
</resources>
PK
     �R�M�H���  �     strings/strings_ur_IN.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">MMMM dd, EEEE</string>
    <string name="desc_date_format_12">MMMM dd, EEEE</string>
    <string name="desc_time">'حالیہ وقت \' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\' گھڑی ایپ میں جانے کے لیے دو بار ٹیپ کریں'</string>
    <string name="weather_type_null">'کوئی ڈیٹا نہیں ہے'</string>
    <string name="weather_type_0">صاف</string>
    <string name="weather_type_1">ابرآلود</string>
    <string name="weather_type_2">گرد و غبار والا</string>
    <string name="weather_type_3">کہر آلود</string>
    <string name="weather_type_4">شدید طوفانی بارش</string>
    <string name="weather_type_5">طوفانی بارش</string>
    <string name="weather_type_6">بہت شدید بارش</string>
    <string name="weather_type_7">طوفان برق وباد</string>
    <string name="weather_type_8">بوچھار</string>
    <string name="weather_type_9">شدید بارش</string>
    <string name="weather_type_10">بارش</string>
    <string name="weather_type_11">پھوار</string>
    <string name="weather_type_12">ژالہ باری</string>
    <string name="weather_type_13">برف کا طوفان</string>
    <string name="weather_type_14">ٹکڑوں میں برف باری</string>
    <string name="weather_type_15">بھاری برف باری</string>
    <string name="weather_type_16">برف باری</string>
    <string name="weather_type_17">ہلکی برف باری</string>
    <string name="weather_type_18">شدید ریت کا طوفان</string>
    <string name="weather_type_19">ریت کا طوفان</string>
    <string name="weather_type_20">ہلکا ریت کا طوفان</string>
    <string name="weather_type_21">ریت کا طوفان</string>
    <string name="weather_type_22">اولا</string>
    <string name="weather_type_23">دھول کا غبار</string>
    <string name="weather_type_24">گردو غبار</string>
    <string name="weather_type_25">برفیلی بارش</string>
</resources>
PK
     �R�M��  �     strings/strings_ms_MY.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, dd MMM</string>
    <string name="desc_date_format_12">EEEE, dd MMM</string>
    <string name="desc_time">'masa semasa\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', klik berganda untuk masuk apl jam'</string>
    <string name="weather_type_null">'Tiada data'</string>
    <string name="weather_type_0">Cerah</string>
    <string name="weather_type_1">Mendung</string>
    <string name="weather_type_2">Jerebu</string>
    <string name="weather_type_3">Berkabus</string>
    <string name="weather_type_4">Hujan lebat yang teruk</string>
    <string name="weather_type_5">Hujan kilat</string>
    <string name="weather_type_6">Hujan yang sangat lebat</string>
    <string name="weather_type_7">Ribut petir</string>
    <string name="weather_type_8">Hujan renyai</string>
    <string name="weather_type_9">Hujan lebat</string>
    <string name="weather_type_10">Hujan</string>
    <string name="weather_type_11">Hujan renyai</string>
    <string name="weather_type_12">Hujan Batu</string>
    <string name="weather_type_13">Ribut salji</string>
    <string name="weather_type_14">Tompok-tompok salji</string>
    <string name="weather_type_15">Salji lebat</string>
    <string name="weather_type_16">Salji</string>
    <string name="weather_type_17">Salji ringan</string>
    <string name="weather_type_18">Ribut pasir yang kuat</string>
    <string name="weather_type_19">Ribut pasir</string>
    <string name="weather_type_20">Ribut pasir yang ringan</string>
    <string name="weather_type_21">Ribut pasir</string>
    <string name="weather_type_22">Hujan batu</string>
    <string name="weather_type_23">Debu terapung</string>
    <string name="weather_type_24">Jerebu</string>
    <string name="weather_type_25">Hujan beku</string>
</resources>
PK
     �R�Mz)N7�  �     strings/strings_iw_IL.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, dd MMM</string>
    <string name="desc_date_format_12">EEEE, dd MMM</string>
    <string name="desc_time">'שעה נוכחית\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', הקש פעמיים לכניסה ליישום השעון'</string>
    <string name="weather_type_null">'אין נתונים'</string>
    <string name="weather_type_0">בהיר</string>
    <string name="weather_type_1">מעונן</string>
    <string name="weather_type_2">אביך</string>
    <string name="weather_type_3">ערפילי</string>
    <string name="weather_type_4">סופת גשמים רצינית</string>
    <string name="weather_type_5">סופת גשמים</string>
    <string name="weather_type_6">גשם כבד מאוד</string>
    <string name="weather_type_7">סופת ברקים</string>
    <string name="weather_type_8">ממטר</string>
    <string name="weather_type_9">גשם כבד</string>
    <string name="weather_type_10">גשם</string>
    <string name="weather_type_11">טפטוף</string>
    <string name="weather_type_12">גשם ושלג</string>
    <string name="weather_type_13">סופת שלגים</string>
    <string name="weather_type_14">שלג חלקי</string>
    <string name="weather_type_15">שלג כבד</string>
    <string name="weather_type_16">שלג</string>
    <string name="weather_type_17">שלג קל</string>
    <string name="weather_type_18">סופת חול חזקה</string>
    <string name="weather_type_19">סופת חול</string>
    <string name="weather_type_20">סופת חול קלה</string>
    <string name="weather_type_21">סופת חול</string>
    <string name="weather_type_22">ברד</string>
    <string name="weather_type_23">אבק</string>
    <string name="weather_type_24">אובך</string>
    <string name="weather_type_25">גשם מקפיא</string>
</resources>
PK
     �R�MH<e��  �     strings/strings_uz_UZ.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">dd MMMM, EEE</string>
    <string name="date_time_12">dd MMMM, EEE</string>
    <string name="desc_date_format">dd MMMM, EEEE</string>
    <string name="desc_date_format_12">dd MMMM, EEEE</string>
    <string name="desc_time">'hozirgi vaqt\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', soat ilovasiga kirish uchun ikki marta bosing'</string>
    <string name="weather_type_null">'Ma’lumot yo‘q'</string>
    <string name="weather_type_0">Tiniq</string>
    <string name="weather_type_1">Bulutli</string>
    <string name="weather_type_2">Tumanli</string>
    <string name="weather_type_3">Tumanli</string>
    <string name="weather_type_4">Qattiq yomg‘ir</string>
    <string name="weather_type_5">Jala</string>
    <string name="weather_type_6">Juda kuchli yog‘ingarchilik</string>
    <string name="weather_type_7">Momaqaldiroq</string>
    <string name="weather_type_8">Jala</string>
    <string name="weather_type_9">Kuchli yog‘ingarchilik</string>
    <string name="weather_type_10">Yomg‘ir</string>
    <string name="weather_type_11">Mayda yomg‘ir</string>
    <string name="weather_type_12">Qorli yomg‘ir</string>
    <string name="weather_type_13">Qor bo‘roni</string>
    <string name="weather_type_14">Qorli jala</string>
    <string name="weather_type_15">Kuchli qor</string>
    <string name="weather_type_16">Qor</string>
    <string name="weather_type_17">Yengil qor</string>
    <string name="weather_type_18">Kuchli qum bo‘roni</string>
    <string name="weather_type_19">Qum bo‘roni</string>
    <string name="weather_type_20">Engil qum bo‘roni</string>
    <string name="weather_type_21">Qum bo‘roni</string>
    <string name="weather_type_22">Do‘l</string>
    <string name="weather_type_23">Chang</string>
    <string name="weather_type_24">Tuman</string>
    <string name="weather_type_25">Qorli yomg‘ir</string>
</resources>
PK
     �R�M]�i�w  w     strings/strings_ar_EG.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE، dd MMMM</string>
    <string name="date_time_12">EEE، dd MMMM</string>
    <string name="desc_date_format">EEEE، dd MMM</string>
    <string name="desc_date_format_12">EEEE، dd MMM</string>
    <string name="desc_time">'الوقت الحالي "+ #hour12+\' \'+ifelse(#minute,#minute,\'\')+"، انقر مرتين لدخول تطبيق الساعة'</string>
    <string name="weather_type_null">'لا توجد بيانات'</string>
    <string name="weather_type_0">صافٍ</string>
    <string name="weather_type_1">غائم</string>
    <string name="weather_type_2">ضبابي</string>
    <string name="weather_type_3">ضبابي</string>
    <string name="weather_type_4">عاصفة مطرية شديدة</string>
    <string name="weather_type_5">عاصفة مطرية</string>
    <string name="weather_type_6">أمطار غزيرة جدا</string>
    <string name="weather_type_7">عاصفة رعدية</string>
    <string name="weather_type_8">أمطار خفيفة</string>
    <string name="weather_type_9">أمطار غزيرة</string>
    <string name="weather_type_10">مطر</string>
    <string name="weather_type_11">رذاذ</string>
    <string name="weather_type_12">مطر متجمد</string>
    <string name="weather_type_13">عاصفة ثلجية</string>
    <string name="weather_type_14">قطع ثلوج متساقطة</string>
    <string name="weather_type_15">ثلج كثيف</string>
    <string name="weather_type_16">ثلوج</string>
    <string name="weather_type_17">ثلوج خفيفة</string>
    <string name="weather_type_18">عاصفة رملية قوية</string>
    <string name="weather_type_19">عاصفة رملية</string>
    <string name="weather_type_20">عاصفة رملية خفيفة</string>
    <string name="weather_type_21">عاصفة رملية</string>
    <string name="weather_type_22">برد</string>
    <string name="weather_type_23">غبار في الهواء</string>
    <string name="weather_type_24">ضباب</string>
    <string name="weather_type_25">امطار متجمدة</string>
</resources>
PK
     �R�M��q�  �     strings/strings_es_ES.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, dd MMM</string>
    <string name="desc_date_format_12">EEEE, dd MMM</string>
    <string name="desc_time">'hora actual\' + #hora12+\' \'+ifelse(#minute,#minute,\'\')+\', doble toque para abrir la aplicación reloj'</string>
    <string name="weather_type_null">'Sin datos'</string>
    <string name="weather_type_0">Despejado</string>
    <string name="weather_type_1">Nublado</string>
    <string name="weather_type_2">Con bruma</string>
    <string name="weather_type_3">Niebla</string>
    <string name="weather_type_4">Aguacero fuerte</string>
    <string name="weather_type_5">Tormentas de lluvia</string>
    <string name="weather_type_6">Lluvia muy fuerte</string>
    <string name="weather_type_7">Tormenta</string>
    <string name="weather_type_8">Chubascos</string>
    <string name="weather_type_9">Lluvia intensa</string>
    <string name="weather_type_10">Lluvia</string>
    <string name="weather_type_11">Llovizna</string>
    <string name="weather_type_12">Aguanieve</string>
    <string name="weather_type_13">Tormenta de nieve</string>
    <string name="weather_type_14">Nevada intermitente</string>
    <string name="weather_type_15">Nevada intensa</string>
    <string name="weather_type_16">Nevada</string>
    <string name="weather_type_17">Nevada ligera</string>
    <string name="weather_type_18">Tormenta de arena fuerte</string>
    <string name="weather_type_19">Tormneta de arena</string>
    <string name="weather_type_20">Tormenta de arena ligera</string>
    <string name="weather_type_21">Tormneta de arena</string>
    <string name="weather_type_22">Granizo</string>
    <string name="weather_type_23">Polvo en suspensión</string>
    <string name="weather_type_24">Neblina</string>
    <string name="weather_type_25">Lluvia helada</string>
</resources>
PK
     �R�M.P^�  �     strings/strings_tr_TR.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">dd MMMM, EEE</string>
    <string name="date_time_12">dd MMMM, EEE</string>
    <string name="desc_date_format">dd MMM, EEEE</string>
    <string name="desc_date_format_12">dd MMM, EEEE</string>
    <string name="desc_time">'mevcut saat\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', saat uygulaması açmak için iki kere dokunun'</string>
    <string name="weather_type_null">'Veri yok'</string>
    <string name="weather_type_0">Açık</string>
    <string name="weather_type_1">Bulutlu</string>
    <string name="weather_type_2">Puslu</string>
    <string name="weather_type_3">Sisli</string>
    <string name="weather_type_4">Şiddetli sağanak</string>
    <string name="weather_type_5">Sağanak</string>
    <string name="weather_type_6">Çok şiddetli sağanak</string>
    <string name="weather_type_7">Gök gürültülü sağanak</string>
    <string name="weather_type_8">Hafif yağışlı</string>
    <string name="weather_type_9">Yoğun sağanak</string>
    <string name="weather_type_10">Yağmurlu</string>
    <string name="weather_type_11">Çiseleme</string>
    <string name="weather_type_12">Sulu kar</string>
    <string name="weather_type_13">Kar fırtınası</string>
    <string name="weather_type_14">Kar kalıntıları</string>
    <string name="weather_type_15">Yoğun kar yağışı</string>
    <string name="weather_type_16">Kar yağışı</string>
    <string name="weather_type_17">Hafif kar yağışı</string>
    <string name="weather_type_18">Şiddetli kum fırtınası</string>
    <string name="weather_type_19">Kum fırtınası</string>
    <string name="weather_type_20">Hafif kum fırtınası</string>
    <string name="weather_type_21">Kum fırtınası</string>
    <string name="weather_type_22">Dolu</string>
    <string name="weather_type_23">Tozlu</string>
    <string name="weather_type_24">Sisli</string>
    <string name="weather_type_25">Buzlanma ve yağmur</string>
</resources>
PK
     �R�M����Z  Z     strings/strings_kk_KZ.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMM</string>
    <string name="date_time_12">EEEE, d MMMM</string>
    <string name="desc_date_format">EEEE, d MMMM</string>
    <string name="desc_date_format_12">EEEE, d MMMM</string>
    <string name="desc_time">'ағымдағы уақыт\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', "Сағат" қолданбасына кіру үшін екі рет басыңыз'</string>
    <string name="weather_type_null">'Деректер жоқ'</string>
    <string name="weather_type_0">Тазалау</string>
    <string name="weather_type_1">Бұлтты</string>
    <string name="weather_type_2">Бұлыңғыр</string>
    <string name="weather_type_3">Тұман</string>
    <string name="weather_type_4">Қатты жаңбыр</string>
    <string name="weather_type_5">Дауыл</string>
    <string name="weather_type_6">Қатты нөсер</string>
    <string name="weather_type_7">Найзағай</string>
    <string name="weather_type_8">Нөсер</string>
    <string name="weather_type_9">Қатты жаңбыр</string>
    <string name="weather_type_10">Жаңбыр</string>
    <string name="weather_type_11">Ұсақ жауын</string>
    <string name="weather_type_12">Дымқыл қар</string>
    <string name="weather_type_13">Боран</string>
    <string name="weather_type_14">Кей жерлерде қар</string>
    <string name="weather_type_15">Қалың қар</string>
    <string name="weather_type_16">Қар</string>
    <string name="weather_type_17">Кішігірім қар</string>
    <string name="weather_type_18">Күшті шаңды дауыл</string>
    <string name="weather_type_19">Шаңды дауыл</string>
    <string name="weather_type_20">Шаң</string>
    <string name="weather_type_21">Шаңды дауыл</string>
    <string name="weather_type_22">Бұршақ</string>
    <string name="weather_type_23">Шаңды</string>
    <string name="weather_type_24">Мұнар</string>
    <string name="weather_type_25">Қылау</string>
</resources>
PK
     �R�M&q9s  s     strings/strings_ja_JP.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">M月d日 EEE</string>
    <string name="date_time_12">M月d日 EEE</string>
    <string name="desc_date_format">M月d日 EEEE</string>
    <string name="desc_date_format_12">M月d日 EEEE</string>
    <string name="desc_time">'現在時刻\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', ダブルタップして時計アプリを開く'</string>
    <string name="weather_type_null">'データがありません'</string>
    <string name="weather_type_0">晴れ</string>
    <string name="weather_type_1">曇り</string>
    <string name="weather_type_2">スモッグ</string>
    <string name="weather_type_3">霧</string>
    <string name="weather_type_4">重度の暴風雨</string>
    <string name="weather_type_5">暴風雨</string>
    <string name="weather_type_6">激しい雨</string>
    <string name="weather_type_7">雷雨</string>
    <string name="weather_type_8">にわか雨</string>
    <string name="weather_type_9">強い雨</string>
    <string name="weather_type_10">雨</string>
    <string name="weather_type_11">霧雨</string>
    <string name="weather_type_12">みぞれ</string>
    <string name="weather_type_13">吹雪</string>
    <string name="weather_type_14">にわか雪</string>
    <string name="weather_type_15">強い雪</string>
    <string name="weather_type_16">降雪</string>
    <string name="weather_type_17">弱い雪</string>
    <string name="weather_type_18">強い砂嵐</string>
    <string name="weather_type_19">砂嵐</string>
    <string name="weather_type_20">弱い砂嵐</string>
    <string name="weather_type_21">砂嵐</string>
    <string name="weather_type_22">雹</string>
    <string name="weather_type_23">浮遊粉じん</string>
    <string name="weather_type_24">スモッグ</string>
    <string name="weather_type_25">氷晶雨</string>
</resources>
PK
     �R�M�Êp�  �     strings/strings_ur_PK.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, dd MMM</string>
    <string name="desc_date_format_12">EEEE, dd MMM</string>
    <string name="desc_time">'حالیہ وقت \' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\' گھڑی ایپ میں جانے کے لیے دو بار ٹیپ کریں'</string>
    <string name="weather_type_null">'کوئی ڈیٹا نہیں ہے'</string>
    <string name="weather_type_0">صاف</string>
    <string name="weather_type_1">ابرآلود</string>
    <string name="weather_type_2">گرد و غبار والا</string>
    <string name="weather_type_3">کہر آلود</string>
    <string name="weather_type_4">شدید طوفانی بارش</string>
    <string name="weather_type_5">طوفانی بارش</string>
    <string name="weather_type_6">بہت شدید بارش</string>
    <string name="weather_type_7">طوفان برق وباد</string>
    <string name="weather_type_8">بوچھار</string>
    <string name="weather_type_9">شدید بارش</string>
    <string name="weather_type_10">بارش</string>
    <string name="weather_type_11">پھوار</string>
    <string name="weather_type_12">ژالہ باری</string>
    <string name="weather_type_13">برف کا طوفان</string>
    <string name="weather_type_14">ٹکڑوں میں برف باری</string>
    <string name="weather_type_15">بھاری برف باری</string>
    <string name="weather_type_16">برف باری</string>
    <string name="weather_type_17">ہلکی برف باری</string>
    <string name="weather_type_18">شدید ریت کا طوفان</string>
    <string name="weather_type_19">ریت کا طوفان</string>
    <string name="weather_type_20">ہلکا ریت کا طوفان</string>
    <string name="weather_type_21">ریت کا طوفان</string>
    <string name="weather_type_22">اولا</string>
    <string name="weather_type_23">دھول کا غبار</string>
    <string name="weather_type_24">گردو غبار</string>
    <string name="weather_type_25">برفیلی بارش</string>
</resources>
PK
     �R�M!�6O�	  �	     strings/strings_hi_IN.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, dd MMM</string>
    <string name="desc_date_format_12">EEEE, dd MMM</string>
    <string name="desc_time">'वर्तमान समय\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', घड़ी ऐप्प में प्रवेश करने के लिए दो बार टैप करें'</string>
    <string name="weather_type_null">'कोई डेटा नहीं'</string>
    <string name="weather_type_0">साफ</string>
    <string name="weather_type_1">बादल</string>
    <string name="weather_type_2">धुंधला</string>
    <string name="weather_type_3">कोहरा</string>
    <string name="weather_type_4">भारी वर्षा</string>
    <string name="weather_type_5">तूफानी बारिश</string>
    <string name="weather_type_6">बहुत भारी वर्षा</string>
    <string name="weather_type_7">गरज के साथ तूफान</string>
    <string name="weather_type_8">फुहार</string>
    <string name="weather_type_9">भारी वर्षा</string>
    <string name="weather_type_10">वर्षा</string>
    <string name="weather_type_11">बूंदा बांदी</string>
    <string name="weather_type_12">ओले के साथ वर्षा</string>
    <string name="weather_type_13">बर्फ का तूफान</string>
    <string name="weather_type_14">कहीं-कहीं पर बर्फ़बारी</string>
    <string name="weather_type_15">भारी बर्फबारी</string>
    <string name="weather_type_16">बर्फबारी</string>
    <string name="weather_type_17">हल्की बर्फबारी</string>
    <string name="weather_type_18">भीषण रेतीली आंधी</string>
    <string name="weather_type_19">रेतीली आंधी</string>
    <string name="weather_type_20">हल्की रेतीली आंधी</string>
    <string name="weather_type_21">रेतीली आंधी</string>
    <string name="weather_type_22">ओला</string>
    <string name="weather_type_23">अस्थायी धूल</string>
    <string name="weather_type_24">धुंध</string>
    <string name="weather_type_25">हिम वर्षा</string>
</resources>
PK
     �R�MֽUU�  �     strings/strings_sq_AL.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, dd MMM</string>
    <string name="desc_date_format_12">EEEE, dd MMM</string>
    <string name="desc_time">'ora aktuale\' + #hour12+\' \'+ifelse(#minute,#minute,\'oclock\')+\', prek dy herë për të hyrë në aplikacionin e orës'</string>
    <string name="weather_type_null">'Nuk ka të dhëna'</string>
    <string name="weather_type_0">Kthjellët</string>
    <string name="weather_type_1">Me re</string>
    <string name="weather_type_2">I mjegullt</string>
    <string name="weather_type_3">Me mjegull</string>
    <string name="weather_type_4">Shi i stuhishëm</string>
    <string name="weather_type_5">Stuhi shiu</string>
    <string name="weather_type_6">Shumë shi i rëndë</string>
    <string name="weather_type_7">Stuhi me bubullima</string>
    <string name="weather_type_8">Rrebesh</string>
    <string name="weather_type_9">Shi i rëndë</string>
    <string name="weather_type_10">Shi</string>
    <string name="weather_type_11">Shi i imët</string>
    <string name="weather_type_12">Borë me shi</string>
    <string name="weather_type_13">Stuhi dëbore</string>
    <string name="weather_type_14">Fjolla bore</string>
    <string name="weather_type_15">Borë e rëndë</string>
    <string name="weather_type_16">Reshje bore</string>
    <string name="weather_type_17">Borë e lehtë</string>
    <string name="weather_type_18">Stuhi e fortë rëre</string>
    <string name="weather_type_19">Stuhi rëre</string>
    <string name="weather_type_20">Stuhi e lehtë rëre</string>
    <string name="weather_type_21">Stuhi rëre</string>
    <string name="weather_type_22">Breshër</string>
    <string name="weather_type_23">Pluhur qarkullues</string>
    <string name="weather_type_24">Mjegullim</string>
    <string name="weather_type_25">Shi i akullt</string>
</resources>
PK
     �R�M�1�  �     strings/strings_fa_IR.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE، dd MMMM</string>
    <string name="date_time_12">EEE، dd MMMM</string>
    <string name="desc_date_format">EEEE، dd MMM</string>
    <string name="desc_date_format_12">EEEE، dd MMM</string>
    <string name="desc_time">'زمان کنونی\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', دوبار بزنید تا وارد برنامه ساعت شوید'</string>
    <string name="weather_type_null">'بدون داده'</string>
    <string name="weather_type_0">صاف</string>
    <string name="weather_type_1">ابری</string>
    <string name="weather_type_2">غبارآلود</string>
    <string name="weather_type_3">مه‌آلود</string>
    <string name="weather_type_4">رگبار شدید</string>
    <string name="weather_type_5">رگبار باران</string>
    <string name="weather_type_6">بارش بسیار سنگین باران</string>
    <string name="weather_type_7">توفان رعد و برق</string>
    <string name="weather_type_8">بارندگی</string>
    <string name="weather_type_9">بارش سنگین باران‌</string>
    <string name="weather_type_10">بارانی</string>
    <string name="weather_type_11">نم‌نم باران</string>
    <string name="weather_type_12">برف و باران</string>
    <string name="weather_type_13">کولاک</string>
    <string name="weather_type_14">بارش پراکنده برف</string>
    <string name="weather_type_15">بارش سنگین برف</string>
    <string name="weather_type_16">بارش برف</string>
    <string name="weather_type_17">بارش سبک برف</string>
    <string name="weather_type_18">توفان شدید شن</string>
    <string name="weather_type_19">توفان شن</string>
    <string name="weather_type_20">توفان سبک شن</string>
    <string name="weather_type_21">توفان شن</string>
    <string name="weather_type_22">تگرگ</string>
    <string name="weather_type_23">گرد و غبار شناور</string>
    <string name="weather_type_24">مه</string>
    <string name="weather_type_25">باران یخی</string>
</resources>
PK
     �R�Mۚ��U
  U
     strings/strings_as_IN.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, dd MMM</string>
    <string name="desc_date_format_12">EEEE, dd MMM</string>
    <string name="desc_time">'বৰ্তমানৰ সময়\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', ঘড়ী এপত প্ৰৱেশ কৰিবলৈ দুবাৰ টেপ কৰক'</string>
    <string name="weather_type_null">'কোনো ডাটা নাই'</string>
    <string name="weather_type_0">ফৰকাল</string>
    <string name="weather_type_1">ডাৱৰীয়া</string>
    <string name="weather_type_2">ধুৱলী-কুঁৱলী</string>
    <string name="weather_type_3">কুঁৱলীময়</string>
    <string name="weather_type_4">অত্যাধিক ধুমুহা-বৰষুণ</string>
    <string name="weather_type_5">ধুমুহা-বৰষুণ</string>
    <string name="weather_type_6">অতি তীব্ৰ বৰষুণ</string>
    <string name="weather_type_7">বিজুলী-ঢেৰেকনি</string>
    <string name="weather_type_8">বৃষ্টিপাত</string>
    <string name="weather_type_9">প্ৰচণ্ড বৰষুণ</string>
    <string name="weather_type_10">বৰষুণ</string>
    <string name="weather_type_11">কিনকিনীয়া বৰষুণ</string>
    <string name="weather_type_12">শিলাবৃষ্টি</string>
    <string name="weather_type_13">তুষাৰ-ধুমুহা</string>
    <string name="weather_type_14">পাতলীয়া তুষাৰপাত</string>
    <string name="weather_type_15">প্ৰচণ্ড তুষাৰপাত</string>
    <string name="weather_type_16">তুষাৰপাত</string>
    <string name="weather_type_17">পাতল তুষাৰপাত</string>
    <string name="weather_type_18">শক্তিশালী ধুলি-ধুমুহা</string>
    <string name="weather_type_19">ধুলি-ধুমুহা</string>
    <string name="weather_type_20">পাতল ধুলি-ধুমুহা</string>
    <string name="weather_type_21">ধুলি-ধুমুহা</string>
    <string name="weather_type_22">শিলাবৃষ্টি</string>
    <string name="weather_type_23">উৰি ফুৰা ধুলি</string>
    <string name="weather_type_24">কুঁৱলী</string>
    <string name="weather_type_25">গোট মৰা বৰষুণ</string>
</resources>
PK
     �R�M��"��  �     strings/strings_it_IT.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, dd MMM</string>
    <string name="desc_date_format_12">EEEE, dd MMM</string>
    <string name="desc_time">'ora attuale\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', doppio tocco per entrare nell\'applicazione orologio'</string>
    <string name="weather_type_null">'Nessun dato'</string>
    <string name="weather_type_0">Sereno</string>
    <string name="weather_type_1">Nuvoloso</string>
    <string name="weather_type_2">Foschia</string>
    <string name="weather_type_3">Nebbia</string>
    <string name="weather_type_4">Forte temporale</string>
    <string name="weather_type_5">Temporale</string>
    <string name="weather_type_6">Precipitazioni molto forti</string>
    <string name="weather_type_7">Temporale</string>
    <string name="weather_type_8">Acquazzone</string>
    <string name="weather_type_9">Forti piogge</string>
    <string name="weather_type_10">Pioggia</string>
    <string name="weather_type_11">Pioggerella</string>
    <string name="weather_type_12">Nevischio</string>
    <string name="weather_type_13">Bufera di neve</string>
    <string name="weather_type_14">Neve a tratti</string>
    <string name="weather_type_15">Forti nevicate</string>
    <string name="weather_type_16">Nevicate</string>
    <string name="weather_type_17">Nevicate leggere</string>
    <string name="weather_type_18">Forte tempesta di sabbia</string>
    <string name="weather_type_19">Tempesta di sabbia</string>
    <string name="weather_type_20">Leggera tempesta di sabbia</string>
    <string name="weather_type_21">Tempesta di sabbia</string>
    <string name="weather_type_22">Grandine</string>
    <string name="weather_type_23">Polvere sospesa</string>
    <string name="weather_type_24">Foschia</string>
    <string name="weather_type_25">Nevischio</string>
</resources>
PK
     �R�M4Tfk�  �     strings/strings_hy_AM.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM
 </string>
    <string name="desc_date_format">EEEE, dd MMM</string>
    <string name="desc_date_format_12">EEEE, dd MMM</string>
    <string name="desc_time">'Ընթացիկ ժամանակը\' +#hour12+\' \'+ifelse(#minute,#minute,\'\')+\', կրկնակի սեղմեք Ժամացույց հավելվածը մուտք գործելու համար'</string>
    <string name="weather_type_null">'Տվյալներ չկան'</string>
    <string name="weather_type_0">Մաքրել</string>
    <string name="weather_type_1">Ամպոտ է</string>
    <string name="weather_type_2">Ամպամած է</string>
    <string name="weather_type_3">Մառախուղ</string>
    <string name="weather_type_4">Ուժեղ անձրևամրրիկ</string>
    <string name="weather_type_5">Անձրևամրրիկ</string>
    <string name="weather_type_6">Շատ ուժեղ անձրև</string>
    <string name="weather_type_7">Ամպրոպ</string>
    <string name="weather_type_8">Հորդառատ անձրեւ</string>
    <string name="weather_type_9">Ուժեղ անձրև</string>
    <string name="weather_type_10">Անձրև</string>
    <string name="weather_type_11">Թեթև անձրև</string>
    <string name="weather_type_12">Ձյունախառն անձրև</string>
    <string name="weather_type_13">Ձնաբուք</string>
    <string name="weather_type_14">Տեղ-տեղ ձյուն</string>
    <string name="weather_type_15">Ուժեղ ձյունատեղում</string>
    <string name="weather_type_16">Ձյունատեղում</string>
    <string name="weather_type_17">Թեթև ձյունատեղում</string>
    <string name="weather_type_18">Ուժեղ ավազահողմ</string>
    <string name="weather_type_19">Ավազահողմ</string>
    <string name="weather_type_20">Թեթև ավազահողմ</string>
    <string name="weather_type_21">Ավազահողմ</string>
    <string name="weather_type_22">Կարկուտ</string>
    <string name="weather_type_23">Փոշի</string>
    <string name="weather_type_24">Մշուշ</string>
    <string name="weather_type_25">Ձնախառն անձրև</string>
</resources>
PK
     �R�M����	  �	     strings/strings_mr_IN.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE dd MMM</string>
    <string name="desc_date_format_12">EEEE dd MMM</string>
    <string name="desc_time">'सद्य वेळ\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', घड्याळ अॅपमध्ये प्रवेश करण्यासाठी डबल टॅप करा'</string>
    <string name="weather_type_null">'डेटा नाही'</string>
    <string name="weather_type_0">निरभ्र</string>
    <string name="weather_type_1">ढगाळ</string>
    <string name="weather_type_2">धुरकट</string>
    <string name="weather_type_3">धुके</string>
    <string name="weather_type_4">जोरदार वादळी पाऊस</string>
    <string name="weather_type_5">वादळवारे</string>
    <string name="weather_type_6">मुसळधार पाऊस</string>
    <string name="weather_type_7">वादळ</string>
    <string name="weather_type_8">पाऊसधारा</string>
    <string name="weather_type_9">जोरदार पाऊस</string>
    <string name="weather_type_10">पाऊस</string>
    <string name="weather_type_11">रिमझिम पाऊस</string>
    <string name="weather_type_12">गारा व पाऊस</string>
    <string name="weather_type_13">हिमवादळ</string>
    <string name="weather_type_14">बर्फवृष्टीचे पट्टे</string>
    <string name="weather_type_15">जोरदार बर्फवृष्टी</string>
    <string name="weather_type_16">बर्फवृष्टी</string>
    <string name="weather_type_17">हलकी बर्फवृष्टी</string>
    <string name="weather_type_18">वाळूचे जोराचे वादळ</string>
    <string name="weather_type_19">धुळीचे वादळ</string>
    <string name="weather_type_20">वाळूचे हलके वादळ</string>
    <string name="weather_type_21">धुळीचे वादळ</string>
    <string name="weather_type_22">गारा</string>
    <string name="weather_type_23">तरंगती धुळ</string>
    <string name="weather_type_24">धुकट</string>
    <string name="weather_type_25">थंड पाऊस</string>
</resources>
PK
     �R�M�����  �     strings/strings_lt_LT.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, MMMM dd</string>
    <string name="desc_date_format">EEEE, MMM dd</string>
    <string name="desc_date_format_12">EEEE, MMM dd</string>
    <string name="desc_time">'dabartinis laikas\' + #hour12+\' \'+ifelse(#minute,#minute,\'oclock\')+\', norėdami atidaryti laikrodį, dukart palieskite'</string>
    <string name="weather_type_null">'Nėra duomenų'</string>
    <string name="weather_type_0">Giedra</string>
    <string name="weather_type_1">Debesuota</string>
    <string name="weather_type_2">Miglota</string>
    <string name="weather_type_3">Ūkanota</string>
    <string name="weather_type_4">Stiprus lietus</string>
    <string name="weather_type_5">Audra</string>
    <string name="weather_type_6">Labai stiprus lietus</string>
    <string name="weather_type_7">Perkūnija</string>
    <string name="weather_type_8">Liūtis</string>
    <string name="weather_type_9">Stiprus lietus</string>
    <string name="weather_type_10">Lietus</string>
    <string name="weather_type_11">Dulksna</string>
    <string name="weather_type_12">Kruša</string>
    <string name="weather_type_13">Pūga</string>
    <string name="weather_type_14">Vietomis sninga</string>
    <string name="weather_type_15">Stipriai sninga</string>
    <string name="weather_type_16">Sninga</string>
    <string name="weather_type_17">Lengvai sninga</string>
    <string name="weather_type_18">Smarki smėlio audra</string>
    <string name="weather_type_19">Smėlio audra</string>
    <string name="weather_type_20">Silpna smėlio audra</string>
    <string name="weather_type_21">Smėlio audra</string>
    <string name="weather_type_22">Kruša</string>
    <string name="weather_type_23">Dulkėta</string>
    <string name="weather_type_24">Migla</string>
    <string name="weather_type_25">Plikledis</string>
</resources>
PK
     |8N��`�-  -     strings/strings_zh_HK.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">M月d日 E</string>
    <string name="date_time_12">M月d日 Eaa</string>
    <string name="desc_date_format">M月d日 EEEE</string>
    <string name="desc_date_format_12">M月d日 Eaa</string>
    <string name="desc_time">ifelse(eq(#time_format,0),#hour12,eq(#time_format,1),#hour24,#hour24)+\'點\'+ifelse(gt(#minute,0)*le(#minute,9),0,\'\')+ifelse(#minute,#minute+\'分\',\'整\')+\', 按兩下進入時鐘App\'</string>
    <string name="desc_weather">\@weather_description+\', \'+#weather_temperature+\'度\'</string>
    <string name="desc_weather_null">'點擊獲取天氣數據'</string>
    <string name="weather_type_null">'點擊獲取天氣數據'</string>
    <string name="weather_type_0">晴</string>
    <string name="weather_type_1">多雲</string>
    <string name="weather_type_2">陰</string>
    <string name="weather_type_3">霧</string>
    <string name="weather_type_4">特大暴雨</string>
    <string name="weather_type_5">大暴雨</string>
    <string name="weather_type_6">暴雨</string>
    <string name="weather_type_7">雷陣雨</string>
    <string name="weather_type_8">陣雨</string>
    <string name="weather_type_9">大雨</string>
    <string name="weather_type_10">中雨</string>
    <string name="weather_type_11">小雨</string>
    <string name="weather_type_12">雨夾帶雪</string>
    <string name="weather_type_13">暴雪</string>
    <string name="weather_type_14">陣雪</string>
    <string name="weather_type_15">大雪</string>
    <string name="weather_type_16">中雪</string>
    <string name="weather_type_17">小雪</string>
    <string name="weather_type_18">強沙塵暴</string>
    <string name="weather_type_19">沙塵暴</string>
    <string name="weather_type_20">沙塵</string>
    <string name="weather_type_21">揚沙</string>
    <string name="weather_type_22">冰雹</string>
    <string name="weather_type_23">浮塵</string>
    <string name="weather_type_24">霾</string>
    <string name="weather_type_25">凍雨</string>
</resources>
PK
     �R�M��=�|  |     strings/strings_ml_IN.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, dd MMM</string>
    <string name="desc_date_format_12">EEEE, dd MMM</string>
    <string name="desc_time">'നിലവിലെ സമയം\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', ക്ലോക്ക് ആപ്പ് നൽകാൻ രണ്ടുതവണ ടാപ്പുചെയ്യുക'</string>
    <string name="weather_type_null">'ഡാറ്റ ഇല്ല'</string>
    <string name="weather_type_0">മായ്ക്കുക</string>
    <string name="weather_type_1">മേഘാവൃതം</string>
    <string name="weather_type_2">തെളിച്ചമില്ലാത്തത്</string>
    <string name="weather_type_3">മൂടിക്കെട്ടിയത്</string>
    <string name="weather_type_4">കൊടുങ്കാറ്റോടുകൂടിയ കടുത്ത പേമാരി</string>
    <string name="weather_type_5">കടുത്ത പേമാരി</string>
    <string name="weather_type_6">വളരെ കടുത്ത മഴ</string>
    <string name="weather_type_7">ഇടിയും മിന്നലുമുള്ള കൊടുങ്കാറ്റ്‌</string>
    <string name="weather_type_8">ചാറ്റല്‍മഴ</string>
    <string name="weather_type_9">കനത്ത മഴ</string>
    <string name="weather_type_10">മഴ</string>
    <string name="weather_type_11">ചാറ്റൽമഴ</string>
    <string name="weather_type_12">ആലിപ്പഴം പൊഴിയൽ</string>
    <string name="weather_type_13">കടുത്ത ഹിമപാതം</string>
    <string name="weather_type_14">അങ്ങ് ഇങ്ങ് മഞ്ഞുവീഴ്ച</string>
    <string name="weather_type_15">കടുത്ത മഞ്ഞുവീഴ്ച്ച</string>
    <string name="weather_type_16">മഞ്ഞുവീഴ്ച്ച</string>
    <string name="weather_type_17">ചെറിയ മഞ്ഞുവീഴ്ച്ച</string>
    <string name="weather_type_18">കടുത്ത പൊടിക്കാറ്റ്</string>
    <string name="weather_type_19">പൊടിക്കാറ്റ്</string>
    <string name="weather_type_20">ചെറിയ പൊടിക്കാറ്റ്</string>
    <string name="weather_type_21">പൊടിക്കാറ്റ്</string>
    <string name="weather_type_22">ആലിപ്പഴം</string>
    <string name="weather_type_23">പറന്നുനടക്കുന്ന പൊടിക്കാറ്റ്</string>
    <string name="weather_type_24">മൂടല്‍മഞ്ഞ്</string>
    <string name="weather_type_25">മരവിപ്പിക്കുന്ന മഴ</string>
</resources>
PK
     �R�MPD��t  t     strings/strings_nl_NL.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE dd MMMM</string>
    <string name="date_time_12">EEE dd MMMM</string>
    <string name="desc_date_format">EEEE dd MMM</string>
    <string name="desc_date_format_12">EEEE dd MMM</string>
    <string name="desc_time">'huidige tijd\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', dubbelklik om klokapp te openen'</string>
    <string name="weather_type_null">'Geen data'</string>
    <string name="weather_type_0">Helder</string>
    <string name="weather_type_1">Bewolkt</string>
    <string name="weather_type_2">Nevelig</string>
    <string name="weather_type_3">Mistig</string>
    <string name="weather_type_4">Hevige regenbuien</string>
    <string name="weather_type_5">Regenbui</string>
    <string name="weather_type_6">Zeer zware regenval</string>
    <string name="weather_type_7">Onweersbui</string>
    <string name="weather_type_8">Regenbui</string>
    <string name="weather_type_9">Zware regenval</string>
    <string name="weather_type_10">Regen</string>
    <string name="weather_type_11">Motregen</string>
    <string name="weather_type_12">IJzel</string>
    <string name="weather_type_13">Sneeuwstorm</string>
    <string name="weather_type_14">Plaatselijke sneeuwval</string>
    <string name="weather_type_15">Zware sneeuwval</string>
    <string name="weather_type_16">Sneeuwval</string>
    <string name="weather_type_17">Lichte sneeuwval</string>
    <string name="weather_type_18">Sterke zandstorm</string>
    <string name="weather_type_19">Zandstorm</string>
    <string name="weather_type_20">Lichte zandstorm</string>
    <string name="weather_type_21">Zandstorm</string>
    <string name="weather_type_22">Hagel</string>
    <string name="weather_type_23">Zwevend stof</string>
    <string name="weather_type_24">Nevel</string>
    <string name="weather_type_25">IJzel</string>
</resources>
PK
     �R�M\XI��  �     strings/strings_bg_BG.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, dd MMM</string>
    <string name="desc_date_format_12">EEEE, dd MMM</string>
    <string name="desc_time">'в момента\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', двойно почукване за отваряне на часовника'</string>
    <string name="weather_type_null">'Няма данни'</string>
    <string name="weather_type_0">Ясно</string>
    <string name="weather_type_1">Облачно</string>
    <string name="weather_type_2">Мъгливо</string>
    <string name="weather_type_3">Мъгла</string>
    <string name="weather_type_4">Силна буря</string>
    <string name="weather_type_5">Дъждовна буря</string>
    <string name="weather_type_6">Много обилни валежи</string>
    <string name="weather_type_7">Гръмотевична буря</string>
    <string name="weather_type_8">Превалявания</string>
    <string name="weather_type_9">Силни валежи</string>
    <string name="weather_type_10">Дъжд</string>
    <string name="weather_type_11">Ръмеж</string>
    <string name="weather_type_12">Суграшица</string>
    <string name="weather_type_13">Снежна буря</string>
    <string name="weather_type_14">Сняг на парцали</string>
    <string name="weather_type_15">Силен снеговалеж</string>
    <string name="weather_type_16">Снеговалеж</string>
    <string name="weather_type_17">Слаб снеговалеж</string>
    <string name="weather_type_18">Силна пясъчна буря</string>
    <string name="weather_type_19">Пясъчна буря</string>
    <string name="weather_type_20">Лека пясъчна буря</string>
    <string name="weather_type_21">Пясъчна буря</string>
    <string name="weather_type_22">Градушка</string>
    <string name="weather_type_23">Силно запрашено</string>
    <string name="weather_type_24">Мараня</string>
    <string name="weather_type_25">Леден дъжд</string>
</resources>
PK
     �R�M��je�	  �	     strings/strings_th_TH.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE dd MMMM</string>
    <string name="date_time_12">EEE dd MMMM</string>
    <string name="desc_date_format">EEEE dd MMM</string>
    <string name="desc_date_format_12">EEEE dd MMM</string>
    <string name="desc_time">'เวลาปัจจุบัน\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', แตะสองครั้งติดกันเพื่อเข้าสู่แอปนาฬิกา'</string>
    <string name="weather_type_null">'ไม่พบข้อมูล'</string>
    <string name="weather_type_0">แจ่มใส</string>
    <string name="weather_type_1">มีเมฆมาก</string>
    <string name="weather_type_2">หมอกหนา</string>
    <string name="weather_type_3">มีหมอกจัด</string>
    <string name="weather_type_4">ฝนฟ้าคะนองรุนแรง</string>
    <string name="weather_type_5">ฝนฟ้าคะนอง</string>
    <string name="weather_type_6">ฝนตกหนักมาก</string>
    <string name="weather_type_7">ฟ้าคะนอง</string>
    <string name="weather_type_8">ฝนซู่</string>
    <string name="weather_type_9">ฝนตกหนัก</string>
    <string name="weather_type_10">ฝนตก</string>
    <string name="weather_type_11">ฝนประปราย</string>
    <string name="weather_type_12">ลูกเห็บตก</string>
    <string name="weather_type_13">พายุหิมะ</string>
    <string name="weather_type_14">หิมะตกหนา</string>
    <string name="weather_type_15">หิมะตกหนัก</string>
    <string name="weather_type_16">หิมะตก</string>
    <string name="weather_type_17">หิมะตกเล็กน้อย</string>
    <string name="weather_type_18">พายุทรายรุนแรง</string>
    <string name="weather_type_19">พายุทราย</string>
    <string name="weather_type_20">พายุทรายเล็กน้อย</string>
    <string name="weather_type_21">พายุทราย</string>
    <string name="weather_type_22">ลูกเห็บตก</string>
    <string name="weather_type_23">ทัศนวิสัยต่ำ</string>
    <string name="weather_type_24">มีเมฆหมอก</string>
    <string name="weather_type_25">ฝนเยือกแข็ง</string>
</resources>
PK
     �R�M�)�E
  E
     strings/strings_bn_IN.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, dd MMM</string>
    <string name="desc_date_format_12">EEEE, dd MMM</string>
    <string name="desc_time">'এখনকার সময়\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', ঘড়ির অ্যাপে প্রবেশ করার জন্য দুবার ট্যাপ করুন'</string>
    <string name="weather_type_null">'কোনো ডেটা নেই'</string>
    <string name="weather_type_0">পরিষ্কার আকাশ</string>
    <string name="weather_type_1">মেঘলা</string>
    <string name="weather_type_2">অস্পষ্ট</string>
    <string name="weather_type_3">কুয়াশাচ্ছন্ন</string>
    <string name="weather_type_4">মারাত্মক ঝড়বৃষ্টি</string>
    <string name="weather_type_5">ঝড়বৃষ্টি</string>
    <string name="weather_type_6">প্রচন্ড বৃষ্টিপাত</string>
    <string name="weather_type_7">বজ্রবিদ্যুতসহ ঝড়</string>
    <string name="weather_type_8">বর্ষণ</string>
    <string name="weather_type_9">ভারী বৃষ্টিপাত</string>
    <string name="weather_type_10">বৃষ্টি</string>
    <string name="weather_type_11">গুঁড়ি গুঁড়ি বৃষ্টি</string>
    <string name="weather_type_12">শিলাবৃষ্টি</string>
    <string name="weather_type_13">তুষারঝড়</string>
    <string name="weather_type_14">হালকা তুষারপাত</string>
    <string name="weather_type_15">প্রচন্ড তুষারপাত</string>
    <string name="weather_type_16">তুষারপাত</string>
    <string name="weather_type_17">হালকা তুষারপাত</string>
    <string name="weather_type_18">প্রচন্ড বালিঝড়</string>
    <string name="weather_type_19">বালুঝড়</string>
    <string name="weather_type_20">হালকা বালুঝড়</string>
    <string name="weather_type_21">বালুঝড়</string>
    <string name="weather_type_22">শিলাবৃষ্টি</string>
    <string name="weather_type_23">ভাসমান ধুলো</string>
    <string name="weather_type_24">কুয়াশা</string>
    <string name="weather_type_25">তুষার ও বৃষ্টি</string>
</resources>
PK
     �R�M�.��  �     strings/strings_ro_RO.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEE, dd MMM</string>
    <string name="desc_date_format_12">EEE, dd MMM</string>
    <string name="desc_time">'ora curentă\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', atingeți de două ori pentru a intra în aplicația Ceas'</string>
    <string name="weather_type_null">'Nu există date'</string>
    <string name="weather_type_0">Senin</string>
    <string name="weather_type_1">Înnorat</string>
    <string name="weather_type_2">Ceaţă</string>
    <string name="weather_type_3">Ceață</string>
    <string name="weather_type_4">Furtună severă</string>
    <string name="weather_type_5">Furtună</string>
    <string name="weather_type_6">Precipitații puternice</string>
    <string name="weather_type_7">Furtună cu trăsnete</string>
    <string name="weather_type_8">Averse</string>
    <string name="weather_type_9">Precipitații puternice</string>
    <string name="weather_type_10">Ploaie</string>
    <string name="weather_type_11">Burniță</string>
    <string name="weather_type_12">Lapoviță</string>
    <string name="weather_type_13">Viscol</string>
    <string name="weather_type_14">Ninsoare moderată</string>
    <string name="weather_type_15">Ninsoare puternică</string>
    <string name="weather_type_16">Ninsoare</string>
    <string name="weather_type_17">Ninsoare slabă</string>
    <string name="weather_type_18">Furtună de nisip puternică</string>
    <string name="weather_type_19">Furtună de nisip</string>
    <string name="weather_type_20">Furtună de nisip ușoară</string>
    <string name="weather_type_21">Furtună de nisip</string>
    <string name="weather_type_22">Grindină</string>
    <string name="weather_type_23">Praf</string>
    <string name="weather_type_24">Ceaţă</string>
    <string name="weather_type_25">Polei</string>
</resources>
PK
     �R�M<H�]�  �     strings/strings_in_ID.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, dd MMM</string>
    <string name="desc_date_format_12">EEEE, dd MMM</string>
    <string name="desc_time">'waktu sekarang\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', ketuk 2x untuk masuk ke apl jam'</string>
    <string name="weather_type_null">'Tidak ada data'</string>
    <string name="weather_type_0">Cerah</string>
    <string name="weather_type_1">Berawan</string>
    <string name="weather_type_2">Berkabut</string>
    <string name="weather_type_3">Berkabut</string>
    <string name="weather_type_4">Hujan badai parah</string>
    <string name="weather_type_5">Hujan badai</string>
    <string name="weather_type_6">Hujan sangat deras</string>
    <string name="weather_type_7">Badai petir</string>
    <string name="weather_type_8">Hujan lebat</string>
    <string name="weather_type_9">Hujan deras</string>
    <string name="weather_type_10">Hujan</string>
    <string name="weather_type_11">Gerimis</string>
    <string name="weather_type_12">Hujan es salju</string>
    <string name="weather_type_13">Badai salju</string>
    <string name="weather_type_14">Gerimis salju</string>
    <string name="weather_type_15">Hujan salju deras</string>
    <string name="weather_type_16">Hujan salju</string>
    <string name="weather_type_17">Hujan salju ringan</string>
    <string name="weather_type_18">Badai pasir kuat</string>
    <string name="weather_type_19">Badai pasir</string>
    <string name="weather_type_20">Badai pasir ringan</string>
    <string name="weather_type_21">Badai pasir</string>
    <string name="weather_type_22">Hujan es</string>
    <string name="weather_type_23">Berdebu</string>
    <string name="weather_type_24">Kabut</string>
    <string name="weather_type_25">Hujan yang dingin</string>
</resources>
PK
     �R�M	����  �     strings/strings_gl_ES.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, dd MMM</string>
    <string name="desc_date_format_12">EEEE, dd MMM</string>
    <string name="desc_time">'hora actual\' + #hour12+\' \'+ifelse(#minute,#minute,\'oclock\')+\', duplo toque para abrir o reloxo'</string>
    <string name="weather_type_null">'Sen datos'</string>
    <string name="weather_type_0">Ceo claro</string>
    <string name="weather_type_1">Anubrado</string>
    <string name="weather_type_2">Brétema</string>
    <string name="weather_type_3">Bretemoso</string>
    <string name="weather_type_4">Tempestade</string>
    <string name="weather_type_5">Tormenta</string>
    <string name="weather_type_6">Choivas fortes</string>
    <string name="weather_type_7">Tormenta</string>
    <string name="weather_type_8">Chuvieira</string>
    <string name="weather_type_9">Chuvias fortes</string>
    <string name="weather_type_10">Chuvia</string>
    <string name="weather_type_11">Orballo</string>
    <string name="weather_type_12">Auganeve</string>
    <string name="weather_type_13">Nevarada</string>
    <string name="weather_type_14">Nevadas intermitentes</string>
    <string name="weather_type_15">Nevada intensa</string>
    <string name="weather_type_16">Nevada</string>
    <string name="weather_type_17">Nevada leve</string>
    <string name="weather_type_18">Tempestade de area</string>
    <string name="weather_type_19">Tormenta de area</string>
    <string name="weather_type_20">Tormentas febles de area</string>
    <string name="weather_type_21">Tormenta de area</string>
    <string name="weather_type_22">Sarabia</string>
    <string name="weather_type_23">Poeira</string>
    <string name="weather_type_24">Brétema</string>
    <string name="weather_type_25">Coriscada</string>
</resources>
PK
     �R�M"!�d�  �     strings/strings_cs_CZ.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd. MMMM</string>
    <string name="date_time_12">EEE, dd. MMMM</string>
    <string name="desc_date_format">EEEE, dd. MMM</string>
    <string name="desc_date_format_12">EEEE, dd. MMM</string>
    <string name="desc_time">'aktuální čas\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', klepněte dvakrát pro otevření hodin'</string>
    <string name="weather_type_null">'Žádná data'</string>
    <string name="weather_type_0">Jasno</string>
    <string name="weather_type_1">Oblačno</string>
    <string name="weather_type_2">Zataženo</string>
    <string name="weather_type_3">Mlhavo</string>
    <string name="weather_type_4">Silné bouřky</string>
    <string name="weather_type_5">Bouřka</string>
    <string name="weather_type_6">Velmi silný déšť</string>
    <string name="weather_type_7">Bouřky s blesky</string>
    <string name="weather_type_8">Přehánky</string>
    <string name="weather_type_9">Silný déšť</string>
    <string name="weather_type_10">Déšť</string>
    <string name="weather_type_11">Mrholení</string>
    <string name="weather_type_12">Déšť se sněhem</string>
    <string name="weather_type_13">Sněhová bouře</string>
    <string name="weather_type_14">Sněhové jazyky</string>
    <string name="weather_type_15">Silné sněžení</string>
    <string name="weather_type_16">Sněžení</string>
    <string name="weather_type_17">Slabé sněžení</string>
    <string name="weather_type_18">Silná písečná bouře</string>
    <string name="weather_type_19">Písečná bouře</string>
    <string name="weather_type_20">Slabá písečná bouře</string>
    <string name="weather_type_21">Písečná bouře</string>
    <string name="weather_type_22">Krupobití</string>
    <string name="weather_type_23">Prach</string>
    <string name="weather_type_24">Mlha</string>
    <string name="weather_type_25">Mrznoucí déšť</string>
</resources>
PK
     �R�M�9�  �     strings/strings_hu_HU.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">MMMM dd., EEE</string>
    <string name="date_time_12">MMMM dd., EEE</string>
    <string name="desc_date_format">MMM dd., EEEE</string>
    <string name="desc_date_format_12">MMM dd., EEEE</string>
    <string name="desc_time">'jelenlegi idő\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', érintse meg kétszer az óra megnyitásához'</string>
    <string name="weather_type_null">'Nincs adat'</string>
    <string name="weather_type_0">Tiszta</string>
    <string name="weather_type_1">Felhős</string>
    <string name="weather_type_2">Párás</string>
    <string name="weather_type_3">Ködös</string>
    <string name="weather_type_4">Intenzív felhőszakadás</string>
    <string name="weather_type_5">Felhőszakadás</string>
    <string name="weather_type_6">Nagyon heves esőzés</string>
    <string name="weather_type_7">Zivatar</string>
    <string name="weather_type_8">Zápor</string>
    <string name="weather_type_9">Heves esőzés</string>
    <string name="weather_type_10">Eső</string>
    <string name="weather_type_11">Szitálás</string>
    <string name="weather_type_12">Ónos eső</string>
    <string name="weather_type_13">Hóvihar</string>
    <string name="weather_type_14">Foltokban hóesés</string>
    <string name="weather_type_15">Sűrű havazás</string>
    <string name="weather_type_16">Havazás</string>
    <string name="weather_type_17">Hószállingózás</string>
    <string name="weather_type_18">Erős homokvihar</string>
    <string name="weather_type_19">Homokvihar</string>
    <string name="weather_type_20">Enyhe homokvihar</string>
    <string name="weather_type_21">Homokvihar</string>
    <string name="weather_type_22">Jégeső</string>
    <string name="weather_type_23">Szálló por</string>
    <string name="weather_type_24">Pára</string>
    <string name="weather_type_25">Ónos eső</string>
</resources>
PK
     �R�M�A�8�	  �	     strings/strings_or_IN.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE dd MMMM</string>
    <string name="desc_date_format">EEEE, dd MMM</string>
    <string name="desc_date_format_12">EEEE, dd MMM</string>
    <string name="desc_time">'ବର୍ତ୍ତମାନର ସମୟ\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', କ୍ଲକ ଆପରେ ପ୍ରବେଶ କରିବାକୁ ଦୁଇଥର ଟ୍ୟାପ କରନ୍ତୁ'</string>
    <string name="weather_type_null">'କୌଣସି ଡାଟା ନାହିଁ'</string>
    <string name="weather_type_0">ସଫା ପାଗ</string>
    <string name="weather_type_1">ମେଘୁଆ</string>
    <string name="weather_type_2">କୁହୁଡ଼ିଆ</string>
    <string name="weather_type_3">ଘନକୁହୁଡି</string>
    <string name="weather_type_4">ପ୍ରଚଣ୍ଡ ଝଡ଼ବର୍ଷା</string>
    <string name="weather_type_5">ଝଡ଼ବର୍ଷା</string>
    <string name="weather_type_6">ଅତି ବୃଷ୍ଟିପାତ</string>
    <string name="weather_type_7">ଘଡ଼ଘଡ଼ି ବର୍ଷା</string>
    <string name="weather_type_8">ହାଲୁକା ବର୍ଷା</string>
    <string name="weather_type_9">ଭାରି ବୃଷ୍ଟିପାତ</string>
    <string name="weather_type_10">ବର୍ଷା</string>
    <string name="weather_type_11">ଅଳ୍ପ ବର୍ଷା</string>
    <string name="weather_type_12">କୁଆପଥର ବର୍ଷା</string>
    <string name="weather_type_13">ତୁଷାର ଝଡ଼</string>
    <string name="weather_type_14">ଜାଗାଏ ଜାଗାଏ ତୁଷାରପାତ</string>
    <string name="weather_type_15">ଭାରି ତୁଷାରପାତ</string>
    <string name="weather_type_16">ତୁଷାରପାତ</string>
    <string name="weather_type_17">ହାଲୁକା ତୁଷାରପାତ</string>
    <string name="weather_type_18">ଭାରି ଧୂଳିଝଡ଼</string>
    <string name="weather_type_19">ଧୂଳିଝଡ଼</string>
    <string name="weather_type_20">ହାଲୁକା ଧୂଳିଝଡ଼</string>
    <string name="weather_type_21">ଧୂଳିଝଡ଼</string>
    <string name="weather_type_22">କରକା</string>
    <string name="weather_type_23">ଭାସମାନ ଧୂଳି</string>
    <string name="weather_type_24">କୁହୁଡ଼ି</string>
    <string name="weather_type_25">ହିମ ବର୍ଷା</string>
</resources>
PK
     �R�M�q��       strings/strings_az_AZ.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">dd MMMM, EEE</string>
    <string name="date_time_12">dd MMMM, EEE</string>
    <string name="desc_date_format">dd MMM, EEEE</string>
    <string name="desc_date_format_12">dd MMM, EEEE</string>
    <string name="desc_time">'cari vaxt\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', saat tətbiqini açmaq üçün iki dəfə toxunun'</string>
    <string name="weather_type_null">'Məlumat yoxdur'</string>
    <string name="weather_type_0">Təmiz</string>
    <string name="weather_type_1">Buludlu</string>
    <string name="weather_type_2">Çənli</string>
    <string name="weather_type_3">Dumanlı</string>
    <string name="weather_type_4">Sərt yağış fırtınası</string>
    <string name="weather_type_5">Yağış fırtınası</string>
    <string name="weather_type_6">Çox şiddətli yağıntı</string>
    <string name="weather_type_7">Göy gurultulu yağış</string>
    <string name="weather_type_8">Yüngül yağışlı</string>
    <string name="weather_type_9">Şiddətli yağıntı</string>
    <string name="weather_type_10">Yağış</string>
    <string name="weather_type_11">Çiskin</string>
    <string name="weather_type_12">Sulu qar</string>
    <string name="weather_type_13">Qar fırtınası</string>
    <string name="weather_type_14">Qar qalıntıları</string>
    <string name="weather_type_15">Şiddətli qar yağışı</string>
    <string name="weather_type_16">Qar yağışı</string>
    <string name="weather_type_17">Yüngül qar yağışı</string>
    <string name="weather_type_18">Güclü qum fırtınası</string>
    <string name="weather_type_19">Qum fırtınası</string>
    <string name="weather_type_20">Yüngül qum fırtınası</string>
    <string name="weather_type_21">Qum tufanı</string>
    <string name="weather_type_22">Dolu</string>
    <string name="weather_type_23">Tozlu</string>
    <string name="weather_type_24">Sisli</string>
    <string name="weather_type_25">Donmuş yağış</string>
</resources>
PK
     @T�J��m*  *     strings/strings_en_US.xml<?xml version="1.0" encoding="utf-8"?>
<resources> 
    <string name="date_time">EEE, MMMM dd</string>
    <string name="date_time_12">EEE, MMMM dd</string>
    <string name="desc_date_format">EEEE, MMM dd</string>
    <string name="desc_date_format_12">EEEE, MMM dd</string>
    <string name="desc_time">'current time' + #hour12+' '+ifelse(#minute,#minute,'oclock')+', double tap to enter clock app'</string>
	<string name="weather_type_null">'No data'</string>
	<string name="weather_type_0">Clear</string>
    <string name="weather_type_1">Cloudy</string>
    <string name="weather_type_2">Hazy</string>
    <string name="weather_type_3">Foggy</string>
    <string name="weather_type_4">Severe rainstorm</string>
    <string name="weather_type_5">Rainstorm</string>
    <string name="weather_type_6">Very heavy rainfall</string>
    <string name="weather_type_7">Thunderstorm</string>
    <string name="weather_type_8">Shower</string>
    <string name="weather_type_9">Heavy rainfall</string>
    <string name="weather_type_10">Rain</string>
    <string name="weather_type_11">Drizzle</string>
    <string name="weather_type_12">Sleet</string>
    <string name="weather_type_13">Snowstorm</string>
    <string name="weather_type_14">Patches of snowfall</string>
    <string name="weather_type_15">Heavy snowfall</string>
    <string name="weather_type_16">Snowfall</string>
    <string name="weather_type_17">Light snowfall</string>
    <string name="weather_type_18">Strong sandstorm</string>
    <string name="weather_type_19">Sandstorm</string>
    <string name="weather_type_20">Light sandstorm</string>
    <string name="weather_type_21">Sandstorm</string>
    <string name="weather_type_22">Hail</string>
    <string name="weather_type_23">Floating Dust</string>
    <string name="weather_type_24">Haze</string>
</resources>
PK
     �R�MN�(�  �     strings/strings_ru_RU.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, d MMMM</string>
    <string name="date_time_12">EEE, d MMMM</string>
    <string name="desc_date_format">EEEE, d MMMM</string>
    <string name="desc_date_format_12">EEEE, d MMMM</string>
    <string name="desc_time">'текущее время\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', нажмите дважды для входа в приложение "Часы"'</string>
    <string name="weather_type_null">'Данных нет'</string>
    <string name="weather_type_0">Ясно</string>
    <string name="weather_type_1">Облачно</string>
    <string name="weather_type_2">Пасмурно</string>
    <string name="weather_type_3">Туман</string>
    <string name="weather_type_4">Сильный ливень</string>
    <string name="weather_type_5">Ливень</string>
    <string name="weather_type_6">Сильный ливень</string>
    <string name="weather_type_7">Гроза</string>
    <string name="weather_type_8">Дождь</string>
    <string name="weather_type_9">Сильный дождь</string>
    <string name="weather_type_10">Дождь</string>
    <string name="weather_type_11">Изморось</string>
    <string name="weather_type_12">Мокрый снег</string>
    <string name="weather_type_13">Метель</string>
    <string name="weather_type_14">Местами снег</string>
    <string name="weather_type_15">Сильный снег</string>
    <string name="weather_type_16">Снег</string>
    <string name="weather_type_17">Небольшой снег</string>
    <string name="weather_type_18">Сильная пыльная буря</string>
    <string name="weather_type_19">Пыльная буря</string>
    <string name="weather_type_20">Небольшая пыльная буря</string>
    <string name="weather_type_21">Пыльная буря</string>
    <string name="weather_type_22">Град</string>
    <string name="weather_type_23">Пыль</string>
    <string name="weather_type_24">Смог</string>
    <string name="weather_type_25">Изморозь</string>
</resources>
PK
     |8N�����  �     strings/strings_zh_TW.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">M月d日 EEEE</string>
    <string name="date_time_12">M月d日 Eaa</string>
    <string name="desc_date_format">M月d日 EEEE</string>
    <string name="desc_date_format_12">M月d日 Eaa</string>
    <string name="desc_time">ifelse(eq(#time_format,0),#hour12,eq(#time_format,1),#hour24,#hour24)+\'點\'+ifelse(gt(#minute,0)*le(#minute,9),0,\'\')+ifelse(#minute,#minute+\'分\',\'整\')+\', 按兩下進入時鐘App\'</string>
    <string name="desc_weather">\'今天\'+\', \'+@weather_location+\', \'+int(#month+1)+\'月\'+#date+\'日\'+\', \'+\'週\'+int(#day_of_week-1)+\',\'+#weather_temperature+\'度\'+\',\'+@weather_description+\',\'+@weather_aqi</string>
    <string name="desc_weather_null">'點擊獲取天氣數據'</string>
    <string name="weather_type_null">'點擊獲取天氣數據'</string>
    <string name="weather_type_0">晴</string>
    <string name="weather_type_1">多雲</string>
    <string name="weather_type_2">陰</string>
    <string name="weather_type_3">霧</string>
    <string name="weather_type_4">特大暴雨</string>
    <string name="weather_type_5">大暴雨</string>
    <string name="weather_type_6">暴雨</string>
    <string name="weather_type_7">雷陣雨</string>
    <string name="weather_type_8">陣雨</string>
    <string name="weather_type_9">大雨</string>
    <string name="weather_type_10">中雨</string>
    <string name="weather_type_11">小雨</string>
    <string name="weather_type_12">雨夾帶雪</string>
    <string name="weather_type_13">暴雪</string>
    <string name="weather_type_14">陣雪</string>
    <string name="weather_type_15">大雪</string>
    <string name="weather_type_16">中雪</string>
    <string name="weather_type_17">小雪</string>
    <string name="weather_type_18">強沙塵暴</string>
    <string name="weather_type_19">沙塵暴</string>
    <string name="weather_type_20">沙塵</string>
    <string name="weather_type_21">揚沙</string>
    <string name="weather_type_22">冰雹</string>
    <string name="weather_type_23">浮塵</string>
    <string name="weather_type_24">霾</string>
    <string name="weather_type_25">凍雨</string>
</resources>
PK
     �R�Mٗ��s  s     strings/strings_et_EE.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd. MMMM</string>
    <string name="date_time_12">EEE, dd. MMMM</string>
    <string name="desc_date_format">EEEE, dd. MMM</string>
    <string name="desc_date_format_12">EEEE, dd. MMM</string>
    <string name="desc_time">'praegune aeg\' + #hour12+’ifelse(#minute,#minute,\'\')+\', topelttokse kellarakendusse sisenemiseks'</string>
    <string name="weather_type_null">'Andmed puuduvad'</string>
    <string name="weather_type_0">Selge</string>
    <string name="weather_type_1">Pilvine</string>
    <string name="weather_type_2">Hägune</string>
    <string name="weather_type_3">Udune</string>
    <string name="weather_type_4">Tõsine vihmatorm</string>
    <string name="weather_type_5">Vihmatorm</string>
    <string name="weather_type_6">Väga tugev sadu</string>
    <string name="weather_type_7">Äikesetorm</string>
    <string name="weather_type_8">Sadu</string>
    <string name="weather_type_9">Tugev sadu</string>
    <string name="weather_type_10">Vihm</string>
    <string name="weather_type_11">Tibutamine</string>
    <string name="weather_type_12">Lörts</string>
    <string name="weather_type_13">Lumetorm</string>
    <string name="weather_type_14">Hootine lumesadu</string>
    <string name="weather_type_15">Tugev lumesadu</string>
    <string name="weather_type_16">Lumesadu</string>
    <string name="weather_type_17">Kerge lumesadu</string>
    <string name="weather_type_18">Tugev liivatorm</string>
    <string name="weather_type_19">Liivatorm</string>
    <string name="weather_type_20">Kerge liivatorm</string>
    <string name="weather_type_21">Liivatorm</string>
    <string name="weather_type_22">Rahe</string>
    <string name="weather_type_23">Hõljuv udu</string>
    <string name="weather_type_24">Hägu</string>
    <string name="weather_type_25">Külm vihm</string>
</resources>
PK
     �R�M��	h�	  �	     strings/strings_kn_IN.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE dd MMMM</string>
    <string name="date_time_12">EEE dd MMMM</string>
    <string name="desc_date_format">EEEE dd MMM</string>
    <string name="desc_date_format_12">EEEE dd MMM</string>
    <string name="desc_time">'ಪ್ರಸ್ತುತ ಸಮಯ\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', ಗಡಿಯಾರ ಆ್ಯಪ್‌‌ ಪ್ರವೇಶಿಸಲು ಡಬಲ್‌ ಟ್ಯಾಪ್‌ ಮಾಡಿ'</string>
    <string name="weather_type_null">'ಡೇಟಾ ಇಲ್ಲ'</string>
    <string name="weather_type_0">ನಿಚ್ಛಳ</string>
    <string name="weather_type_1">ಮೋಡ ಕವಿದಿದೆ</string>
    <string name="weather_type_2">ಮಬ್ಬು ಕವಿದಿದೆ</string>
    <string name="weather_type_3">ಮಂಜು ಮುಸುಕಿದೆ</string>
    <string name="weather_type_4">ತೀವ್ರ ಮಳೆ-ಗಾಳಿ</string>
    <string name="weather_type_5">ಮಳೆ-ಗಾಳಿ</string>
    <string name="weather_type_6">ತೀವ್ರ ಮಳೆ-ಗಾಳಿ</string>
    <string name="weather_type_7">ಬಿರುಗಾಳಿ</string>
    <string name="weather_type_8">ತುಂತುರು ಮಳೆ</string>
    <string name="weather_type_9">ಭಾರೀ ಮಳೆ</string>
    <string name="weather_type_10">ಮಳೆ</string>
    <string name="weather_type_11">ತುಂತುರು ಮಳೆ</string>
    <string name="weather_type_12">ಆಲಿಕಲ್ಲು ಮಳೆ</string>
    <string name="weather_type_13">ಮಂಜು-ಗಾಳಿ</string>
    <string name="weather_type_14">ತುಂತುರು ಹಿಮಮಳೆ</string>
    <string name="weather_type_15">ತೀವ್ರ ಹಿಮಮಳೆ</string>
    <string name="weather_type_16">ಹಿಮಮಳೆ</string>
    <string name="weather_type_17">ಹಗುರ ಹಿಮಮಳೆ</string>
    <string name="weather_type_18">ತೀವ್ರ ಮರಳು-ಗಾಳಿ</string>
    <string name="weather_type_19">ಮರಳು-ಗಾಳಿ</string>
    <string name="weather_type_20">ಹಗುರ ಮರಳು-ಗಾಳಿ</string>
    <string name="weather_type_21">ಮರಳು-ಗಾಳಿ</string>
    <string name="weather_type_22">ಆಲಿಕಲ್ಲು</string>
    <string name="weather_type_23">ಧೂಳು</string>
    <string name="weather_type_24">ಮಬ್ಬುಮುಸುಕು</string>
    <string name="weather_type_25">ಚಳಿ-ಮಳೆ</string>
</resources>
PK
     �R�M���  �     strings/strings_be_BY.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, d MMMM</string>
    <string name="date_time_12">EEE, d MMMM</string>
    <string name="desc_date_format">EEEE, d MMMM</string>
    <string name="desc_date_format_12">EEEE, d MMMM</string>
    <string name="desc_time">'цяперашні час\' + #hour12+\' \'+ifelse(#minute,#minute,\'oclock\')+\', націсніце двойчы, каб зайсці ў праграму «Гадзіннік»'</string>
    <string name="weather_type_null">'Няма дадзеных'</string>
    <string name="weather_type_0">Ясна</string>
    <string name="weather_type_1">Хмарна</string>
    <string name="weather_type_2">Пахмурна</string>
    <string name="weather_type_3">Туман</string>
    <string name="weather_type_4">Моцная залева</string>
    <string name="weather_type_5">Залева</string>
    <string name="weather_type_6">Моцная залева</string>
    <string name="weather_type_7">Навальніца</string>
    <string name="weather_type_8">Дождж</string>
    <string name="weather_type_9">Моцны дождж</string>
    <string name="weather_type_10">Дождж</string>
    <string name="weather_type_11">Дробны дождж</string>
    <string name="weather_type_12">Дождж са снегам</string>
    <string name="weather_type_13">Завіруха</string>
    <string name="weather_type_14">Месцамі снег</string>
    <string name="weather_type_15">Моцны снегапад</string>
    <string name="weather_type_16">Снегапад</string>
    <string name="weather_type_17">Невялікі снег</string>
    <string name="weather_type_18">Моцная пясчаная бура</string>
    <string name="weather_type_19">Пясчаная бура</string>
    <string name="weather_type_20">Cлабая пясчаная бура</string>
    <string name="weather_type_21">Пясчаная бура</string>
    <string name="weather_type_22">Град</string>
    <string name="weather_type_23">Пыльна</string>
    <string name="weather_type_24">Смуга</string>
    <string name="weather_type_25">Шэрань</string>
</resources>
PK
     �R�M��\�A
  A
     strings/strings_gu_IN.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, dd MMM</string>
    <string name="desc_date_format_12">EEEE, dd MMM</string>
    <string name="desc_time">'ઘડિયાળ ઍપ્લિકેશનમાં દાખલ થવા માટે વર્તમાન સમય\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', ને બેવાર ટૅપ કરો'</string>
    <string name="weather_type_null">'કોઇ ડેટા નથી'</string>
    <string name="weather_type_0">સાફ</string>
    <string name="weather_type_1">વાદળછાયું</string>
    <string name="weather_type_2">ધૂંધળું</string>
    <string name="weather_type_3">ધુમ્મસભર્યું</string>
    <string name="weather_type_4">અતિથી અતિ ભારે વાવાઝોડું</string>
    <string name="weather_type_5">વરસાદ સાથે વાવાઝોડું</string>
    <string name="weather_type_6">બહુ ભારે વરસાદ</string>
    <string name="weather_type_7">ગાજવીજ સાથે વાવાઝોડું</string>
    <string name="weather_type_8">નાનું ઝાપટું</string>
    <string name="weather_type_9">ભારે વરસાદ</string>
    <string name="weather_type_10">વરસાદ</string>
    <string name="weather_type_11">ઝરમર વરસાદ</string>
    <string name="weather_type_12">કરા સાથે વરસાદ</string>
    <string name="weather_type_13">બરફીલું તોફાન</string>
    <string name="weather_type_14">ક્યાંક-ક્યાંક હિમવર્ષા</string>
    <string name="weather_type_15">ભારે હિમવર્ષા</string>
    <string name="weather_type_16">હિમવર્ષા</string>
    <string name="weather_type_17">હળવી હિમવર્ષા</string>
    <string name="weather_type_18">જોરદાર આંધી</string>
    <string name="weather_type_19">આંધી</string>
    <string name="weather_type_20">હળવી આંધી</string>
    <string name="weather_type_21">આંધી</string>
    <string name="weather_type_22">કરા</string>
    <string name="weather_type_23">ઉડતી ધૂળ</string>
    <string name="weather_type_24">ધુમ્મસ</string>
    <string name="weather_type_25">થીજવી નાંખે એવો વરસાદ</string>
</resources>
PK
     �R�M�)�E
  E
     strings/strings_bn_BD.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, dd MMM</string>
    <string name="desc_date_format_12">EEEE, dd MMM</string>
    <string name="desc_time">'এখনকার সময়\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', ঘড়ির অ্যাপে প্রবেশ করার জন্য দুবার ট্যাপ করুন'</string>
    <string name="weather_type_null">'কোনো ডেটা নেই'</string>
    <string name="weather_type_0">পরিষ্কার আকাশ</string>
    <string name="weather_type_1">মেঘলা</string>
    <string name="weather_type_2">অস্পষ্ট</string>
    <string name="weather_type_3">কুয়াশাচ্ছন্ন</string>
    <string name="weather_type_4">মারাত্মক ঝড়বৃষ্টি</string>
    <string name="weather_type_5">ঝড়বৃষ্টি</string>
    <string name="weather_type_6">প্রচন্ড বৃষ্টিপাত</string>
    <string name="weather_type_7">বজ্রবিদ্যুতসহ ঝড়</string>
    <string name="weather_type_8">বর্ষণ</string>
    <string name="weather_type_9">ভারী বৃষ্টিপাত</string>
    <string name="weather_type_10">বৃষ্টি</string>
    <string name="weather_type_11">গুঁড়ি গুঁড়ি বৃষ্টি</string>
    <string name="weather_type_12">শিলাবৃষ্টি</string>
    <string name="weather_type_13">তুষারঝড়</string>
    <string name="weather_type_14">হালকা তুষারপাত</string>
    <string name="weather_type_15">প্রচন্ড তুষারপাত</string>
    <string name="weather_type_16">তুষারপাত</string>
    <string name="weather_type_17">হালকা তুষারপাত</string>
    <string name="weather_type_18">প্রচন্ড বালিঝড়</string>
    <string name="weather_type_19">বালুঝড়</string>
    <string name="weather_type_20">হালকা বালুঝড়</string>
    <string name="weather_type_21">বালুঝড়</string>
    <string name="weather_type_22">শিলাবৃষ্টি</string>
    <string name="weather_type_23">ভাসমান ধুলো</string>
    <string name="weather_type_24">কুয়াশা</string>
    <string name="weather_type_25">তুষার ও বৃষ্টি</string>
</resources>
PK
     �R�M�1�<�  �     strings/strings_sl_SI.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd. MMMM</string>
    <string name="date_time_12">EEE, dd. MMMM</string>
    <string name="desc_date_format">EEEE, dd. MMM</string>
    <string name="desc_date_format_12">EEEE, dd. MMM</string>
    <string name="desc_time">'trenutni čas\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', dvakrat tapnite odprtje aplikacije za uro'</string>
    <string name="weather_type_null">'Ni podatkov'</string>
    <string name="weather_type_0">Jasno</string>
    <string name="weather_type_1">Oblačno</string>
    <string name="weather_type_2">Megleno</string>
    <string name="weather_type_3">Megla</string>
    <string name="weather_type_4">Močan dež</string>
    <string name="weather_type_5">Nevihta z dežjem</string>
    <string name="weather_type_6">Zelo huda ploha</string>
    <string name="weather_type_7">Nevihta</string>
    <string name="weather_type_8">Ploha</string>
    <string name="weather_type_9">Huda ploha</string>
    <string name="weather_type_10">Dež</string>
    <string name="weather_type_11">Rahel dež</string>
    <string name="weather_type_12">Sodra</string>
    <string name="weather_type_13">Snežna nevihta</string>
    <string name="weather_type_14">Nanosi snega</string>
    <string name="weather_type_15">Močno sneženje</string>
    <string name="weather_type_16">Sneženje</string>
    <string name="weather_type_17">Rahlo sneženje</string>
    <string name="weather_type_18">Huda peščena nevihta</string>
    <string name="weather_type_19">Peščena nevihta</string>
    <string name="weather_type_20">Rahla peščena nevihta</string>
    <string name="weather_type_21">Peščena nevihta</string>
    <string name="weather_type_22">Toča</string>
    <string name="weather_type_23">Plavajoč prah</string>
    <string name="weather_type_24">Meglica</string>
    <string name="weather_type_25">Leden dež</string>
</resources>
PK
     �+N�͙��  �     strings/strings_sr_RS.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd. MMMM</string>
    <string name="date_time_12">EEE, dd. MMMM</string>
    <string name="desc_date_format">EEEE, dd. MMM.</string>
    <string name="desc_date_format_12">EEEE, dd. MMM.</string>
    <string name="desc_time">'време\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', двапут додирните да уђете у апликацију за сат'</string>
    <string name="weather_type_null">'Нема података'</string>
    <string name="weather_type_0">Ведро</string>
    <string name="weather_type_1">Облачно</string>
    <string name="weather_type_2">Измаглица</string>
    <string name="weather_type_3">Магловито</string>
    <string name="weather_type_4">Јака кишна олуја</string>
    <string name="weather_type_5">Невреме</string>
    <string name="weather_type_6">Веома јаки пљусак</string>
    <string name="weather_type_7">Олуја са грмљавином</string>
    <string name="weather_type_8">Пљусак</string>
    <string name="weather_type_9">Снажни пљусак</string>
    <string name="weather_type_10">Киша</string>
    <string name="weather_type_11">Слаба киша</string>
    <string name="weather_type_12">Поледица</string>
    <string name="weather_type_13">Снежна олуја</string>
    <string name="weather_type_14">Наноси снега</string>
    <string name="weather_type_15">Снажaн снег</string>
    <string name="weather_type_16">Снег</string>
    <string name="weather_type_17">Слаб снег</string>
    <string name="weather_type_18">Снажна пешчана олуја</string>
    <string name="weather_type_19">Пешчана олуја</string>
    <string name="weather_type_20">Слаба пешчана олуја</string>
    <string name="weather_type_21">Пешчана олуја</string>
    <string name="weather_type_22">Град</string>
    <string name="weather_type_23">Прашина</string>
    <string name="weather_type_24">Сумаглица</string>
    <string name="weather_type_25">Ледена киша</string>
</resources>
PK
     �R�Mk�_�m  m     strings/strings_da_DK.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, d. MMMM</string>
    <string name="date_time_12">EEE, d. MMMM</string>
    <string name="desc_date_format">EEEE, d. MMM</string>
    <string name="desc_date_format_12">EEEE, d. MMM</string>
    <string name="desc_time">'aktuel\' + #hour12+\' \'+ifelse(#minute,#minute,\'oclock\')+\', dobbeltklik for at indtaste ur-app'</string>
    <string name="weather_type_null">'Ingen data'</string>
    <string name="weather_type_0">Klart</string>
    <string name="weather_type_1">Skyet</string>
    <string name="weather_type_2">Diset</string>
    <string name="weather_type_3">Tåget</string>
    <string name="weather_type_4">Alvorligt regnvejr</string>
    <string name="weather_type_5">Regnvejr</string>
    <string name="weather_type_6">Meget kraftigt regnvejr</string>
    <string name="weather_type_7">Tordenvejr</string>
    <string name="weather_type_8">Byge</string>
    <string name="weather_type_9">Kraftig nedbør</string>
    <string name="weather_type_10">Regn</string>
    <string name="weather_type_11">Støvregn</string>
    <string name="weather_type_12">Slud</string>
    <string name="weather_type_13">Snestorm</string>
    <string name="weather_type_14">Pletvis snevejr</string>
    <string name="weather_type_15">Kraftigt snevejr</string>
    <string name="weather_type_16">Snefald</string>
    <string name="weather_type_17">Let snefald</string>
    <string name="weather_type_18">Kraftig sandstorm</string>
    <string name="weather_type_19">Sandstorm</string>
    <string name="weather_type_20">Let sandstorm</string>
    <string name="weather_type_21">Sandstorm</string>
    <string name="weather_type_22">Hagl</string>
    <string name="weather_type_23">Flydende støv</string>
    <string name="weather_type_24">Dis</string>
    <string name="weather_type_25">Frysende regn</string>
</resources>
PK
     �R�Mvy���  �     strings/strings_pl_PL.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, dd MMM</string>
    <string name="desc_date_format_12">EEEE, dd MMM</string>
    <string name="desc_time">'aktualna godzina\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', dotknij dwukrotnie, aby przejść do aplikacji Zegar'</string>
    <string name="weather_type_null">'Brak danych'</string>
    <string name="weather_type_0">Pogodnie</string>
    <string name="weather_type_1">Pochmurno</string>
    <string name="weather_type_2">Zamglenia</string>
    <string name="weather_type_3">Mgła</string>
    <string name="weather_type_4">Ulewne deszcze</string>
    <string name="weather_type_5">Ulewa</string>
    <string name="weather_type_6">Bardzo intensywne opady deszczu</string>
    <string name="weather_type_7">Burza z piorunami</string>
    <string name="weather_type_8">Mżawka</string>
    <string name="weather_type_9">Intensywne opady deszczu</string>
    <string name="weather_type_10">Deszczowo</string>
    <string name="weather_type_11">Przelotne opady</string>
    <string name="weather_type_12">Deszcz ze śniegiem</string>
    <string name="weather_type_13">Zamieć śnieżna</string>
    <string name="weather_type_14">Śnieg</string>
    <string name="weather_type_15">Intensywne opady śniegu</string>
    <string name="weather_type_16">Opady śniegu</string>
    <string name="weather_type_17">Lekkie opady śniegu</string>
    <string name="weather_type_18">Silna burza piaskowa</string>
    <string name="weather_type_19">Burza piaskowa</string>
    <string name="weather_type_20">Lekka burza piaskowa</string>
    <string name="weather_type_21">Burza piaskowa</string>
    <string name="weather_type_22">Grad</string>
    <string name="weather_type_23">Unoszący się pył</string>
    <string name="weather_type_24">Zamglenia</string>
    <string name="weather_type_25">Marznący deszcz</string>
</resources>
PK
     �R�MGt��  �     strings/strings_mk_MK.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, dd MMM</string>
    <string name="desc_date_format_12">EEEE, dd MMM</string>
    <string name="desc_time">'тековно време\' + #hour12+\' \'+ifelse(#minute,#minute,\'oclock\')+\', двапати допрете за да влезете во апликацијата часовник'</string>
    <string name="weather_type_null">'Нема податоци'</string>
    <string name="weather_type_0">Ведро</string>
    <string name="weather_type_1">Облачно</string>
    <string name="weather_type_2">Матно</string>
    <string name="weather_type_3">Магливо</string>
    <string name="weather_type_4">Тешка бура</string>
    <string name="weather_type_5">Бура</string>
    <string name="weather_type_6">Многу обилни врнежи</string>
    <string name="weather_type_7">Грмотевици</string>
    <string name="weather_type_8">Краток дожд</string>
    <string name="weather_type_9">Обилни врнежи</string>
    <string name="weather_type_10">Дожд</string>
    <string name="weather_type_11">Ситен дожд</string>
    <string name="weather_type_12">Лапавица</string>
    <string name="weather_type_13">Снежна виелица</string>
    <string name="weather_type_14">Парчиња од снежните врнежи</string>
    <string name="weather_type_15">Обилни снежни врнежи</string>
    <string name="weather_type_16">Снежните врнежи</string>
    <string name="weather_type_17">Лесни врнежи од снег</string>
    <string name="weather_type_18">Силна песочна бура</string>
    <string name="weather_type_19">Песочна бура</string>
    <string name="weather_type_20">Песочна бура</string>
    <string name="weather_type_21">Песочна бура</string>
    <string name="weather_type_22">Град</string>
    <string name="weather_type_23">Лебдејќи</string>
    <string name="weather_type_24">Магла</string>
    <string name="weather_type_25">Леден дожд</string>
</resources>
PK
     �R�M.\�x�  �     strings/strings_de_DE.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd. MMMM</string>
    <string name="date_time_12">EEE, dd. MMMM</string>
    <string name="desc_date_format">EEEE, dd. MMM</string>
    <string name="desc_date_format_12">EEEE, dd. MMM</string>
    <string name="desc_time">'Aktuelle Uhrzeit\' + #hour12+\' \'+ifelse(#minute,#minute,\'oclock\')+\', doppeltippen, um die Uhr zu öffnen'</string>
    <string name="weather_type_null">'Keine Daten'</string>
    <string name="weather_type_0">Sonnig</string>
    <string name="weather_type_1">Bewölkt</string>
    <string name="weather_type_2">Dunstig</string>
    <string name="weather_type_3">Neblig</string>
    <string name="weather_type_4">Schwere Gewitter</string>
    <string name="weather_type_5">Regensturm</string>
    <string name="weather_type_6">Sehr starke Regenfälle</string>
    <string name="weather_type_7">Gewitter</string>
    <string name="weather_type_8">Schauer</string>
    <string name="weather_type_9">Starker Regen</string>
    <string name="weather_type_10">Regen</string>
    <string name="weather_type_11">Nieselregen</string>
    <string name="weather_type_12">Schneeregen</string>
    <string name="weather_type_13">Schneesturm</string>
    <string name="weather_type_14">Vereinzelt Schneefall</string>
    <string name="weather_type_15">Starker Schneefall</string>
    <string name="weather_type_16">Schneefall</string>
    <string name="weather_type_17">Leichter Schneefall</string>
    <string name="weather_type_18">Starker Sandsturm</string>
    <string name="weather_type_19">Sandsturm</string>
    <string name="weather_type_20">Leichter Sandsturm</string>
    <string name="weather_type_21">Sandsturm</string>
    <string name="weather_type_22">Hagel</string>
    <string name="weather_type_23">Schwebender Staub</string>
    <string name="weather_type_24">Nebel</string>
    <string name="weather_type_25">Schneeregen</string>
</resources>
PK
     �R�M�=
��  �     strings/strings_lv_LV.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd. MMMM</string>
    <string name="date_time_12">EEE, dd. MMMM</string>
    <string name="desc_date_format">EEEE, dd. MMMM</string>
    <string name="desc_date_format_12">EEEE, dd. MMMM</string>
    <string name="desc_time">'current time\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', pieskarieties divreiz, lai ieietu pulksteņa lietotnē'</string>
    <string name="weather_type_null">'Nav datu'</string>
    <string name="weather_type_0">Skaidrs</string>
    <string name="weather_type_1">Mākoņains</string>
    <string name="weather_type_2">Neskaidrs</string>
    <string name="weather_type_3">Miglains</string>
    <string name="weather_type_4">Stipra vētra ar lietu</string>
    <string name="weather_type_5">Vētra ar lietu</string>
    <string name="weather_type_6">Ļoti spēcīgas lietusgāzes</string>
    <string name="weather_type_7">Pērkona negaiss</string>
    <string name="weather_type_8">Stiprs lietus</string>
    <string name="weather_type_9">Spēcīgas lietusgāzes</string>
    <string name="weather_type_10">Lietus</string>
    <string name="weather_type_11">Smidzina</string>
    <string name="weather_type_12">Slapjdraņķis</string>
    <string name="weather_type_13">Sniega vētra</string>
    <string name="weather_type_14">Vietām sniegs</string>
    <string name="weather_type_15">Spēcīgs sniegputenis</string>
    <string name="weather_type_16">Sniegputenis</string>
    <string name="weather_type_17">Viegls sniegputenis</string>
    <string name="weather_type_18">Spēcīga smilšu vētra</string>
    <string name="weather_type_19">Smilšu vētra</string>
    <string name="weather_type_20">Neliela smilšu vētra</string>
    <string name="weather_type_21">Smilšu vētra</string>
    <string name="weather_type_22">Krusa</string>
    <string name="weather_type_23">Putekļains gaiss</string>
    <string name="weather_type_24">Dūmaka</string>
    <string name="weather_type_25">Atkala</string>
</resources>
PK
     �R�M��9       strings/strings_bo_CN.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">ཟླ M ཚེས d E</string>
    <string name="date_time_12">ཟླ་ M ཚེས་ d ཉིན། Eaa</string>
    <string name="desc_date_format">ཟླ་ M ཚེས་ d E</string>
    <string name="desc_date_format_12">ཟླ་ M ཚེས་ d ཉིན། Eaa</string>
    <string name="desc_time">ifelse(eq(#time_format,0),#hour12,eq(#time_format,1),#hour24,#hour24)+\'点\'+ifelse(gt(#minute,0)*le(#minute,9),0,\'\')+ifelse(#minute,#minute+\'སྐར་མ་\',\'ཏག་ཏག\')+\', ཉིས་རེག་བྱས་ནས་ཆུ་ཚོད་App\'ལ་འཛུལ་བ།</string>
    <string name="desc_weather">\@weather_description+\', \'+#weather_temperature+\'ཏུའུ།\'</string>
    <string name="desc_weather_null">'གནས་སྐབས་སུ་གཞི་གྲངས་མི་འདུག'</string>
    <string name="weather_type_null">'གནས་སྐབས་གཞི་གྲངས་མི་འདུག'</string>
    <string name="weather_type_0">གནམ་དྭངས།</string>
    <string name="weather_type_1">སྤྲིན་མང་།</string>
    <string name="weather_type_2">གནམ་འཐིབས།</string>
    <string name="weather_type_3">སྨུག་པ།</string>
    <string name="weather_type_4">དྲག་ཆར་ཤིན་ཏུ་ཆེན་པོ།</string>
    <string name="weather_type_5">དྲག་ཆར་ཆེན་པོ།</string>
    <string name="weather_type_6">དྲག་ཆར།</string>
    <string name="weather_type_7">འབྲུག་ཆར།</string>
    <string name="weather_type_8">ཐོལ་ཆར།</string>
    <string name="weather_type_9">ཆར་ཆེན།</string>
    <string name="weather_type_10">ཆར་འབྲིང་།</string>
    <string name="weather_type_11">ཆར་ཆུང་།</string>
    <string name="weather_type_12">ཁ་ཆར་འདྲེས་མ།</string>
    <string name="weather_type_13">ཁ་བ་དྲག་པོ།</string>
    <string name="weather_type_14">ཁ་བ་ཡུད་ཙམ་འབབ་པ།</string>
    <string name="weather_type_15">ཁ་བ་ཆེན་པོ།</string>
    <string name="weather_type_16">ཁ་བ་འབྲིང་ཙམ།</string>
    <string name="weather_type_17">ཁ་བ་ཆུང་ཆུང་།</string>
    <string name="weather_type_18">བྱེ་རླུང་འཚུབ་མ་དྲག་པོ།</string>
    <string name="weather_type_19">བྱེ་རླུང་འཚུབ་མ།</string>
    <string name="weather_type_20">བྱེ་རྡུལ།</string>
    <string name="weather_type_21">བྱེ་རླུང་།</string>
    <string name="weather_type_22">སེར་བ།</string>
    <string name="weather_type_23">ཐལ་རྡུལ།</string>
    <string name="weather_type_24">རྡུལ་ཞག</string>
    <string name="weather_type_25">འཁྱགས་ཆར།</string>
</resources>
PK
     �R�M+�
  
     strings/strings_ne_IN.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, dd MMM</string>
    <string name="desc_date_format_12">EEEE, dd MMM</string>
    <string name="desc_time">'हालको समय\' + #hour12+\' \'+ifelse(#minute,#minute,\'oclock\')+\', घडी एप भित्र जान दुईपटक ट्याप गर्नुहोस्'</string>
    <string name="weather_type_null">'डाटा छैन'</string>
    <string name="weather_type_0">खाली गर्नुहोस्</string>
    <string name="weather_type_1">बादल लागेको</string>
    <string name="weather_type_2">धमिलो</string>
    <string name="weather_type_3">तुवाँलो लागेको</string>
    <string name="weather_type_4">तेज तूफान</string>
    <string name="weather_type_5">आँधी</string>
    <string name="weather_type_6">ठुलो भारी बर्षा</string>
    <string name="weather_type_7">चट्याङ्</string>
    <string name="weather_type_8">बर्सा</string>
    <string name="weather_type_9">भारी बर्षा</string>
    <string name="weather_type_10">बर्षा</string>
    <string name="weather_type_11">हल्का बर्षा</string>
    <string name="weather_type_12">असिना सहितको बर्षा</string>
    <string name="weather_type_13">हिमपात</string>
    <string name="weather_type_14">हिमपातको खण्डहरू</string>
    <string name="weather_type_15">भारी हिमपात</string>
    <string name="weather_type_16">हिमपात</string>
    <string name="weather_type_17">हलुका हिमपात</string>
    <string name="weather_type_18">बलियो बालुवाको आँधी</string>
    <string name="weather_type_19">धुलो सहितको तूफान</string>
    <string name="weather_type_20">हलुका धुलो सहितको तूफान</string>
    <string name="weather_type_21">तूफान</string>
    <string name="weather_type_22">असिना</string>
    <string name="weather_type_23">तैरिरहेको फोहोर</string>
    <string name="weather_type_24">तुवाँलो</string>
    <string name="weather_type_25">कठ्याँग्रिने वर्षा</string>
</resources>
PK
     �R�M�:Go  o     strings/strings_en_IN.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, dd MMM</string>
    <string name="desc_date_format_12">EEEE, dd MMM</string>
    <string name="desc_time">'current time\' + #hour12+\' \'+ifelse(#minute,#minute,\'oclock\')+\', double tap to enter clock app'</string>
    <string name="weather_type_null">'No data'</string>
    <string name="weather_type_0">Clear</string>
    <string name="weather_type_1">Cloudy</string>
    <string name="weather_type_2">Hazy</string>
    <string name="weather_type_3">Foggy</string>
    <string name="weather_type_4">Severe rainstorm</string>
    <string name="weather_type_5">Rainstorm</string>
    <string name="weather_type_6">Very heavy rainfall</string>
    <string name="weather_type_7">Thunderstorm</string>
    <string name="weather_type_8">Shower</string>
    <string name="weather_type_9">Heavy rainfall</string>
    <string name="weather_type_10">Rain</string>
    <string name="weather_type_11">Drizzle</string>
    <string name="weather_type_12">Sleet</string>
    <string name="weather_type_13">Snowstorm</string>
    <string name="weather_type_14">Patches of snowfall</string>
    <string name="weather_type_15">Heavy snowfall</string>
    <string name="weather_type_16">Snowfall</string>
    <string name="weather_type_17">Light snowfall</string>
    <string name="weather_type_18">Strong sandstorm</string>
    <string name="weather_type_19">Sandstorm</string>
    <string name="weather_type_20">Light sandstorm</string>
    <string name="weather_type_21">Sandstorm</string>
    <string name="weather_type_22">Hail</string>
    <string name="weather_type_23">Floating Dust</string>
    <string name="weather_type_24">Haze</string>
    <string name="weather_type_25">Freezing rain</string>
</resources>
PK
     �+N�"���  �     strings/strings_bs_BA.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd. MMMM</string>
    <string name="date_time_12">EEE, dd. MMMM</string>
    <string name="desc_date_format">EEEE, dd. MMM.</string>
    <string name="desc_date_format_12">EEEE, dd. MMM.</string>
    <string name="desc_time">'trenutno vrijeme\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', dodirnite dva puta za ulazak u aplikaciju sata'</string>
    <string name="weather_type_null">'Nema podataka'</string>
    <string name="weather_type_0">Vedro</string>
    <string name="weather_type_1">Oblačno</string>
    <string name="weather_type_2">Izmaglica</string>
    <string name="weather_type_3">Maglovito</string>
    <string name="weather_type_4">Jaka kišna oluja</string>
    <string name="weather_type_5">Kišna oluja</string>
    <string name="weather_type_6">Vrlo jake padavine</string>
    <string name="weather_type_7">Oluja sa grmljavinom</string>
    <string name="weather_type_8">Pljusak</string>
    <string name="weather_type_9">Jake padavine</string>
    <string name="weather_type_10">Kiša</string>
    <string name="weather_type_11">Rosulja</string>
    <string name="weather_type_12">Susnježica</string>
    <string name="weather_type_13">Snježna oluja</string>
    <string name="weather_type_14">Nanosi snijega</string>
    <string name="weather_type_15">Jak snijeg</string>
    <string name="weather_type_16">Snijeg</string>
    <string name="weather_type_17">Slab snijeg</string>
    <string name="weather_type_18">Jaka pješčana oluja</string>
    <string name="weather_type_19">Pješčana oluja</string>
    <string name="weather_type_20">Blaga pješčana oluja</string>
    <string name="weather_type_21">Pješčana oluja</string>
    <string name="weather_type_22">Grad</string>
    <string name="weather_type_23">Prašina u vazduhu</string>
    <string name="weather_type_24">Izmaglica</string>
    <string name="weather_type_25">Ledena kiša</string>
</resources>
PK
     �R�M��3�  �     strings/strings_sk_SK.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd. MMMM</string>
    <string name="date_time_12">EEE, dd. MMMM</string>
    <string name="desc_date_format">EEEE, dd. MMM</string>
    <string name="desc_date_format_12">EEEE, dd. MMM</string>
    <string name="desc_time">'aktuálny čas\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', dvojitý dotyk pre spustenie hodín'</string>
    <string name="weather_type_null">'Žiadne údaje'</string>
    <string name="weather_type_0">Jasno</string>
    <string name="weather_type_1">Oblačno</string>
    <string name="weather_type_2">Hmlisto</string>
    <string name="weather_type_3">Hmlisto</string>
    <string name="weather_type_4">Silná búrka</string>
    <string name="weather_type_5">Búrka</string>
    <string name="weather_type_6">Veľmi silný lejak</string>
    <string name="weather_type_7">Búrka</string>
    <string name="weather_type_8">Prehánky</string>
    <string name="weather_type_9">Silný dážď</string>
    <string name="weather_type_10">Dážď</string>
    <string name="weather_type_11">Mrholenie</string>
    <string name="weather_type_12">Dážď so snehom</string>
    <string name="weather_type_13">Snehová búrka</string>
    <string name="weather_type_14">Sneženie</string>
    <string name="weather_type_15">Husté sneženie</string>
    <string name="weather_type_16">Sneženie</string>
    <string name="weather_type_17">Slabé sneženie</string>
    <string name="weather_type_18">Silná piesočná búrka</string>
    <string name="weather_type_19">Piesočná búrka</string>
    <string name="weather_type_20">Slabá piesočná búrka</string>
    <string name="weather_type_21">Piesočná búrka</string>
    <string name="weather_type_22">Krupobitie</string>
    <string name="weather_type_23">Prašno</string>
    <string name="weather_type_24">Hmla</string>
    <string name="weather_type_25">Mrznúci dážď</string>
</resources>
PK
     �R�MW3fp       strings/strings_ha_NG.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, dd MMM</string>
    <string name="desc_date_format_12">EEEE, dd MMM</string>
    <string name="desc_time">'loakaci na yanzu\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', taɓa sau biyu ka shiga manhajar agogo'</string>
    <string name="weather_type_null">'Babu bayanai'</string>
    <string name="weather_type_0">Sama ta washe</string>
    <string name="weather_type_1">Akwai girgije</string>
    <string name="weather_type_2">Hazo</string>
    <string name="weather_type_3">Hazo so sai</string>
    <string name="weather_type_4">Ruwa da iska mai tsanani</string>
    <string name="weather_type_5">Ruwa da iska</string>
    <string name="weather_type_6">Ruwa mai yawan gaske</string>
    <string name="weather_type_7">Tsawa da iska</string>
    <string name="weather_type_8">Ruwan sama mai tsanani</string>
    <string name="weather_type_9">Ruwa mai yawa</string>
    <string name="weather_type_10">Ruwan sama</string>
    <string name="weather_type_11">Yayyafi</string>
    <string name="weather_type_12">Garin kankara da ruwa</string>
    <string name="weather_type_13">Garin kankara da iska</string>
    <string name="weather_type_14">Faduwar garin kankara</string>
    <string name="weather_type_15">Garin kankara mai yawa</string>
    <string name="weather_type_16">Garin kankara</string>
    <string name="weather_type_17">Yayyafin garin kankara</string>
    <string name="weather_type_18">Iska da rairai mai tsanani</string>
    <string name="weather_type_19">Iska da rairai</string>
    <string name="weather_type_20">Yayyafin rairai</string>
    <string name="weather_type_21">Iska da rairai</string>
    <string name="weather_type_22">Ƙanƙara</string>
    <string name="weather_type_23">Bambarowar Kura</string>
    <string name="weather_type_24">Hazo</string>
    <string name="weather_type_25">Ruwan sama mai daskarewa</string>
</resources>
PK
     yJM��BK       strings/strings_zh_CN.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">M月d日 E</string>
    <string name="date_time_12">M月d日 Eaa</string>
    <string name="desc_date_format">M月d日 E</string>
    <string name="desc_date_format_12">M月d日 Eaa</string>
    <string name="desc_time">ifelse(eq(#time_format,0),#hour12,eq(#time_format,1),#hour24,#hour24)+'点'+ifelse(gt(#minute,0)*le(#minute,9),0,'')+ifelse(#minute,#minute+'分','整')+', 双击进入时钟App'</string>
	<string name="desc_weather">@weather_description+', '+#weather_temperature+'度'</string>
    <string name="desc_weather_null">'点击获取天气数据'</string>
	<string name="weather_type_null">'点击获取天气数据'</string>
	<string name="weather_type_0">晴</string>
    <string name="weather_type_1">多云</string>
    <string name="weather_type_2">阴</string>
    <string name="weather_type_3">雾</string>
    <string name="weather_type_4">特大暴雨</string>
    <string name="weather_type_5">大暴雨</string>
    <string name="weather_type_6">暴雨</string>
    <string name="weather_type_7">雷阵雨</string>
    <string name="weather_type_8">阵雨</string>
    <string name="weather_type_9">大雨</string>
    <string name="weather_type_10">中雨</string>
    <string name="weather_type_11">小雨</string>
    <string name="weather_type_12">雨夹雪</string>
    <string name="weather_type_13">暴雪</string>
    <string name="weather_type_14">阵雪</string>
    <string name="weather_type_15">大雪</string>
    <string name="weather_type_16">中雪</string>
    <string name="weather_type_17">小雪</string>
    <string name="weather_type_18">强沙尘暴</string>
    <string name="weather_type_19">沙尘暴</string>
    <string name="weather_type_20">沙尘</string>
    <string name="weather_type_21">扬沙</string>
    <string name="weather_type_22">冰雹</string>
    <string name="weather_type_23">浮尘</string>
    <string name="weather_type_24">霾</string>
    <string name="weather_type_25">冻雨</string>
</resources>
PK
     �R�MZ�$ڪ
  �
     strings/strings_te_IN.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, dd MMM</string>
    <string name="desc_date_format_12">EEEE, dd MMM</string>
    <string name="desc_time">'ప్రస్తుత సమయం\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', గడియార అప్లికేషన్‌లో ప్రవేశించేందుకు రెండుసార్లు నొక్కండి'</string>
    <string name="weather_type_null">'డేటా లేదు'</string>
    <string name="weather_type_0">నిర్మలంగా ఉంది</string>
    <string name="weather_type_1">మేఘావృతంగా ఉంటుంది</string>
    <string name="weather_type_2">మసక</string>
    <string name="weather_type_3">పొగమంచు</string>
    <string name="weather_type_4">తీవ్రమైన గాలివాన</string>
    <string name="weather_type_5">గాలివాన</string>
    <string name="weather_type_6">అత్యంత భారీ వర్షపాతం</string>
    <string name="weather_type_7">ఉరుములతో కూడిన గాలివాన</string>
    <string name="weather_type_8">వానజల్లు</string>
    <string name="weather_type_9">భారీ వర్షపాతం</string>
    <string name="weather_type_10">వర్షం</string>
    <string name="weather_type_11">చినుకులు</string>
    <string name="weather_type_12">మంచు వాన</string>
    <string name="weather_type_13">మంచు తుఫాను</string>
    <string name="weather_type_14">హిమపాతం పొగమంచు</string>
    <string name="weather_type_15">భారీ హిమపాతం</string>
    <string name="weather_type_16">హిమపాతం</string>
    <string name="weather_type_17">తేలికపాటి హిమపాతం</string>
    <string name="weather_type_18">భారీ ఇసుక తుఫాను</string>
    <string name="weather_type_19">ఇసుక తుఫాను</string>
    <string name="weather_type_20">తేలికపాటి ఇసుక తుఫాను</string>
    <string name="weather_type_21">ఇసుక తుఫాను</string>
    <string name="weather_type_22">వడగళ్లు</string>
    <string name="weather_type_23">తేలియాడే దుమ్ముధూళి</string>
    <string name="weather_type_24">పొగమంచు</string>
    <string name="weather_type_25">మంచుగడ్డల వర్షం</string>
</resources>
PK
     �yJM��qK^  ^     strings/strings.xml<?xml version="1.0" encoding="utf-8"?>
<resources> 
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, MMM dd</string>
    <string name="desc_date_format_12">EEEE, MMM dd</string>
    <string name="desc_time">'current time' + #hour12+' '+ifelse(#minute,#minute,'oclock')+', double tap to enter clock app'</string>
	<string name="weather_type_null">' '</string>
	<string name="weather_type_0">Clear</string>
    <string name="weather_type_1">Cloudy</string>
    <string name="weather_type_2">Hazy</string>
    <string name="weather_type_3">Foggy</string>
    <string name="weather_type_4">Severe rainstorm</string>
    <string name="weather_type_5">Rainstorm</string>
    <string name="weather_type_6">Very heavy rainfall</string>
    <string name="weather_type_7">Thunderstorm</string>
    <string name="weather_type_8">Shower</string>
    <string name="weather_type_9">Heavy rainfall</string>
    <string name="weather_type_10">Rain</string>
    <string name="weather_type_11">Drizzle</string>
    <string name="weather_type_12">Sleet</string>
    <string name="weather_type_13">Snowstorm</string>
    <string name="weather_type_14">Patches of snowfall</string>
    <string name="weather_type_15">Heavy snowfall</string>
    <string name="weather_type_16">Snowfall</string>
    <string name="weather_type_17">Light snowfall</string>
    <string name="weather_type_18">Strong sandstorm</string>
    <string name="weather_type_19">Sandstorm</string>
    <string name="weather_type_20">Light sandstorm</string>
    <string name="weather_type_21">Sandstorm</string>
    <string name="weather_type_22">Hail</string>
    <string name="weather_type_23">Floating Dust</string>
    <string name="weather_type_24">Haze</string>
    <string name="weather_type_25">Freezing rain</string>
</resources>
PK
     �R�M]4�lx  x     strings/strings_sv_SE.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, dd MMM</string>
    <string name="desc_date_format_12">EEEE, dd MMM</string>
    <string name="desc_time">'nuvarande tid\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', dubbeltryck för att starta klockappen'</string>
    <string name="weather_type_null">'Ingen data'</string>
    <string name="weather_type_0">Klar</string>
    <string name="weather_type_1">Molnigt</string>
    <string name="weather_type_2">Disigt</string>
    <string name="weather_type_3">Dimmigt</string>
    <string name="weather_type_4">Kraftig regnstorm</string>
    <string name="weather_type_5">Regnstorm</string>
    <string name="weather_type_6">Väldigt kraftigt regn</string>
    <string name="weather_type_7">Åskväder</string>
    <string name="weather_type_8">Skur</string>
    <string name="weather_type_9">Kraftigt regn</string>
    <string name="weather_type_10">Regn</string>
    <string name="weather_type_11">Duggregn</string>
    <string name="weather_type_12">Slask</string>
    <string name="weather_type_13">Snöstorm</string>
    <string name="weather_type_14">Bitvis snöfall</string>
    <string name="weather_type_15">Kraftigt snöfall</string>
    <string name="weather_type_16">Snöfall</string>
    <string name="weather_type_17">Lätt snöfall</string>
    <string name="weather_type_18">Kraftig sandstorm</string>
    <string name="weather_type_19">Sandstorm</string>
    <string name="weather_type_20">Mild sandstorm</string>
    <string name="weather_type_21">Sandstorm</string>
    <string name="weather_type_22">Hagel</string>
    <string name="weather_type_23">Flygande damm</string>
    <string name="weather_type_24">Dis</string>
    <string name="weather_type_25">Nedkylt regn</string>
</resources>
PK
     �R�MvW��  �     strings/strings_me_ME.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, dd MMM</string>
    <string name="desc_date_format_12">EEEE, dd MMM</string>
    <string name="desc_time">'trenutno vrijeme\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', dodirnite dva puta za ulazak u aplikaciju sata'</string>
    <string name="weather_type_null">'Nema podataka'</string>
    <string name="weather_type_0">Vedro</string>
    <string name="weather_type_1">Oblačno</string>
    <string name="weather_type_2">Izmaglica</string>
    <string name="weather_type_3">Maglovito</string>
    <string name="weather_type_4">Jako nevrijeme</string>
    <string name="weather_type_5">Kišno nevrijeme</string>
    <string name="weather_type_6">Veoma jak pljusak</string>
    <string name="weather_type_7">Oluja sa grmljavinom</string>
    <string name="weather_type_8">Pljusak</string>
    <string name="weather_type_9">Jak pljusak</string>
    <string name="weather_type_10">Kiša</string>
    <string name="weather_type_11">Lagana kiša</string>
    <string name="weather_type_12">Poledica</string>
    <string name="weather_type_13">Snježna oluja</string>
    <string name="weather_type_14">Nanosi snijega</string>
    <string name="weather_type_15">Jak snijeg</string>
    <string name="weather_type_16">Snijeg</string>
    <string name="weather_type_17">Lagan snijeg</string>
    <string name="weather_type_18">Jaka pješčana oluja</string>
    <string name="weather_type_19">Pješčana oluja</string>
    <string name="weather_type_20">Lagana pješčana oluja</string>
    <string name="weather_type_21">Pješčana oluja</string>
    <string name="weather_type_22">Grad</string>
    <string name="weather_type_23">Prašina u vazduhu</string>
    <string name="weather_type_24">Izmaglica</string>
    <string name="weather_type_25">Ledena kiša</string>
</resources>
PK
     �R�M���Ws
  s
     strings/strings_ug_CN.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">M -ئاينىڭ d -كۈنى E</string>
    <string name="date_time_12">M-ئاينىڭ d-كۈنى Eaa</string>
    <string name="desc_date_format">M ـ ئاينىڭ d ـ كۈنى EEEE</string>
    <string name="desc_date_format_12">M-ئاينىڭ d-كۈنى Eaa</string>
    <string name="desc_time">#hour+\'دىن\'+ifelse(#minute,#minute+\'مىنۇت\',\'ئۆتتى\')+\', \'+int(#month+1)+\'-ئاينىڭ\'+#date+\'-كۈنى\'+\', \'+\'ھەپتىگە\'+int(#day_of_week-1)+\', \'+#weather_temperature+\'سېلسىيە گرادۇس\'+\', \'+@weather_description</string>
    <string name="desc_weather">\@weather_description+\', \'+#weather_temperature+\' گرادۇس\'</string>
    <string name="desc_weather_null">'سانلىق مەلۇمات يوق'</string>
    <string name="weather_type_null">'سانلىق مەلۇمات يوق'</string>
    <string name="weather_type_0">ئوچۇق</string>
    <string name="weather_type_1">بۇلۇتلۇق</string>
    <string name="weather_type_2">تۇتۇق</string>
    <string name="weather_type_3">تۇمانلىق</string>
    <string name="weather_type_4">ئالاھىدە چوڭ قارا يامغۇر</string>
    <string name="weather_type_5">چوڭ قارا يامغۇر</string>
    <string name="weather_type_6">قاتتىق يامغۇر</string>
    <string name="weather_type_7">گۈلدۈرماملىق ئۆتكۈنچى يامغۇر</string>
    <string name="weather_type_8">مەزگىللىك يامغۇر</string>
    <string name="weather_type_9">چوڭ يامغۇر</string>
    <string name="weather_type_10">ئوتتۇر ھال يامغۇر</string>
    <string name="weather_type_11">ئازراق يامغۇر</string>
    <string name="weather_type_12">يامغۇر ئارىلاش قار</string>
    <string name="weather_type_13">دەھشەت قار</string>
    <string name="weather_type_14">ئۆتكۈنچى قار</string>
    <string name="weather_type_15">چوڭ قار</string>
    <string name="weather_type_16">ئوتتۇرا ھال قار</string>
    <string name="weather_type_17">ئازراق قار</string>
    <string name="weather_type_18">كۈچلۈك قۇم بوران</string>
    <string name="weather_type_19">قۇم بوران</string>
    <string name="weather_type_20">قۇم</string>
    <string name="weather_type_21">قۇم ئۇچۇش</string>
    <string name="weather_type_22">مۆلدۈر</string>
    <string name="weather_type_23">چاڭ توزان</string>
    <string name="weather_type_24">تۈتەك</string>
    <string name="weather_type_25">توڭ يامغۇر</string>
</resources>
PK
     �R�M���wD	  D	     strings/strings_el_GR.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, dd MMM</string>
    <string name="desc_date_format_12">EEEE, dd MMM</string>
    <string name="desc_time">'τρέχουσα ώρα\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', διπλό άγγιγμα για άνοιγμα εφαρμογής ρολογιού'</string>
    <string name="weather_type_null">'Δεν υπάρχουν δεδομένα'</string>
    <string name="weather_type_0">Αίθριος</string>
    <string name="weather_type_1">Συνvεφιασμένος</string>
    <string name="weather_type_2">Αιθαλομίχλη</string>
    <string name="weather_type_3">Ομιχλώδης</string>
    <string name="weather_type_4">Έντονη νεροποντή</string>
    <string name="weather_type_5">Καταιγίδα</string>
    <string name="weather_type_6">Πολύ έντονη βροχόπτωση</string>
    <string name="weather_type_7">Καταιγίδα με κεραυνούς</string>
    <string name="weather_type_8">Μπόρα</string>
    <string name="weather_type_9">Έντονη βροχόπτωση</string>
    <string name="weather_type_10">Βροχή</string>
    <string name="weather_type_11">Ψιλόβροχο</string>
    <string name="weather_type_12">Χιονόνερο</string>
    <string name="weather_type_13">Χιονοθύελλα</string>
    <string name="weather_type_14">Νιφάδες χιονιού</string>
    <string name="weather_type_15">Έντονη χιονόπτωση</string>
    <string name="weather_type_16">Χιονόπτωση</string>
    <string name="weather_type_17">Ασθενής χιονόπτωση</string>
    <string name="weather_type_18">Έντονη αμμοθύελλα</string>
    <string name="weather_type_19">Αμμοθύελλα</string>
    <string name="weather_type_20">Ασθενής αμμοθύελλα</string>
    <string name="weather_type_21">Αμμοθύελλα</string>
    <string name="weather_type_22">Χαλάζι</string>
    <string name="weather_type_23">Αιωρούμενη σκόνη</string>
    <string name="weather_type_24">Καταχνιά</string>
    <string name="weather_type_25">Παγωμένη βροχή</string>
</resources>
PK
     �+N���>x  x     strings/strings_hr_HR.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd. MMMM</string>
    <string name="date_time_12">EEE, dd. MMMM</string>
    <string name="desc_date_format">EEEE, dd. MMM</string>
    <string name="desc_date_format_12">EEEE, dd. MMM</string>
    <string name="desc_time">'trenutno vrijeme\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', dodirnite dva puta za prikaz sata'</string>
    <string name="weather_type_null">'Nema podataka'</string>
    <string name="weather_type_0">Vedro</string>
    <string name="weather_type_1">Oblačno</string>
    <string name="weather_type_2">Maglovito</string>
    <string name="weather_type_3">Maglovito</string>
    <string name="weather_type_4">Jaka kiša</string>
    <string name="weather_type_5">Kišna oluja</string>
    <string name="weather_type_6">Pljusak</string>
    <string name="weather_type_7">Oluja</string>
    <string name="weather_type_8">Pljusak</string>
    <string name="weather_type_9">Teška kiša</string>
    <string name="weather_type_10">Kiša</string>
    <string name="weather_type_11">Slaba kiša</string>
    <string name="weather_type_12">Kiša s snijegom</string>
    <string name="weather_type_13">Mećava</string>
    <string name="weather_type_14">Nanosi snijega</string>
    <string name="weather_type_15">Snijeg</string>
    <string name="weather_type_16">Snijeg</string>
    <string name="weather_type_17">Snijeg</string>
    <string name="weather_type_18">Pješčana oluja</string>
    <string name="weather_type_19">Pješčana oluja</string>
    <string name="weather_type_20">Pješčana oluja</string>
    <string name="weather_type_21">Pješčana oluja</string>
    <string name="weather_type_22">Tuča</string>
    <string name="weather_type_23">Prašina</string>
    <string name="weather_type_24">Ledena kiša</string>
    <string name="weather_type_25">Ledena kiša</string>
</resources>
PK
     �R�M2k��_  _     strings/strings_nb_NO.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE d. MMMM</string>
    <string name="date_time_12">EEE d. MMMM</string>
    <string name="desc_date_format">EEEE d. MMM</string>
    <string name="desc_date_format_12">EEEE d. MMM</string>
    <string name="desc_time">'nåværende tid\' + #hour12+\' \'+ifelse(#minute,#minute,\'oclock\')+\', trykk dobbelt for å gå til klokke-appen'</string>
    <string name="weather_type_null">'Ingen data'</string>
    <string name="weather_type_0">Klart</string>
    <string name="weather_type_1">Skyet</string>
    <string name="weather_type_2">Disig</string>
    <string name="weather_type_3">Tåke</string>
    <string name="weather_type_4">Regnstorm</string>
    <string name="weather_type_5">Regnvær</string>
    <string name="weather_type_6">Tungt regnvær</string>
    <string name="weather_type_7">Torden</string>
    <string name="weather_type_8">Regn</string>
    <string name="weather_type_9">Kraftig nedbør</string>
    <string name="weather_type_10">Regn</string>
    <string name="weather_type_11">Yr</string>
    <string name="weather_type_12">Slaps</string>
    <string name="weather_type_13">Snøstorm</string>
    <string name="weather_type_14">Noe snøfall</string>
    <string name="weather_type_15">Tungt snøfall</string>
    <string name="weather_type_16">Snøfall</string>
    <string name="weather_type_17">Lett snøfall</string>
    <string name="weather_type_18">Kraftig sandstorm</string>
    <string name="weather_type_19">Sandstorm</string>
    <string name="weather_type_20">Lett sandstorm</string>
    <string name="weather_type_21">Sandstorm</string>
    <string name="weather_type_22">Hagl</string>
    <string name="weather_type_23">Flytende støv</string>
    <string name="weather_type_24">Dis</string>
    <string name="weather_type_25">Underkjølt regn</string>
</resources>
PK
     �R�M����  �     strings/strings_pt_PT.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd \'de\' MMMM</string>
    <string name="date_time_12">EEE, dd \'de\' MMMM</string>
    <string name="desc_date_format">EEEE, d \'de\' MMMM</string>
    <string name="desc_date_format_12">EEEE, d \'de\' MMMM</string>
    <string name="desc_time">'hora atual\' + #hour24+\' \'+ifelse(#minute,#minute,\'\')+\', toque duas vezes para abrir o relógio'</string>
    <string name="weather_type_null">'Sem dados'</string>
    <string name="weather_type_0">Céu limpo</string>
    <string name="weather_type_1">Nublado</string>
    <string name="weather_type_2">Nebuloso</string>
    <string name="weather_type_3">Nebuloso</string>
    <string name="weather_type_4">Tempestade severa</string>
    <string name="weather_type_5">Tempestade chuvosa</string>
    <string name="weather_type_6">Chuva muito forte</string>
    <string name="weather_type_7">Trovoada</string>
    <string name="weather_type_8">Aguaceiros</string>
    <string name="weather_type_9">Chuvas fortes</string>
    <string name="weather_type_10">Chuva</string>
    <string name="weather_type_11">Chuviscos</string>
    <string name="weather_type_12">Chuva com neve</string>
    <string name="weather_type_13">Nevão</string>
    <string name="weather_type_14">Períodos de queda de neve</string>
    <string name="weather_type_15">Nevão</string>
    <string name="weather_type_16">Queda de neve</string>
    <string name="weather_type_17">Ligeira queda de neve</string>
    <string name="weather_type_18">Forte tempestade de areia</string>
    <string name="weather_type_19">Tempestade de areia</string>
    <string name="weather_type_20">Ligeira tempestade de areia</string>
    <string name="weather_type_21">Tempestade de areia</string>
    <string name="weather_type_22">Granizo</string>
    <string name="weather_type_23">Poeiras</string>
    <string name="weather_type_24">Neblina</string>
    <string name="weather_type_25">Chuva gelada</string>
</resources>
PK
     �R�M����  �     strings/strings_fi_FI.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEEE d. MMMM</string>
    <string name="date_time_12">EEEE d. MMMM</string>
    <string name="desc_date_format">EEEE d. MMMM</string>
    <string name="desc_date_format_12">EEEE d. MMMM</string>
    <string name="desc_time">'nykyinen aika\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', tupla-napauta kello-sovellukseen'</string>
    <string name="weather_type_null">'Ei dataa'</string>
    <string name="weather_type_0">Selkeää</string>
    <string name="weather_type_1">Pilvinen</string>
    <string name="weather_type_2">Usvainen</string>
    <string name="weather_type_3">Sumuinen</string>
    <string name="weather_type_4">Kova rankkasade</string>
    <string name="weather_type_5">Rankkasade</string>
    <string name="weather_type_6">Kova sade</string>
    <string name="weather_type_7">Ukonilma</string>
    <string name="weather_type_8">Sataa</string>
    <string name="weather_type_9">Kova sade</string>
    <string name="weather_type_10">Sateinen</string>
    <string name="weather_type_11">Tihkusade</string>
    <string name="weather_type_12">Räntä</string>
    <string name="weather_type_13">Lumimyrsky</string>
    <string name="weather_type_14">Lumisadekuuro</string>
    <string name="weather_type_15">Rankka lumisade</string>
    <string name="weather_type_16">Lumisade</string>
    <string name="weather_type_17">Kevyt lumisade</string>
    <string name="weather_type_18">Kova hiekkamyrsky</string>
    <string name="weather_type_19">Hiekkamyrsky</string>
    <string name="weather_type_20">Kevyt hiekkamyrsky</string>
    <string name="weather_type_21">Hiekkamyrsky</string>
    <string name="weather_type_22">Raekuuro</string>
    <string name="weather_type_23">Leijailevaa pölyä</string>
    <string name="weather_type_24">Usva</string>
    <string name="weather_type_25">Jäätävä sade</string>
</resources>
PK
     �R�M�vY��  �     strings/strings_pt_BR.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd \'de\' MMMM</string>
    <string name="date_time_12">EEE, dd \'de\' MMMM</string>
    <string name="desc_date_format">EEEE, d \'de\' MMMM</string>
    <string name="desc_date_format_12">EEEE, d \'de\' MMMM</string>
    <string name="desc_time">'hora atual\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', toque duas vezes para abrir o app relógio'</string>
    <string name="weather_type_null">'Nenhum dado'</string>
    <string name="weather_type_0">Limpo</string>
    <string name="weather_type_1">Nublado</string>
    <string name="weather_type_2">Nublado</string>
    <string name="weather_type_3">Névoa</string>
    <string name="weather_type_4">Chuva forte</string>
    <string name="weather_type_5">Tempestade chuvosa</string>
    <string name="weather_type_6">Chuva muito intensa</string>
    <string name="weather_type_7">Tempestade</string>
    <string name="weather_type_8">Chuva</string>
    <string name="weather_type_9">Chuva intensa</string>
    <string name="weather_type_10">Chuva</string>
    <string name="weather_type_11">Garoa</string>
    <string name="weather_type_12">Granizo</string>
    <string name="weather_type_13">Tempestade de neve</string>
    <string name="weather_type_14">Queda de neve esparsa</string>
    <string name="weather_type_15">Queda de neve intensa</string>
    <string name="weather_type_16">Queda de neve</string>
    <string name="weather_type_17">Queda de neve fraca</string>
    <string name="weather_type_18">Forte tempestade de areia</string>
    <string name="weather_type_19">Tempestade de areia</string>
    <string name="weather_type_20">Leve tempestade de areia</string>
    <string name="weather_type_21">Tempestade de areia</string>
    <string name="weather_type_22">Granizo</string>
    <string name="weather_type_23">Poeira</string>
    <string name="weather_type_24">Nevoeiro</string>
    <string name="weather_type_25">Chuva congelada</string>
</resources>
PK
     �R�M�:Go  o     strings/strings_en_GB.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, dd MMM</string>
    <string name="desc_date_format_12">EEEE, dd MMM</string>
    <string name="desc_time">'current time\' + #hour12+\' \'+ifelse(#minute,#minute,\'oclock\')+\', double tap to enter clock app'</string>
    <string name="weather_type_null">'No data'</string>
    <string name="weather_type_0">Clear</string>
    <string name="weather_type_1">Cloudy</string>
    <string name="weather_type_2">Hazy</string>
    <string name="weather_type_3">Foggy</string>
    <string name="weather_type_4">Severe rainstorm</string>
    <string name="weather_type_5">Rainstorm</string>
    <string name="weather_type_6">Very heavy rainfall</string>
    <string name="weather_type_7">Thunderstorm</string>
    <string name="weather_type_8">Shower</string>
    <string name="weather_type_9">Heavy rainfall</string>
    <string name="weather_type_10">Rain</string>
    <string name="weather_type_11">Drizzle</string>
    <string name="weather_type_12">Sleet</string>
    <string name="weather_type_13">Snowstorm</string>
    <string name="weather_type_14">Patches of snowfall</string>
    <string name="weather_type_15">Heavy snowfall</string>
    <string name="weather_type_16">Snowfall</string>
    <string name="weather_type_17">Light snowfall</string>
    <string name="weather_type_18">Strong sandstorm</string>
    <string name="weather_type_19">Sandstorm</string>
    <string name="weather_type_20">Light sandstorm</string>
    <string name="weather_type_21">Sandstorm</string>
    <string name="weather_type_22">Hail</string>
    <string name="weather_type_23">Floating Dust</string>
    <string name="weather_type_24">Haze</string>
    <string name="weather_type_25">Freezing rain</string>
</resources>
PK
     �R�M����  �     strings/strings_es_US.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd \'de\' MMMM</string>
    <string name="date_time_12">EEE, dd \'de\' MMMM</string>
    <string name="desc_date_format">EEEE, MMM dd</string>
    <string name="desc_date_format_12">EEEE, MMM dd</string>
    <string name="desc_time">'hora actual\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', toque dos veces para abrir la aplicación del reloj'</string>
    <string name="weather_type_null">'Sin datos'</string>
    <string name="weather_type_0">Despejado</string>
    <string name="weather_type_1">Nublado</string>
    <string name="weather_type_2">Bruma</string>
    <string name="weather_type_3">Niebla</string>
    <string name="weather_type_4">Tormenta severa</string>
    <string name="weather_type_5">Tormenta</string>
    <string name="weather_type_6">Lluvia muy intensa</string>
    <string name="weather_type_7">Tormenta eléctrica</string>
    <string name="weather_type_8">Chubascos</string>
    <string name="weather_type_9">Lluvia intensa</string>
    <string name="weather_type_10">Lluvia</string>
    <string name="weather_type_11">Llovizna</string>
    <string name="weather_type_12">Aguanieve</string>
    <string name="weather_type_13">Tormenta de nieve</string>
    <string name="weather_type_14">Nevada intermitente</string>
    <string name="weather_type_15">Nevada intensa</string>
    <string name="weather_type_16">Nevada</string>
    <string name="weather_type_17">Nevada ligera</string>
    <string name="weather_type_18">Tormenta de arena intensa</string>
    <string name="weather_type_19">Tormenta de arena</string>
    <string name="weather_type_20">Tormenta de arena ligera</string>
    <string name="weather_type_21">Tormenta de arena</string>
    <string name="weather_type_22">Granizo</string>
    <string name="weather_type_23">Polvo</string>
    <string name="weather_type_24">Neblina</string>
    <string name="weather_type_25">Lluvia gélida</string>
</resources>
PK
     �R�M�J�G1
  1
     strings/strings_ka_GE.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, MMMM dd</string>
    <string name="date_time_12">EEE, MMMM dd</string>
    <string name="desc_date_format">EEEE, MMM dd</string>
    <string name="desc_date_format_12">EEEE, MMM dd</string>
    <string name="desc_time">'მიმდინარე დრო\' + #hour12+\' \'+ifelse(#minute,#minute,\'oclock\')+\', ორჯერ შეეხეთ საათის აპლიკაციაში შესასვლელად'</string>
    <string name="weather_type_null">'მონაცემები არ არის'</string>
    <string name="weather_type_0">მოწმენდილი</string>
    <string name="weather_type_1">მოღრუბლული</string>
    <string name="weather_type_2">ნისლიანი</string>
    <string name="weather_type_3">ნისლიანი</string>
    <string name="weather_type_4">წვიმიანი შტორმი</string>
    <string name="weather_type_5">თავსხმა წვიმა შტორმით</string>
    <string name="weather_type_6">კოკისპირული წვიმა</string>
    <string name="weather_type_7">ჭექა-ქუხილი</string>
    <string name="weather_type_8">შხაპუნა წვიმა</string>
    <string name="weather_type_9">ძლიერი წვიმა</string>
    <string name="weather_type_10">წვიმა</string>
    <string name="weather_type_11">ჟინჟვლა</string>
    <string name="weather_type_12">თოვლჭყაპი</string>
    <string name="weather_type_13">ქარბუქი</string>
    <string name="weather_type_14">თოვა</string>
    <string name="weather_type_15">ძლიერი თოვლი</string>
    <string name="weather_type_16">თოვლი</string>
    <string name="weather_type_17">მცირე თოვლი</string>
    <string name="weather_type_18">ძლიერი ქარბორბალა</string>
    <string name="weather_type_19">ქარბორბალა</string>
    <string name="weather_type_20">მცირე ქარბორბალა</string>
    <string name="weather_type_21">ქარბორბალა</string>
    <string name="weather_type_22">სეტყვა</string>
    <string name="weather_type_23">მოფარფატე მტვერი</string>
    <string name="weather_type_24">ნისლი</string>
    <string name="weather_type_25">წვიმა ყინვით</string>
</resources>
PK
     �R�Mt�D�  �     strings/strings_ko_KR.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">M월d일 EEE</string>
    <string name="date_time_12">M월d일 EEE</string>
    <string name="desc_date_format">M월d일 EEEE</string>
    <string name="desc_date_format_12">M월d일 EEEE</string>
    <string name="desc_time">'현재 시간\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', 시계 앱을 실행하려면 두 번 탭하십시오.'</string>
    <string name="weather_type_null">'데이터 없음'</string>
    <string name="weather_type_0">맑음</string>
    <string name="weather_type_1">흐림</string>
    <string name="weather_type_2">연무</string>
    <string name="weather_type_3">안개</string>
    <string name="weather_type_4">집중 호우</string>
    <string name="weather_type_5">폭풍우</string>
    <string name="weather_type_6">집중 폭우</string>
    <string name="weather_type_7">뇌우</string>
    <string name="weather_type_8">소나기</string>
    <string name="weather_type_9">집중 호우</string>
    <string name="weather_type_10">비</string>
    <string name="weather_type_11">이슬비</string>
    <string name="weather_type_12">진눈깨비</string>
    <string name="weather_type_13">눈보라</string>
    <string name="weather_type_14">곳에 따라 강설</string>
    <string name="weather_type_15">폭설</string>
    <string name="weather_type_16">강설</string>
    <string name="weather_type_17">약한 강설</string>
    <string name="weather_type_18">강한 모래폭풍</string>
    <string name="weather_type_19">모래폭풍</string>
    <string name="weather_type_20">약한 모래폭풍</string>
    <string name="weather_type_21">모래폭풍</string>
    <string name="weather_type_22">우박</string>
    <string name="weather_type_23">미세먼지</string>
    <string name="weather_type_24">실안개</string>
    <string name="weather_type_25">얼음비</string>
</resources>
PK
     �R�M�e���  �     strings/strings_vi_VN.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, dd MMM</string>
    <string name="desc_date_format_12">EEEE, dd MMM</string>
    <string name="desc_time">'thời gian hiện tại\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', nhấp đúp để vào ứng dụng đồng hồ'</string>
    <string name="weather_type_null">'Không có dữ liệu'</string>
    <string name="weather_type_0">Quang</string>
    <string name="weather_type_1">Nhiều mây</string>
    <string name="weather_type_2">Âm u</string>
    <string name="weather_type_3">Sương mù</string>
    <string name="weather_type_4">Mưa bão dữ dội</string>
    <string name="weather_type_5">Mưa bão</string>
    <string name="weather_type_6">Mưa rất lớn</string>
    <string name="weather_type_7">Dông</string>
    <string name="weather_type_8">Mưa nặng hạt</string>
    <string name="weather_type_9">Mưa lớn</string>
    <string name="weather_type_10">Mưa vừa</string>
    <string name="weather_type_11">Mưa phùn</string>
    <string name="weather_type_12">Mưa tuyết</string>
    <string name="weather_type_13">Bão tuyết</string>
    <string name="weather_type_14">Tuyết rơi dữ dội</string>
    <string name="weather_type_15">Tuyết rơi dày</string>
    <string name="weather_type_16">Tuyết rơi</string>
    <string name="weather_type_17">Tuyết rơi nhẹ</string>
    <string name="weather_type_18">Bão cát mạnh</string>
    <string name="weather_type_19">Bão cát</string>
    <string name="weather_type_20">Bão cát nhẹ</string>
    <string name="weather_type_21">Bão cát</string>
    <string name="weather_type_22">Mưa đá</string>
    <string name="weather_type_23">Bụi</string>
    <string name="weather_type_24">Sương mù</string>
    <string name="weather_type_25">Băng tuyết</string>
</resources>
PK
     �R�MJC�o  o     strings/strings_my_MM.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, MMMM dd</string>
    <string name="date_time_12">EEE, MMMM dd</string>
    <string name="desc_date_format">EEEE, MMM dd</string>
    <string name="desc_date_format_12">EEEE, MMM dd</string>
    <string name="desc_time">'လက်ရှိအချိန်\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', နာရီအက်ပ်သို့ ဝင်ရန် နှစ်ချက်ထိနှိပ်ပါ'</string>
    <string name="weather_type_null">'ဒေတာ မရှိပါ'</string>
    <string name="weather_type_0">နေသာသော</string>
    <string name="weather_type_1">တိမ်ထူသော</string>
    <string name="weather_type_2">မြူဆိုင်းသော</string>
    <string name="weather_type_3">မြူဆိုင်းသော</string>
    <string name="weather_type_4">ပြင်းထန်သော မိုးလေမုန်တိုင်း</string>
    <string name="weather_type_5">မိုးလေမုန်တိုင်း</string>
    <string name="weather_type_6">မိုးရေချိန်အလွန်မြင့်သည်</string>
    <string name="weather_type_7">မိုးသက်မုန်တိုင်း</string>
    <string name="weather_type_8">ပြတ်တောင်းမိုး</string>
    <string name="weather_type_9">အားပြင်းသော မိုးလေမုန်တိုင်း</string>
    <string name="weather_type_10">မိုး</string>
    <string name="weather_type_11">မိုးဖွဲ</string>
    <string name="weather_type_12">မိုးနှင်း</string>
    <string name="weather_type_13">နှင်းမုန်တိုင်း</string>
    <string name="weather_type_14">ကွက်ကျား ဆီးနှင်းကျခြင်း</string>
    <string name="weather_type_15">ဆီးနှင်းအလွန်ကျခြင်း</string>
    <string name="weather_type_16">ဆီးနှင်းကျခြင်း</string>
    <string name="weather_type_17">ဆီးနှင်းပါးပါးကျခြင်း</string>
    <string name="weather_type_18">အားပြင်းသော သဲမုန်တိုင်း</string>
    <string name="weather_type_19">သဲမုန်တိုင်း</string>
    <string name="weather_type_20">အားနည်းသော သဲမုန်တိုင်း</string>
    <string name="weather_type_21">သဲမုန်တိုင်း</string>
    <string name="weather_type_22">မိုးသီးကြွေခြင်း</string>
    <string name="weather_type_23">ဖုန်မှုန့်</string>
    <string name="weather_type_24">မြူ</string>
    <string name="weather_type_25">ရေခဲမိုး</string>
</resources>
PK
     �R�M�Z�l�  �     strings/strings_fr_FR.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, dd MMM</string>
    <string name="desc_date_format_12">EEEE, dd MMM</string>
    <string name="desc_time">'heure actuelle\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', appuyez deux fois pour ouvrir l\'horloge'</string>
    <string name="weather_type_null">'Aucune donnée'</string>
    <string name="weather_type_0">Dégagé</string>
    <string name="weather_type_1">Nuageux</string>
    <string name="weather_type_2">Brumeux</string>
    <string name="weather_type_3">Très brumeux</string>
    <string name="weather_type_4">Fortes pluies</string>
    <string name="weather_type_5">Pluie torrentielle</string>
    <string name="weather_type_6">Orages</string>
    <string name="weather_type_7">Orage</string>
    <string name="weather_type_8">Averses</string>
    <string name="weather_type_9">Fortes pluies</string>
    <string name="weather_type_10">Pluie</string>
    <string name="weather_type_11">Bruine</string>
    <string name="weather_type_12">Giboulée</string>
    <string name="weather_type_13">Tempête de neige</string>
    <string name="weather_type_14">Chutes de neige</string>
    <string name="weather_type_15">Fortes chutes de neige</string>
    <string name="weather_type_16">Chutes de neige</string>
    <string name="weather_type_17">Faibles chutes de neige</string>
    <string name="weather_type_18">Forte tempête de sable</string>
    <string name="weather_type_19">Tempête de sable</string>
    <string name="weather_type_20">Petite tempête de sable</string>
    <string name="weather_type_21">Tempête de sable</string>
    <string name="weather_type_22">Grêle</string>
    <string name="weather_type_23">Poussière dans l\'air</string>
    <string name="weather_type_24">Brouillard</string>
    <string name="weather_type_25">Pluie verglaçante</string>
</resources>
PK
     �R�M.co\  \     strings/strings_uk_UA.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEEE, d MMMM</string>
    <string name="date_time_12">EEEE, d MMMM</string>
    <string name="desc_date_format">EEEE, d MMMM</string>
    <string name="desc_date_format_12">EEEE, d MMMM</string>
    <string name="desc_time">'поточний час\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', натисніть двічі для входу у програму "Годинник"'</string>
    <string name="weather_type_null">'Немає даних'</string>
    <string name="weather_type_0">Ясно</string>
    <string name="weather_type_1">Хмарно</string>
    <string name="weather_type_2">Серпанок</string>
    <string name="weather_type_3">Туман</string>
    <string name="weather_type_4">Сильний дощ</string>
    <string name="weather_type_5">Злива</string>
    <string name="weather_type_6">Буревій</string>
    <string name="weather_type_7">Гроза</string>
    <string name="weather_type_8">Злива</string>
    <string name="weather_type_9">Сильний дощ</string>
    <string name="weather_type_10">Дощ</string>
    <string name="weather_type_11">Мряка</string>
    <string name="weather_type_12">Мокрий сніг</string>
    <string name="weather_type_13">Заметіль</string>
    <string name="weather_type_14">Зливи зі снігом</string>
    <string name="weather_type_15">Сильний снігопад</string>
    <string name="weather_type_16">Снігопад</string>
    <string name="weather_type_17">Невеликий сніг</string>
    <string name="weather_type_18">Сильна піщана буря</string>
    <string name="weather_type_19">Піщана буря</string>
    <string name="weather_type_20">Невеликий пил</string>
    <string name="weather_type_21">Пил</string>
    <string name="weather_type_22">Град</string>
    <string name="weather_type_23">Бруд</string>
    <string name="weather_type_24">Імла</string>
    <string name="weather_type_25">Крижаний дощ</string>
</resources>
PK
     �R�M���na
  a
     strings/strings_ta_IN.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, dd MMM </string>
    <string name="desc_date_format_12">EEEE, dd MMM </string>
    <string name="desc_time">'current time\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', கடிகார பயன்பாட்டில் நுழைய இருமுறை தட்டவும்'</string>
    <string name="weather_type_null">'தரவு இல்லை'</string>
    <string name="weather_type_0">தெளிவான வானிலை</string>
    <string name="weather_type_1">மேக மூட்டம்</string>
    <string name="weather_type_2">தெளிவற்ற வானிலை</string>
    <string name="weather_type_3">மூடுபனி</string>
    <string name="weather_type_4">கடுமையான புயல்மழை</string>
    <string name="weather_type_5">புயல்மழை</string>
    <string name="weather_type_6">மிகவும் பலத்த மழை</string>
    <string name="weather_type_7">இடியுடன் கூடிய மழை</string>
    <string name="weather_type_8">மழைத் தூறல்</string>
    <string name="weather_type_9">கன மழை</string>
    <string name="weather_type_10">மழை</string>
    <string name="weather_type_11">தூறல்</string>
    <string name="weather_type_12">பனி மழை</string>
    <string name="weather_type_13">பனிப்புயல்</string>
    <string name="weather_type_14">அவ்வப்போது பனிப்பொழிவு</string>
    <string name="weather_type_15">கடும் பனிப்பொழிவு</string>
    <string name="weather_type_16">பனிப்பொழிவு</string>
    <string name="weather_type_17">லேசான பனிப்பொழிவு</string>
    <string name="weather_type_18">வலுவான மணற்புயல்</string>
    <string name="weather_type_19">மணற்புயல்</string>
    <string name="weather_type_20">லேசான மணற்புயல்</string>
    <string name="weather_type_21">மணற்புயல்</string>
    <string name="weather_type_22">ஆலங்கட்டி மழை</string>
    <string name="weather_type_23">மிதக்கும் தூசு</string>
    <string name="weather_type_24">மேகமூட்டம்</string>
    <string name="weather_type_25">உறைபனி மழை</string>
</resources>
PK
     �R�M.�r�  �     strings/strings_eu_ES.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, dd MMM</string>
    <string name="desc_date_format_12">EEEE, dd MMM</string>
    <string name="desc_time">'ordua\' + #hour12+\' \'+ifelse(#minute,#minute,\'puntuan\')+\', ukitu bi aldiz ordulari aplikazioan sartzeko'</string>
    <string name="weather_type_null">'Daturik ez'</string>
    <string name="weather_type_0">Garbitu</string>
    <string name="weather_type_1">Lainotsua</string>
    <string name="weather_type_2">Nahastua</string>
    <string name="weather_type_3">Behe-lainoa</string>
    <string name="weather_type_4">Ekaitz gogorra</string>
    <string name="weather_type_5">Ekaitza</string>
    <string name="weather_type_6">Zaparrada bortitza</string>
    <string name="weather_type_7">Ekaitza</string>
    <string name="weather_type_8">Euria</string>
    <string name="weather_type_9">Euri asko</string>
    <string name="weather_type_10">Euria</string>
    <string name="weather_type_11">Zirimiria</string>
    <string name="weather_type_12">Elur bustia</string>
    <string name="weather_type_13">Elurtea</string>
    <string name="weather_type_14">Elur-estalkiak</string>
    <string name="weather_type_15">Elurte gogorra</string>
    <string name="weather_type_16">Elurtea</string>
    <string name="weather_type_17">Elurte arina</string>
    <string name="weather_type_18">Hondar erauntsi gogorra</string>
    <string name="weather_type_19">Hondar erauntsia</string>
    <string name="weather_type_20">Hondar erauntsi arina</string>
    <string name="weather_type_21">Hondar erauntsia</string>
    <string name="weather_type_22">Kazkabarra</string>
    <string name="weather_type_23">Flotatzen duen hautsa</string>
    <string name="weather_type_24">Lanbroa</string>
    <string name="weather_type_25">Euri izoztea</string>
</resources>
PK
     �R�M�7�(�  �     strings/strings_ca_ES.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, dd MMM</string>
    <string name="desc_date_format_12">EEEE, dd MMM</string>
    <string name="desc_time">'hora actual\' + #hour12+\' \'+ifelse(#minute,#minute,\'\')+\', pulseu dues vegades per obrir el rellotge'</string>
    <string name="weather_type_null">'Sense dades'</string>
    <string name="weather_type_0">Clar</string>
    <string name="weather_type_1">Ennuvolat</string>
    <string name="weather_type_2">Calitjós</string>
    <string name="weather_type_3">Emboirat</string>
    <string name="weather_type_4">Temporal fort</string>
    <string name="weather_type_5">Aiguat</string>
    <string name="weather_type_6">Pluja molt forta</string>
    <string name="weather_type_7">Tempesta</string>
    <string name="weather_type_8">Ruixat</string>
    <string name="weather_type_9">Diluvi</string>
    <string name="weather_type_10">Pluja</string>
    <string name="weather_type_11">Plugim</string>
    <string name="weather_type_12">Aiguaneu</string>
    <string name="weather_type_13">Temporal de neu</string>
    <string name="weather_type_14">Flocs de neu</string>
    <string name="weather_type_15">Neu forta</string>
    <string name="weather_type_16">Neu</string>
    <string name="weather_type_17">Neu feble</string>
    <string name="weather_type_18">Fuerte tormenta de arena</string>
    <string name="weather_type_19">Tormenta de arena</string>
    <string name="weather_type_20">Ligera tormenta de arena</string>
    <string name="weather_type_21">Tormenta de arena</string>
    <string name="weather_type_22">Calamarsa</string>
    <string name="weather_type_23">Calima</string>
    <string name="weather_type_24">Boirina</string>
    <string name="weather_type_25">Pluja gelant</string>
</resources>
PK
     �R�M�:Go  o     strings/strings_lo_LA.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEE, dd MMMM</string>
    <string name="date_time_12">EEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, dd MMM</string>
    <string name="desc_date_format_12">EEEE, dd MMM</string>
    <string name="desc_time">'current time\' + #hour12+\' \'+ifelse(#minute,#minute,\'oclock\')+\', double tap to enter clock app'</string>
    <string name="weather_type_null">'No data'</string>
    <string name="weather_type_0">Clear</string>
    <string name="weather_type_1">Cloudy</string>
    <string name="weather_type_2">Hazy</string>
    <string name="weather_type_3">Foggy</string>
    <string name="weather_type_4">Severe rainstorm</string>
    <string name="weather_type_5">Rainstorm</string>
    <string name="weather_type_6">Very heavy rainfall</string>
    <string name="weather_type_7">Thunderstorm</string>
    <string name="weather_type_8">Shower</string>
    <string name="weather_type_9">Heavy rainfall</string>
    <string name="weather_type_10">Rain</string>
    <string name="weather_type_11">Drizzle</string>
    <string name="weather_type_12">Sleet</string>
    <string name="weather_type_13">Snowstorm</string>
    <string name="weather_type_14">Patches of snowfall</string>
    <string name="weather_type_15">Heavy snowfall</string>
    <string name="weather_type_16">Snowfall</string>
    <string name="weather_type_17">Light snowfall</string>
    <string name="weather_type_18">Strong sandstorm</string>
    <string name="weather_type_19">Sandstorm</string>
    <string name="weather_type_20">Light sandstorm</string>
    <string name="weather_type_21">Sandstorm</string>
    <string name="weather_type_22">Hail</string>
    <string name="weather_type_23">Floating Dust</string>
    <string name="weather_type_24">Haze</string>
    <string name="weather_type_25">Freezing rain</string>
</resources>
PK
     �R�M�g��  �     strings/strings_mt_MT.xml<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="date_time">EEEE, dd MMMM</string>
    <string name="date_time_12">EEEE, dd MMMM</string>
    <string name="desc_date_format">EEEE, dd MMM</string>
    <string name="desc_date_format_12">EEEE, dd MMM</string>
    <string name="desc_time">'ħin bħalissa\' + #hour12+\' \'+ifelse(#minute,#minute,\'oclock\')+\', taptap biex tidħol fl-app tal-arloġġ'</string>
    <string name="weather_type_null">'L-ebda dejta'</string>
    <string name="weather_type_0">Ċar</string>
    <string name="weather_type_1">Imsaħħab</string>
    <string name="weather_type_2">Imċajpar</string>
    <string name="weather_type_3">Imċajpar</string>
    <string name="weather_type_4">Tempesta tax-xita</string>
    <string name="weather_type_5">Maltempata tax-xita</string>
    <string name="weather_type_6">Xita qalila ħafna</string>
    <string name="weather_type_7">Maltempata bir-ragħad</string>
    <string name="weather_type_8">Xita rxiex</string>
    <string name="weather_type_9">Xita qalila</string>
    <string name="weather_type_10">Xita</string>
    <string name="weather_type_11">Irxiex</string>
    <string name="weather_type_12">Xita bis-silġ</string>
    <string name="weather_type_13">Maltempata bis-silġ</string>
    <string name="weather_type_14">Dbabar bis-silġ</string>
    <string name="weather_type_15">Maltempata qalila tas-silġ</string>
    <string name="weather_type_16">Borra</string>
    <string name="weather_type_17">Borra ħafifa</string>
    <string name="weather_type_18">Maltempata tar-ramel qalila</string>
    <string name="weather_type_19">Maltempata tar-ramel</string>
    <string name="weather_type_20">Maltempata ħafifa tar-ramel</string>
    <string name="weather_type_21">Maltempata tar-ramel</string>
    <string name="weather_type_22">Silġ</string>
    <string name="weather_type_23">Trab li jvarju</string>
    <string name="weather_type_24">Arja maħmuġa</string>
    <string name="weather_type_25">Xita ffriżata</string>
</resources>
PK
     ���K��?j�   �              �    description.xmlPK
     k��K�7w�'  '             큽   manifest.xmlPK
     |8N                      �A  strings/PK
     �R�MI�49~  ~             �4  strings/strings_km_KH.xmlPK
     �R�M����	  �	             ��  strings/strings_pa_IN.xmlPK
     �R�M+�
  
             �$  strings/strings_ne_NP.xmlPK
     �R�M�H���  �             �W.  strings/strings_ur_IN.xmlPK
     �R�M��  �             �F7  strings/strings_ms_MY.xmlPK
     �R�Mz)N7�  �             �?  strings/strings_iw_IL.xmlPK
     �R�MH<e��  �             �MG  strings/strings_uz_UZ.xmlPK
     �R�M]�i�w  w             �.O  strings/strings_ar_EG.xmlPK
     �R�M��q�  �             ��W  strings/strings_es_ES.xmlPK
     �R�M.P^�  �             ��_  strings/strings_tr_TR.xmlPK
     �R�M����Z  Z             ��g  strings/strings_kk_KZ.xmlPK
     �R�M&q9s  s             �|p  strings/strings_ja_JP.xmlPK
     �R�M�Êp�  �             �&x  strings/strings_ur_PK.xmlPK
     �R�M!�6O�	  �	             ��  strings/strings_hi_IN.xmlPK
     �R�MֽUU�  �             �/�  strings/strings_sq_AL.xmlPK
     �R�M�1�  �             �0�  strings/strings_fa_IR.xmlPK
     �R�Mۚ��U
  U
             ��  strings/strings_as_IN.xmlPK
     �R�M��"��  �             �~�  strings/strings_it_IT.xmlPK
     �R�M4Tfk�  �             �z�  strings/strings_hy_AM.xmlPK
     �R�M����	  �	             큦�  strings/strings_mr_IN.xmlPK
     �R�M�����  �             큑�  strings/strings_lt_LT.xmlPK
     |8N��`�-  -             �_�  strings/strings_zh_HK.xmlPK
     �R�M��=�|  |             ���  strings/strings_ml_IN.xmlPK
     �R�MPD��t  t             �v�  strings/strings_nl_NL.xmlPK
     �R�M\XI��  �             �!�  strings/strings_bg_BG.xmlPK
     �R�M��je�	  �	             �.�  strings/strings_th_TH.xmlPK
     �R�M�)�E
  E
             �*�  strings/strings_bn_IN.xmlPK
     �R�M�.��  �             큦 strings/strings_ro_RO.xmlPK
     �R�M<H�]�  �             큭
 strings/strings_in_ID.xmlPK
     �R�M	����  �             �} strings/strings_gl_ES.xmlPK
     �R�M"!�d�  �             �= strings/strings_cs_CZ.xmlPK
     �R�M�9�  �             �B" strings/strings_hu_HU.xmlPK
     �R�M�A�8�	  �	             �* strings/strings_or_IN.xmlPK
     �R�M�q��               �Q4 strings/strings_az_AZ.xmlPK
     @T�J��m*  *             큎< strings/strings_en_US.xmlPK
     �R�MN�(�  �             ��C strings/strings_ru_RU.xmlPK
     |8N�����  �             큧L strings/strings_zh_TW.xmlPK
     �R�Mٗ��s  s             큗U strings/strings_et_EE.xmlPK
     �R�M��	h�	  �	             �A] strings/strings_kn_IN.xmlPK
     �R�M���  �             �@g strings/strings_be_BY.xmlPK
     �R�M��\�A
  A
             �0p strings/strings_gu_IN.xmlPK
     �R�M�)�E
  E
             큨z strings/strings_bn_BD.xmlPK
     �R�M�1�<�  �             �$� strings/strings_sl_SI.xmlPK
     �+N�͙��  �             ��� strings/strings_sr_RS.xmlPK
     �R�Mk�_�m  m             �� strings/strings_da_DK.xmlPK
     �R�Mvy���  �             큖� strings/strings_pl_PL.xmlPK
     �R�MGt��  �             �¥ strings/strings_mk_MK.xmlPK
     �R�M.\�x�  �             ��� strings/strings_de_DE.xmlPK
     �R�M�=
��  �             �ڶ strings/strings_lv_LV.xmlPK
     �R�M��9               �	� strings/strings_bo_CN.xmlPK
     �R�M+�
  
             �P� strings/strings_ne_IN.xmlPK
     �R�M�:Go  o             큏� strings/strings_en_IN.xmlPK
     �+N�"���  �             �5� strings/strings_bs_BA.xmlPK
     �R�M��3�  �             �-� strings/strings_sk_SK.xmlPK
     �R�MW3fp               �� strings/strings_ha_NG.xmlPK
     yJM��BK               �V� strings/strings_zh_CN.xmlPK
     �R�MZ�$ڪ
  �
             큙� strings/strings_te_IN.xmlPK
     �yJM��qK^  ^             �z strings/strings.xmlPK
     �R�M]4�lx  x             �	 strings/strings_sv_SE.xmlPK
     �R�MvW��  �             큸 strings/strings_me_ME.xmlPK
     �R�M���Ws
  s
             크 strings/strings_ug_CN.xmlPK
     �R�M���wD	  D	             �V* strings/strings_el_GR.xmlPK
     �+N���>x  x             ��3 strings/strings_hr_HR.xmlPK
     �R�M2k��_  _             큀; strings/strings_nb_NO.xmlPK
     �R�M����  �             �C strings/strings_pt_PT.xmlPK
     �R�M����  �             �+K strings/strings_fi_FI.xmlPK
     �R�M�vY��  �             ��R strings/strings_pt_BR.xmlPK
     �R�M�:Go  o             ��Z strings/strings_en_GB.xmlPK
     �R�M����  �             큟b strings/strings_es_US.xmlPK
     �R�M�J�G1
  1
             큟j strings/strings_ka_GE.xmlPK
     �R�Mt�D�  �             �u strings/strings_ko_KR.xmlPK
     �R�M�e���  �             ��| strings/strings_vi_VN.xmlPK
     �R�MJC�o  o             �ӄ strings/strings_my_MM.xmlPK
     �R�M�Z�l�  �             �y� strings/strings_fr_FR.xmlPK
     �R�M.co\  \             큄� strings/strings_uk_UA.xmlPK
     �R�M���na
  a
             �� strings/strings_ta_IN.xmlPK
     �R�M.�r�  �             큯� strings/strings_eu_ES.xmlPK
     �R�M�7�(�  �             큊� strings/strings_ca_ES.xmlPK
     �R�M�:Go  o             �B� strings/strings_lo_LA.xmlPK
     �R�M�g��  �             ��� strings/strings_mt_MT.xmlPK    S S �  �   