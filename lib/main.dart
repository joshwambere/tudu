import 'package:flutter/material.dart';
import 'package:tudu/widgets/ProfileImage.dart';
import 'package:tudu/widgets/Title.dart';
import 'package:tudu/widgets/ongoing/OngoingTask.dart';

void main() {
  runApp(const Tudu());
  print("Hi there");
}

class Tudu extends StatelessWidget {
  const Tudu({super.key});

  void onTaped() {
    print("Pressed---------");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromRGBO(50, 31, 79, 1),
            elevation: 0,
            flexibleSpace: Container(),
            leading: Container(
              margin:
                  const EdgeInsets.only(left: 10, top: 0, right: 0, bottom: 14),
              child: Container(
                constraints: BoxConstraints(
                    minWidth: 30, maxWidth: 40, minHeight: 30, maxHeight: 40),
                child: ProfileImage(),
              ),
            ),
            actions: [
              Container(
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.only(
                        left: 0, top: 0, right: 16, bottom: 14),
                    constraints: const BoxConstraints(
                        minWidth: 30,
                        maxWidth: 40,
                        minHeight: 30,
                        maxHeight: 40),
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    child: IconButton(
                      onPressed: onTaped,
                      icon: const Icon(
                        Icons.add,
                        color: Color.fromRGBO(50, 31, 79, 1),
                      ),
                      splashRadius: 27,
                      enableFeedback: true,
                    ),
                  ),
                ),
              )
            ],
          ),
          body: Container(
            child: Column(children: <Widget>[
              Row(children: [
                Flexible(
                    flex: 1,
                    child: Container(
                      color: const Color.fromRGBO(50, 31, 79, 1),
                      constraints:
                          const BoxConstraints(minHeight: 100, maxHeight: 100),
                      child: Column(children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 16, top: 16, right: 16, bottom: 0),
                          child: Row(
                            children: [UserTitle("John Doe.")],
                          ),
                        ),
                      ]),
                    )),
              ]),
              Row(children: [
                Flexible(
                    flex: 1,
                    child: OngoingTask(8)
                ),
              ]),
            ]),
          )),
    );
  }
}
