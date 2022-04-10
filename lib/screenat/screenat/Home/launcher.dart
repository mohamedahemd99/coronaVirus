// @dart=2.9
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';

class URLLauncher extends StatelessWidget {
  const URLLauncher({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: bg,
      appBar: AppBar(
        elevation: 0,
        flexibleSpace: Container(decoration: bgGradient),
        title: image,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: bg),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded, color: bg),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const URL(),
    );
  }
}

class URL extends StatelessWidget {
  const URL({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //the design of appBar.
                  titlePage(
                    text: 'Get the Vaccine.',
                    size: size.width / 13,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //the note
                  Container(
                    height: 820,
                    width: size.width,
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 8),
                          blurRadius: 24,
                          color: shadow,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                    'الرجاء الاطلاع على الارشادات التالية',
                                    textAlign: TextAlign.left,
                                    style: arabicboldStyle),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                FontAwesomeIcons.exclamationCircle,
                                color: icons,
                                size: 20,
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.0),
                            child: Divider(
                              color: icons,
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsets.only(top: 10, right: 10, left: 10),
                            child: Text('''  
ستتيح لك هذه الخدمة تسجيل رغبتك بالحصول على لقاح كوفيد-19, واذا كنت في احدى المجموعات السكانية ذات الأولوية يمكنك طلب تحديد موعد للحصول على اللقاح
وإذا لم تكن في إحدى المجموعات ذات الأولوية المدرجة، سيتم تسجيل رغبتك بالحصول على اللقاح، وسيتم الاتصال بك عندما تكون من الفئة المحددة,
لاستخدام هذه الخدمة، ستحتاج إلى تسجيل الدخول باستخدام حسابك لنظام التوثيق الوطني -NAS-
''', textAlign: TextAlign.right, style: arabiclightStyle),
                          ),
                          free,
                          const Divider(
                            color: icons,
                          ),
                          free,
                          const Links(
                            text: 'للاطفال بين 12 و 18 عاما',
                            url:
                                'https://eservices.phcc.gov.qa/Runtime/Runtime/Form/COVID19VaccinationRequestv3',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Links(
                            text: 'غير ذالك يرجى من الجميع التسجيل هنا',
                            url:
                                'https://app-covid19.moph.gov.qa/ar/index.html',
                          ),
                          free,
                          const Divider(
                            color: icons,
                          ),
                          free,
                          const Padding(
                            padding: EdgeInsets.only(
                                bottom: 10, right: 10, left: 10, top: 10),
                            child: Text(
                                ''' NAS، يمكنك إنشاء حساب على الرابط التالي: https://www.nas.gov.qa/self-service/register/select-user-type?lang=ar
إذا نسيت بيانات حسابك، يمكنك إعادة تعيين كلمة المرور الخاصة بك على الرابط التالي: https://www.nas.gov.qa/self-service/reset/personal?lang=ar
حساب نظام التوثيق الوطني غير مطلوب لفئة الأطفال الذين تتراوح أعمارهم بين 12 و 18 عامًا
يرجى الاتصال ب 109 في حال واجهتكم مشكلة فنيه في رسائل كلمة السر''',
                                textAlign: TextAlign.right,
                                style: arabiclightStyle),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//for links in the page.
class Links extends StatelessWidget {
  const Links({
    Key key,
    this.text,
    this.url,
  }) : super(key: key);
  final String text;
  final String url;
  @override
  Widget build(BuildContext context) {
    urLuncher() async {
      var urL = await canLaunch(url);
      if (urL) {
        await launch(url);
      } else {
        if (kDebugMode) {
          print("This $url can't be launched");
        }
      }
    }

    return InkWell(
      onTap: urLuncher,
      child: Container(
        width: 310,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: mainColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.arrow_right_rounded,
                color: icons,
                size: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: Text(
                  text,
                  style: const TextStyle(
                    color: bg,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
