

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class CreateTripPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CreateTripPageState();

}

class CreateTripPageState extends State<CreateTripPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {

          },
        ),
        title: Text("Create Trip"),
      ),
      body:
        Container(
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[
                  Text("Von"),
                  SizedBox(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                      ),

                    ),
                  ),
                      RaisedButton(
                        child: Icon(
                          Icons.search,
                          color: Colors.black
                        ),
                        onPressed: ()=>{},
                      )
                ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Text("Nach"),
                    SizedBox(
                      width: 300,
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
                      child: Icon(
                          Icons.location_on,
                          color: Colors.black
                      ),
                      onPressed: ()=>{},
                    )

                  ]
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[
                  FlatButton(
                      child: Text("Heute"),
                    onPressed: () => {},
                  ),
                  FlatButton(child: Text("Jetzt"),
                      onPressed: () =>{}
                  )
                ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RaisedButton(
                      child: Text("Fahrt einstellen"),
                      onPressed: ()=>{},
                    )
                  ]
                )
              ]
            )
          ),
        )
    );
  }

}