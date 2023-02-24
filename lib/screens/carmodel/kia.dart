import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:mycar_app/screens/maindashboard.dart';

class kia extends StatefulWidget {
  @override
  State<kia> createState() => _kiaState();
}

class _kiaState extends State<kia> {
  bool model = false;
  String? value;
  String? year;

  bool yearmade = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 17, 0, 114),
        leading: BackButton(
          color: Colors.white,
        ),
        title: Text(
          'معلومات السيارة',
          style: TextStyle(
              fontSize: 20,
              fontFamily: 'Cairo',
              color: Colors.white,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Spacer(flex: 1),
            Text(
              'الشركة المصنعة: كيا',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Cairo',
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.right,
            ),
            Spacer(flex: 2),
            Text(
              'موديل السيارة',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.right,
            ),
            Spacer(flex: 1),
            SingleChildScrollView(
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: DropdownButtonFormField(
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Cairo',
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    hintTextDirection: TextDirection.rtl,
                    border: OutlineInputBorder(),
                    hintText: 'اختر الموديل',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Cairo',
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  items: [
                    DropdownMenuItem(child: Text('اوبتيما'), value: 'اوبتيما'),
                    DropdownMenuItem(child: Text('اوبيروس'), value: 'اوبيروس'),
                    DropdownMenuItem(child: Text('بيكانتو'), value: 'بيكانتو'),
                    DropdownMenuItem(child: Text('ريو'), value: 'سبورتاج'),
                    DropdownMenuItem(child: Text('سبورتاج'), value: 'سبورتاج'),
                    DropdownMenuItem(child: Text('سبكترا'), value: 'سبكترا'),
                    DropdownMenuItem(child: Text('ستنجر'), value: 'ستنجر'),
                    DropdownMenuItem(child: Text('سورينتو'), value: 'سورينتو'),
                    DropdownMenuItem(child: Text('سول'), value: 'سول'),
                    DropdownMenuItem(child: Text('سيدونا'), value: 'سيدونا'),
                    DropdownMenuItem(child: Text('سيراتو'), value: 'سيراتو'),
                    DropdownMenuItem(child: Text('شوما'), value: 'شوما'),
                    DropdownMenuItem(child: Text('فورتي'), value: 'فورتي'),
                    DropdownMenuItem(child: Text('كادينزا'), value: 'كادينزا'),
                    DropdownMenuItem(child: Text('كارينز'), value: 'كارينز'),
                    DropdownMenuItem(child: Text('كرنفال'), value: 'كرنفال'),
                    DropdownMenuItem(child: Text('كوريس'), value: 'كوريس'),
                    DropdownMenuItem(child: Text('لوتزي'), value: 'لوتزي'),
                    DropdownMenuItem(child: Text('موهافي'), value: 'موهافي'),
                    DropdownMenuItem(child: Text('اخرى'), value: 'أخرى'),
                  ],
                  onChanged: (val) {
                    model = true;
                    value = val;
                    print(val);
                    print('one$value');
                  },
                ),
              ),
            ),
            Spacer(flex: 2),
            Text(
              'سنة الصنع',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.right,
            ),
            Spacer(flex: 1),
            SingleChildScrollView(
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: DropdownButtonFormField(
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Cairo',
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    hintTextDirection: TextDirection.rtl,
                    border: OutlineInputBorder(),
                    hintText: 'اختر السنة',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Cairo',
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  items: [
                    DropdownMenuItem(child: Text('2023'), value: '2023'),
                    DropdownMenuItem(child: Text('2022'), value: '2022'),
                    DropdownMenuItem(child: Text('2022'), value: '2022'),
                    DropdownMenuItem(child: Text('2020'), value: '2020'),
                    DropdownMenuItem(child: Text('2019'), value: '2019'),
                    DropdownMenuItem(child: Text('2018'), value: '2018'),
                    DropdownMenuItem(child: Text('2017'), value: '2017'),
                    DropdownMenuItem(child: Text('2016'), value: '2016'),
                    DropdownMenuItem(child: Text('2015'), value: '2015'),
                    DropdownMenuItem(child: Text('2014'), value: '2014'),
                    DropdownMenuItem(child: Text('2013'), value: '2013'),
                    DropdownMenuItem(child: Text('2012'), value: '2012'),
                    DropdownMenuItem(child: Text('2011'), value: '2011'),
                    DropdownMenuItem(child: Text('2010'), value: '2010'),
                    DropdownMenuItem(child: Text('2009'), value: '2009'),
                    DropdownMenuItem(child: Text('2008'), value: '2008'),
                    DropdownMenuItem(child: Text('2007'), value: '2007'),
                    DropdownMenuItem(child: Text('2006'), value: '2006'),
                    DropdownMenuItem(child: Text('2005'), value: '2005'),
                    DropdownMenuItem(child: Text('2004'), value: '2004'),
                    DropdownMenuItem(child: Text('2003'), value: '2003'),
                    DropdownMenuItem(child: Text('2002'), value: '2002'),
                    DropdownMenuItem(child: Text('2001'), value: '2001'),
                    DropdownMenuItem(child: Text('2000'), value: '2000'),
                    DropdownMenuItem(child: Text('1999'), value: '1999'),
                    DropdownMenuItem(child: Text('1998'), value: '1998'),
                    DropdownMenuItem(child: Text('1997'), value: '1997'),
                    DropdownMenuItem(child: Text('1996'), value: '1996'),
                    DropdownMenuItem(child: Text('1995'), value: '1995'),
                    DropdownMenuItem(child: Text('1994'), value: '1994'),
                    DropdownMenuItem(child: Text('1993'), value: '1993'),
                    DropdownMenuItem(child: Text('1992'), value: '1992'),
                    DropdownMenuItem(child: Text('1991'), value: '1991'),
                    DropdownMenuItem(child: Text('1990'), value: '1990'),
                    DropdownMenuItem(child: Text('اخرى'), value: 'اخرى'),
                  ],
                  onChanged: (val) {
                    yearmade = true;
                    year = val;
                  },
                ),
              ),
            ),
            Spacer(flex: 30),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5, bottom: 20),
              child: GestureDetector(
                onTap: () {
                  if (model & yearmade == false) {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.error,
                      animType: AnimType.bottomSlide,
                      title: 'خطأ في الادخال',
                      titleTextStyle: TextStyle(
                          fontSize: 21,
                          fontFamily: 'Cairo',
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                      desc: 'الرجاء ادخال الموديل وسنة الصنع',
                      descTextStyle: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Cairo',
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                      btnOkOnPress: () {},
                      btnOkText: 'حسنا',
                      buttonsTextStyle: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Cairo',
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    )..show();
                  } else {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => dashboard(
                              value: value,
                              year: year,
                            )));
                  }
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.orangeAccent, Colors.red]),
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'تأكيد',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Cairo',
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
