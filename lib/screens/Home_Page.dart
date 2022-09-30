import 'package:flutter/material.dart';

import '../Models/Quiz.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Calories Quiz",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("images/fruits-vegetables.webp"))),
        child: Center(
          child: GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                        backgroundColor: Color.fromARGB(255, 143, 242, 146),
                        actions: [
                          Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton.icon(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.yellow,
                                      onPrimary:
                                          Color.fromARGB(255, 50, 235, 57)),
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return Quiz();
                                    }));
                                  },
                                  icon: Icon(
                                    Icons.people,
                                    color: Color.fromARGB(255, 5, 63, 7),
                                  ),
                                  label: Text(
                                    "Go to Quiz page",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 5, 63, 7),
                                    ),
                                  )),
                            ],
                          )),
                        ]);
                  });
            },
            child: SizedBox(
              height: 250,
              width: 200,
              child: Text(
                "Do you have knowledge about calories in your food, to test your knowledge click here",
                style: TextStyle(
                    fontSize: 30, color: Color.fromARGB(255, 44, 126, 46)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
