import 'package:flutter/material.dart';

Widget tictacbox(coloring) {
  return Container(
    color: coloring,
  );
}

Color colorSelection(c, gametap) {
  if (c != Colors.red && c != Colors.blue) {
    if (gametap % 2 == 0) {
      return Colors.blue;
    } else {
      return Colors.red;
    }
  } else {
    return c;
  }
}

String winning(c1, c2, c3, c4, c5, c6, c7, c8, c9, gametap) {
  if (c1 == Colors.blue && c2 == c1 && c2 == c3) {
    return "Player 1 wins";
  } else if (c1 == Colors.red && c2 == c1 && c2 == c3) {
    return "Player 2 wins";
  } else if (c4 == Colors.blue && c5 == c4 && c5 == c6) {
    return "Player 1 wins";
  } else if (c4 == Colors.red && c5 == c4 && c5 == c6) {
    return "Player 2 wins";
  } else if (c7 == Colors.blue && c8 == c7 && c8 == c9) {
    return "Player 1 wins";
  } else if (c7 == Colors.red && c8 == c7 && c8 == c9) {
    return "Player 2 wins";
  } else if (c1 == Colors.blue && c4 == c1 && c4 == c7) {
    return "Player 1 wins";
  } else if (c1 == Colors.red && c4 == c1 && c4 == c7) {
    return "Player 2 wins";
  } else if (c2 == Colors.blue && c5 == c2 && c5 == c8) {
    return "Player 1 wins";
  } else if (c2 == Colors.red && c5 == c2 && c5 == c8) {
    return "Player 2 wins";
  } else if (c3 == Colors.blue && c3 == c6 && c6 == c9) {
    return "Player 1 wins";
  } else if (c3 == Colors.red && c3 == c6 && c6 == c9) {
    return "Player 2 wins";
  } else if (c1 == Colors.blue && c1 == c5 && c5 == c9) {
    return "Player 1 wins";
  } else if (c1 == Colors.red && c1 == c5 && c5 == c9) {
    return "Player 2 wins";
  } else if (c3 == Colors.blue && c3 == c5 && c5 == c7) {
    return "Player 1 wins";
  } else if (c3 == Colors.red && c3 == c5 && c5 == c7) {
    return "Player 2 wins";
  } else if (gametap == 8) {
    return "Match Draw";
  } else {
    return "Match in Progess";
  }
}

