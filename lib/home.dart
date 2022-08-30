import 'package:flutter/material.dart';
import 'package:tic_tac/info.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(children: [
          Container(
            padding: EdgeInsets.all(55),
            height: 500,
            child: GridTile(
                child: GridView.count(
                    padding: EdgeInsets.all(25),
                    crossAxisCount: 3,
                    children: [
                  Material(
                    child: Container(
                      color: Colors.red,
                    ),
                    shape: Border(
                      right: BorderSide(width: 7, color: Colors.black),
                      bottom: BorderSide(width: 7, color: Colors.black),
                    ),
                  ),
                  Material(
                    child: Container(
                      color: Colors.blue,
                    ),
                    shape: Border(
                      right: BorderSide(width: 7, color: Colors.black),
                      bottom: BorderSide(width: 7, color: Colors.black),
                    ),
                  ),
                  Material(
                    child: Container(
                      color: Colors.blue,
                    ),
                    shape: Border(
                      bottom: BorderSide(width: 7, color: Colors.black),
                    ),
                  ),
                  Material(
                    child: Container(
                      color: Colors.blue,
                    ),
                    shape: Border(
                      right: BorderSide(width: 7, color: Colors.black),
                      bottom: BorderSide(width: 7, color: Colors.black),
                    ),
                  ),
                  Material(
                    child: Container(
                      color: Colors.red,
                    ),
                    shape: Border(
                      right: BorderSide(width: 7, color: Colors.black),
                      bottom: BorderSide(width: 7, color: Colors.black),
                    ),
                  ),
                  Material(
                    child: Container(
                      color: Colors.red,
                    ),
                    shape: Border(
                      bottom: BorderSide(width: 7, color: Colors.black),
                    ),
                  ),
                  Material(
                    child: Container(
                      color: Colors.blue,
                    ),
                    shape: Border(
                      right: BorderSide(width: 7, color: Colors.black),
                    ),
                  ),
                  Material(
                    child: Container(
                      color: Colors.blue,
                    ),
                    shape: Border(
                      right: BorderSide(width: 7, color: Colors.black),
                    ),
                  ),
                  Material(
                    child: Container(
                      color: Colors.red,
                    ),
                  ),
                ])),
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => info()));
              },
              child: Container(
                decoration: (BoxDecoration(
                    color: Colors.blueGrey,
                    border: Border.all(width: 2, color: Colors.grey))),
                margin: EdgeInsets.only(top: 50),
                width: 250,
                height: 60,
                child: Center(
                    child: Text(
                  "New Game",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 230),
              child: Text(
                "Made By Abdul Rehman",
                style: TextStyle(color: Colors.white38),
              ))
        ]));
  }
}
