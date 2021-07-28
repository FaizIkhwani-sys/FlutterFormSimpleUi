import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tutorial 1.',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'FaizIkhwani-Coding'),
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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(


        title: Text(widget.title),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.indigo,Colors.black],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )
        ),
        child: Center(

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  TextFormField(

                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'Enter your username.',
                      labelText: 'Username',
                    ),

                    onSaved: (String value) {
                    },
                  ),
                TextFormField(

                  decoration: const InputDecoration(
                    icon: Icon(Icons.assignment),
                    hintText: 'Enter your question.',
                    labelText: 'Question.',
                  ),

                  onSaved: (String value) {
                  },
                ),
                SizedBox(height: 20,),

                RaisedButton(
                  child: Text('Hantar'),
                    onPressed: (){

                }),


              ],
            ),
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
