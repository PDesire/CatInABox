import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            pinned: true,
            floating: false,
            delegate: CustomSliverDelegate(
              expandedHeight: 150,
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(16.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                  [
                    Card(
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Level 4 User",
                                style: TextStyle(
                                    fontSize: 23
                                ),
                              ),
                              Text(
                                "Dabei seit Jan. 2020",
                                style: TextStyle(
                                    fontSize: 23
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 15),
                              ),
                              Text(
                                "angebotene Fahrten",
                                style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 3),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    "360km",
                                    style: TextStyle(
                                        fontSize: 23
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                              ),
                              Text(
                                "geleistete Transporte",
                                style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 3),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    "7.10km",
                                    style: TextStyle(
                                        fontSize: 23
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Trophäen",
                                style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width * 0.95,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        width: 60.0,
                                        height: 60.0,
                                        child: CircleAvatar(
                                          backgroundImage: NetworkImage('https://img.favpng.com/4/1/22/lollipop-candy-png-favpng-PwguN6C1DEQL6QfjXWmCNefRq.jpg'),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 4),
                                      ),
                                      Container(
                                        width: 60.0,
                                        height: 60.0,
                                        child: CircleAvatar(
                                          backgroundImage: NetworkImage('https://img.favpng.com/18/5/0/club-penguin-lollipop-candy-corn-png-favpng-qXB4nPMeZAJeLz17ecDD1iJ0G.jpg'),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 4),
                                      ),
                                      Container(
                                        width: 60.0,
                                        height: 60.0,
                                        child: CircleAvatar(
                                          backgroundImage: NetworkImage('https://img.favpng.com/21/6/6/gummi-candy-gummy-bear-gelatin-dessert-jelly-bean-icon-png-favpng-cEm9bbSCXr4syDDLUNj1jCiam.jpg'),
                                        ),
                                      ),
                                    ],
                                  )
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              FlatButton(
                                  onPressed: () {

                                  },
                                  child: Text(
                                    "> Reviews",
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
                                    "> Fahrten",
                                    style: TextStyle(
                                      fontSize: 20,
                                      decoration: TextDecoration.underline,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomSliverDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final bool hideTitleWhenExpanded;

  CustomSliverDelegate({
    @required this.expandedHeight,
    this.hideTitleWhenExpanded = true,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final appBarSize = expandedHeight - shrinkOffset;
    final cardTopPosition = expandedHeight / 2 - shrinkOffset;
    final proportion = 2 - (expandedHeight / appBarSize);
    final percent = proportion < 0 || proportion > 1 ? 0.0 : proportion;
    return SizedBox(
      height: expandedHeight + expandedHeight / 2,
      child: Stack(
        children: [
          SizedBox(
            height: (appBarSize < kToolbarHeight ? kToolbarHeight : appBarSize) > 90 ? (appBarSize < kToolbarHeight ? kToolbarHeight : appBarSize) : 90,
            child: AppBar(
              backgroundColor: Colors.green,
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
              elevation: 0.0,
              title: Opacity(
                  opacity: hideTitleWhenExpanded ? 1.0 - percent : 1.0,
                  child: Text("Rosemary")),
            ),
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            top: cardTopPosition > 0 ? cardTopPosition : 0,
            bottom: 0.0,
            child: Opacity(
              opacity: percent,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30 * percent),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Rosemary",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                        ),
                        Container(
                          width: 60.0,
                          height: 60.0,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage('https://img.favpng.com/21/6/6/gummi-candy-gummy-bear-gelatin-dessert-jelly-bean-icon-png-favpng-cEm9bbSCXr4syDDLUNj1jCiam.jpg'),
                          ),
                        ),
                      ],
                    ),
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => expandedHeight + expandedHeight / 2;

  @override
  double get minExtent => kToolbarHeight + 50;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
