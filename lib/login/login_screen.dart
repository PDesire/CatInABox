


import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tetris_blocs/core/tetris_builder.dart';
import 'package:tetris_blocs/core/tetris_event.dart';
import 'package:tetris_blocs/core/tetris_provider.dart';
import 'package:zefram_cochrane/login/login_bloc.dart';

import '../app_theme.dart';

class LoginScreen extends StatefulWidget {

  final String imageAssetName;
  final dynamic navigateTo;

  LoginScreen({
    @required this.imageAssetName,
    @required this.navigateTo
  });


  @override
  State<StatefulWidget> createState() {
    return new LoginScreenState();
  }

}

class LoginScreenState extends State<LoginScreen> {

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body:buildPage(context)
    );
  }
  Widget buildPage(BuildContext context) {
    LoginBloc loginBloc = TetrisProvider.of<LoginBloc>(context);

    return new GestureDetector(
          child: Container(
              color: Theme.of(context).canvasColor,
              child: new Center(
              child: GestureDetector(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                        width: 90,
                        height: 90,
                        child: Image.network(widget.imageAssetName)
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                    ),
                    TetrisBuilder(
                      blocs: [loginBloc],
                      builder: (BuildContext context, TetrisEvent event){
                        switch(event.action){
                          case LoginBloc.CHECK_LOGIN:
                            return Text("Checking Login");

                          case LoginBloc.REGISTRATION_NEEDED:
                            return Text("Registration needed");

                          case LoginBloc.AUTO_REGISTRATION_RUNNING:
                            return Text("Creating new User");

                          case LoginBloc.AUTO_LOGIN_RUNNING:
                            return Text("Logging you in");

                          case LoginBloc.LOGIN_SUCCESS:
                            Timer(
                                Duration(seconds: 2),
                                    () =>_navigate()
                            );
                            return Text("All set!");
                        }
                        loginBloc.dispatch(TetrisEvent.withAction(action:LoginBloc.CHECK_LOGIN));
                        return Text("Checking Login");
                      },
                    )
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
