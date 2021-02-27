import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "Marca Tento", home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _points1 = 0;
  int _points2 = 0;


  void _changePoints1(int delta) {
    setState(() {
      _points1 += delta;
    });
    if (_points1 < 0) {
      _points1 = 0;
    }

    if (_points1 >= 12) {
      _points1 = 0;
      _points2 = 0;
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("So Easy bro!!!"),
              content: Text("O Time 1 ganhou!"),
              actions: <Widget>[
                FlatButton(onPressed: (){
                  Navigator.of(context).pop();
                },
                  child: Text("OK"),
                ),
              ],
            );
          });
    }
  }



  void _changePoints2(int delta) {
    setState(() {
      _points2 += delta;
    });

    if (_points2 < 0) {
      _points2 = 0;
    }

    if (_points2 >= 12) {
      _points1 = 0;
      _points2 = 0;
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("So Easy bro!!!"),
              content: Text("O Time 2 ganhou!"),
              actions: <Widget>[
                FlatButton(onPressed: (){
                  Navigator.of(context).pop();
                },
                  child: Text("OK"),
                ),
              ],
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        type: MaterialType.transparency,

        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 80.0, bottom: 70.0),
              child: Text(
                "Truco",
                style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 50),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(

                  padding: EdgeInsets.fromLTRB(0.0, 40.0, 50.0, 40.0),
                  child: Text(
                    "Time 1",
                    style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 40.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(50.0, 40.0, 0.0, 40.0),
                  child: Text(
                    "Time 2",
                    style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 40.0),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                Padding(
                  padding: EdgeInsets.fromLTRB(60.0, 40.0, 0.0, 60.0),
                  child: Text(
                    "$_points1",
                    style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.normal,
                        fontSize: 80.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 40.0, 60.0, 60.0),
                  child: Text(
                    "$_points2",
                    style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.normal,
                      fontSize: 80.0,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(5.0, 20.0, 10.0, 0.0),
                  child: FlatButton(
                    child: Text(
                      "-",
                      style: TextStyle(fontSize: 60.0, color: Colors.white),
                    ),
                    onPressed: () {
                      _changePoints1(-1);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(5.0, 20.0, 10.0, 0.0),
                  child: FlatButton(
                    child: Text(
                      "+",
                      style: TextStyle(fontSize: 60.0, color: Colors.white),
                    ),
                    onPressed: () {
                      _changePoints1(1);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(5.0, 20.0, 5.0, 0.0),
                  child: FlatButton(
                    child: Text(
                      "-",
                      style: TextStyle(fontSize: 60.0, color: Colors.white),
                    ),
                    onPressed: () {
                      _changePoints2(-1);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(5.0, 20.0, 5.0, 0.0),
                  child: FlatButton(
                    child: Text(
                      "+",
                      style: TextStyle(fontSize: 60.0, color: Colors.white),
                    ),
                    onPressed: () {
                      _changePoints2(1);
                    },
                  ),
                ),
              ],
            )
          ],
        )
    );
  }
}
