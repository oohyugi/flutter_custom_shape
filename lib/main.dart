import 'package:flutter/material.dart';
import 'package:flutter_custom_shape/horden_clipper.dart';
import 'package:flutter_custom_shape/ticket_clipper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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

  void _incrementCounter() {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Container(
                color: Colors.white,
                height: 500,
                child: Card(
                  child: Stack(
                    children: <Widget>[
                      ClipPath(
                        clipper: HorderClipper(),
                        child: Container(
                          height: 200,
                          color: Colors.red,
                          child: Center(child: Text("Horden"),),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              ClipPath(
                clipper: TicketClipper(),
                child: Container(
                  height: 100,
                  color: Colors.green,
                  child: Center(child: Text("TICKET"),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
