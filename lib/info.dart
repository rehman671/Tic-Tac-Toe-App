import 'package:flutter/material.dart';
import 'game.dart';

class info extends StatefulWidget {
  const info({Key? key}) : super(key: key);

  @override
  State<info> createState() => _infoState();
}

class _infoState extends State<info> {
  TextEditingController name1controller =
      TextEditingController(text: "Player 1");
  TextEditingController name2controller =
      TextEditingController(text: "Player 2");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            child: Column(children: [
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
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  width: 250,
                  height: 60,
                  child: Center(
                      child: TextField(
                    controller: name1controller,
                    decoration: InputDecoration(
                        hintText: "Player 1",
                        hintStyle:
                            TextStyle(fontSize: 20, color: Colors.white38),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueGrey))),
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  width: 250,
                  height: 60,
                  child: Center(
                      child: TextField(
                    controller: name2controller,
                    decoration: InputDecoration(
                        hintText: "Player 2",
                        hintStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white38),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueGrey))),
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    String p1 = name1controller.text;
                    String p2 = name2controller.text;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Game(player1: p1, player2: p2)));
                  },
                  child: Container(
                    decoration: (BoxDecoration(
                        color: Colors.blueGrey,
                        border: Border.all(width: 2, color: Colors.grey))),
                    margin: EdgeInsets.only(top: 30),
                    width: 175,
                    height: 60,
                    child: Center(
                        child: Text(
                      "Done",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  ),
                ),
              )
            ]),
          )),
    );
  }
}
