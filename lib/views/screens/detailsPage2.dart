import 'package:flutter/material.dart';

class Details_page2 extends StatefulWidget {
  final imge1;
  final name2;
  final detail1;
  const Details_page2(
      {Key? key,
      required this.name2,
      required this.detail1,
      required this.imge1})
      : super(key: key);

  @override
  State<Details_page2> createState() => _Details_page2State();
}

class _Details_page2State extends State<Details_page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            width: 360,
            height: 250,
            child: Image.asset(
              widget.imge1,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            alignment: Alignment.center,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                border:
                    Border.all(color: Colors.grey.withOpacity(0.4), width: 4)),
            child: Text(
              "${widget.name2}",
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
            child: Text(
              "${widget.detail1}",
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
