


import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tetris_blocs/core/tetris_provider.dart';
import 'package:zefram_cochrane/login/login_bloc.dart';

class SplashScreen extends StatefulWidget {
  final int seconds;
  final dynamic navigateTo;
  final String imageAssetName;

  SplashScreen({
    @required this.imageAssetName,
    @required this.seconds,
    @required this.navigateTo
  });


  @override
  State<StatefulWidget> createState() {
    return new SplashScreenState();
  }

}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: widget.seconds),
      () =>_navigate()
    );
  }

  @override
  Widget build(BuildContext context) {
    LoginBloc loginBloc = TetrisProvider.of<LoginBloc>(context);
    return new Scaffold(
      body: _buildSplash(context)
    );
  }

  _buildSplash(BuildContext context){

    return new GestureDetector(
      child: Container(
          color: Colors.green,
          child: new Center(
              child: GestureDetector(
                  child:

                  Column(
                      children: <Widget>[
                        Image.asset(widget.imageAssetName),


                      ])
                  , onTap: () =>_navigate()
              )
          )

      ),
    );
  }

  _navigate() {
    if(widget.navigateTo is String) {
      Navigator.of(context).pushReplacementNamed(widget.navigateTo);

    } else if(widget.navigateTo is Widget) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (context) => widget.navigateTo),
      );
    }else{
      throw new ArgumentError("navigateTo is neither string nor widget");
    }
  }

}