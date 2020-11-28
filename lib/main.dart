import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
final parrotGreen = HexColor('32CD32');
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Stack(
        children: <Widget>[
            Title(parrotGreen),
            Credential(parrotGreen),
            CustButton(parrotGreen, 'SIGN IN', Colors.white, 450),
            BorderButton(Colors.white, 'SIGN UP', Colors.black, 500),
            CopyRight(Colors.grey, parrotGreen)
        ],
      ),
      )
    );
  }
}

class CopyRight extends StatelessWidget {
  const CopyRight(this.color, this.colorInk);
final Color colorInk, color;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Designed by',
            style: TextStyle(
                fontWeight: FontWeight.bold,
              color: color
            ),
          ),
          SizedBox(width: 5.0),
          InkWell(
            onTap: () {},
            child: Text(
                '@Techifyme',
                style: TextStyle(
                    color: colorInk,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline
                )
            ),
          )
        ],
      ),
    );
  }
}
class BorderButton extends StatelessWidget {
  const BorderButton(this.parrotGreen, this.text, this.color, this.topMargin);

  final Color parrotGreen;
  final String text;
  final Color color;
  final double topMargin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: EdgeInsets.only(top:topMargin, left: 20, right: 20),
      decoration: BoxDecoration(
        border: Border.all(
          style: BorderStyle.solid,
          color: color,
          width: 1
        ),
        borderRadius: BorderRadius.circular(20)
      ),
      child:
      Material(
        borderRadius: BorderRadius.circular(20.0),
        color: parrotGreen,
        // elevation: 7.0,
        child: GestureDetector(
          onTap: () {},
          child: Center(
            child: Text(
                text,
                style: TextStyle(
                    color: color,
                    fontWeight: FontWeight.bold
                )
            ),
          ),
        ),
      ),
    );
  }
}
class CustButton extends StatelessWidget {
  const CustButton(this.parrotGreen, this.text, this.textColor, this.topMargin);

  final Color parrotGreen;
  final String text;
  final Color textColor;
  final double topMargin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: EdgeInsets.only(top:topMargin),
      padding: EdgeInsets.only(top: 0, left:20, right: 20),
      child:
      Material(
        borderRadius: BorderRadius.circular(20.0),
        color: parrotGreen,
        // elevation: 7.0,
        child: GestureDetector(
          onTap: () {},
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold
              )
            ),
          ),
        ),
      ),
    );
  }
}

class Credential extends StatelessWidget {
  const Credential(this.col);
  final Color col;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 250),
      padding: EdgeInsets.only(top: 0, left: 20.0, right: 20),
      child: Column(
        children: <Widget> [
         TextField(
           style: TextStyle(
             fontWeight: FontWeight.bold
           ),
           decoration: InputDecoration(
             labelText: 'Email',
             labelStyle: TextStyle(
               color: Colors.grey,
               fontWeight: FontWeight.bold
             ),
           ),
         ),
          TextField(
            style: TextStyle(
                fontWeight: FontWeight.bold
            ),
            obscureText: true,
            decoration: InputDecoration(
                labelText: 'password',
                labelStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold
                )
            ),
          ),
          Container(
            alignment: Alignment(1.0, 0),
            padding: EdgeInsets.only(top:15.0, left:20.0),
            child: InkWell(
              child: Text(
                'Forgot Password',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: col,
                  decoration: TextDecoration.underline
                )
              )
            ),
          )
        ]
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title(this.col);
  final Color col;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(15.0, 80.0, 0.0, 0.0),
            child: Text(
              "Acharya",
              style: TextStyle(fontSize: 70.0, fontWeight: FontWeight.bold)
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(15.0, 160.0, 0.0, 0.0),
            child: Text(
                "Talk",
                style: TextStyle(fontSize: 70.0, fontWeight: FontWeight.bold)
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(180.0, 160.0, 0.0, 0.0),
            child: Text(
                ".",
                style: TextStyle(fontSize: 70.0, fontWeight: FontWeight.bold, color: col)
            ),
          ),

        ]
      )
    );
  }
}
// Container(
// height: 40.0,
// width: 100.0,
// margin: EdgeInsets.only(top: 560),
// padding: EdgeInsets.only(left: 20, right: 20),
// color: Colors.green,
// child: Container(
// // decoration: BoxDecoration(
// //   border: Border.all(
// //     color: Colors.black,
// //     style: BorderStyle.solid,
// //     width: 1
// //   ),
// //   color: Colors.transparent,
// //   borderRadius: BorderRadius.circular(20)
// // ),
// child: Text(
// 'SIGN UP',
// style: TextStyle(
// color: Colors.black,
// fontWeight: FontWeight.bold
// ),
// ),
// ),
// )