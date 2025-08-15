# دليل GitHub Actions لبناء APK

## 🚀 بناء APK تلقائياً باستخدام GitHub Actions

تم إعداد نظام بناء تلقائي لتطبيق **Index** باستخدام GitHub Actions لتجنب مشاكل البيئة المحلية وضمان بناء APK بنجاح.

## 📁 ملفات GitHub Actions

### 1. البناء الرئيسي: `.github/workflows/build-apk.yml`
- **يعمل تلقائياً** عند push إلى main أو update-to-index-with-arabic-support
- **يعمل يدوياً** من خلال GitHub UI
- **ينشئ Release** تلقائياً عند push إلى main
- **يرفع APK** كـ artifacts

### 2. البناء السريع: `.github/workflows/quick-build.yml`
- **يعمل يدوياً فقط** من خلال GitHub UI
- **يمكن اختيار البرانش** المراد البناء منه
- **أسرع في التنفيذ** من البناء الرئيسي

## 🎯 كيفية استخدام GitHub Actions

### الطريقة الأولى: البناء التلقائي
1. ادفع التغييرات إلى branch `main` أو `update-to-index-with-arabic-support`
2. سيبدأ البناء تلقائياً
3. انتظر انتهاء البناء (5-10 دقائق)
4. حمل APK من Artifacts أو Releases

### الطريقة الثانية: البناء اليدوي
1. اذهب إلى **Actions** في GitHub repository
2. اختر **Build Android APK** أو **Quick APK Build**
3. اضغط **Run workflow**
4. اختر الإعدادات المطلوبة:
   - **Branch**: البرانش المراد البناء منه
   - **Build type**: release أو debug
5. اضغط **Run workflow**
6. انتظر انتهاء البناء
7. حمل APK من **Artifacts**

## 📦 تحميل APK

### من Artifacts:
1. اذهب إلى **Actions** → اختر البناء المطلوب
2. في أسفل الصفحة، ستجد **Artifacts**
3. اضغط على اسم الـ artifact لتحميله
4. فك الضغط عن الملف المحمل
5. ستجد ملف APK جاهز للتثبيت

### من Releases (للبناء من main فقط):
1. اذهب إلى **Releases** في GitHub repository
2. اختر أحدث إصدار
3. حمل ملف APK من **Assets**

## ⚙️ إعدادات البناء

### المتغيرات البيئية:
```
TMDB_ACCESS_TOKEN=eyJhbGciOiJIUzI1NiJ9...
SUBDL_API_KEY=l0cgAb7VNM_KMN2KwkLCFNuRsk8q3tEg
```

### إعدادات Flutter:
- **Flutter Version**: 3.24.0
- **Channel**: stable
- **Java Version**: 17
- **Build Tool**: Gradle

### إعدادات Android:
- **Target SDK**: 34
- **Min SDK**: 21
- **Build Type**: Release (افتراضي)

## 🔧 استكشاف الأخطاء

### إذا فشل البناء:
1. **تحقق من Logs**: اذهب إلى Actions → اختر البناء الفاشل → اقرأ الـ logs
2. **تحقق من الملفات**: تأكد من وجود جميع الملفات المطلوبة
3. **تحقق من التبعيات**: تأكد من صحة pubspec.yaml

### الأخطاء الشائعة وحلولها:

#### خطأ: "firebase_options.dart not found"
**الحل**: سيتم إنشاء الملف تلقائياً في GitHub Actions

#### خطأ: "env.g.dart not found"
**الحل**: سيتم إنشاء الملف تلقائياً في GitHub Actions

#### خطأ: "Build failed"
**الحل**: تحقق من logs وتأكد من صحة الكود

## 📊 معلومات البناء

### مدة البناء:
- **البناء الرئيسي**: 8-12 دقيقة
- **البناء السريع**: 5-8 دقائق

### حجم APK:
- **Release APK**: ~50-80 MB
- **Debug APK**: ~80-120 MB

### الميزات المدمجة:
- ✅ دعم اللغة العربية
- ✅ واجهة تسجيل الدخول مع زر الضيف
- ✅ صفحة "عنا" مع معلومات Voxin
- ✅ مفاتيح TMDB و SUBDL
- ✅ جميع الأصول والموارد

## 🎉 النتيجة النهائية

بعد نجاح البناء، ستحصل على:

### ملف APK جاهز للتثبيت يحتوي على:
- 🎬 **تطبيق Index** كامل الميزات
- 🌐 **دعم اللغة العربية** الكامل
- 👤 **تسجيل الدخول كضيف**
- 🏢 **صفحة عن شركة Voxin**
- 🔑 **مفاتيح API مكونة**
- 📱 **واجهة محسنة للموبايل**

### معلومات الإصدار:
- **اسم التطبيق**: Index
- **Package Name**: com.voxin.index
- **Version**: 1.0.x
- **المطور**: Voxin Company
- **الموقع**: https://voxin.netlify.app/

## 🚀 البدء السريع

1. **ادفع الكود** إلى GitHub
2. **اذهب إلى Actions**
3. **اختر Quick APK Build**
4. **اضغط Run workflow**
5. **انتظر 5-8 دقائق**
6. **حمل APK من Artifacts**
7. **ثبت التطبيق على Android**

---

**🎯 الآن يمكنك بناء APK بدون أي مشاكل في البيئة المحلية!**

**📱 APK جاهز للتوزيع والاستخدام على أجهزة Android**