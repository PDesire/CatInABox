import 'package:flutter/material.dart';
import 'package:zefram_cochrane/ui/menu_injector/menu_injector.dart';

class MyTripsPage extends StatefulWidget {
  @override
  _MyTripsPageState createState() => _MyTripsPageState();
}

class _MyTripsPageState extends State<MyTripsPage> {

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
          title: Text("My trips"),
        ),
        body: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Card(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  child: Theme(
                    data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "28.4.2020 : 12:00AM",
                            style: TextStyle(
                                fontSize: 20
                            ),
                          ),
                          Text(
                            "from A to B",
                            style: TextStyle(
                                fontSize: 20
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "Transport for ",
                                style: TextStyle(
                                    fontSize: 20
                                ),
                              ),
                              Text(
                                "yan",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            FlatButton(
                                onPressed: () {

                                },
                                child: Text(
                                  "> modify",
                                  style: TextStyle(
                                    fontSize: 20,
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                            ),
                            FlatButton(
                                onPressed: () {

                                },
                                child: Text(
                                  "> delete",
                                  style: TextStyle(
                                    fontSize: 20,
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                            ),
                            FlatButton(
                                onPressed: () {
                                  showTripStartDialog(context);
                                },
                                child: Text(
                                  "> start",
                                  style: TextStyle(
                                    fontSize: 20,
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
            ),
            Card(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  child: Theme(
                    data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "25.4.2020 : 12:00AM",
                            style: TextStyle(
                                fontSize: 20
                            ),
                          ),
                          Text(
                            "from Berlin to Gransee",
                            style: TextStyle(
                                fontSize: 20
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "- ",
                                style: TextStyle(
                                    fontSize: 20
                                ),
                              ),
                              Text(
                                "empty",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            FlatButton(
                                onPressed: () {

                                },
                                child: Text(
                                  "> duplicate",
                                  style: TextStyle(
                                    fontSize: 20,
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                            ),
                            FlatButton(
                                onPressed: () {

                                },
                                child: Text(
                                  "> delete",
                                  style: TextStyle(
                                    fontSize: 20,
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Card(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  child: Theme(
                    data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "26.4.2020 : 4:00PM",
                            style: TextStyle(
                                fontSize: 20
                            ),
                          ),
                          Text(
                            "from Bonn to Cologne",
                            style: TextStyle(
                                fontSize: 20
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "Transport for ",
                                style: TextStyle(
                                    fontSize: 20
                                ),
                              ),
                              Text(
                                "gismo",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            FlatButton(
                                onPressed: () {

                                },
                                child: Text(
                                  "> duplicate",
                                  style: TextStyle(
                                    fontSize: 20,
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                            ),
                            FlatButton(
                                onPressed: () {

                                },
                                child: Text(
                                  "> delete",
                                  style: TextStyle(
                                    fontSize: 20,
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  showTripStartDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "Fahrt von Berlin nach Gransee",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25),
              ),
              Center(
                child: RaisedButton(
                  color: Theme.of(context).accentColor,
                  child: Text(
                    "STARTEN",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
