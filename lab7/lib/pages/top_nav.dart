import 'package:flutter/material.dart';

class TopNavigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TopNavigationState();
  }
}

class _TopNavigationState extends State<TopNavigation> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Top Navigation",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 0.5,
        iconTheme: const IconThemeData(color: Colors.white),
        flexibleSpace:Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Theme.of(context).primaryColor, Theme.of(context).colorScheme.secondary,]
              )
          ),
        ),
        bottom: const TabBar(
          tabs: [
              Text("LEFT",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Text("MIDDLE",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Text("RIGHT",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
            padding: EdgeInsets.all(4)
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("This is the LEFT tab", style: TextStyle(fontSize: 24),),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("This is the MIDDLE tab", style: TextStyle(fontSize: 24),),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("This is the RIGHT tab", style: TextStyle(fontSize: 24),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
