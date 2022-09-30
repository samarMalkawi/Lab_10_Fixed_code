import 'package:flutter/material.dart';

class check_answer extends StatelessWidget {
  check_answer(this.correct, this.answer_text, this.information);
  String? correct;
  String? answer_text;
  String? information;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (correct == answer_text) {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  backgroundColor: Colors.grey,
                  actions: [
                    Center(
                      child: Card(
                        color: Color.fromARGB(255, 237, 164, 189),
                        child: Column(children: [
                          Card(
                            elevation: 30,
                            shadowColor: Colors.yellow,
                            color: Color.fromARGB(255, 4, 36, 62),
                            child: Text(
                              "Correct, you answered $correct",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Divider(
                            height: 30,
                            color: Color.fromARGB(255, 1, 34, 61),
                          ),
                          Card(
                            shadowColor: Colors.yellow,
                            elevation: 30,
                            color: Colors.purple,
                            child: Text(
                              "$information",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          )
                        ]),
                      ),
                    ),
                  ],
                );
              });
        } else {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  actions: [
                    Card(
                        color: Color.fromARGB(255, 253, 37, 52),
                        shadowColor: Color.fromARGB(255, 253, 24, 8),
                        elevation: 20,
                        child: Text(
                          " OOPS,you can do better,try again",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ))
                  ],
                );
              });
        }
      },
      child: Container(
        height: 100,
        width: 180,
        alignment: Alignment.centerLeft,
        child: Card(
          elevation: 30,
          shadowColor: Colors.pink,
          margin: EdgeInsets.all(20),
          color: Color.fromARGB(255, 56, 52, 52),
          child: Text(
            "$answer_text",
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
