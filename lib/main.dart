import 'package:flutter/material.dart';
import 'package:flutter_listview_app/constant/Constant.dart';
import 'package:flutter_listview_app/screen/HomeScreen.dart';
import 'package:flutter_listview_app/screen/SplashScreen.dart';

void main() => runApp(
      MaterialApp(
        title: 'ListView Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
          accentColor: Color(0xFF761322),
        ),
        home: SplashScreen(),
        routes: <String, WidgetBuilder>{
          SPLASH_SCREEN: (BuildContext context) => SplashScreen(),
          HOME_SCREEN:(BuildContext context)=>HomeScreen(),
        },
      ),
    );
