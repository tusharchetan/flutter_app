import 'package:flutter/material.dart';
//follows android style

import 'package:flutter/cupertino.dart';
//ios style

void main()
{
  runApp(MaterialApp(
    title: "Testing App",
    home: HomeScreen()
  ));

}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _text = "You are using day mode";
  Color _backgroundColor=Colors.white;
  Color _backgroundTextColor=Colors.grey;
  Icon icon =Icon(Icons.brightness_high,);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(title: Text("Learning Flutter",)),
      body:Padding(
        padding: const EdgeInsets.symmetric(vertical: 200,horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(_text,style: TextStyle(color: _backgroundTextColor),),
            RaisedButton(onPressed: buttonPressed,child: icon,)
          ],
        ),
      )
    );
  }

  void buttonPressed(){
    setState(() {
      if(_backgroundColor==Colors.white) {
        _text = "You are using night mode";
        _backgroundColor = Colors.grey;
        _backgroundTextColor = Colors.white;
        icon = Icon(Icons.brightness_3, color: Colors.white,);
      }
      else
        {
           _text = "You are using day mode";
           _backgroundColor=Colors.white;
           _backgroundTextColor=Colors.grey;
           icon =Icon(Icons.brightness_high,);
        }
    });


  }
}

class RowWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(height: 100,width: 100,color: Colors.green,
          child: Center(child: Text("Hello")),),

        Container(height: 100,width: 100,color: Colors.red,
          child: Center(child: Text("Hello")),),

        Container(height: 100,width: 100,color: Colors.blue,
          child: Center(child: Text("Hello")),),
      ],
    );
  }
}
