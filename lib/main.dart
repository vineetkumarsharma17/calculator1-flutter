import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'My First Calculator.'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController n1=new TextEditingController();
  TextEditingController n2=new TextEditingController();
  TextEditingController result=new TextEditingController();
  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              controller: n1,
              decoration: const InputDecoration(
                icon: const Icon(Icons.person),
                hintText: 'Enter your First No',
                labelText: 'First No',
              ),
            ),
            TextFormField(
              controller: n2,
              decoration: const InputDecoration(
                icon: const Icon(Icons.person),
                hintText: 'Enter your Second No',
                labelText: 'Second No',
              ),
            ),
            TextFormField(
              controller: result,
              decoration: const InputDecoration(
                icon: const Icon(Icons.person),
                hintText: 'Result',
                labelText: 'Result',
              ),
            ),
            new Container(
                padding: const EdgeInsets.only(left: 50.0, top: 40.0),
                child: new RaisedButton(
                  child: const Text(' + '),
                  onPressed:getSum,
                )),
            new Container(
                padding: const EdgeInsets.only(left: 50.0, top: 40.0),
                child: new RaisedButton(
                  child: const Text(' - '),
                  onPressed:getSub,
                )),
            new Container(
                padding: const EdgeInsets.only(left: 50.0, top: 40.0),
                child: new RaisedButton(
                  child: const Text(' * '),
                  onPressed:getMult,
                )),

          ],
        ),
      ),
      );

  }
  void getSum()
  {
    int a=int.parse(n1.text.toString());
    int b=int.parse(n2.text.toString());
    int c=a+b;
    result.text=c.toString();

  }
  void getSub()
  {
    int a=int.parse(n1.text.toString());
    int b=int.parse(n2.text.toString());
    int c=a-b;
    result.text=c.toString();

  }
  void getMult()
  {
    int a=int.parse(n1.text.toString());
    int b=int.parse(n2.text.toString());
    int c=a*b;
    result.text=c.toString();

  }

}
