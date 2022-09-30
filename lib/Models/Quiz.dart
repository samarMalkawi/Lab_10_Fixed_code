import 'package:flutter/material.dart';
import 'package:lab_10/screens/Home_Page.dart';

import '../component/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 239, 183, 249),
            bottom: TabBar(tabs: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_answer),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_answer),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_answer),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_answer),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_answer),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_answer),
              ),
            ]),
            title: Text("Quiz App"),
          ),
          drawer: Drawer(
              backgroundColor: Color.fromARGB(255, 228, 183, 238),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Divider(
                      height: 40,
                    ),
                    Card(
                      elevation: 30,
                      shadowColor: Colors.pink,
                      color: Color.fromARGB(255, 94, 16, 108),
                      child: Text(
                        "We hope that you have found this to be fun as well as informative",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Divider(
                      height: 20,
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 221, 76, 247),
                          onPrimary: Color.fromARGB(255, 246, 108, 154)),
                      onPressed: (() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) {
                          return Home();
                        })));
                      }),
                      icon: Icon(
                        Icons.logout_outlined,
                        color: Colors.white,
                      ),
                      label: Text(
                        "Back home",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          body: Container(
            color: Color.fromARGB(255, 245, 218, 218),
            child: TabBarView(children: [
              //Question 1 -------------------------------------------------------------------------------------
              Qus(
                correct: "27 grapes",
                Q_Image: "images/grapes.jpg",
                answer_1: "32 grapes",
                answer_2: "10 grapes",
                answer_3: "27 grapes",
                answer_4: "19 grapes",
                qus_text:
                    "How many grapes can you eat for the same number of calories as a single doughnut hole?",
                more_info:
                    "1 Doughnut Hole: 40 calories and 2.2g fat (0.6 sat & 0.7 trans),27 Grapes: 40 calories and 0.3g fat (0 sat/trans)",
              ),
              //Question 2 -------------------------------------------------------------------------------------
              Qus(
                correct: "3 ¾ apples",
                Q_Image: "images/apple.jpg",
                answer_1: "3 ¾ apples",
                answer_2: "4 apples",
                answer_3: "2 ½ apples",
                answer_4: "6 apples",
                qus_text:
                    "How many apples can you eat for the same amount of calories as one cup of chocolate ice cream?",
                more_info:
                    "1 cup Chocolate Ice Cream: 300 calories and 14g fat (9 sat),3 ¾ Apples: 300 calories and 1.9g fat (0.4 sat)",
              ),
              //Question 3 -------------------------------------------------------------------------------------
              Qus(
                correct: "4.5 cups",
                Q_Image: "images/carrots.jpg",
                answer_1: "4.5 cups",
                answer_2: "2.5 cups",
                answer_3: "5.5 cups",
                answer_4: "3.5 cups",
                qus_text:
                    "How many cups of carrots can you eat for the same number of calories as one Snickers bar?",
                more_info:
                    "1 Snickers Bar: 240 calories and 11g fat (4.5 sat),Over 4.5 cup Chopped Carrots: 240 calories and 1.4g fat (0.2 sat)",
              ),
              //Question 4 -------------------------------------------------------------------------------------
              Qus(
                correct: "26 fl oz",
                Q_Image: "images/milk.jpg",
                answer_1: "20 fl oz",
                answer_2: "26 fl oz",
                answer_3: "10 fl oz",
                answer_4: "12 fl oz",
                qus_text:
                    "How much skim milk can you drink for the same number of calories as one 20 oz. Mountain Dew™?",
                more_info:
                    "20 fl oz Bottle Mountain Dew: 275 cal and 77.6g sugar,26 fl oz Skim Milk: 275 cal and 40g sugar PLUS 103% of daily calcium",
              ),
              //Question 5 -------------------------------------------------------------------------------------
              Qus(
                correct: "2 kiwis.",
                Q_Image: "images/kiwi.jpg",
                answer_1: "5 kiwis.",
                answer_2: "3 kiwis.",
                answer_3: "1.5 kiwis.",
                answer_4: "2 kiwis.",
                qus_text:
                    "How many kiwis can you eat for the same number of calories as two Double Stuf Oreos™?",
                more_info:
                    "2 Double Stuf Oreos: 140 cal and 7g fat (1.5g sat) 13g sugar,2 Kiwi Fruit: 150 cal and 1.4g fat (0.1 sat)",
              ),
              //Question 6 -------------------------------------------------------------------------------------
              Qus(
                correct: "14 slices",
                Q_Image: "images/pineapple.jpg",
                answer_1: "2 slices",
                answer_2: "8 slices",
                answer_3: "14 slices",
                answer_4: "9 slices",
                qus_text:
                    "How many pineapple slices can you eat for the same number of calories as one Krispy Kreme original glazed doughnut?",
                more_info:
                    "1 Krispy Kreme™ Doughnut: 200 cal and 12g fat (3g sat),14 Pineapple Slices: 200 cal and 0.5g fat (0g sat)",
              ),
            ]),
          ),
        ));
  }
}
