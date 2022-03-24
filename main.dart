import 'package:flutter/material.dart';
void main(){

  runApp(
    MaterialApp(home: MyApp(),)
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MediaQuery.of(context).orientation == Orientation.portrait
        ? PortraitScreen()
        : LandScapeScreen();
  }
}

class PortraitScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: Drawer( child: Column(
        children: [

          ListTile(

            title: Text('FIRST ELEMENT'),
          ),
          ListTile(

            title: Text('SECOND ELEMENT'),
          ),
          ListTile(

            title: Text('THIRD ELEMENT'),
          ),  ListTile(

            title: Text('FOURTH ELEMENT'),
          ),  ListTile(

            title: Text('FIFTH ELEMENT'),
          )
        ],
      ),
      ),
        appBar: AppBar(
          title: Text('SECOND ASSIGNMENT'),
            backgroundColor:Colors.purple ,
        ),
        body: Container(

          color: Colors.red,
        ));
  }
}

class LandScapeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar( title: Text('SECOND ASSIGNMENT'),
        backgroundColor:Colors.purple ,),
      body: Row(
        children: [
          Expanded(

                child: Column(
                  children: [

                    ListTile(

                      title: Text('FIRST ELEMENT'),
                    ),
                    ListTile(

                      title: Text('SECOND ELEMENT'),
                    ),
                    ListTile(

                      title: Text('THIRD ELEMENT'),
                    ),  ListTile(

                      title: Text('FOURTH ELEMENT'),
                    ),  ListTile(

                      title: Text('FIFTH ELEMENT'),
                    )
                  ],
                ),
              ),
          Expanded(
            child: Container(
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}