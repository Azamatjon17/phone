import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Scaffold(
      body: MainBody(),
    ),
  ));
}

String number = "";
List buttomnumbers = [
  ["1", "2", "3"],
  [
    "4",
    "5",
    "6",
  ],
  ["7", "8", "9"],
  ["*", "0", "#"]
];

class MainBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainBody();
  }
}

class _MainBody extends State<MainBody> {
  newsetstate() {
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    number,
                    style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold, wordSpacing: 2),
                  ),
                  const Text(
                    "Add Number",
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[for (var i = 0; i < 4; i++) Button(buttomnumbers[i][0], buttomnumbers[i][1], buttomnumbers[i][2], newsetstate)],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.call,
                    size: 50,
                  )),
              IconButton(
                  onPressed: () {
                    setState(() {
                      number.length != 0 ? number = number.substring(0, number.length - 1) : null;
                    });
                  },
                  icon: const Icon(
                    Icons.backspace_outlined,
                    size: 50,
                  ))
            ],
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class Button extends StatelessWidget {
  String n1;
  String n2;
  String n3;
  Function newsetstate;
  Button(this.n1, this.n2, this.n3, this.newsetstate);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        InkWell(
          onTap: () {
            number += n1;
            newsetstate();
          },
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
            child: Center(
              child: Text(
                n1,
                style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            number += n2;
            newsetstate();
          },
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
            child: Center(
              child: Text(
                n2,
                style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            number += n3;
            newsetstate();
          },
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
            child: Center(
              child: Text(
                n3,
                style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        )
      ],
    );
  }
}
