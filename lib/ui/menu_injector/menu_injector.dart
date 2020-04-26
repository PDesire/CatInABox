import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:zefram_cochrane/pages/create_trip/create_trip_page.dart';
import 'package:zefram_cochrane/pages/my_trips/my_trips_page.dart';
import 'package:zefram_cochrane/pages/profile_page/profile_page.dart';

class MenuInjector extends StatefulWidget {
  final Widget child;

  const MenuInjector({Key key, this.child}) : super(key: key);

  @override
  MenuInjectorState createState() => MenuInjectorState();
}

class MenuInjectorState extends State<MenuInjector> {
  @override
  Widget build(BuildContext context)
  {
    return InnerDrawer(
        key: _innerDrawerKey,
        onTapClose: true, // default false
        swipe: true, // default true

        //When setting the vertical offset, be sure to use only top or bottom
        offset: IDOffset.only(
            right: 0.5, left: 0.5
        ),

        scale: IDOffset.horizontal( 0.8 ), // set the offset in both directions

        proportionalChildArea : true, // default true
        borderRadius: 50, // default 0
        leftAnimationType: InnerDrawerAnimation.static,
        backgroundColor: Theme.of(context).canvasColor, // default  Theme.of(context).backgroundColor

        //when a pointer that is in contact with the screen and moves to the right or left
        onDragUpdate: (double val, InnerDrawerDirection direction) {

        },

        innerDrawerCallback: (a) => print(a), // return  true (open) or false (close)
        leftChild: Scaffold(
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 60,
                        height: 60,
                        child: Image.network('https://catinabox.eu/wp-content/uploads/2020/04/cropped-Katze_Symetrisch_BLACK.png'),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3),
                      ),
                      Text(
                        "Cat In A Box",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                ),
                ListTile(
                  leading: Icon(
                    Feather.truck,
                    color: Theme.of(context).accentColor,
                  ),
                  title: Text("Create a trip"),
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => CreateTripPage()));
                  },
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 6),
                ),
                ListTile(
                  leading: Icon(
                    Ionicons.md_person,
                    color: Theme.of(context).accentColor,
                  ),
                  title: Text("My profile"),
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ProfilePage()));
                  },
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 6),
                ),
                ListTile(
                  leading: Icon(
                    FontAwesome5Solid.shipping_fast,
                    color: Theme.of(context).accentColor,
                  ),
                  title: Text("My trips"),
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MyTripsPage()));
                  },
                ),
              ],
            ),
          ),
        ), // required if rightChild is not set

        //  A Scaffold is generally used but you are free to use other widgets
        // Note: use "automaticallyImplyLeading: false" if you do not personalize "leading" of Bar
        scaffold: widget.child
        //OR
    );
  }

  //  Current State of InnerDrawerState
  final GlobalKey<InnerDrawerState> _innerDrawerKey = GlobalKey<InnerDrawerState>();

  void open()
  {
    _innerDrawerKey.currentState.open();
  }
}
