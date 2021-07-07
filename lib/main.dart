import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String text = "WELCOME TO FLUTTER";
  int index = 0;
  Color bcolor = Colors.blue;

  void ontapNavigation(index) {
    switch (index) {
      case 0:
        setState(() {
          text = "WELCOME TO FLUTTER";
          this.index = 0;
        });

        break;
      case 1:
        setState(() {
          text = "WELCOME TO STORE";
          this.index = 1;
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Flutter App"),
          actions: [
            IconButton(icon: Icon(Icons.search) , onPressed: (){})
          ],

        ),
        body: Center(
            child: Column(
              children: [
                Text(text),
                GestureDetector(
                  child: Container (child: Text("click mee"),
                    margin: EdgeInsets.all(12),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(color: bcolor,borderRadius: BorderRadius.all(Radius.circular(10))
                        ,boxShadow: <BoxShadow>[
                          BoxShadow(color: Color.fromRGBO(140, 140, 140, 0.8),offset: Offset(3, 3),blurRadius: 10)
                        ]
                    ),
                  ),
                  onTapDown:(index) {
                    setState(() {
                      bcolor = Colors.blueGrey;
                    });
                  },
                  onTapUp: (index){
                    setState(() {
                      bcolor =Colors.blue;
                    });
                  },

                ),

              ],
              mainAxisSize: MainAxisSize.min,
            )
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text("Home")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.store), title: Text("Store"))
            ],
            currentIndex: index,
            onTap: ontapNavigation,
            backgroundColor: Colors.white10),
        floatingActionButton: FloatingActionButton(
          onPressed: () => print("Click me"),
          child: Icon(Icons.phone),
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
