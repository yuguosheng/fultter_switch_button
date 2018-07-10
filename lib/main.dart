import 'package:flutter/material.dart';
import 'package:switch_button_demo/switch_button.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'SWITCH_BUTTON DEMO'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Container(
          child: initSwitchButton(),
          padding: EdgeInsets.all(30.0),
        )
      ),
        
    );
  }

  SwitchButton initSwitchButton(){
    return new SwitchButton(
            arrays: ["选项1","选项2","选项3","选项4"],
            themeColor: Colors.blue,
            index: 0,
            callback: (var index,String title){
              print("选择第${index+1}项："+title);
            },
    );
  }
}
