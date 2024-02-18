import 'package:flutter/material.dart';

class OngoingTask extends StatelessWidget {
  final int numberOfTask;
  OngoingTask(this.numberOfTask);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(50, 31, 79, 1),
      constraints:
      const BoxConstraints(minHeight: 100, maxHeight: 100),
      child: Column(children: [
        Container(
          margin: const EdgeInsets.only(
              left: 16, top: 0, right: 16, bottom: 0),
          child: Row(
            children:  [
              Text(
                  "Ongoing Tasks (${numberOfTask.toString()})",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(196, 191, 206, 1),
                      fontSize: 14
                  )
              )
            ],
          ),
        ),
      ]),
    );
  }
}