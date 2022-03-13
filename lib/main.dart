import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'homelayout.dart';

void main() {
  runApp(MaterialApp(
    localizationsDelegates: const [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: const [
      Locale('ar', 'AE'),
    ],
    debugShowCheckedModeBanner: false,
    home: AssignmentScreen(),
  ));
}

class AssignmentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: const Text(
          'عاصمة فلسطين',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset(
            'assets/images/image_1.jpg',
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'مدينة القدس ',
            style: TextStyle(
                color: Colors.black54, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Homelayout(label: 'الاسم',value: 'القدس',),
          Homelayout(label: 'المساحة',value: '125 كم',),
          Homelayout(label: 'السكان',value: '358000 نسمة',),
          Homelayout(label: 'الدولة',value: 'فلسطين',),
          Homelayout(label: 'اسم الطالب',value: 'ريهام محمد السويسي',),
        ]
        ),
      ),
    );
  }
}
