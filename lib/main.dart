import 'package:flutter/material.dart';
import 'package:tetris_blocs/core/tetris_provider.dart';
import 'package:zefram_cochrane/pages/create_trip/create_trip_page.dart';
import 'package:zefram_cochrane/pages/my_trips/my_trips_page.dart';
import 'package:zefram_cochrane/pages/profile_page/profile_page.dart';
import 'package:zefram_cochrane/splash/splash_screen.dart';

import 'login/login_bloc.dart';
import 'login/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return TetrisProvider(
        blocs: [
        LoginBloc()
    ],
    child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: Color(0xFFF5EFE0),
        accentColor: Color(0xFFCD2653),
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(
      imageAssetName: 'assets/images/logo.jpg',
      seconds: 3,
      navigateTo:  LoginScreen(
          imageAssetName: 'assets/images/logo.jpg',
          navigateTo: CreateTripPage()
      ),
    )
    ));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

  }
}
