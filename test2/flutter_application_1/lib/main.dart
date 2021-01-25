import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
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

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  //int _counter = 0;

  var username = TextEditingController();
  var pwd = TextEditingController();

  void _incrementCounter() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SecondRoute()));
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //LogIn(),
            LogIn()
            ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class LogIn extends StatelessWidget {
  
  var userName = TextEditingController();
  var passWord = TextEditingController();
  Widget build(BuildContext context) {
    return Container(
              padding: EdgeInsets.all(30.0),
              child: Column(children: <Widget>[
                TextFormField(
                  controller: userName,
                  decoration: InputDecoration(labelText: 'Enter your username'),
                ),
                TextFormField(
                  controller: passWord,
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Enter password'),
                ),
                ElevatedButton(
                  onPressed: () {
                    print(passWord.text);
                    print(userName.text);
                  },
                  child: Text('Log in'),
                ),
              ]),
            );
  }
}
