import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<String> listItems = [];

  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < 500; i++) {
      listItems.add('Item ${i}');
    }

    return new MaterialApp(
      home: new DefaultTabController(
        length: 2,
        child: new Scaffold(
          body: new NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                new SliverAppBar(
                  title: Text("Application"),
                  floating: true,
                  pinned: true,
                  snap: true,
                  bottom: new TabBar(
                    tabs: [
                      new Tab(text: 'tab1'),
                      new Tab(text: 'tab2'),
                    ],
                  ),
                ),
              ];
            },
            body: new TabBarView(
              children: [
                ListView.builder(
                  itemCount: listItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blueGrey,
                      ),
                      title: Text(listItems[index]),
                    );
                  },
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "This is the second screen in the app. As you can see, the top of this text gets hidden",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30.0
                    ),
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