class Game extends StatefulWidget {
  const Game({Key? key, required this.player1, required this.player2})
      : super(key: key);
  final String player1;
  final String player2;
  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  String endStatement = "Press Any Grid to START";
  int gametap = -1;
  int score1 = 0;
  int score2 = 0;
  Color c1 = Colors.white;
  Color c2 = Colors.white;
  Color c3 = Colors.white;
  Color c4 = Colors.white;
  Color c5 = Colors.white;
  Color c6 = Colors.white;
  Color c7 = Colors.white;
  Color c8 = Colors.white;
  Color c9 = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text("Tic Tac Toe", style: TextStyle(color: Colors.white60))),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
          color: Colors.black,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.all(20),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          border: Border.all(width: 2, color: Colors.black26)),
                      child: Text("${widget.player1} \n ${score1}",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue))
                      // Text("Hello World 2 "),
                      ),
                  Container(
                      margin: EdgeInsets.only(
                          top: 10, left: 140, bottom: 10, right: 10),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          border: Border.all(width: 2, color: Colors.black26)),
                      child: Text("${widget.player2} \n ${score2}",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.red))
                      // Text("Hello World 2 "),
                      )
                ],
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  child: GridTile(
                    child: GridView.count(
                      crossAxisCount: 3,
                      padding: EdgeInsets.all(25),
                      mainAxisSpacing: 15.0,
                      crossAxisSpacing: 10.0,
                      children: [
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                if (c1 != Colors.blue &&
                                    c1 != Colors.red &&
                                    endStatement == "Match in Progess") {
                                  gametap++;
                                  c1 = colorSelection(c1, gametap);
                                }
                                ;
                                endStatement = winning(c1, c2, c3, c4, c5, c6,
                                    c7, c8, c9, gametap);
                              });
                            },
                            child: tictacbox(c1)),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                if (c2 != Colors.blue &&
                                    c2 != Colors.red &&
                                    endStatement == "Match in Progess") {
                                  gametap++;
                                  c2 = colorSelection(c2, gametap);
                                }
                                endStatement = winning(c1, c2, c3, c4, c5, c6,
                                    c7, c8, c9, gametap);
                              });
                            },
                            child: tictacbox(c2)),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                if (c3 != Colors.blue &&
                                    c3 != Colors.red &&
                                    endStatement == "Match in Progess") {
                                  gametap++;
                                  c3 = colorSelection(c3, gametap);
                                }
                                endStatement = winning(c1, c2, c3, c4, c5, c6,
                                    c7, c8, c9, gametap);
                              });
                            },
                            child: tictacbox(c3)),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                if (c4 != Colors.blue &&
                                    c4 != Colors.red &&
                                    endStatement == "Match in Progess") {
                                  gametap++;
                                  c4 = colorSelection(c4, gametap);
                                }
                                endStatement = winning(c1, c2, c3, c4, c5, c6,
                                    c7, c8, c9, gametap);
                              });
                            },
                            child: tictacbox(c4)),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                if (c5 != Colors.blue &&
                                    c5 != Colors.red &&
                                    endStatement == "Match in Progess") {
                                  gametap++;
                                  c5 = colorSelection(c5, gametap);
                                }
                                endStatement = winning(c1, c2, c3, c4, c5, c6,
                                    c7, c8, c9, gametap);
                              });
                            },
                            child: tictacbox(c5)),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                if (c6 != Colors.blue &&
                                    c6 != Colors.red &&
                                    endStatement == "Match in Progess") {
                                  gametap++;
                                  c6 = colorSelection(c6, gametap);
                                }
                                endStatement = winning(c1, c2, c3, c4, c5, c6,
                                    c7, c8, c9, gametap);
                              });
                            },
                            child: tictacbox(c6)),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                if (c7 != Colors.blue &&
                                    c7 != Colors.red &&
                                    endStatement == "Match in Progess") {
                                  gametap++;
                                  c7 = colorSelection(c7, gametap);
                                }
                                endStatement = winning(c1, c2, c3, c4, c5, c6,
                                    c7, c8, c9, gametap);
                              });
                            },
                            child: tictacbox(c7)),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                if (c8 != Colors.blue &&
                                    c8 != Colors.red &&
                                    endStatement == "Match in Progess") {
                                  gametap++;
                                  c8 = colorSelection(c8, gametap);
                                }
                                endStatement = winning(c1, c2, c3, c4, c5, c6,
                                    c7, c8, c9, gametap);
                              });
                            },
                            child: tictacbox(c8)),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                if (c9 != Colors.blue &&
                                    c9 != Colors.red &&
                                    endStatement == "Match in Progess") {
                                  gametap++;
                                  c9 = colorSelection(c9, gametap);
                                }
                                endStatement = winning(c1, c2, c3, c4, c5, c6,
                                    c7, c8, c9, gametap);
                              });
                            },
                            child: tictacbox(c9))
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.all(70),
                  child: Column(
                    children: [
                      Text(endStatement,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white54)),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blueGrey),
                          onPressed: () {
                            setState(() {
                              if (endStatement == "Player 1 wins") {
                                score1++;
                              } else if (endStatement == "Player 2 wins") {
                                score2++;
                              }
                              endStatement = "";
                              gametap = -1;
                              c1 = Colors.white;
                              c2 = Colors.white;
                              c3 = Colors.white;
                              c4 = Colors.white;
                              c5 = Colors.white;
                              c6 = Colors.white;
                              c7 = Colors.white;
                              c8 = Colors.white;
                              c9 = Colors.white;
                            });
                          },
                          child: Text("Restart"))
                    ],
                  ))
            ],
          )),
    );
  }
}
