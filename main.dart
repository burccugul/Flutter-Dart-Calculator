import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: Scaff(),
    );
  }
}
class Scaff extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {

   late num n1,n2,result = 0;

  TextEditingController t1 = TextEditingController(); //textfield okur
  TextEditingController t2 = TextEditingController(); //textfield okur


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Center(
        child: Column(
          children: [
            Text(result.toString()),
            TextField(controller:t1),
            TextField(controller:t2),
            Row(children: [
              RaisedButton(onPressed: (){
                setState((){
                  n1 = int.parse(t1.text); //fielddan okunan texti numa çevirdi
                  n2 = num.parse(t2.text);
                  result = n1 +n2;
                });
              }, child: Text("Topla"),),
              RaisedButton(onPressed: (){
                setState((){
                  n1 = int.parse(t1.text); //fielddan okunan texti numa çevirdi
                  n2 = num.parse(t2.text);
                  result = n1-n2;
                });
              }, child: Text("Çıkar"),),
              RaisedButton(onPressed: (){
                setState((){
                  n1 = int.parse(t1.text); //fielddan okunan texti numa çevirdi
                  n2 = num.parse(t2.text);
                  result = n1*n2;
                });
              }, child: Text("Çarp"),),
              RaisedButton(onPressed: (){
                setState((){
                  n1 = int.parse(t1.text); //fielddan okunan texti numa çevirdi
                  n2 = num.parse(t2.text);
                  result = n1/n2;
                });
              }, child: Text("Böl"),),
            ],)

          ],
        ),
      )
    );
  }
}
