import 'package:assignment1/screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Screen',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'عاصمة فلسطين'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // The title text which will be shown on the action bar
          backgroundColor: const Color.fromRGBO(157, 89, 235, 1),
          centerTitle: true,
          title: Text(title)),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Column(
                children: [
                  Image.asset('assets/R.jpg'),
                ],
              ),
              Container(
                child: Text(
                  ' مدينة القدس ',
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 30.0,
                  ),
                ),
              ),
              ScreenWidget(value: 'القدس', label: 'الاسم'),
              ScreenWidget(
                label: 'المساحة',
                value: '125 كم',
              ),
              ScreenWidget(
                label: 'السكان',
                value: '358000',
              ),
              ScreenWidget(
                label: 'الدولة',
                value: 'فلسطين',
              ),
              ScreenWidget(
                label: 'ة/اسم الطالب',
                value: 'شهد حسونة',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
