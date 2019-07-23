import 'package:flutter/material.dart';
import 'sidedrawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tasks',
      home: MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _counter = 3;
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: SideDrawer(),
        appBar: PreferredSize(
          child: Container(
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            child: ButtonTheme.bar(
              child: ButtonBar(
                alignment: MainAxisAlignment.start,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      _scaffoldKey.currentState.openDrawer();
                    },
                    child: Icon(
                      Icons.list,
                      color: Colors.white,
                      size: 35.0,
                    ),
                    elevation: 0,
                    color: Colors.transparent,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 140.0),
                    child: Stack(
                      alignment: AlignmentDirectional.topEnd,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                              Icons.playlist_add_check,
                              color: Colors.white,
                              size: 30.0,
                            ),
                            onPressed: () {
                              // Navigator.push//
                            }),
                        _counter != 0
                            ? Positioned(
                                right: 11,
                                top: 11,
                                child: Container(
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  constraints: BoxConstraints(
                                    minWidth: 16,
                                    minHeight: 16,
                                  ),
                                  child: Text(
                                    '$_counter',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              )
                            : Text('')
                      ],
                    ),
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 2.0,
                    color: Colors.white,
                  ),
                ),
                gradient: LinearGradient(
                    colors: [Colors.deepPurpleAccent, const Color(0xff0D37C1)]),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[500],
                    blurRadius: 3.0,
                    spreadRadius: 1.0,
                  )
                ]),
          ),
          preferredSize: Size(MediaQuery.of(context).size.width, 150.0),
        ),
        body: Container(
          // Add box decoration
          decoration: BoxDecoration(
            // Box decoration takes a gradient
            gradient: LinearGradient(
              // Where the linear gradient begins and ends
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              // Add one stop for each color. Stops should increase from 0 to 1
              stops: [0.1, 0.4, 0.7, 1.0],
              colors: [
                // Colors are easy thanks to Flutter's Colors class.
                const Color(0xff0D37C1),
                Colors.deepPurpleAccent,
                Colors.deepPurple,
                Colors.purple,
              ],
            ),
          ),
          child: Center(
            child: GridView.count(crossAxisCount: 2, children: <Widget>[
              GridTile(
                child: Card(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      // Navigator.push//
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white70)),
                      width: 250,
                      height: 75,
                      child: Center(
                        child: Container(
                          color: Colors.transparent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.event_available,
                                size: 60.0,
                              ),
                              Text("Completed Tasks")
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              GridTile(
                child: Card(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      // Navigator.push//
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white70)),
                      width: 250,
                      height: 75,
                      child: Center(
                        child: Container(
                          color: Colors.transparent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.event_busy,
                                size: 60.0,
                              ),
                              Text("Not Completed Tasks")
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              GridTile(
                child: Card(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      // Navigator.push//
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white70)),
                      width: 250,
                      height: 75,
                      child: Center(
                        child: Container(
                          color: Colors.transparent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment
                                .center, // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Icon(
                                Icons.today,
                                size: 60.0,
                              ),
                              Text("Today Tasks")
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              GridTile(
                child: Card(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      // Navigator.push//
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white70)),
                      width: 250,
                      height: 75,
                      child: Center(
                        child: Container(
                          color: Colors.transparent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment
                                .center, // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Icon(
                                Icons.event_note,
                                size: 60.0,
                              ),
                              Text("Next 7 Days Tasks")
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              GridTile(
                child: Card(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      // Navigator.push//
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white70)),
                      width: 250,
                      height: 75,
                      child: Center(
                        child: Container(
                          color: Colors.transparent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment
                                .center, // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Icon(
                                Icons.calendar_today,
                                size: 60.0,
                              ),
                              Text('Calendar')
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              GridTile(
                child: Card(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      // Navigator.push//
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white70)),
                      width: 250,
                      height: 75,
                      child: Center(
                        child: Container(
                          color: Colors.transparent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment
                                .center, // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Icon(
                                Icons.add_box,
                                size: 60.0,
                              ),
                              Text("Add Task")
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ));
  }
}