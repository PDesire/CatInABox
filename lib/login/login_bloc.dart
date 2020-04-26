import 'package:tetris_blocs/core/tetris_bloc.dart';
import 'package:tetris_blocs/core/tetris_event.dart';
import 'dart:io';


class LoginBloc extends TetrisBloc {
  static const String LOGGED_OUT="LOGGED_OUT";
  static const String LOGIN_SUCCESS="LOGIN_SUCCESS";

  static const String REGISTRATION_NEEDED="LOGGED_IN";

  static const String CHECK_LOGIN = "PERFORM_LOGIN";

  static const String AUTO_REGISTRATION_RUNNING="AUTO_REGISTRATION_RUNNING";
  static const String AUTO_LOGIN_RUNNING="AUTO_LOGIN_RUNNING";

  var idToken;

  @override
  Stream<TetrisEvent> processEvent(TetrisEvent event) async* {
    print("processEvent="+event.action.toString());

    switch(event.action){
      case CHECK_LOGIN:
        yield TetrisEvent.withAction(action: REGISTRATION_NEEDED);
        Future.delayed(Duration(milliseconds: 500))
            .then((onValue) => {this.dispatch(TetrisEvent.withAction(action: AUTO_REGISTRATION_RUNNING))});
        return;
      case AUTO_REGISTRATION_RUNNING:
        yield event;
        Future.delayed(Duration(milliseconds: 500))
            .then((onValue) => {this.dispatch(TetrisEvent.withAction(action: AUTO_LOGIN_RUNNING))});
        return;
      case AUTO_LOGIN_RUNNING:
        yield event;
        Future.delayed(Duration(milliseconds: 500))
            .then((onValue) => {this.dispatch(TetrisEvent.withAction(action: LOGIN_SUCCESS))});
        return;
      case LOGIN_SUCCESS:
        yield event;
        return;
    }
    // now this is a bit hacky ;)
    yield event;
  }

}