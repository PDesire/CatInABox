import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:zefram_cochrane/pages/create_trip/trip_contact_widget.dart';
import 'package:zefram_cochrane/pages/my_trips/my_trips_page.dart';
import 'package:zefram_cochrane/pages/profile_page/profile_page.dart';
import 'package:zefram_cochrane/ui/menu_injector/menu_injector.dart';

class CreateTripPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CreateTripPageState();

}

class CreateTripPageState extends State<CreateTripPage> {

  GlobalKey<MenuInjectorState> _drawerKey = new GlobalKey<MenuInjectorState>();


  @override
  Widget build(BuildContext context) {
    return MenuInjector(
      key: _drawerKey,
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                _drawerKey.currentState.open();
              },
            ),
            title: Text("Create Trip"),
          ),
          body:
          Container(
            child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children:[
                                  SizedBox(
                                      width: 35,
                                      child: Text(
                                        "From",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold
                                        ),
                                      )
                                  ),
                                  SizedBox(
                                    width: 280,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.search,
                                          color: Colors.black,
                                        ),
                                      ),

                                    ),
                                  ),
                                  RaisedButton(
                                    color: Theme.of(context).accentColor,
                                    textColor: Colors.white,
                                    child: Icon(
                                        Icons.location_searching,
                                        color: Colors.white
                                    ),
                                    onPressed: ()=>{},
                                  )
                                ]),
                          ),
                        ),
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children:[
                                  SizedBox(
                                      width: 35,
                                      child: Text(
                                        "To",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold
                                        ),
                                      )
                                  ),
                                  SizedBox(
                                    width: 280,
                                    child: TextField(

                                        decoration: InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.search,
                                            color: Colors.black,
                                          ),
                                        )
                                    ),
                                  ),
                                  RaisedButton(
                                    color: Theme.of(context).accentColor,
                                    textColor: Colors.white,
                                    child: Icon(
                                        Icons.location_on,
                                        color: Colors.white
                                    ),
                                    onPressed: ()=>{},
                                  )

                                ]
                            ),
                          ),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children:[
                              FlatButton(
                                child: Text("Today"),
                                onPressed: () => {},
                              ),
                              FlatButton(child: Text("Now"),
                                  onPressed: () =>{}
                              )
                            ]),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RaisedButton(
                                color: Theme.of(context).accentColor,
                                textColor: Colors.white,
                                child: Text("Offer trip"),
                                onPressed: ()=>{
                                  _showContactDialog(context)
                                },
                              )
                            ]
                        )
                      ]
                  ),
                )
            ),
          )
      ),
    );
  }


  _showContactDialog(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: Text("Kontaktdaten"),
          content: TripContactWidget(
            onContactSelected: onContactSelected,
          )
        );
      },
    ).then((value){
      _showContactSaveToProfileDialog(context);
    });
  }

  onContactSelected(String contactMethod, String contactData){
    Navigator.of(context).pop();
  }
  _showContactSaveToProfileDialog(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: Text('Daten speichern'),
          content: const Text(
              'Möchtest du deine Kontaktdaten in den Einstellungen speichern ?'),
          actions: <Widget>[
            FlatButton(
              child: const Text('Nein, danke.'),
              onPressed: () {
                Navigator.of(context).pop("CANCEL");
              },
            ),
            FlatButton(
              child: const Text('Ja'),
              onPressed: () {
                Navigator.of(context).pop("OK");
              },
            )
          ],
        );
      },
    ).then((value){
      switch(value){
        case "OK":
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ProfilePage()));
          return;
        case "CANCEL":
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MyTripsPage()));
        return;
      }
    });
  }

}
